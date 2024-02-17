#include <stdio.h>

/**
 * @references
 * 1. https://stackoverflow.com/questions/13716913/default-value-for-struct-member-in-c
 * 2. https://stackoverflow.com/questions/28778625/whats-the-difference-between-and-in-c
 */

/** second solution */
typedef struct {
    double x;
    double y;
} Leaf;
// Leaf Leaf_default = {0, 0};
// #define LEAF(...) ((Leaf){.x = 0, .y = 0, ##__VA_ARGS__})

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
