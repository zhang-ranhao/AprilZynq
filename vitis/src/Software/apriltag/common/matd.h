/****************************************************************/
/*	matd.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of matd.c
		 														*/
/****************************************************************/
/*  Revision History:
	6/23/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __MATD_H__
#define __MATD_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include <assert.h>
#include <stdlib.h>
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
/**
 * Defines a matrix structure for holding double-precision values with
 * data in row-major order (i.e. index = row*ncols + col).
 *
 * nrows and ncols are 1-based counts with the exception that a scalar (non-matrix)
 *   is represented with nrows=0 and/or ncols=0.
 */
typedef struct
{
    unsigned int nrows, ncols;
    double data[];
//    double *data;
} matd_t;

// to ease creating mati, matf, etc. in the future.
#define TYPE double

/**
 * A macro to reference a specific matd_t data element given it's zero-based
 * row and column indexes. Suitable for both retrieval and assignment.
 */
#define MATD_EL(m, row, col) (m)->data[((row)*(m)->ncols + (col))]

/**
 * Defines a small value which can be used in place of zero for approximating
 * calculations which are singular at zero values (i.e. inverting a matrix with
 * a zero or near-zero determinant).
 */
#define MATD_EPS 1e-8
/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
typedef struct
{
    // was the input matrix singular? When a zero pivot is found, this
    // flag is set to indicate that this has happened.
    int singular;

    unsigned int *piv; // permutation indices
    int pivsign; // either +1 or -1

    // The matd_plu_t object returned "owns" the enclosed LU matrix. It
    // is not expected that the returned object is itself useful to
    // users: it contains the L and U information all smushed
    // together.
    matd_t *lu; // combined L and U matrices, permuted so they can be triangular.
} matd_plu_t;

typedef struct
{
    matd_t *U;
    matd_t *S;
    matd_t *V;
} matd_svd_t;

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
/**
 * Determines whether the supplied matrix 'a' is a scalar (positive return) or
 * not (zero return, indicating a matrix of dimensions at least 1x1).
 */
static inline int matd_is_scalar(const matd_t *a)
{
    assert(a != NULL);
    return a->ncols <= 1 && a->nrows <= 1;
}

/**
 * Determines whether the supplied matrix 'a' is a row or column vector
 * with a dimension of 'len' (positive return) or not (zero return).
 */
static inline int matd_is_vector_len(const matd_t *a, int len)
{
    assert(a != NULL);
    return (a->ncols == 1 && a->nrows == (unsigned int)len) || (a->ncols == (unsigned int)len && a->nrows == 1);
}

/**
 * Determines whether the supplied matrix 'a' is a row or column vector
 * (positive return) or not (zero return, indicating either 'a' is a scalar or a
 * matrix with at least one dimension > 1).
 */
static inline int matd_is_vector(const matd_t *a)
{
    assert(a != NULL);
    return a->ncols == 1 || a->nrows == 1;
}

/**
 * Calculates the magnitude of the supplied matrix 'a'.
 */
double matd_vec_mag(const matd_t *a);

/**
 * Assigns the given value to the supplied scalar element ('m' must be a scalar).
 * Performs more thorough validation checking than MATD_EL().
 */
void matd_put_scalar(matd_t *m, double value);

/**
 * Assigns the given value to the matrix cell at the given zero-based row and
 * column index. Performs more thorough validation checking than MATD_EL().
 */
void matd_put(matd_t *m, int row, int col, double value);

/**
 * Retrieves the cell value for matrix 'm' at the given zero-based row and column index.
 * Performs more thorough validation checking than MATD_EL().
 */
double matd_get(const matd_t *m, int row, int col);

/**
 * Calculates the normalization of the supplied vector 'a' (i.e. a unit vector
 * of the same dimension and orientation as 'a' with a magnitude of 1) and returns
 * it as a new vector. 'a' must be a vector of any dimension and must have a
 * non-zero magnitude. It is the caller's responsibility to call matd_destroy()
 * on the returned matrix.
 */
matd_t *matd_vec_normalize(const matd_t *a);

/**
 * Calculates the cross product of supplied matrices 'a' and 'b' (i.e. a x b)
 * and returns it as a new matrix. Both 'a' and 'b' must be vectors of dimension
 * 3, but can be either row or column vectors. It is the caller's responsibility
 * to call matd_destroy() on the returned matrix.
 */
matd_t *matd_crossproduct(const matd_t *a, const matd_t *b);

/**
 * Calculates the determinant of the supplied matrix 'a'.
 */
