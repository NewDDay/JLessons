using Plots
pyplot()

r(θ) = θ
θ = range(0, stop = 2π, length=50)
plot(θ, r.(θ),
    proj = :polar,
    label = false,
    title = "Спираль Архимеда")
savefig("archim.png")

r(θ) = 2 * (1 + cos(θ))
θ = range(0, stop = 2π, length=50)
plot(θ, r.(θ),
    proj = :polar,
    label = false,
    title = "Кардиола")
savefig("cardio.png")

r(θ) = cos(7*θ^2) + θ + 1
θ = range(0, stop = 4π, length=5000)
plot(θ, r.(θ),
    proj = :polar,
    label = false,
    title = "Колебательная спираль")
savefig("spiral.png")
