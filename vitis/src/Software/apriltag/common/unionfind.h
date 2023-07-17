/****************************************************************/
/*	unionfind.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of union
		 														*/
/****************************************************************/
/*  Revision History:
	6/10/2023(Ranhao): Created
																*/
/****************************************************************/
#ifndef __UNIONFIND_H__
#define __UNIONFIND_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "stdint.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
typedef struct unionfind unionfind_t;

struct unionfind
{
    uint32_t maxid;
    struct ufrec *data;
};

struct ufrec
{
    // the parent of this node. If a node's parent is its own index,
    // then it is a root.
    uint32_t parent;

    // for the root of a connected component, the number of components
    // connected to it. For intermediate values, it's not meaningful.
    uint32_t size;
};

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
static inline void unionfind_destroy(unionfind_t *uf)
{
    free(uf->data);
    free(uf);
}

static inline unionfind_t *unionfind_create(uint32_t maxid)
{
    unionfind_t *uf = (unionfind_t*) malloc(1 * sizeof(unionfind_t));
    uf->maxid = maxid;
    uf->data = (struct ufrec*) malloc((maxid+1) * sizeof(struct ufrec));

    for (uint32_t i = 0; i <= maxid; i++) {
    	uf->data[i].size = 1;
        uf->data[i].parent = i;
    }


    return uf;
}

static inline uint32_t unionfind_get_representative(unionfind_t *uf, uint32_t id)
{
    uint32_t root = id;

    // chase down the root 寻找父类，只到父类的父类就是自己，也就是找到了自己的根
    while (uf->data[root].parent != root) {
        root = uf->data[root].parent;
    }

    // go back and collapse the tree. 寻找的同时进行路径压缩
    while (uf->data[id].parent != root) {
        uint32_t tmp = uf->data[id].parent;
        uf->data[id].parent = root;
        id = tmp;
    }

    return root;
}

static inline uint32_t unionfind_get_set_size(unionfind_t *uf, uint32_t id)
{
    uint32_t repid = unionfind_get_representative(uf, id);
    return uf->data[repid].size;
}


static inline uint32_t unionfind_connect(unionfind_t *uf, uint32_t aid, uint32_t bid)
{
    uint32_t aroot = unionfind_get_representative(uf, aid);//当前元素
    uint32_t broot = unionfind_get_representative(uf, bid);//待比较的元素

    if (aroot == broot)
        return aroot;

    // we don't perform "union by rank", but we perform a similar
    // operation (but probably without the same asymptotic guarantee):
    // We join trees based on the number of *elements* (as opposed to
    // rank) contained within each tree. I.e., we use size as a proxy
    // for rank.  In my testing, it's often *faster* to use size than
    // rank, perhaps because the rank of the tree isn't that critical
    // if there are very few nodes in it.
    uint32_t asize = uf->data[aroot].size;//1
    uint32_t bsize = uf->data[broot].size;//2

    // optimization idea: We could shortcut some or all of the tree
    // that is grafted onto the other tree. Pro: those nodes were just
    // read and so are probably in cache. Con: it might end up being
    // wasted effort -- the tree might be grafted onto another tree in
    // a moment!
    if (asize > bsize) {
        uf->data[broot].parent = aroot;
        uf->data[aroot].size += bsize;
        return aroot;
    } else {
        uf->data[aroot].parent = broot;
        uf->data[broot].size += asize;
        return broot;
    }
}

#endif
