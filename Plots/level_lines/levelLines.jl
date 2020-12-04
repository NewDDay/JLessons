using Plots
pyplot()

x = 1:0.5:20
y = 1:0.5:20

g(x, y) = (3x + y^2) * abs(sin(x) + cos(y))
plot(x, y, g,
    linetype = :surface)
savefig("3D.png")

contour(x, y, g)
savefig("leveline1.png")

contour(x, y, g,
        fill = true)
savefig("leveline2.png")
