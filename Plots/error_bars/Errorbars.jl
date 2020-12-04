using Plots, Statistics
pyplot()

sds = [1, 1/2, 1/4, 1/8, 1/16, 1/32]
n = 10

y = [mean(sd * randn(n)) for sd in sds]
errs = 1.96 * sds/sqrt(n)

plot(y, ylims = (-1, 1))

plot(y, ylims = (-1, 1), err = errs)
# savefig("errorBar1.pdf")

plot(y,
    1:length(y),
    xerr = errs,
    marker = stroke(3, :orange))
# savefig("errorBar2.pdf")

plot(y,
    ribbon = errs,
    fill = :cyan)
# savefig("errorBar3.pdf")

n = 10
x = [(rand()+1) .* randn(n) .+ 2i for i in 1:5]
y = [(rand()+1) .* randn(n) .+ i for i in 1:5]

f(v) = 1.96std(v) / sqrt(n)

xerr = map(f, x)
yerr = map(f, y)

x = map(mean, x)
y = map(mean, y)

plot(x, y,
    xerr = xerr,
    yerr = yerr,
    marker = stroke(3, :orange))
# savefig("errorBar4.pdf")

plot(x, y,
    xerr = (0.5xerr, 2xerr),
    yerr = (0.5yerr, 2yerr),
    marker = stroke(3, :orange))
# savefig("errorBar5.pdf")
