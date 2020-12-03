using Plots
pyplot()

x = collect(0.0:0.01:9.99)
y = exp.(ones(1000)+x) + 4000*randn(1000)
scatter(x, y, markersize = 3, alpha = .8, legend = false)

A = [ones(1000) x x.^2 x.^3 x.^4 x.^5]
c = A \ y

f = c[1]*ones(1000) + c[2]*x + c[3]*x.^2 + c[4]*x.^3 + c[5]*x.^4 + c[6]*x.^5
plot!(x, f, linewidth = 3, color = :red)

savefig("exp.png")


x = collect(0.0:0.1:9.99)
y = sin.(x) + rand(100)*0.5
scatter(x, y, markersize = 3, alpha = .8, label = "Рассчётные точки")

A = [ones(100) x]
c = A \ y
f = c[1]*ones(100) + c[2]*x
plot!(x, f, linewidth = 1, color = :, label = "Полином 1 степени")

A = [ones(100) x x.^2 x.^3]
c = A \ y
f = c[1]*ones(100) + c[2]*x + c[3]*x.^2 + c[4]*x.^3
plot!(x, f, linewidth = 1, color = :blue, label = "Полином 3 степени")

A = [ones(100) x x.^2 x.^3 x.^4 x.^5]
c = A \ y
f = c[1]*ones(100) + c[2]*x + c[3]*x.^2 + c[4]*x.^3 + c[5]*x.^4 + c[6]*x.^5
plot!(x, f, linewidth = 1, color = :brown, label = "Полином 5 степени")

A = [ones(100) x x.^2 x.^3 x.^4 x.^5 x.^6 x.^7]
c = A \ y
f = c[1]*ones(100) + c[2]*x + c[3]*x.^2 + c[4]*x.^3 + c[5]*x.^4 + c[6]*x.^5 + c[7]*x.^6 + c[8]*x.^7
plot!(x, f, linewidth = 1, color = :green, label = "Полином 7 степени")

savefig("sin.png")
