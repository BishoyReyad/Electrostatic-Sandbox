#include <electrostatic/algorithm/arithmos/vectorspaces/vector2d/vector2d.h>

uint8_t vector2d_are_perpendicular(vector2d vec0, vector2d vec1) {
    return vector2d_dot_product(vec0, vec1) == 0;
}
