using Plots
pyplot()

f(x, y) = x^2 + y^2
x = -10:10
y = x
surface(x, y, f)
savefig("surfase.png")

f(x, y) = 1/(1+x^2) + 1/(1+y^2)
x = -10:0.5:10
y = x
surface(x, y, f)
savefig("surfase2.png")

@gif for i in LinRange(0, 2π, 100)
    X = Y = LinRange(-5, 5, 40)
    surface(X, Y, (x,y) -> sin(x + 10sin(i)) + cos(y))
end

# c = cgrad([:red,:blue])
# linetype = :wireframe
