/****************************************************************/
/*	zarray.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of zarray.c
		 														*/
/****************************************************************/
/*  Revision History:
	6/8/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __ZARRAY_H__
#define __ZARRAY_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include <stddef.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
/**
 * Defines a structure which acts as a resize-able array ala Java's ArrayList.
 */
typedef struct zarray zarray_t;
struct zarray
{
    size_t el_sz; // size of each element

    int size; // how many elements?
    int alloc; // we've allocated storage for how many elements?
    char *data;
};

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
/**
 * Retrieves the element from the supplied array located at the zero-based
 * index of 'idx' and copies its value into the variable pointed to by the pointer
 * 'p'.
 */
static inline void zarray_get(const zarray_t *za, int idx, void *p)
{
    assert(za != NULL);
    assert(p != NULL);
    assert(idx >= 0);
    assert(idx < za->size);

    memcpy(p, &za->data[idx*za->el_sz], za->el_sz);
}

/**
 * Creates and returns a variable array structure capable of holding elements of
 * the specified size. It is the caller's responsibility to call zarray_destroy()
 * on the returned array when it is no longer needed.
 */
static inline zarray_t *zarray_create(size_t el_sz)
{
    assert(el_sz > 0);

    zarray_t *za = (zarray_t*) calloc(1, sizeof(zarray_t));
    za->el_sz = el_sz;
    return za;//返回一个指针，该指针指向一个内存大小为sizeof(zarray_t)的结构体，该结构体中的el_sz由上级参数指定
}
/**
 * Allocates enough internal storage in the supplied variable array structure to
 * guarantee that the supplied number of elements (capacity) can be safely stored.
 */
static inline void zarray_ensure_capacity(zarray_t *za, int capacity)
{
    assert(za != NULL);

    if (capacity <= za->alloc)
        return;

    while (za->alloc < capacity) {
        za->alloc *= 2;
        if (za->alloc < 8)
            za->alloc = 8;
    }

    za->data = (char*) realloc(za->data, za->alloc * za->el_sz);
}
/**
 * Frees all resources associated with the variable array structure which was
 * created by zarray_create(). After calling, 'za' will no longer be valid for storage.
 */
static inline void zarray_destroy(zarray_t *za)
{
    if (za == NULL)
        return;

    if (za->data != NULL)
        free(za->data);
    memset(za, 0, sizeof(zarray_t));
    free(za);
}
/**
 * Adds a new element to the end of the supplied array, and sets its value
 * (by copying) from the data pointed to by the supplied pointer 'p'.
 * Automatically ensures that enough storage space is available for the new element.
 */
static inline void zarray_add(zarray_t *za, const void *p)
{
    assert(za != NULL);
    assert(p != NULL);

    zarray_ensure_capacity(za, za->size + 1);

    memcpy(&za->data[za->size*za->el_sz], p, za->el_sz);
    za->size++;
}


/**
 * Similar to zarray_get(), but returns a "live" pointer to the internal
 * storage, avoiding a memcpy. This pointer is not valid across
 * operations which might move memory around (i.e. zarray_remove_value(),
 * zarray_remove_index(), zarray_insert(), zarray_sort(), zarray_clear()).
 * 'p' should be a pointer to the pointer which will be set to the internal address.
 */
inline static void zarray_get_volatile(const zarray_t *za, int idx, void *p)
{
    assert(za != NULL);
    assert(p != NULL);
    assert(idx >= 0);
    assert(idx < za->size);

    *((void**) p) = &za->data[idx*za->el_sz];//首先强制类型转换成无类型的二维指针，然后使*p赋值
}

static inline void zarray_sort(zarray_t *za, int (*compar)(const void*, const void*))
{
    assert(za != NULL);
    assert(compar != NULL);
    if (za->size == 0)
        return;

    qsort(za->data, za->size, za->el_sz, compar);
}

/**
 * Retrieves the number of elements currently being contained by the passed
 * array, which may be different from its capacity. The index of the last element
 * in the array will be one less than the returned value.
 */
static inline int zarray_size(const zarray_t *za)
{
    assert(za != NULL);

    return za->size;
}

#endif
