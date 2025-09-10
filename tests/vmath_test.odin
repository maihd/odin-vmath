package vmath_test

import vm ".."
import "core:fmt"
import "core:testing"

@(test)
vec2_ctor_tests :: proc(t: ^testing.T) {
	// Below code will not compiled because we force user must
	// use the results of procedure
	// vec2(1)

	testing.expect(t, vm.vec2(0, 1) == [2]f32{0, 1})
	testing.expect(t, vm.vec2(2, 3) == vm.Vec2{2, 3})

	testing.expect(t, vm.vec2(0) == [2]f32{0, 0})
	testing.expect(t, vm.vec2(1) == vm.Vec2{1, 1})

	testing.expect(t, vm.vec2(vm.Vec3{0, 1, 2}) == [2]f32{0, 1})
	testing.expect(t, vm.vec2(vm.Vec3{3, 4, 5}) == vm.Vec2{3, 4})

	testing.expect(t, vm.vec2(vm.Vec4{0, 1, 2, 3}) == [2]f32{0, 1})
	testing.expect(t, vm.vec2(vm.Vec4{4, 5, 6, 7}) == vm.Vec2{4, 5})
}

@(test)
vec3_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vm.vec3(0, 1, 2) == [3]f32{0, 1, 2})
	testing.expect(t, vm.vec3(3, 4, 5) == vm.Vec3{3, 4, 5})

	testing.expect(t, vm.vec3(0) == [3]f32{0, 0, 0})
	testing.expect(t, vm.vec3(1) == vm.Vec3{1, 1, 1})

	testing.expect(t, vm.vec3(vm.Vec2{0, 1}, 0) == [3]f32{0, 1, 0})
	testing.expect(t, vm.vec3(vm.Vec2{2, 3}, 1) == vm.Vec3{2, 3, 1})

	testing.expect(t, vm.vec3(vm.Vec4{0, 1, 2, 3}) == [3]f32{0, 1, 2})
	testing.expect(t, vm.vec3(vm.Vec4{4, 5, 6, 7}) == vm.Vec3{4, 5, 6})
}

@(test)
vec4_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vm.vec4(0, 1, 2, 3) == [4]f32{0, 1, 2, 3})
	testing.expect(t, vm.vec4(4, 5, 6, 7) == vm.Vec4{4, 5, 6, 7})

	testing.expect(t, vm.vec4(0) == [4]f32{0, 0, 0, 0})
	testing.expect(t, vm.vec4(1) == vm.Vec4{1, 1, 1, 1})

	testing.expect(t, vm.vec4(vm.Vec2{0, 1}, 0, 1) == [4]f32{0, 1, 0, 1})
	testing.expect(t, vm.vec4(vm.Vec2{2, 3}, 2, 3) == vm.Vec4{2, 3, 2, 3})

	testing.expect(t, vm.vec4(vm.Vec3{0, 1, 2}, 3) == [4]f32{0, 1, 2, 3})
	testing.expect(t, vm.vec4(vm.Vec3{3, 4, 5}, 7) == vm.Vec4{3, 4, 5, 7})
}

@(test)
ivec2_ctor_tests :: proc(t: ^testing.T) {
	// Below code will not compiled because we force user must
	// use the results of procedure
	// vec2(1)

	testing.expect(t, vm.ivec2(0, 1) == [2]i32{0, 1})
	testing.expect(t, vm.ivec2(2, 3) == vm.IVec2{2, 3})

	testing.expect(t, vm.ivec2(0) == [2]i32{0, 0})
	testing.expect(t, vm.ivec2(1) == vm.IVec2{1, 1})

	testing.expect(t, vm.ivec2(vm.IVec3{0, 1, 2}) == [2]i32{0, 1})
	testing.expect(t, vm.ivec2(vm.IVec3{3, 4, 5}) == vm.IVec2{3, 4})

	testing.expect(t, vm.ivec2(vm.IVec4{0, 1, 2, 3}) == [2]i32{0, 1})
	testing.expect(t, vm.ivec2(vm.IVec4{4, 5, 6, 7}) == vm.IVec2{4, 5})
}

@(test)
ivec3_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vm.ivec3(0, 1, 2) == [3]i32{0, 1, 2})
	testing.expect(t, vm.ivec3(3, 4, 5) == vm.IVec3{3, 4, 5})

	testing.expect(t, vm.ivec3(0) == [3]i32{0, 0, 0})
	testing.expect(t, vm.ivec3(1) == vm.IVec3{1, 1, 1})

	testing.expect(t, vm.ivec3(vm.IVec2{0, 1}, 0) == [3]i32{0, 1, 0})
	testing.expect(t, vm.ivec3(vm.IVec2{2, 3}, 1) == vm.IVec3{2, 3, 1})

	testing.expect(t, vm.ivec3(vm.IVec4{0, 1, 2, 3}) == [3]i32{0, 1, 2})
	testing.expect(t, vm.ivec3(vm.IVec4{4, 5, 6, 7}) == vm.IVec3{4, 5, 6})
}

@(test)
ivec4_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vm.ivec4(0, 1, 2, 3) == [4]i32{0, 1, 2, 3})
	testing.expect(t, vm.ivec4(4, 5, 6, 7) == vm.IVec4{4, 5, 6, 7})

	testing.expect(t, vm.ivec4(0) == [4]i32{0, 0, 0, 0})
	testing.expect(t, vm.ivec4(1) == vm.IVec4{1, 1, 1, 1})

	testing.expect(t, vm.ivec4(vm.IVec2{0, 1}, 0, 1) == [4]i32{0, 1, 0, 1})
	testing.expect(t, vm.ivec4(vm.IVec2{2, 3}, 2, 3) == vm.IVec4{2, 3, 2, 3})

	testing.expect(t, vm.ivec4(vm.IVec3{0, 1, 2}, 3) == [4]i32{0, 1, 2, 3})
	testing.expect(t, vm.ivec4(vm.IVec3{3, 4, 5}, 7) == vm.IVec4{3, 4, 5, 7})
}
