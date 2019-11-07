module DEW

using DifferentialEquations

struct Solution
    t
    x
    orig
end


function solveODE(helper_function, initial_conditions, interval, parameters=[])
    initial_conditions = convert.(Float64, initial_conditions)
    interval = convert.(Float64, interval)
    interval = tuple(interval...)

    prob = ODEProblem(helper_function, initial_conditions, interval, parameters)
    sol = solve(prob)

    solution = Solution(sol.t, sol[:,:]', sol)
    return solution
end

export solveODE

end # module
