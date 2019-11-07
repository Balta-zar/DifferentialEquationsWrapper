Purpose of this simple module is to have wrapper around
DifferentialEquations module for purpose for teaching
students who have small experience in Julia as well as in programming in
general.

This wrapper is not stable and cover only small portion of great
DifferentialEquations module. I don't suggest you to use this wrapper. Use
DifferentialEquations module instead.

There are standard students questions that I would like to solve:
"Why I need to use float?"
"Why interval need to be tuple and not array?"
"Why I need to create problem and then to solve it? Why not in one line?"
"Why extract data from sol.u is so strange for us?"

Purpose of this module is to make solve ODE simpler within the limits of my
needs.


Usage:
include("DEW")
using .DEW

function system!(du, u, p, t)
    ...
end

x0 = [] # Array of integers
interval = [0, 10] # Start and finish time
sol = solveODE(system!, x0, interval, parameters=[])  # tuple of two elements

sol[1] -> Returned from DifferentialEquations module. Great for plot(sol[1])
sol[2] -> Structure with fields t and x

sol[2].t -> array of time points that the solution was saved at
sol[2].x -> matrix with values of state space in sol[2].t