double matd_det(const matd_t *a);

/**
 * Creates a scalar with the supplied value 'v'. It is the caller's responsibility
 * to call matd_destroy() on the returned matrix.
 *
 * NOTE: Scalars are different than 1x1 matrices (implementation note:
 * they are encoded as 0x0 matrices). For example: for matrices A*B, A
 * and B must both have specific dimensions. However, if A is a
 * scalar, there are no restrictions on the size of B.
 */
matd_t *matd_create_scalar(double v);

/**
 * Creates a square identity matrix with the given number of rows (and
 * therefore columns), or a scalar with value 1 in the case where dim=0.
 * It is the caller's responsibility to call matd_destroy() on the
 * returned matrix.
 */
matd_t *matd_identity(int dim);

/**
 * Scales all cell values of matrix 'a' by the given scale factor 's' and
 * overwrites the contents of 'a' with the results.
 */
void matd_scale_inplace(matd_t *a, double s);

/**
 * Creates an exact copy of the supplied matrix 'm'. It is the caller's
 * responsibility to call matd_destroy() on the returned matrix.
 */
matd_t *matd_copy(const matd_t *m);

/**
 * Creates a double matrix with the given number of rows and columns (or a scalar
 * in the case where rows=0 and/or cols=0). All data elements will be initialized
 * to zero. It is the caller's responsibility to call matd_destroy() on the
 * returned matrix.
 */
matd_t *matd_create(int rows, int cols);

/** Compute a complete SVD of a matrix. The SVD exists for all
 * matrices. For a matrix MxN, we will have:
 *
 * A = U*S*V'
 *
 * where A is MxN, U is MxM (and is an orthonormal basis), S is MxN
 * (and is diagonal up to machine precision), and V is NxN (and is an
 * orthonormal basis).
 *
 * The caller is responsible for destroying U, S, and V.
 **/
matd_svd_t matd_svd(matd_t *A);

/**
 * Adds the values of 'b' to matrix 'a', cell-by-cell, and overwrites the
 * contents of 'a' with the results. The supplied matrices must have
 * identical dimensions.
 */
void matd_add_inplace(matd_t *a, const matd_t *b);

/**
 * Creates a new matrix by applying a series of matrix operations, as expressed
 * in 'expr', to the supplied list of matrices. Each matrix to be operated upon
 * must be represented in the expression by a separate matrix placeholder, 'M',
 * and there must be one matrix supplied as an argument for each matrix
 * placeholder in the expression. All rules and caveats of the corresponding
 * matrix operations apply to the operated-on matrices. It is the caller's
 * responsibility to call matd_destroy() on the returned matrix.
 *
 * Available operators (in order of increasing precedence):
 *   M+M   add two matrices together
 *   M-M   subtract one matrix from another
 *   M*M   multiply two matrices together (matrix product)
 *   MM    multiply two matrices together (matrix product)
 *   -M    negate a matrix
 *   M^-1  take the inverse of a matrix
 *   M'    take the transpose of a matrix
 *
 * Expressions can be combined together and grouped by enclosing them in
 * parenthesis, i.e.:
 *   -M(M+M+M)-(M*M)^-1
 *
 * Scalar values can be generated on-the-fly, i.e.:
 *   M*2.2  scales M by 2.2
 *   -2+M   adds -2 to all elements of M
 *
 * All whitespace in the expression is ignored.
 */
matd_t *matd_op(const char *expr, ...);

/**
 * Subtracts matrix 'b' from matrix 'a', cell-by-cell, and returns the results
 * as a new matrix of the same dimensions. The supplied matrices must have
 * identical dimensions.  It is the caller's responsibility to call matd_destroy()
 * on the returned matrix.
 */
matd_t *matd_subtract(const matd_t *a, const matd_t *b);


matd_t *matd_plu_l(const matd_plu_t *lu);
matd_t *matd_plu_u(const matd_plu_t *mlu);
matd_plu_t *matd_plu(const matd_t *a);


void matd_destroy(matd_t *m);
void matd_plu_destroy(matd_plu_t *mlu);
matd_t *matd_inverse(const matd_t *x);
matd_t *matd_plu_solve(const matd_plu_t *mlu, const matd_t *b);
matd_t *matd_multiply(const matd_t *a, const matd_t *b);


#define MATD_SVD_NO_WARNINGS 1
    matd_svd_t matd_svd_flags(matd_t *A, int flags);



matd_t *matd_create_data(int rows, int cols, const TYPE *data);


#endif
