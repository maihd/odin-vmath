package vmath

import "core:fmt"

main :: proc() {
	// fmt.printf("Vec3{{1,1,1}} = %v\n", Vec3{1, 1, 1})
	v: Vec2 = Vec2(1.0)
	fmt.printf("vec3(v) = %v\n", vec3(v, 0))
	fmt.printf("vec3(1) = %v\n", vec3(1))
	fmt.printf("vec3(1, 2, 3) = %v\n", vec3(1, 2, 3))
}
