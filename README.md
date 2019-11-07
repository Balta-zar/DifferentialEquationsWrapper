Purpose of this simple module is to have wrapper around
DifferentialEquations module for purpose for teaching
students who have small experience in Julia as well as in programming in
general.

This wrapper is not stable and cover only small portion of great
DifferentialEquations module. I don't suggest you to use this wrapper. Use
DifferentialEquations module instead.

There are standard students questions that I would like to solve:<br/>
"Why I need to use float?"<br/>
"Why interval need to be tuple and not array?"<br/>
"Why I need to create problem and then to solve it? Why not in one line?"<br/>
"Why extract data from sol.u is so strange for us?"<br/>

Purpose of this module is to make solve ODE simpler within the limits of my
needs.


Usage:<br/>
include("DEW")<br/>
using .DEW

function system!(du, u, p, t)<br/>
    ...<br/>
end

x0 = [] # Array of integers<br/>
interval = [0, 10] # Start and finish time<br/>
sol = solveODE(system!, x0, interval, parameters=[])  # tuple of two
elements<br/>

sol[1] -> Returned from DifferentialEquations module. Great for
plot(sol[1])<br/>
sol[2] -> Structure with fields t and x<br/>

sol[2].t -> array of time points that the solution was saved at<br/>
sol[2].x -> matrix with values of state space in sol[2].t
