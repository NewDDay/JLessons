using Plots
pyplot()

X = range(-2, stop=2, length=100)
Y = range(-2, stop=2, length=100)
h(X, Y) = X^3 - 3X + Y^2

plot(X, Y, h,
    linetype = :surface)
savefig("vectorField1.pdf")

contour(X, Y, h)
savefig("vectorField2.pdf")

x = range(-2, stop = 2, length = 12)
y = range(-2, stop = 2, length = 12)
dh(x, y) = [3x^2 - 3; 2y] / 25

quiver!(x, y', quiver = dh, color = :blue)
savefig("vectorField3.pdf")

xlims!(-2, 2)
ylims!(-2, 2)
