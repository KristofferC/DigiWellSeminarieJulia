using MyPackage
using Test
using ForwardDiff

# 3x^2 + 4x + 1#
# derivative: 6x + 4
coeffs = [1, 4, 3]
deriv = MyPackage.poly_derivative(coeffs) 
@test evalpoly(5, deriv) ≈ ForwardDiff.derivative(x -> evalpoly(x, coeffs), 5)
