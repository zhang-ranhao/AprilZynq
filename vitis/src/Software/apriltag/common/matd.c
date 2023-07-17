/****************************************************************/
/*	matd.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the ps uart
		 														*/
/****************************************************************/
/*  Revision History:
	7/1/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "matd.h"
#include "math_util.h"
#include <string.h>
#include <stdarg.h>
#include <math.h>
#include <stdio.h>
#include "svd22.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
// PLU = A
// Ax = B
// PLUx = B
// LUx = P'B
matd_t *matd_plu_solve(const matd_plu_t *mlu, const matd_t *b)
{
    matd_t *x = matd_copy(b);

    // permute right hand side
    for (int i = 0; i < mlu->lu->nrows; i++)
        memcpy(&MATD_EL(x, i, 0), &MATD_EL(b, mlu->piv[i], 0), sizeof(TYPE) * b->ncols);

    // solve Ly = b
    for (int k = 0; k < mlu->lu->nrows; k++) {
        for (int i = k+1; i < mlu->lu->nrows; i++) {
            double LUik = -MATD_EL(mlu->lu, i, k);
            for (int t = 0; t < b->ncols; t++)
                MATD_EL(x, i, t) += MATD_EL(x, k, t) * LUik;
        }
    }

    // solve Ux = y
    for (int k = mlu->lu->ncols-1; k >= 0; k--) {
        double LUkk = 1.0 / MATD_EL(mlu->lu, k, k);
        for (int t = 0; t < b->ncols; t++)
            MATD_EL(x, k, t) *= LUkk;

        for (int i = 0; i < k; i++) {
            double LUik = -MATD_EL(mlu->lu, i, k);
            for (int t = 0; t < b->ncols; t++)
                MATD_EL(x, i, t) += MATD_EL(x, k, t) *LUik;
        }
    }

    return x;
}

// row and col are zero-based
TYPE matd_get(const matd_t *m, int row, int col)
{
    assert(m != NULL);
    assert(!matd_is_scalar(m));
    assert(row >= 0);
    assert(row < m->nrows);
    assert(col >= 0);
    assert(col < m->ncols);

    return MATD_EL(m, row, col);
}

void matd_put_scalar(matd_t *m, TYPE value)
{
    assert(m != NULL);
    assert(matd_is_scalar(m));

    m->data[0] = value;
}

// row and col are zero-based
void matd_put(matd_t *m, int row, int col, TYPE value)
{
    assert(m != NULL);

    if (matd_is_scalar(m)) {
        matd_put_scalar(m, value);
        return;
    }

    assert(row >= 0);
    assert(row < m->nrows);
    assert(col >= 0);
    assert(col < m->ncols);

    MATD_EL(m, row, col) = value;
}

matd_t *matd_plu_l(const matd_plu_t *mlu)
{
    matd_t *lu = mlu->lu;

    matd_t *L = matd_create(lu->nrows, lu->ncols);
    for (int i = 0; i < lu->nrows; i++) {
        MATD_EL(L, i, i) = 1;

        for (int j = 0; j < i; j++) {
            MATD_EL(L, i, j) = MATD_EL(lu, i, j);
        }
    }

    return L;
}

matd_t *matd_plu_u(const matd_plu_t *mlu)
{
    matd_t *lu = mlu->lu;

    matd_t *U = matd_create(lu->ncols, lu->ncols);
    for (int i = 0; i < lu->ncols; i++) {
        for (int j = 0; j < lu->ncols; j++) {
            if (i <= j)
                MATD_EL(U, i, j) = MATD_EL(lu, i, j);
        }
    }

    return U;
}


double matd_det_general(const matd_t *a)
{
    // Use LU decompositon to calculate the determinant
    matd_plu_t *mlu = matd_plu(a);
    matd_t *L = matd_plu_l(mlu);
    matd_t *U = matd_plu_u(mlu);

    // The determinants of the L and U matrices are the products of
    // their respective diagonal elements
    double detL = 1; double detU = 1;
    for (int i = 0; i < a->nrows; i++) {
        detL *= matd_get(L, i, i);
        detU *= matd_get(U, i, i);
    }

    // The determinant of a can be calculated as
    //     epsilon*det(L)*det(U),
    // where epsilon is just the sign of the corresponding permutation
    // (which is +1 for an even number of permutations and is −1
    // for an uneven number of permutations).
    double det = mlu->pivsign * detL * detU;

    // Cleanup
    matd_plu_destroy(mlu);
    matd_destroy(L);
    matd_destroy(U);

    return det;
}

double matd_det(const matd_t *a)
{
    assert(a != NULL);
    assert(a->nrows == a->ncols);

    switch(a->nrows) {
        case 0:
            // scalar: invalid
            assert(a->nrows > 0);
            break;

        case 1:
            // 1x1 matrix
            return a->data[0];

        case 2:
            // 2x2 matrix
            return a->data[0] * a->data[3] - a->data[1] * a->data[2];

        case 3:
            // 3x3 matrix
            return  a->data[0]*a->data[4]*a->data[8]
                - a->data[0]*a->data[5]*a->data[7]
                + a->data[1]*a->data[5]*a->data[6]
                - a->data[1]*a->data[3]*a->data[8]
                + a->data[2]*a->data[3]*a->data[7]
                - a->data[2]*a->data[4]*a->data[6];

        case 4: {
            // 4x4 matrix
            double m00 = MATD_EL(a,0,0), m01 = MATD_EL(a,0,1), m02 = MATD_EL(a,0,2), m03 = MATD_EL(a,0,3);
            double m10 = MATD_EL(a,1,0), m11 = MATD_EL(a,1,1), m12 = MATD_EL(a,1,2), m13 = MATD_EL(a,1,3);
            double m20 = MATD_EL(a,2,0), m21 = MATD_EL(a,2,1), m22 = MATD_EL(a,2,2), m23 = MATD_EL(a,2,3);
            double m30 = MATD_EL(a,3,0), m31 = MATD_EL(a,3,1), m32 = MATD_EL(a,3,2), m33 = MATD_EL(a,3,3);

            return m00 * m11 * m22 * m33 - m00 * m11 * m23 * m32 -
                m00 * m21 * m12 * m33 + m00 * m21 * m13 * m32 + m00 * m31 * m12 * m23 -
                m00 * m31 * m13 * m22 - m10 * m01 * m22 * m33 +
                m10 * m01 * m23 * m32 + m10 * m21 * m02 * m33 -
                m10 * m21 * m03 * m32 - m10 * m31 * m02 * m23 +
                m10 * m31 * m03 * m22 + m20 * m01 * m12 * m33 -
                m20 * m01 * m13 * m32 - m20 * m11 * m02 * m33 +
                m20 * m11 * m03 * m32 + m20 * m31 * m02 * m13 -
                m20 * m31 * m03 * m12 - m30 * m01 * m12 * m23 +
                m30 * m01 * m13 * m22 + m30 * m11 * m02 * m23 -
                m30 * m11 * m03 * m22 - m30 * m21 * m02 * m13 +
                m30 * m21 * m03 * m12;
        }

        default:
            return matd_det_general(a);
    }

    assert(0);
    return 0;
}

matd_t *matd_subtract(const matd_t *a, const matd_t *b)
{
    assert(a != NULL);
    assert(b != NULL);
    assert(a->nrows == b->nrows);
    assert(a->ncols == b->ncols);

    if (matd_is_scalar(a))
        return matd_create_scalar(a->data[0] - b->data[0]);

    matd_t *m = matd_create(a->nrows, a->ncols);

    for (int i = 0; i < m->nrows; i++) {
        for (int j = 0; j < m->ncols; j++) {
            MATD_EL(m, i, j) = MATD_EL(a, i, j) - MATD_EL(b, i, j);
        }
    }

    return m;
}

matd_t *matd_add(const matd_t *a, const matd_t *b)
{
    assert(a != NULL);
    assert(b != NULL);
    assert(a->nrows == b->nrows);
    assert(a->ncols == b->ncols);

    if (matd_is_scalar(a))
        return matd_create_scalar(a->data[0] + b->data[0]);

    matd_t *m = matd_create(a->nrows, a->ncols);

    for (int i = 0; i < m->nrows; i++) {
        for (int j = 0; j < m->ncols; j++) {
            MATD_EL(m, i, j) = MATD_EL(a, i, j) + MATD_EL(b, i, j);
        }
    }

    return m;
}

matd_t *matd_crossproduct(const matd_t *a, const matd_t *b)
{ // only defined for vecs (col or row) of length 3
    assert(a != NULL);
    assert(b != NULL);
    assert(matd_is_vector_len(a, 3) && matd_is_vector_len(b, 3));

    matd_t * r = matd_create(a->nrows, a->ncols);

    r->data[0] = a->data[1] * b->data[2] - a->data[2] * b->data[1];
    r->data[1] = a->data[2] * b->data[0] - a->data[0] * b->data[2];
    r->data[2] = a->data[0] * b->data[1] - a->data[1] * b->data[0];

    return r;
}

double matd_vec_mag(const matd_t *a)
{
    assert(a != NULL);
    assert(matd_is_vector(a));

    double mag = 0.0;
    int len = a->nrows*a->ncols;
    for (int i = 0; i < len; i++)
        mag += sq(a->data[i]);
    return sqrt(mag);
}

matd_t *matd_vec_normalize(const matd_t *a)
{
    assert(a != NULL);
    assert(matd_is_vector(a));

    double mag = matd_vec_mag(a);
    assert(mag > 0);

    matd_t *b = matd_create(a->nrows, a->ncols);

    int len = a->nrows*a->ncols;
    for(int i = 0; i < len; i++)
        b->data[i] = a->data[i] / mag;

    return b;
}

matd_t *matd_transpose(const matd_t *a)
{
    assert(a != NULL);

    if (matd_is_scalar(a))
        return matd_create_scalar(a->data[0]);

    matd_t *m = matd_create(a->ncols, a->nrows);

    for (int i = 0; i < a->nrows; i++) {
        for (int j = 0; j < a->ncols; j++) {
            MATD_EL(m, j, i) = MATD_EL(a, i, j);
        }
    }
    return m;
}

// TODO Optimization: Some operations we could perform in-place,
// saving some memory allocation work. E.g., ADD, SUBTRACT. Just need
// to make sure that we don't do an in-place modification on a matrix
// that was an input argument!

// handle right-associative operators, greedily consuming them. These
// include transpose and inverse. This is called by the main recursion
// method.
static inline matd_t *matd_op_gobble_right(const char *expr, int *pos, matd_t *acc, matd_t **garb, int *garbpos)
{
    while (expr[*pos] != 0) {

        switch (expr[*pos]) {

            case '\'': {
                assert(acc != NULL); // either a syntax error or a math op failed, producing null
                matd_t *res = matd_transpose(acc);
                garb[*garbpos] = res;
                (*garbpos)++;
                acc = res;

                (*pos)++;
                break;
            }

                // handle inverse ^-1. No other exponents are allowed.
            case '^': {
                assert(acc != NULL);
                assert(expr[*pos+1] == '-');
                assert(expr[*pos+2] == '1');

                matd_t *res = matd_inverse(acc);
                garb[*garbpos] = res;
                (*garbpos)++;
                acc = res;

                (*pos)+=3;
                break;
            }

            default:
                return acc;
        }
    }

    return acc;
}

matd_t *matd_scale(const matd_t *a, double s)
{
    assert(a != NULL);

    if (matd_is_scalar(a))
        return matd_create_scalar(a->data[0] * s);

    matd_t *m = matd_create(a->nrows, a->ncols);

    for (int i = 0; i < m->nrows; i++) {
        for (int j = 0; j < m->ncols; j++) {
            MATD_EL(m, i, j) = s * MATD_EL(a, i, j);
        }
    }

    return m;
}

matd_t *matd_multiply(const matd_t *a, const matd_t *b)
{
    assert(a != NULL);
    assert(b != NULL);

    if (matd_is_scalar(a))
        return matd_scale(b, a->data[0]);
    if (matd_is_scalar(b))
        return matd_scale(a, b->data[0]);

    assert(a->ncols == b->nrows);
    matd_t *m = matd_create(a->nrows, b->ncols);

    for (int i = 0; i < m->nrows; i++) {
        for (int j = 0; j < m->ncols; j++) {
            TYPE acc = 0;
            for (int k = 0; k < a->ncols; k++) {
                acc += MATD_EL(a, i, k) * MATD_EL(b, k, j);
            }
            MATD_EL(m, i, j) = acc;
        }
    }

    return m;
}

matd_svd_t matd_svd(matd_t *A)
{
    return matd_svd_flags(A, 0);
}

void matd_add_inplace(matd_t *a, const matd_t *b)
{
    assert(a != NULL);
    assert(b != NULL);
    assert(a->nrows == b->nrows);
    assert(a->ncols == b->ncols);

    if (matd_is_scalar(a)) {
        a->data[0] += b->data[0];
        return;
    }

    for (int i = 0; i < a->nrows; i++) {
        for (int j = 0; j < a->ncols; j++) {
            MATD_EL(a, i, j) += MATD_EL(b, i, j);
        }
    }
}

void matd_scale_inplace(matd_t *a, double s)
{
    assert(a != NULL);

    if (matd_is_scalar(a)) {
        a->data[0] *= s;
        return;
    }

    for (int i = 0; i < a->nrows; i++) {
        for (int j = 0; j < a->ncols; j++) {
            MATD_EL(a, i, j) *= s;
        }
    }
}

// find the index of the off-diagonal element with the largest mag
static inline int max_idx(const matd_t *A, int row, int maxcol)
{
    int maxi = 0;
    double maxv = -1;

    for (int i = 0; i < maxcol; i++) {
        if (i == row)
            continue;
        double v = fabs(MATD_EL(A, row, i));
        if (v > maxv) {
            maxi = i;
            maxv = v;
        }
    }

    return maxi;
}

// Computes an SVD for square or tall matrices. This code doesn't work
// for wide matrices, because the bidiagonalization results in one
// non-zero element too far to the right for us to rotate away.
//
// Caller is responsible for destroying U, S, and V.
static matd_svd_t matd_svd_tall(matd_t *A, int flags)
{
    matd_t *B = matd_copy(A);

    // Apply householder reflections on each side to reduce A to
    // bidiagonal form. Specifically:
    //
    // A = LS*B*RS'
    //
    // Where B is bidiagonal, and LS/RS are unitary.
    //
    // Why are we doing this? Some sort of transformation is necessary
    // to reduce the matrix's nz elements to a square region. QR could
    // work too. We need nzs confined to a square region so that the
    // subsequent iterative process, which is based on rotations, can
    // work. (To zero out a term at (i,j), our rotations will also
    // affect (j,i).
    //
    // We prefer bidiagonalization over QR because it gets us "closer"
    // to the SVD, which should mean fewer iterations.

    // LS: cumulative left-handed transformations
    matd_t *LS = matd_identity(A->nrows);

    // RS: cumulative right-handed transformations.
    matd_t *RS = matd_identity(A->ncols);

    for (int hhidx = 0; hhidx < A->nrows; hhidx++)  {

        if (hhidx < A->ncols) {
            // We construct the normal of the reflection plane: let u
            // be the vector to reflect, x =[ M 0 0 0 ] the target
            // location for u (u') after reflection (with M = ||u||).
            //
            // The normal vector is then n = (u - x), but since we
            // could equally have the target location be x = [-M 0 0 0
            // ], we could use n = (u + x).
            //
            // We then normalize n. To ensure a reasonable magnitude,
            // we select the sign of M so as to maximize the magnitude
            // of the first element of (x +/- M). (Otherwise, we could
            // end up with a divide-by-zero if u[0] and M cancel.)
            //
            // The householder reflection matrix is then H=(I - nn'), and
            // u' = Hu.
            //
            //
            int vlen = A->nrows - hhidx;

            double *v = malloc(sizeof(double)*vlen);

            double mag2 = 0;
            for (int i = 0; i < vlen; i++) {
                v[i] = MATD_EL(B, hhidx+i, hhidx);
                mag2 += v[i]*v[i];
            }

            double oldv0 = v[0];
            if (oldv0 < 0)
                v[0] -= sqrt(mag2);
            else
                v[0] += sqrt(mag2);

            mag2 += -oldv0*oldv0 + v[0]*v[0];

            // normalize v
            double mag = sqrt(mag2);

            // this case arises with matrices of all zeros, for example.
            if (mag == 0) {
                free(v);
                continue;
            }

            for (int i = 0; i < vlen; i++)
                v[i] /= mag;

            // Q = I - 2vv'
            //matd_t *Q = matd_identity(A->nrows);
            //for (int i = 0; i < vlen; i++)
            //  for (int j = 0; j < vlen; j++)
            //    MATD_EL(Q, i+hhidx, j+hhidx) -= 2*v[i]*v[j];


            // LS = matd_op("F*M", LS, Q);
            // Implementation: take each row of LS, compute dot product with n,
            // subtract n (scaled by dot product) from it.
            for (int i = 0; i < LS->nrows; i++) {
                double dot = 0;
                for (int j = 0; j < vlen; j++)
                    dot += MATD_EL(LS, i, hhidx+j) * v[j];
                for (int j = 0; j < vlen; j++)
                    MATD_EL(LS, i, hhidx+j) -= 2*dot*v[j];
            }

            //  B = matd_op("M*F", Q, B); // should be Q', but Q is symmetric.
            for (int i = 0; i < B->ncols; i++) {
                double dot = 0;
                for (int j = 0; j < vlen; j++)
                    dot += MATD_EL(B, hhidx+j, i) * v[j];
                for (int j = 0; j < vlen; j++)
                    MATD_EL(B, hhidx+j, i) -= 2*dot*v[j];
            }

            free(v);
        }

        if (hhidx+2 < A->ncols) {
            int vlen = A->ncols - hhidx - 1;

            double *v = malloc(sizeof(double)*vlen);

            double mag2 = 0;
            for (int i = 0; i < vlen; i++) {
                v[i] = MATD_EL(B, hhidx, hhidx+i+1);
                mag2 += v[i]*v[i];
            }

            double oldv0 = v[0];
            if (oldv0 < 0)
                v[0] -= sqrt(mag2);
            else
                v[0] += sqrt(mag2);

            mag2 += -oldv0*oldv0 + v[0]*v[0];

            // compute magnitude of ([1 0 0..]+v)
            double mag = sqrt(mag2);

            // this case can occur when the vectors are already perpendicular
            if (mag == 0) {
                free(v);
                continue;
            }

            for (int i = 0; i < vlen; i++)
                v[i] /= mag;

            // TODO: optimize these multiplications
            // matd_t *Q = matd_identity(A->ncols);
            //  for (int i = 0; i < vlen; i++)
            //    for (int j = 0; j < vlen; j++)
            //       MATD_EL(Q, i+1+hhidx, j+1+hhidx) -= 2*v[i]*v[j];

            //  RS = matd_op("F*M", RS, Q);
            for (int i = 0; i < RS->nrows; i++) {
                double dot = 0;
                for (int j = 0; j < vlen; j++)
                    dot += MATD_EL(RS, i, hhidx+1+j) * v[j];
                for (int j = 0; j < vlen; j++)
                    MATD_EL(RS, i, hhidx+1+j) -= 2*dot*v[j];
            }

            //   B = matd_op("F*M", B, Q); // should be Q', but Q is symmetric.
            for (int i = 0; i < B->nrows; i++) {
                double dot = 0;
                for (int j = 0; j < vlen; j++)
                    dot += MATD_EL(B, i, hhidx+1+j) * v[j];
                for (int j = 0; j < vlen; j++)
                    MATD_EL(B, i, hhidx+1+j) -= 2*dot*v[j];
            }

            free(v);
        }
    }

    // empirically, we find a roughly linear worst-case number of iterations
    // as a function of rows*cols. maxiters ~= 1.5*nrows*ncols
    // we're a bit conservative below.
    int maxiters = 200 + 2 * A->nrows * A->ncols;
    assert(maxiters > 0); // reassure clang
    int iter;

    double maxv; // maximum non-zero value being reduced this iteration

    double tol = 1E-10;

    // which method will we use to find the largest off-diagonal
    // element of B?
    const int find_max_method = 1; //(B->ncols < 6) ? 2 : 1;

    // for each of the first B->ncols rows, which index has the
    // maximum absolute value? (used by method 1)
    int *maxrowidx = malloc(sizeof(int)*B->ncols);
    int lastmaxi, lastmaxj;

    if (find_max_method == 1) {
        for (int i = 2; i < B->ncols; i++)
            maxrowidx[i] = max_idx(B, i, B->ncols);

        // note that we started the array at 2. That's because by setting
        // these values below, we'll recompute first two entries on the
        // first iteration!
        lastmaxi = 0, lastmaxj = 1;
    }

    for (iter = 0; iter < maxiters; iter++) {

        // No diagonalization required for 0x0 and 1x1 matrices.
        if (B->ncols < 2)
            break;

        // find the largest off-diagonal element of B, and put its
        // coordinates in maxi, maxj.
        int maxi, maxj;

        if (find_max_method == 1) {
            // method 1 is the "smarter" method which does at least
            // 4*ncols work. More work might be needed (up to
            // ncols*ncols), depending on data. Thus, this might be a
            // bit slower than the default method for very small
            // matrices.
            maxi = -1;
            maxv = -1;

            // every iteration, we must deal with the fact that rows
            // and columns lastmaxi and lastmaxj have been
            // modified. Update maxrowidx accordingly.

            // now, EVERY row also had columns lastmaxi and lastmaxj modified.
            for (int rowi = 0; rowi < B->ncols; rowi++) {

                // the magnitude of the largest off-diagonal element
                // in this row.
                double thismaxv;

                // row 'lastmaxi' and 'lastmaxj' have been completely
                // changed. compute from scratch.
                if (rowi == lastmaxi || rowi == lastmaxj) {
                    maxrowidx[rowi] = max_idx(B, rowi, B->ncols);
                    thismaxv = fabs(MATD_EL(B, rowi, maxrowidx[rowi]));
                    goto endrowi;
                }

                // our maximum entry was just modified. We don't know
                // if it went up or down, and so we don't know if it
                // is still the maximum. We have to update from
                // scratch.
                if (maxrowidx[rowi] == lastmaxi || maxrowidx[rowi] == lastmaxj) {
                    maxrowidx[rowi] = max_idx(B, rowi, B->ncols);
                    thismaxv = fabs(MATD_EL(B, rowi, maxrowidx[rowi]));
                    goto endrowi;
                }

                // This row is unchanged, except for columns
                // 'lastmaxi' and 'lastmaxj', and those columns were
                // not previously the largest entry...  just check to
                // see if they are now the maximum entry in their
                // row. (Remembering to consider off-diagonal entries
                // only!)
                thismaxv = fabs(MATD_EL(B, rowi, maxrowidx[rowi]));

                // check column lastmaxi. Is it now the maximum?
                if (lastmaxi != rowi) {
                    double v = fabs(MATD_EL(B, rowi, lastmaxi));
                    if (v > thismaxv) {
                        thismaxv = v;
                        maxrowidx[rowi] = lastmaxi;
                    }
                }

                // check column lastmaxj
                if (lastmaxj != rowi) {
                    double v = fabs(MATD_EL(B, rowi, lastmaxj));
                    if (v > thismaxv) {
                        thismaxv = v;
                        maxrowidx[rowi] = lastmaxj;
                    }
                }

                // does this row have the largest value we've seen so far?
              endrowi:
                if (thismaxv > maxv) {
                    maxv = thismaxv;
                    maxi = rowi;
                }
            }

            assert(maxi >= 0);
            maxj = maxrowidx[maxi];

            // save these for the next iteration.
            lastmaxi = maxi;
            lastmaxj = maxj;

            if (maxv < tol)
                break;

        } else if (find_max_method == 2) {
            // brute-force (reference) version.
            maxv = -1;

            // only search top "square" portion
            for (int i = 0; i < B->ncols; i++) {
                for (int j = 0; j < B->ncols; j++) {
                    if (i == j)
                        continue;

                    double v = fabs(MATD_EL(B, i, j));

                    if (v > maxv) {
                        maxi = i;
                        maxj = j;
                        maxv = v;
                    }
                }
            }

            // termination condition.
            if (maxv < tol)
                break;
        } else {
            assert(0);
        }

//        printf(">>> %5d %3d, %3d %15g\n", maxi, maxj, iter, maxv);

        // Now, solve the 2x2 SVD problem for the matrix
        // [ A0 A1 ]
        // [ A2 A3 ]
        double A0 = MATD_EL(B, maxi, maxi);
        double A1 = MATD_EL(B, maxi, maxj);
        double A2 = MATD_EL(B, maxj, maxi);
        double A3 = MATD_EL(B, maxj, maxj);

        if (1) {
            double AQ[4];
            AQ[0] = A0;
            AQ[1] = A1;
            AQ[2] = A2;
            AQ[3] = A3;

            double U[4], S[2], V[4];
            svd22(AQ, U, S, V);

/*  Reference (slow) implementation...

            // LS = LS * ROT(theta) = LS * QL
            matd_t *QL = matd_identity(A->nrows);
            MATD_EL(QL, maxi, maxi) = U[0];
            MATD_EL(QL, maxi, maxj) = U[1];
            MATD_EL(QL, maxj, maxi) = U[2];
            MATD_EL(QL, maxj, maxj) = U[3];

            matd_t *QR = matd_identity(A->ncols);
            MATD_EL(QR, maxi, maxi) = V[0];
            MATD_EL(QR, maxi, maxj) = V[1];
            MATD_EL(QR, maxj, maxi) = V[2];
            MATD_EL(QR, maxj, maxj) = V[3];

            LS = matd_op("F*M", LS, QL);
            RS = matd_op("F*M", RS, QR); // remember we'll transpose RS.
            B = matd_op("M'*F*M", QL, B, QR);

            matd_destroy(QL);
            matd_destroy(QR);
*/

            //  LS = matd_op("F*M", LS, QL);
            for (int i = 0; i < LS->nrows; i++) {
                double vi = MATD_EL(LS, i, maxi);
                double vj = MATD_EL(LS, i, maxj);

                MATD_EL(LS, i, maxi) = U[0]*vi + U[2]*vj;
                MATD_EL(LS, i, maxj) = U[1]*vi + U[3]*vj;
            }

            //  RS = matd_op("F*M", RS, QR); // remember we'll transpose RS.
            for (int i = 0; i < RS->nrows; i++) {
                double vi = MATD_EL(RS, i, maxi);
                double vj = MATD_EL(RS, i, maxj);

                MATD_EL(RS, i, maxi) = V[0]*vi + V[2]*vj;
                MATD_EL(RS, i, maxj) = V[1]*vi + V[3]*vj;
            }

            // B = matd_op("M'*F*M", QL, B, QR);
            // The QL matrix mixes rows of B.
            for (int i = 0; i < B->ncols; i++) {
                double vi = MATD_EL(B, maxi, i);
                double vj = MATD_EL(B, maxj, i);

                MATD_EL(B, maxi, i) = U[0]*vi + U[2]*vj;
                MATD_EL(B, maxj, i) = U[1]*vi + U[3]*vj;
            }

            // The QR matrix mixes columns of B.
            for (int i = 0; i < B->nrows; i++) {
                double vi = MATD_EL(B, i, maxi);
                double vj = MATD_EL(B, i, maxj);

                MATD_EL(B, i, maxi) = V[0]*vi + V[2]*vj;
                MATD_EL(B, i, maxj) = V[1]*vi + V[3]*vj;
            }
        }
    }

    free(maxrowidx);

    if (!(flags & MATD_SVD_NO_WARNINGS) && iter == maxiters) {
        printf("WARNING: maximum iters (maximum = %d, matrix %d x %d, max=%.15f)\n",
               iter, A->nrows, A->ncols, maxv);

//        matd_print(A, "%15f");
    }

    // them all positive by flipping the corresponding columns of
    // U/LS.
    int *idxs = malloc(sizeof(int)*A->ncols);
    double *vals = malloc(sizeof(double)*A->ncols);
    for (int i = 0; i < A->ncols; i++) {
        idxs[i] = i;
        vals[i] = MATD_EL(B, i, i);
    }

    // A bubble sort. Seriously.
    int changed;
    do {
        changed = 0;

        for (int i = 0; i + 1 < A->ncols; i++) {
            if (fabs(vals[i+1]) > fabs(vals[i])) {
                int tmpi = idxs[i];
                idxs[i] = idxs[i+1];
                idxs[i+1] = tmpi;

                double tmpv = vals[i];
                vals[i] = vals[i+1];
                vals[i+1] = tmpv;

                changed = 1;
            }
        }
    } while (changed);

    matd_t *LP = matd_identity(A->nrows);
    matd_t *RP = matd_identity(A->ncols);

    for (int i = 0; i < A->ncols; i++) {
        MATD_EL(LP, idxs[i], idxs[i]) = 0; // undo the identity above
        MATD_EL(RP, idxs[i], idxs[i]) = 0;

        MATD_EL(LP, idxs[i], i) = vals[i] < 0 ? -1 : 1;
        MATD_EL(RP, idxs[i], i) = 1; //vals[i] < 0 ? -1 : 1;
    }
    free(idxs);
    free(vals);

    // we've factored:
    // LP*(something)*RP'

    // solve for (something)
    B = matd_op("M'*F*M", LP, B, RP);

    // update LS and RS, remembering that RS will be transposed.
    LS = matd_op("F*M", LS, LP);
    RS = matd_op("F*M", RS, RP);

    matd_destroy(LP);
    matd_destroy(RP);

    matd_svd_t res;
    memset(&res, 0, sizeof(res));

    // make B exactly diagonal

    for (int i = 0; i < B->nrows; i++) {
        for (int j = 0; j < B->ncols; j++) {
            if (i != j)
                MATD_EL(B, i, j) = 0;
        }
    }

    res.U = LS;
    res.S = B;
    res.V = RS;

    return res;
}


