float rot_followmouse(float howmuch) {
    return PI * howmuch * map(variance, 0,width, -2,2);
}
