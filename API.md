# API for odin-vmath

## Constructors
```odin
v2 := vec2(1, 2)
v2 := vec2(1)
v2 := vec2(v3)          // assume v3 is Vec3
v2 := vec2(v4)          // assume v4 is Vec4

v3 := vec3(1, 2, 3)
v3 := vec3(1)
v3 := vec3(v2, 3)       // assume v2 is Vec2
v3 := vec3(v4)          // assume v4 is Vec4

v4 := vec4(1, 2, 3, 4)
v4 := vec4(1)
v4 := vec4(v2, 3, 4)    // assume v2 is Vec2
v4 := vec4(v3, 4)       // assume v3 is Vec3
```