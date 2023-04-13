using Cthulhu

function profile_test_sort(n, len=100000)
    for i = 1:n
        list = []
        for _ in 1:len
            push!(list, rand())
        end
        sort!(list)
    end
end

@time profile_test_sort(10)
# @descend profile_test_sort(10)

function simdsum(v)
    s = zero(eltype(v))
    @simd for i in eachindex(v)
        s += v[i]
    end
    return s
end

@descend simdsum(rand(10^4))