matd_svd_t matd_svd_flags(matd_t *A, int flags)
{
    matd_svd_t res;

    if (A->ncols <= A->nrows) {
        res = matd_svd_tall(A, flags);
    } else {
        matd_t *At = matd_transpose(A);

        // A =U  S  V'
        // A'=V  S' U'

        matd_svd_t tmp = matd_svd_tall(At, flags);

        memset(&res, 0, sizeof(res));
        res.U = tmp.V; //matd_transpose(tmp.V);
        res.S = matd_transpose(tmp.S);
        res.V = tmp.U; //matd_transpose(tmp.U);

        matd_destroy(tmp.S);
        matd_destroy(At);
    }

/*
  matd_t *check = matd_op("M*M*M'-M", res.U, res.S, res.V, A);
  double maxerr = 0;

  for (int i = 0; i < check->nrows; i++)
  for (int j = 0; j < check->ncols; j++)
  maxerr = fmax(maxerr, fabs(MATD_EL(check, i, j)));

  matd_destroy(check);

  if (maxerr > 1e-7) {
  printf("bad maxerr: %15f\n", maxerr);
  }

  if (maxerr > 1e-5) {
  printf("bad maxerr: %15f\n", maxerr);
  matd_print(A, "%15f");
  assert(0);
  }

*/
    return res;
}

