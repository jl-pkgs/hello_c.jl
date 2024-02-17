using Libdl
const libleaf = "./build/libleaf.$dlext"


using Parameters
## 因此变量名，不重要，重要的是变量的顺序

# Define the Leaf struct in Julia
@with_kw struct Leaf
  x::Cdouble = 0.0
  z::Cdouble = 0.0
end

# Call the init_leaf_dbl function
function init_leaf_dbl(x::Ref{Leaf}, replacement::Cdouble)
  ccall((:init_leaf_dbl, libleaf), Cvoid, (Ptr{Leaf}, Cdouble), x, replacement)
end

# Call the init_leaf_struct2 function
function init_leaf_struct2(x::Ref{Leaf}, replacement::Ref{Leaf})
    ccall((:init_leaf_struct2, libleaf), Cvoid, (Ptr{Leaf}, Ptr{Leaf}), x, replacement)
end

# Call the init_leaf_struct function
function init_leaf_struct(x::Ref{Leaf}, replacement::Ref{Leaf})
  ccall((:init_leaf_struct, libleaf), Cvoid, (Ptr{Leaf}, Ptr{Leaf}), x, replacement)
end

# Usage
l1 = Leaf(0.0, 0.0) |> Ref
l2 = Leaf(2.0, 3.0) |> Ref

init_leaf_dbl(l1, 5.0)
@show l1[]

init_leaf_struct2(l1, l2)
@show l1[]

init_leaf_struct(l1, l2)
@show l1[]
