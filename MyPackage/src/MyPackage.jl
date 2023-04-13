module MyPackage

"""
    greet()

Extend a greeting.
"""
greet() = print("Hello world!")

"""
    poly_derivative(coeffs)

Compute the derivative of a polynomial with coefficients `coeffs`.
"""
function poly_derivative(coeffs)
    [(i-1) * coeffs[i] for i in 2:length(coeffs)]
end

end # module MyPackage