void matd_subtract_inplace(matd_t *a, const matd_t *b)
{
    assert(a != NULL);
    assert(b != NULL);
    assert(a->nrows == b->nrows);
    assert(a->ncols == b->ncols);

    if (matd_is_scalar(a)) {
        a->data[0] -= b->data[0];
        return;
    }

    for (int i = 0; i < a->nrows; i++) {
        for (int j = 0; j < a->ncols; j++) {
            MATD_EL(a, i, j) -= MATD_EL(b, i, j);
        }
    }
}

// @garb, garbpos  A list of every matrix allocated during evaluation... used to assist cleanup.
// @oneterm: we should return at the end of this term (i.e., stop at a PLUS, MINUS, LPAREN).
static matd_t *matd_op_recurse(const char *expr, int *pos, matd_t *acc, matd_t **args, int *argpos,
                               matd_t **garb, int *garbpos, int oneterm)
{
    while (expr[*pos] != 0) {

        switch (expr[*pos]) {

            case '(': {
                if (oneterm && acc != NULL)
                    return acc;
                (*pos)++;
                matd_t *rhs = matd_op_recurse(expr, pos, NULL, args, argpos, garb, garbpos, 0);
                rhs = matd_op_gobble_right(expr, pos, rhs, garb, garbpos);

                if (acc == NULL) {
                    acc = rhs;
                } else {
                    matd_t *res = matd_multiply(acc, rhs);
                    garb[*garbpos] = res;
                    (*garbpos)++;
                    acc = res;
                }

                break;
            }

            case ')': {
                if (oneterm)
                    return acc;

                (*pos)++;
                return acc;
            }

            case '*': {
                (*pos)++;

                matd_t *rhs = matd_op_recurse(expr, pos, NULL, args, argpos, garb, garbpos, 1);
                rhs = matd_op_gobble_right(expr, pos, rhs, garb, garbpos);

                if (acc == NULL) {
                    acc = rhs;
                } else {
                    matd_t *res = matd_multiply(acc, rhs);
                    garb[*garbpos] = res;
                    (*garbpos)++;
                    acc = res;
                }

                break;
            }

            case 'F': {
                matd_t *rhs = args[*argpos];
                garb[*garbpos] = rhs;
                (*garbpos)++;

                (*pos)++;
                (*argpos)++;

                rhs = matd_op_gobble_right(expr, pos, rhs, garb, garbpos);

                if (acc == NULL) {
                    acc = rhs;
                } else {
                    matd_t *res = matd_multiply(acc, rhs);
                    garb[*garbpos] = res;
                    (*garbpos)++;
                    acc = res;
                }

                break;
            }

            case 'M': {
                matd_t *rhs = args[*argpos];

                (*pos)++;
                (*argpos)++;

                rhs = matd_op_gobble_right(expr, pos, rhs, garb, garbpos);

                if (acc == NULL) {
                    acc = rhs;
                } else {
                    matd_t *res = matd_multiply(acc, rhs);
                    garb[*garbpos] = res;
                    (*garbpos)++;
                    acc = res;
                }

                break;
            }

/*
  case 'D': {
  int rows = expr[*pos+1]-'0';
  int cols = expr[*pos+2]-'0';

  matd_t *rhs = matd_create(rows, cols);

  break;
  }
*/
                // a constant (SCALAR) defined inline. Treat just like M, creating a matd_t on the fly.
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
            case '.': {
                const char *start = &expr[*pos];
                char *end;
                double s = strtod(start, &end);
                (*pos) += (end - start);
                matd_t *rhs = matd_create_scalar(s);
                garb[*garbpos] = rhs;
                (*garbpos)++;

                rhs = matd_op_gobble_right(expr, pos, rhs, garb, garbpos);

                if (acc == NULL) {
                    acc = rhs;
                } else {
                    matd_t *res = matd_multiply(acc, rhs);
                    garb[*garbpos] = res;
                    (*garbpos)++;
                    acc = res;
                }

                break;
            }

            case '+': {
                if (oneterm && acc != NULL)
                    return acc;

                // don't support unary plus
                assert(acc != NULL);
                (*pos)++;
                matd_t *rhs = matd_op_recurse(expr, pos, NULL, args, argpos, garb, garbpos, 1);
                rhs = matd_op_gobble_right(expr, pos, rhs, garb, garbpos);

                matd_t *res = matd_add(acc, rhs);

                garb[*garbpos] = res;
                (*garbpos)++;
                acc = res;
                break;
            }

            case '-': {
                if (oneterm && acc != NULL)
                    return acc;

                if (acc == NULL) {
                    // unary minus
                    (*pos)++;
                    matd_t *rhs = matd_op_recurse(expr, pos, NULL, args, argpos, garb, garbpos, 1);
                    rhs = matd_op_gobble_right(expr, pos, rhs, garb, garbpos);

                    matd_t *res = matd_scale(rhs, -1);
                    garb[*garbpos] = res;
                    (*garbpos)++;
                    acc = res;
                } else {
                    // subtract
                    (*pos)++;
                    matd_t *rhs = matd_op_recurse(expr, pos, NULL, args, argpos, garb, garbpos, 1);
                    rhs = matd_op_gobble_right(expr, pos, rhs, garb, garbpos);

                    matd_t *res = matd_subtract(acc, rhs);
                    garb[*garbpos] = res;
                    (*garbpos)++;
                    acc = res;
                }
                break;
            }

            case ' ': {
                // nothing to do. spaces are meaningless.
                (*pos)++;
                break;
            }

            default: {
                printf("Unknown character: '%c'\n", expr[*pos]);
                assert(expr[*pos] != expr[*pos]);
            }
        }
    }
    return acc;
}

