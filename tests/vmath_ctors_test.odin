package vmath_test

import vm ".."
import "core:fmt"
import "core:testing"

@(test)
vec2_ctor_tests :: proc(t: ^testing.T) {
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

@(test)
uvec2_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vm.uvec2(0, 1) == [2]u32{0, 1})
	testing.expect(t, vm.uvec2(2, 3) == vm.UVec2{2, 3})

	testing.expect(t, vm.uvec2(0) == [2]u32{0, 0})
	testing.expect(t, vm.uvec2(1) == vm.UVec2{1, 1})

	testing.expect(t, vm.uvec2(vm.UVec3{0, 1, 2}) == [2]u32{0, 1})
	testing.expect(t, vm.uvec2(vm.UVec3{3, 4, 5}) == vm.UVec2{3, 4})

	testing.expect(t, vm.uvec2(vm.UVec4{0, 1, 2, 3}) == [2]u32{0, 1})
	testing.expect(t, vm.uvec2(vm.UVec4{4, 5, 6, 7}) == vm.UVec2{4, 5})
}

@(test)
uvec3_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vm.uvec3(0, 1, 2) == [3]u32{0, 1, 2})
	testing.expect(t, vm.uvec3(3, 4, 5) == vm.UVec3{3, 4, 5})

	testing.expect(t, vm.uvec3(0) == [3]u32{0, 0, 0})
	testing.expect(t, vm.uvec3(1) == vm.UVec3{1, 1, 1})

	testing.expect(t, vm.uvec3(vm.UVec2{0, 1}, 0) == [3]u32{0, 1, 0})
	testing.expect(t, vm.uvec3(vm.UVec2{2, 3}, 1) == vm.UVec3{2, 3, 1})

	testing.expect(t, vm.uvec3(vm.UVec4{0, 1, 2, 3}) == [3]u32{0, 1, 2})
	testing.expect(t, vm.uvec3(vm.UVec4{4, 5, 6, 7}) == vm.UVec3{4, 5, 6})
}

@(test)
uvec4_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vm.uvec4(0, 1, 2, 3) == [4]u32{0, 1, 2, 3})
	testing.expect(t, vm.uvec4(4, 5, 6, 7) == vm.UVec4{4, 5, 6, 7})

	testing.expect(t, vm.uvec4(0) == [4]u32{0, 0, 0, 0})
	testing.expect(t, vm.uvec4(1) == vm.UVec4{1, 1, 1, 1})

	testing.expect(t, vm.uvec4(vm.UVec2{0, 1}, 0, 1) == [4]u32{0, 1, 0, 1})
	testing.expect(t, vm.uvec4(vm.UVec2{2, 3}, 2, 3) == vm.UVec4{2, 3, 2, 3})

	testing.expect(t, vm.uvec4(vm.UVec3{0, 1, 2}, 3) == [4]u32{0, 1, 2, 3})
	testing.expect(t, vm.uvec4(vm.UVec3{3, 4, 5}, 7) == vm.UVec4{3, 4, 5, 7})
}

@(test)
mat2_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vm.mat2(0, 1, 2, 3) == matrix[2, 2]f32{
				0, 1,
				2, 3,
			})

	testing.expect(t, vm.mat2(4, 5, 6, 7) == vm.Mat2{4, 5, 6, 7})

	testing.expect(t, vm.mat2(1) == matrix[2, 2]f32{
				1, 0,
				0, 1,
			})

	testing.expect(t, vm.mat2(2) == vm.Mat2{2, 0, 0, 2})

	testing.expect(t, vm.mat2(vm.vec2(1), vm.vec2(2)) == matrix[2, 2]f32{
				1, 1,
				2, 2,
			})

	testing.expect(t, vm.mat2(vm.vec2(3), vm.vec2(4)) == vm.Mat2{3, 3, 4, 4})
}

@(test)
mat3_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(t, vm.mat3(0, 1, 2, 3, 4, 5, 6, 7, 8) == matrix[3, 3]f32{
				0, 1, 2,
				3, 4, 5,
				6, 7, 8,
			})

	testing.expect(
		t,
		vm.mat3(9, 10, 11, 12, 13, 14, 15, 16, 17) == vm.Mat3{9, 10, 11, 12, 13, 14, 15, 16, 17},
	)

	testing.expect(t, vm.mat3(1) == matrix[3, 3]f32{
				1, 0, 0,
				0, 1, 0,
				0, 0, 1,
			})

	testing.expect(t, vm.mat3(2) == vm.Mat3{2, 0, 0, 0, 2, 0, 0, 0, 2})

	testing.expect(t, vm.mat3(vm.vec3(1), vm.vec3(2), vm.vec3(3)) == matrix[3, 3]f32{
				1, 1, 1,
				2, 2, 2,
				3, 3, 3,
			})

	testing.expect(
		t,
		vm.mat3(vm.vec3(4), vm.vec3(5), vm.vec3(6)) == vm.Mat3{4, 4, 4, 5, 5, 5, 6, 6, 6},
	)
}

@(test)
mat4_ctor_tests :: proc(t: ^testing.T) {
	testing.expect(
		t,
		vm.mat4(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15) == matrix[4, 4]f32{
				0, 1, 2, 3,
				4, 5, 6, 7,
				8, 9, 10, 11,
				12, 13, 14, 15,
			},
	)

	testing.expect(
		t,
		vm.mat4(16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31) ==
		vm.Mat4{16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31},
	)

	testing.expect(t, vm.mat4(1) == matrix[4, 4]f32{
				1, 0, 0, 0,
				0, 1, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1,
			})

	testing.expect(t, vm.mat4(2) == vm.Mat4{2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2})

	testing.expect(t, vm.mat4(vm.vec4(1), vm.vec4(2), vm.vec4(3), vm.vec4(4)) == matrix[4, 4]f32{
				1, 1, 1, 1,
				2, 2, 2, 2,
				3, 3, 3, 3,
				4, 4, 4, 4,
			})

	testing.expect(
		t,
		vm.mat4(vm.vec4(5), vm.vec4(6), vm.vec4(7), vm.vec4(8)) ==
		vm.Mat4{5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8},
	)
}
