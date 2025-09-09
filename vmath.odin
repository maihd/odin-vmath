package vmath

import "core:fmt"
import "core:math"
import "core:math/linalg"

Vec2 :: [2]f32
Vec3 :: [3]f32
Vec4 :: [4]f32

IVec2 :: [2]u32
IVec3 :: [3]u32
IVec4 :: [4]u32

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
