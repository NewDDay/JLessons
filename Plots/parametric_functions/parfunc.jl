using Plots
pyplot()

x(t) = sin(t)
y(t) = sin(2t)
plot(x, y, 0 , 2π,
    legend = false,
    linewidth = 3)
savefig("param.png")


x(t) = sin(2*t)
y(t) = cos(3*t)
t = range(0, 2π, length = 1000)
plot(x, y, t,
    legend = false,
    linewidth = 3)
savefig("param3.png")


t = range(0, stop = 10, length = 1000)
X = cos.(t)
Y = sin.(t)
Z = sin.(5t)
plot(X, Y, Z, linewidth = 3)
savefig("3Dparam.png")
