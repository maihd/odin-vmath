# Checklists procedures needed to work with game/graphics math

## Data structures
[x] `Vec2`
[x] `Vec3`
[x] `Vec4`
[x] `IVec2`
[x] `IVec3`
[x] `IVec4`
[x] `UVec2`
[x] `UVec3`
[x] `UVec4`
[x] `Mat2`
[x] `Mat3`
[x] `Mat4`
[ ] `Quat`

## Constructors
[x] `Vec2`: use `vec2` procedure
[x] `Vec3`: use `vec3` procedure
[x] `Vec4`: use `vec4` procedure
[x] `IVec2`: use `ivec2` procedure
[x] `IVec3`: use `ivec3` procedure
[x] `IVec4`: use `ivec4` procedure
[x] `UVec2`: use `uvec2` procedure
[x] `UVec3`: use `uvec3` procedure
[x] `UVec4`: use `uvec4` procedure
[x] `Mat2`: use `mat2` procedure
[x] `Mat3`: use `mat3` procedure
[x] `Mat4`: use `mat4` procedure
[ ] `Quat`

## Converters
[ ] `Vec2`
[ ] `Vec3`
[ ] `Vec4`
[ ] `IVec2`
[ ] `IVec3`
[ ] `IVec4`
[ ] `UVec2`
[ ] `UVec3`
[ ] `UVec4`
[ ] `Mat2`
[ ] `Mat3`
[ ] `Mat4`
[ ] `Quat`

## Common math procedures

## Graphics math procedures commonly used in game programming

## Matrix utilities
- Now focused only for Mat4
[x] `mat4_lookat`
[x] `mat4_ortho`
[x] `mat4_orientation`
[x] `mat4_perspective`
[x] `mat4_perspective_infinite`
[x] `mat4_translate`
[x] `mat4_scale`
[x] `mat4_rotate`
[x] `mat4_rotate_x`
[x] `mat4_rotate_y`
[x] `mat4_rotate_z`
[x] `mat4_transform2d`
[x] `mat4_transform`

## Quality of life procedures: commonly used, but may miss from common vectormath libraries
[x] `angle`: calculate angle (in radians) of Vec2
[x] `turns`: calculate angle (in turns) of Vec2
[x] `radians`: convert degrees to radians (old name from GLSL/HLSL)
[x] `degrees`: convert radians to degrees (old name from GLSL/HLSL)
[x] `turns_to_radians`: convert turns to radians
[x] `turns_to_degrees`: convert turns to degrees
[x] `radians_to_turns`: convert radians to turns
[x] `degrees_to_turns`: convert degrees to turns

## Usages from book of math for gamedev