matd_t *matd_create(int rows, int cols)
{
    assert(rows >= 0);
    assert(cols >= 0);

    if (rows == 0 || cols == 0)
        return matd_create_scalar(0);

    matd_t *m = calloc(1, sizeof(matd_t) + (rows*cols*sizeof(double)));
    m->nrows = rows;
    m->ncols = cols;

    return m;
}

void matd_destroy(matd_t *m)
{
    if (!m)
        return;

    assert(m != NULL);
    free(m);
}

matd_t *matd_create_scalar(TYPE v)
{
    matd_t *m = calloc(1, sizeof(matd_t) + sizeof(double));
    m->nrows = 0;
    m->ncols = 0;
    m->data[0] = v;

    return m;
}

matd_plu_t *matd_plu(const matd_t *a)
{
    unsigned int *piv = calloc(a->nrows, sizeof(unsigned int));
    int pivsign = 1;
    matd_t *lu = matd_copy(a);

    // only for square matrices.
    assert(a->nrows == a->ncols);

    matd_plu_t *mlu = calloc(1, sizeof(matd_plu_t));

    for (int i = 0; i < a->nrows; i++)
        piv[i] = i;

    for (int j = 0; j < a->ncols; j++) {
        for (int i = 0; i < a->nrows; i++) {
            int kmax = i < j ? i : j; // min(i,j)

            // compute dot product of row i with column j (up through element kmax)
            double acc = 0;
            for (int k = 0; k < kmax; k++)
                acc += MATD_EL(lu, i, k) * MATD_EL(lu, k, j);

            MATD_EL(lu, i, j) -= acc;
        }

        // find pivot and exchange if necessary.
        int p = j;
        if (1) {
            for (int i = j+1; i < lu->nrows; i++) {
                if (fabs(MATD_EL(lu,i,j)) > fabs(MATD_EL(lu, p, j))) {
                    p = i;
                }
            }
        }

        // swap rows p and j?
        if (p != j) {
            TYPE *tmp = malloc(sizeof(TYPE)*lu->ncols);
            memcpy(tmp, &MATD_EL(lu, p, 0), sizeof(TYPE) * lu->ncols);
            memcpy(&MATD_EL(lu, p, 0), &MATD_EL(lu, j, 0), sizeof(TYPE) * lu->ncols);
            memcpy(&MATD_EL(lu, j, 0), tmp, sizeof(TYPE) * lu->ncols);
            int k = piv[p];
            piv[p] = piv[j];
            piv[j] = k;
            pivsign = -pivsign;
            free(tmp);
        }

        double LUjj = MATD_EL(lu, j, j);

        // If our pivot is very small (which means the matrix is
        // singular or nearly singular), replace with a new pivot of the
        // right sign.
        if (fabs(LUjj) < MATD_EPS) {
/*
            if (LUjj < 0)
                LUjj = -MATD_EPS;
            else
                LUjj = MATD_EPS;

            MATD_EL(lu, j, j) = LUjj;
*/
            mlu->singular = 1;
        }

        if (j < lu->ncols && j < lu->nrows && LUjj != 0) {
            LUjj = 1.0 / LUjj;
            for (int i = j+1; i < lu->nrows; i++)
                MATD_EL(lu, i, j) *= LUjj;
        }
    }

    mlu->lu = lu;
    mlu->piv = piv;
    mlu->pivsign = pivsign;

    return mlu;
}


