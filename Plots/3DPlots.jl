using Plots
pyplot()

f(x, y) = x^2 + y^2
x = -10:10
y = x
surface(x, y, f)
savefig("3Dsurfase.pdf")

plot(x, y, f,
    linetype = :wireframe)
savefig("3Dwareframe.pdf")

x = -10:0.01:10
plot(x, y, f,
    linetype = :surface)
savefig("3Dsmooth.pdf")

x = -10:10
plot(x, y, f,
    linetype = :surface,
    c = cgrad([:red,:blue]),
    camera = (-75, 30))
savefig("3Dcamera.pdf")

@gif for i in LinRange(0, 2π, 100)
    X = Y = LinRange(-5, 5, 40)
    surface(X, Y, (x,y) -> sin(x + 10sin(i)) + cos(y))
end
