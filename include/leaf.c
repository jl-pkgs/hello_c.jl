#include "leaf.h"

void init_leaf_struct(Leaf x[], Leaf replacement[]) {
    x->x = replacement->x;
    x->y = replacement->y;
}

void init_leaf_struct2(Leaf *x, Leaf *replacement) {
    x->x = replacement->x;
    x->y = replacement->y;
}

void init_leaf_dbl(Leaf x[], double replacement) {
    x->x = replacement;
    x->y = replacement;

    printf("x: %f\n", x->x);
    printf("y: %f\n", x->y);
}
