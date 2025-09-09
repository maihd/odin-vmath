package vmath

import "core:fmt"
import "core:testing"

@(test)
vmath_hellope :: proc(t: ^testing.T) {
	fmt.printf("Hellope!\n")
}

@(test)
vec2_ctor_tests :: proc(t: ^testing.T) {
	// Below code will not compiled because we force user must
	// use the results of procedure
	// vec2(1)

	testing.expect(t, vec2(0, 1) == [2]f32{0, 1})
	testing.expect(t, vec2(2, 3) == Vec2{2, 3})

	testing.expect(t, vec2(0) == [2]f32{0, 0})
	testing.expect(t, vec2(1) == Vec2{1, 1})

	testing.expect(t, vec2(Vec3{0, 1, 2}) == [2]f32{0, 1})
	testing.expect(t, vec2(Vec3{3, 4, 5}) == Vec2{3, 4})

	testing.expect(t, vec2(Vec4{0, 1, 2, 3}) == [2]f32{0, 1})
	testing.expect(t, vec2(Vec4{4, 5, 6, 7}) == Vec2{4, 5})
}

@(test)
vec3_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vec3(0, 1, 2) == [3]f32{0, 1, 2})
	testing.expect(t, vec3(3, 4, 5) == Vec3{3, 4, 5})

	testing.expect(t, vec3(0) == [3]f32{0, 0, 0})
	testing.expect(t, vec3(1) == Vec3{1, 1, 1})

	testing.expect(t, vec3(Vec2{0, 1}, 0) == [3]f32{0, 1, 0})
	testing.expect(t, vec3(Vec2{2, 3}, 1) == Vec3{2, 3, 1})

	testing.expect(t, vec3(Vec4{0, 1, 2, 3}) == [3]f32{0, 1, 2})
	testing.expect(t, vec3(Vec4{4, 5, 6, 7}) == Vec3{4, 5, 6})
}

@(test)
vec4_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vec4(0, 1, 2, 3) == [4]f32{0, 1, 2, 3})
	testing.expect(t, vec4(4, 5, 6, 7) == Vec4{4, 5, 6, 7})

	testing.expect(t, vec4(0) == [4]f32{0, 0, 0, 0})
	testing.expect(t, vec4(1) == Vec4{1, 1, 1, 1})

	testing.expect(t, vec4(Vec2{0, 1}, 0, 1) == [4]f32{0, 1, 0, 1})
	testing.expect(t, vec4(Vec2{2, 3}, 2, 3) == Vec4{2, 3, 2, 3})

	testing.expect(t, vec4(Vec3{0, 1, 2}, 3) == [4]f32{0, 1, 2, 3})
	testing.expect(t, vec4(Vec3{3, 4, 5}, 7) == Vec4{3, 4, 5, 7})
}
