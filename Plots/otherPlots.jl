using Plots
pyplot()

plot(randn(100),
    ylabel = "y1",
    leg = :topright,
    grid = :off)

plot!(twinx(),
    rand(100)*10,
    ylabel = "y2",
    leg = :bottomright,
    color = :red,
    grid = :off,
    box = :on)
# savefig("otherPlots1.pdf")

r(θ) = 1 + cos(θ) * sin(θ)^2
θ = range(0, stop = 2π, length=50)
plot(θ, r.(θ),
    proj = :polar,
    lims = (0, 1.5))
# savefig("otherPlots2.pdf")

x(t) = sin(t)
y(t) = sin(2t)
plot(x, y, 0 , 2π, log=:false, fill=(0, :orange))
# savefig("otherPlots3.pdf")

t = range(0, stop = 10, length = 1000)
x = cos.(t)
y = sin.(t)
z = sin.(5t)
plot(x, y, z)
# savefig("otherPlots4.pdf")
