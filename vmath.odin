package vmath

import "core:fmt"
import "core:math"
import "core:math/linalg"
import "core:math/linalg/glsl"

Vec2 :: [2]f32
Vec3 :: [3]f32
Vec4 :: [4]f32

IVec2 :: [2]i32
IVec3 :: [3]i32
IVec4 :: [4]i32

UVec2 :: [2]u32
UVec3 :: [3]u32
UVec4 :: [4]u32

Mat2 :: matrix[2, 2]f32
Mat3 :: matrix[3, 3]f32
Mat4 :: matrix[4, 4]f32

// ----------------------------------------
// Constructors
// ----------------------------------------

@(private, require_results)
vec2_new :: proc "contextless" (x, y: f32) -> Vec2 {
	return Vec2{x, y}
}

@(private, require_results)
vec2_new1 :: proc "contextless" (s: f32) -> Vec2 {
	return Vec2{s, s}
}

@(private, require_results)
vec2_from_vec3 :: proc "contextless" (v: Vec3) -> Vec2 {
	return Vec2{v.x, v.y}
}

@(private, require_results)
vec2_from_vec4 :: proc "contextless" (v: Vec4) -> Vec2 {
	return Vec2{v.x, v.y}
}

vec2 :: proc {
	vec2_new,
	vec2_new1,
	vec2_from_vec3,
	vec2_from_vec4,
}

@(private, require_results)
vec3_new :: proc "contextless" (x, y, z: f32) -> Vec3 {
	return Vec3{x, y, z}
}

@(private, require_results)
vec3_from_vec2 :: proc "contextless" (v: Vec2, z: f32) -> Vec3 {
	return Vec3{v.x, v.y, z}
}

@(private, require_results)
vec3_from_vec4 :: proc "contextless" (v: Vec4) -> Vec3 {
	return Vec3{v.x, v.y, v.z}
}

vec3 :: proc {
	vec3_new,
	vec3_from_vec2,
	vec3_from_vec4,
}

@(private, require_results)
vec4_new :: proc "contextless" (x, y, z, w: f32) -> Vec4 {
	return Vec4{x, y, z, w}
}

@(private, require_results)
vec4_new1 :: proc "contextless" (s: f32) -> Vec4 {
	return Vec4{s, s, s, s}
}

@(private, require_results)
vec4_from_vec2 :: proc "contextless" (v: Vec2, z: f32, w: f32) -> Vec4 {
	return Vec4{v.x, v.y, z, w}
}

@(private, require_results)
vec4_from_vec3 :: proc "contextless" (v: Vec3, w: f32) -> Vec4 {
	return Vec4{v.x, v.y, v.z, w}
}

vec4 :: proc {
	vec4_new,
	vec4_new1,
	vec4_from_vec2,
	vec4_from_vec3,
}

@(private, require_results)
ivec2_new :: proc "contextless" (x, y: i32) -> IVec2 {
	return IVec2{x, y}
}

@(private, require_results)
ivec2_new1 :: proc "contextless" (s: i32) -> IVec2 {
	return IVec2{s, s}
}

@(private, require_results)
ivec2_from_ivec3 :: proc "contextless" (v: IVec3) -> IVec2 {
	return IVec2{v.x, v.y}
}

@(private, require_results)
ivec2_from_ivec4 :: proc "contextless" (v: IVec4) -> IVec2 {
	return IVec2{v.x, v.y}
}

ivec2 :: proc {
	ivec2_new,
	ivec2_new1,
	ivec2_from_ivec3,
	ivec2_from_ivec4,
}

@(private, require_results)
ivec3_new :: proc "contextless" (x, y, z: i32) -> IVec3 {
	return IVec3{x, y, z}
}

@(private, require_results)
ivec3_from_ivec2 :: proc "contextless" (v: IVec2, z: i32) -> IVec3 {
	return IVec3{v.x, v.y, z}
}

@(private, require_results)
ivec3_from_ivec4 :: proc "contextless" (v: IVec4) -> IVec3 {
	return IVec3{v.x, v.y, v.z}
}

ivec3 :: proc {
	ivec3_new,
	ivec3_from_ivec2,
	ivec3_from_ivec4,
}

@(private, require_results)
ivec4_new :: proc "contextless" (x, y, z, w: i32) -> IVec4 {
	return IVec4{x, y, z, w}
}

@(private, require_results)
ivec4_new1 :: proc "contextless" (s: i32) -> IVec4 {
	return IVec4{s, s, s, s}
}

@(private, require_results)
ivec4_from_ivec2 :: proc "contextless" (v: IVec2, z: i32, w: i32) -> IVec4 {
	return IVec4{v.x, v.y, z, w}
}

@(private, require_results)
ivec4_from_ivec3 :: proc "contextless" (v: IVec3, w: i32) -> IVec4 {
	return IVec4{v.x, v.y, v.z, w}
}

ivec4 :: proc {
	ivec4_new,
	ivec4_new1,
	ivec4_from_ivec2,
	ivec4_from_ivec3,
}

@(private, require_results)
uvec2_new :: proc "contextless" (x, y: u32) -> UVec2 {
	return UVec2{x, y}
}

@(private, require_results)
uvec2_new1 :: proc "contextless" (s: u32) -> UVec2 {
	return UVec2{s, s}
}

@(private, require_results)
uvec2_from_uvec3 :: proc "contextless" (v: UVec3) -> UVec2 {
	return UVec2{v.x, v.y}
}

@(private, require_results)
uvec2_from_uvec4 :: proc "contextless" (v: UVec4) -> UVec2 {
	return UVec2{v.x, v.y}
}

