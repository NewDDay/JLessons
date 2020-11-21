using Plots
pyplot()

x = collect(0.0:0.01:9.99)
y = exp.(ones(1000)+x) + 4000*randn(1000)
scatter(x, y, markersize = 3, alpha = .8, legend = false)

A = [ones(1000) x x.^2 x.^3 x.^4 x.^5]
c = A \ y

f = c[1]*ones(1000) + c[2]*x + c[3]*x.^2 + c[4]*x.^3 + c[5]*x.^4 + c[6]*x.^5
plot!(x, f, linewidth = 3, color = :red)

# savefig("approximation.pdf")
