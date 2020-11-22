using Plots
pyplot()

x = 1:0.5:20
y = 1:0.5:20

g(x, y) = (3x + y^2) * abs(sin(x) + cos(y))
plot(x, y, g,
    linetype = :surface)
savefig("leveline1.pdf")

contour(x, y, g)
savefig("leveline2.pdf")

contour(x, y, g,
        fill = true)
savefig("leveline3.pdf")
