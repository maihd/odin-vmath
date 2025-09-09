# VectorMath for Odin
Simple high-level enough, with common/utils procedures, better usages in game programming.


## Design Goals
- Simple
- Easy to implement
- High level, easy to use
- Work well with other math libary
- Utils for game programming. And only good for game math. No redundant procedures that only use with graphics.
    - Sometimes to times, we will see game and graphics use the same procedures, but not always
    - Some graphics optimize tricks will be use different data structures and algorithms
    - And we must be concerning physics and audio system too
    - So, I want to only focus to gamedev math in this library, and we have core:math/linalg do this for us
- Only one way to do thing. Procedure should be short and easy to speak and remember.
    - Eg. Calculate cos only have one procedure cos(), no cos_f32, cos_vec2, ...
    - Eg. Calculate cos of turn may have one procedure tcos(), no tcos_f32, cos_vec2, ...
- Use common names, but not conflict or confusing with existed name for core libaries
- Written in idiom of Odin (but sometime Odin doesnot force to do it)
- Low types count, only support u32, i32, f32 components
- Does not force to must have high performance, simd supports, so you may need use core:math/linalg (maybe hard to use other than this)


## Features
- Constructors for fast create new data and casting data
- Utils procedures for exact use cases. 
    - Eg. angle() to get angle of vector, transform2d() to calculate transform matrix for 2d game, ...
- Intuitively, design goals come as features: simple and easy to use, array programming, based on Odin core math library


## FAQs

### Why other math libraries?
- I have used core:math/linalg (including glsl, hlsl), this may look good from beginning, but you will see its included too many things that not needed, and no usage documents. So I created my self this library for learning, focus on usage purposes only. That how I learn from previous [vector math library](https://github.com/maihd/vectormath.git), its have no usages, only for researching purposes, becoming too much things at time fly.

### What procedures, data structures will be supported?
- Only procedures, datas structures that needed for gamedev. For graphics programming, you will need more procedures, more data structures, use Odin core math libraries. Its' good and performance.

### Some usage, mindset of procedure, data structure are wrong, and Odin offer better features or procedures?
- I'm still learning, so if you found better approach, use it. 

### Currently production status?
- The library focus only how we developer do math in coding, so I focus to design a good interface of it. And we have tmath.h from C standard library. So in the futures, the library only include more procedures, does not change or remove existing procedures. And luckily, Odin core math library have good performance, and included all implementations we need.

### I want my own math library, fit my style?
- Let do it, copy this file and rename, add or remove as you need. I will do no license on this library.

### Where are the versions?
- Based on the design goals, there are no changing the interfaces of library, no change or remove procedures. So this library no need versioning, rolling release be work as will.

### Contribution, discussions, suggestion to add more procedures?
- Please do it, create an issue or pull request will be helped!