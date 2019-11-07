module DEW

using DifferentialEquations

struct Solution
    t
    x
end


function solveODE(helper_function, initial_conditions, interval, parameters=[])
    initial_conditions = convert.(Float64, initial_conditions)
    interval = convert.(Float64, interval)
    interval = tuple(interval...)

    prob = ODEProblem(helper_function, initial_conditions, interval, parameters)
    sol = solve(prob)

    plotting_solution = sol
    analysis_solution = Solution(sol.t, sol[:,:]')

    return (plotting_solution, analysis_solution)
end

export solveDE

end # module
