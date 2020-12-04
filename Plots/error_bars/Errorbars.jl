using Plots, Statistics
pyplot()

sds = [1, 1/2, 1/4, 1/8, 1/16, 1/32]
n = 10

y = [mean(sd * randn(n)) for sd in sds]
errs = 1.96 * sds/sqrt(n)

plot(y, ylims = (-1, 1),
    err = errs,
    label = false,
    title = "График с симметричными ошибками")
savefig("error_bar1.png")

plot(y,
    1:length(y),
    xerr = errs,
    marker = stroke(2, :orange),
    label = false,
    title = "Повёрнутый график")
savefig("error_bar_2.png")

plot(y,
    ribbon = errs,
    fill = :cyan,
    label = false,
    title = "График с залитой зоной ошибок")
savefig("error_bar_3.png")

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
    marker = stroke(2, :orange),
    label = false)
savefig("error_bar_4.png")
