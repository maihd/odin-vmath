# VectorMath for Odin
Simple high-level enough, with common/utils procedures, better usages in game/graphics programming.


## Design Goals
- Simple
- Easy to implement
- High level, easy to use
- Work well with other math libary
- Utils for game/graphics programming
- Only one way to do thing. Procedure should be short and easy to speak and remember.
    - Eg. Calculate cos only have one procedure cos(), no cos_f32, cos_vec2, ...
    - Eg. Calculate cos of turn may have one procedure tcos(), no tcos_f32, cos_vec2, ...
- Use common names, but not conflict or confusing with existed name for core libaries
- Written in idiom of Odin (but sometime Odin doesnot force to do it)
- Low types count, only support u32, i32, f32 components
- Does not force to must have high performance, simd supports, so you may need use core:math/lnalg (maybe hard to use other than this)


## Features
- Constructors for fast create new data and casting data
- Utils procedures for exact use cases. 
    - Eg. angle() to get angle of vector, transform2d() to calculate transform matrix for 2d game, ...
- Intuitively, design goals come as features: simple and easy to use, array programming, based on Odin core math library


## FAQs

### Why other math libraries?
- I have used core:math/lnalg (including glsl, hlsl), this may look good from beginning, but you will see its included too many things that not needed, and no usage documents. So I created my self this library for learning, focus on usage purposes only. That how I learn from previous [vector math library](https://github.com/maihd/vectormath.git), its have no usages, only for researching purposes, becoming too much things at time fly.

### Currently production status?
- The library focus only how we developer do math in coding, so I focus to design a good interface of it. And we have tmath.h from C standard library. So in the futures, the library only include more procedures, does not change or remove existing procedures. And luckily, Odin core math library have good performance, and included all implementations we need.

### You want your own math library, fit your style?
- Let do it, copy this file and rename, add or remove as you need. I will do license on this library.