uvec2 :: proc {
	uvec2_new,
	uvec2_new1,
	uvec2_from_uvec3,
	uvec2_from_uvec4,
}

@(private, require_results)
uvec3_new :: proc "contextless" (x, y, z: u32) -> UVec3 {
	return UVec3{x, y, z}
}

@(private, require_results)
uvec3_from_uvec2 :: proc "contextless" (v: UVec2, z: u32) -> UVec3 {
	return UVec3{v.x, v.y, z}
}

@(private, require_results)
uvec3_from_uvec4 :: proc "contextless" (v: UVec4) -> UVec3 {
	return UVec3{v.x, v.y, v.z}
}

uvec3 :: proc {
	uvec3_new,
	uvec3_from_uvec2,
	uvec3_from_uvec4,
}

@(private, require_results)
uvec4_new :: proc "contextless" (x, y, z, w: u32) -> UVec4 {
	return UVec4{x, y, z, w}
}

@(private, require_results)
uvec4_new1 :: proc "contextless" (s: u32) -> UVec4 {
	return UVec4{s, s, s, s}
}

@(private, require_results)
uvec4_from_uvec2 :: proc "contextless" (v: UVec2, z: u32, w: u32) -> UVec4 {
	return UVec4{v.x, v.y, z, w}
}

@(private, require_results)
uvec4_from_uvec3 :: proc "contextless" (v: UVec3, w: u32) -> UVec4 {
	return UVec4{v.x, v.y, v.z, w}
}

uvec4 :: proc {
	uvec4_new,
	uvec4_new1,
	uvec4_from_uvec2,
	uvec4_from_uvec3,
}

@(private, require_results)
mat2_new :: proc "contextless" (m00, m01, m10, m11: f32) -> Mat2 {
	return Mat2{m00, m01, m10, m11}
}

@(private, require_results)
mat2_new1 :: proc "contextless" (s: f32) -> Mat2 {
	return Mat2{s, 0, 0, s}
}

@(private, require_results)
mat2_new_vec2s :: proc "contextless" (v0, v1: Vec2) -> Mat2 {
	return Mat2{v0.x, v0.y, v1.x, v1.y}
}

mat2 :: proc {
	mat2_new,
	mat2_new1,
	mat2_new_vec2s,
}

@(private, require_results)
mat3_new :: proc "contextless" (m00, m01, m02, m10, m11, m12, m20, m21, m22: f32) -> Mat3 {
	return Mat3{m00, m01, m02, m10, m11, m12, m20, m21, m22}
}

@(private, require_results)
mat3_new1 :: proc "contextless" (s: f32) -> Mat3 {
	return Mat3{s, 0, 0, 0, s, 0, 0, 0, s}
}

@(private, require_results)
mat3_new_vec3s :: proc "contextless" (v0, v1, v2: Vec3) -> Mat3 {
	return Mat3{v0.x, v0.y, v0.z, v1.x, v1.y, v1.z, v2.x, v2.y, v2.z}
}

mat3 :: proc {
	mat3_new,
	mat3_new1,
	mat3_new_vec3s,
}

@(private, require_results)
mat4_new :: proc "contextless" (
	m00, m01, m02, m03, m10, m11, m12, m13, m20, m21, m22, m23, m30, m31, m32, m33: f32,
) -> Mat4 {
	return Mat4{m00, m01, m02, m03, m10, m11, m12, m13, m20, m21, m22, m23, m30, m31, m32, m33}
}

@(private, require_results)
mat4_new1 :: proc "contextless" (s: f32) -> Mat4 {
	return Mat4{s, 0, 0, 0, 0, s, 0, 0, 0, 0, s, 0, 0, 0, 0, s}
}

@(private, require_results)
mat4_new_vec4s :: proc "contextless" (v0, v1, v2, v3: Vec4) -> Mat4 {
	return Mat4 {
		v0.x,
		v0.y,
		v0.z,
		v0.w,
		v1.x,
		v1.y,
		v1.z,
		v1.w,
		v2.x,
		v2.y,
		v2.z,
		v2.w,
		v3.x,
		v3.y,
		v3.z,
		v3.w,
	}
}

mat4 :: proc {
	mat4_new,
	mat4_new1,
	mat4_new_vec4s,
}

// ----------------------------------------
// Procedures from core:math
// ----------------------------------------

exp :: glsl.exp
exp2 :: glsl.exp2

min :: glsl.min
max :: glsl.max
lerp :: glsl.lerp
clamp :: glsl.clamp

fract :: glsl.fract
trunc :: glsl.trunc

ceil :: glsl.ceil
round :: glsl.round
floor :: glsl.floor

pow :: glsl.pow
log :: glsl.log
log2 :: linalg.log2
log10 :: linalg.log10

sqrt :: glsl.sqrt
fsqrt :: glsl.inversesqrt

cos :: glsl.cos
sin :: glsl.sin
tan :: glsl.tan

acos :: glsl.acos
asin :: glsl.asin
atan :: glsl.atan
atan2 :: glsl.atan2

cosh :: glsl.cosh
sinh :: glsl.sinh
tanh :: glsl.tanh

acosh :: glsl.cosh
asinh :: glsl.sinh
atanh :: glsl.tanh

len :: glsl.length
dist :: glsl.distance
norm :: glsl.normalize

dot :: glsl.dot
cross :: glsl.cross

reflect :: glsl.reflect
refract :: glsl.refract
faceforward :: glsl.faceForward

// ----------------------------------------
// Custom procedures
// ----------------------------------------

// lensqr ::
// distsqr


// ----------------------------------------
// Quality of life procedures
// ----------------------------------------