// returns NULL if the matrix is (exactly) singular. Caller is
// otherwise responsible for knowing how to cope with badly
// conditioned matrices.
matd_t *matd_inverse(const matd_t *x)
{
    matd_t *m = NULL;

    assert(x != NULL);
    assert(x->nrows == x->ncols);

    if (matd_is_scalar(x)) {
        if (x->data[0] == 0)
            return NULL;

        return matd_create_scalar(1.0 / x->data[0]);
    }

    switch(x->nrows) {
        case 1: {
            double det = x->data[0];
            if (det == 0)
                return NULL;

            double invdet = 1.0 / det;

            m = matd_create(x->nrows, x->nrows);
            MATD_EL(m, 0, 0) = 1.0 * invdet;
            return m;
        }

        case 2: {
            double det = x->data[0] * x->data[3] - x->data[1] * x->data[2];
            if (det == 0)
                return NULL;

            double invdet = 1.0 / det;

            m = matd_create(x->nrows, x->nrows);
            MATD_EL(m, 0, 0) = MATD_EL(x, 1, 1) * invdet;
            MATD_EL(m, 0, 1) = - MATD_EL(x, 0, 1) * invdet;
            MATD_EL(m, 1, 0) = - MATD_EL(x, 1, 0) * invdet;
            MATD_EL(m, 1, 1) = MATD_EL(x, 0, 0) * invdet;
            return m;
        }

        default: {
            matd_plu_t *plu = matd_plu(x);

            matd_t *inv = NULL;
            if (!plu->singular) {
                matd_t *ident = matd_identity(x->nrows);
                inv = matd_plu_solve(plu, ident);
                matd_destroy(ident);
            }

            matd_plu_destroy(plu);

            return inv;
        }
    }

    return NULL; // unreachable
}

