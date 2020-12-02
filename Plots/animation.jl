using Plots
pyplot()

@gif for i in range(0, stop=2π, length=40)
    X = Y = range(-5, stop = 5, length = 40)
    surface(X, Y, (x,y) -> sin(x+10sin(i))+cos(y))
end
