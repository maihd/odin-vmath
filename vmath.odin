package vmath

import "core:fmt"
import "core:math"
import "core:math/linalg"

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
Mat3 :: matrix[2, 2]f32
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