matd_t *matd_create_data(int rows, int cols, const TYPE *data)
{
    if (rows == 0 || cols == 0)
        return matd_create_scalar(data[0]);

    matd_t *m = matd_create(rows, cols);
    for (int i = 0; i < rows * cols; i++)
        m->data[i] = data[i];

    return m;
}

matd_t *matd_identity(int dim)
{
    if (dim == 0)
        return matd_create_scalar(1);

    matd_t *m = matd_create(dim, dim);
    for (int i = 0; i < dim; i++)
        MATD_EL(m, i, i) = 1;

    return m;
}

void matd_plu_destroy(matd_plu_t *mlu)
{
    matd_destroy(mlu->lu);
    free(mlu->piv);
    memset(mlu, 0, sizeof(matd_plu_t));
    free(mlu);
}

matd_t *matd_copy(const matd_t *m)
{
    assert(m != NULL);

    matd_t *x = matd_create(m->nrows, m->ncols);
    if (matd_is_scalar(m))//scalar标量
        x->data[0] = m->data[0];
    else
        memcpy(x->data, m->data, sizeof(TYPE)*m->ncols*m->nrows);

    return x;
}

// always returns a new matrix.
matd_t *matd_op(const char *expr, ...)
{
    int nargs = 0;
    int exprlen = 0;

    assert(expr != NULL);

    for (const char *p = expr; *p != 0; p++) {
        if (*p == 'M' || *p == 'F')
            nargs++;
        exprlen++;
    }

    assert(nargs > 0);

    if (!exprlen) // expr = ""
        return NULL;

    va_list ap;
    va_start(ap, expr);

    matd_t **args = malloc(sizeof(matd_t*)*nargs);
    for (int i = 0; i < nargs; i++) {
        args[i] = va_arg(ap, matd_t*);
        // XXX: sanity check argument; emit warning/error if args[i]
        // doesn't look like a matd_t*.
    }

    va_end(ap);

    int pos = 0;
    int argpos = 0;
    int garbpos = 0;

    // can't create more than 2 new result per character
    // one result, and possibly one argument to free
    matd_t **garb = malloc(sizeof(matd_t*)*2*exprlen);

    matd_t *res = matd_op_recurse(expr, &pos, NULL, args, &argpos, garb, &garbpos, 0);
    free(args);

    // 'res' may need to be freed as part of garbage collection (i.e. expr = "F")
    matd_t *res_copy = (res ? matd_copy(res) : NULL);

    for (int i = 0; i < garbpos; i++) {
        matd_destroy(garb[i]);
    }
    free(garb);

    return res_copy;
}
