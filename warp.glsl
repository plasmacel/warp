// Template Helpers

#define INSTANTIATE_FLOAT_TEMPLATES(TEMPLATE) 	\
TEMPLATE(float)					\
TEMPLATE(vec2)					\
TEMPLATE(vec3)					\
TEMPLATE(vec4)					\
TEMPLATE(mat2)					\
TEMPLATE(mat3)					\
TEMPLATE(mat4)						

#define INSTANTIATE_INT_TEMPLATES(TEMPLATE) 	\
TEMPLATE(int)					\
TEMPLATE(ivec2)					\
TEMPLATE(ivec3)					\
TEMPLATE(ivec4)					\
TEMPLATE(imat2)					\
TEMPLATE(imat3)					\
TEMPLATE(imat4)					\
TEMPLATE(uint)					\
TEMPLATE(uvec2)					\
TEMPLATE(uvec3)					\
TEMPLATE(uvec4)					\
TEMPLATE(umat2)					\
TEMPLATE(umat3)					\
TEMPLATE(umat4)					\

#define INSTANTIATE_SINT_TEMPLATES(TEMPLATE) 	\
TEMPLATE(int)					\
TEMPLATE(ivec2)					\
TEMPLATE(ivec3)					\
TEMPLATE(ivec4)					\
TEMPLATE(imat2)					\
TEMPLATE(imat3)					\
TEMPLATE(imat4)					

#define INSTANTIATE_UINT_TEMPLATES(TEMPLATE)	\
TEMPLATE(uint)					\
TEMPLATE(uvec2)					\
TEMPLATE(uvec3)					\
TEMPLATE(uvec4)					\
TEMPLATE(umat2)					\
TEMPLATE(umat3)					\
TEMPLATE(umat4)					\

// Types

#define short int
#define int16_t int
#define int32_t int
#define int64_t

#define ushort uint
#define uint16_t uint
#define uint32_t uint
#define uint64_t

#define half float
#define float16_t float
#define float32_t float
#define float64_t double

#define bool1 bool
#define bool2 bvec2
#define bool3 bvec3
#define bool4 bvec4

#define short1 int
#define short2 ivec2
#define short3 ivec3
#define short4 ivec4
#define short2x2 imat2x2
#define short2x3 imat3x2
#define short2x4 imat4x2
#define short3x2 imat2x3
#define short3x3 imat3x3
#define short3x4 imat4x3
#define short4x2 imat2x4
#define short4x3 imat3x4
#define short4x4 imat4x4

#define int1 int
#define int2 ivec2
#define int3 ivec3
#define int4 ivec4
#define int2x2 imat2x2
#define int2x3 imat3x2
#define int2x4 imat4x2
#define int3x2 imat2x3
#define int3x3 imat3x3
#define int3x4 imat4x3
#define int4x2 imat2x4
#define int4x3 imat3x4
#define int4x4 imat4x4

#define ushort1 uint
#define ushort2 uvec2
#define ushort3 uvec3
#define ushort4 uvec4
#define ushort2x2 umat2x2
#define ushort2x3 umat3x2
#define ushort2x4 umat4x2
#define ushort3x2 umat2x3
#define ushort3x3 umat3x3
#define ushort3x4 umat4x3
#define ushort4x2 umat2x4
#define ushort4x3 umat3x4
#define ushort4x4 umat4x4

#define uint1 uint
#define uint2 uvec2
#define uint3 uvec3
#define uint4 uvec4
#define uint2x2 umat2x2
#define uint2x3 umat3x2
#define uint2x4 umat4x2
#define uint3x2 umat2x3
#define uint3x3 umat3x3
#define uint3x4 umat4x3
#define uint4x2 umat2x4
#define uint4x3 umat3x4
#define uint4x4 umat4x4

#define half1 float
#define half2 float2
#define half3 float3
#define half4 float4
#define half2x2 mat2x2
#define half2x3 mat3x2
#define half2x4 mat4x2
#define half3x2 mat2x3
#define half3x3 mat3x3
#define half3x4 mat4x3
#define half4x2 mat2x4
#define half4x3 mat3x4
#define half4x4 mat4x4

#define float1 float
#define float2 vec2
#define float3 vec3
#define float4 vec4
#define float2x2 mat2x2
#define float2x3 mat3x2
#define float2x4 mat4x2
#define float3x2 mat2x3
#define float3x3 mat3x3
#define float3x4 mat4x3
#define float4x2 mat2x4
#define float4x3 mat3x4
#define float4x4 mat4x4

#define double1 double
#define double2 dvec2
#define double3 dvec3
#define double4 dvec4
#define double2x2 dmat2x2
#define double2x3 dmat3x2
#define double2x4 dmat4x2
#define double3x2 dmat2x3
#define double3x3 dmat3x3
#define double3x4 dmat4x3
#define double4x2 dmat2x4
#define double4x3 dmat3x4
#define double4x4 dmat4x4

// Intrinsic Functions

#define atan2(a, b) \
atan(a, b)

#define clip(a) \
if (any((a) < 0.0)) discard

#define ddx(x) \
dFdx(x)

#define ddx_coarse(x) \
dFdxCoarse(x)

#define ddx_fine(x) \
dFdxFine(x)

#define ddy(x) \
dFdy(x)

#define ddy_coarse(x) \
dFdyCoarse(x)

#define ddy_fine(x) \
dFdyFine(x)

#define EvaluateAttributeAtCentroid(a) \
interpolateAtCentroid(a)

#define EvaluateAttributeAtSample(a, b) \
interpolateAtSample(a, b)

#define EvaluateAttributeSnapped(a, b) \
interpolateAtOffset(a, b)

#define frac(a) \
fract(a)

#define isfinite(a) \
(!isinf(a))

#define lerp(a, b, c) \
mix(a, b, c)

#define log10(a) \
(log2(a) / log2(10))

#define mad(a, b, c) \
((a) * (b) + (c))

#define mul(a, b) \
((a) * (b)) // ???

#define rcp(a) \
(1.0 / (a))

#define saturate(a) \
clamp((a), 0.0, 1.0)

#define select(a, b, c) \
((a) ? (b) : (c))

#define SINCOS_TEMPLATE(T)		\
void sincos(T x, out T s, out T c)	\
{					\
	s = sin(x);			\
	c = cos(x);			\
}

INSTANTIATE_FLOAT_TEMPLATES(SINCOS_TEMPLATE)

layout (row_major) uniform;
