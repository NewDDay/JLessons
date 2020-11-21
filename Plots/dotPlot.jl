using Plots
pyplot()

x = 1.0:1.0:10
y = rand(10)

plot(x, y,
    seriestype = :scatter,
    label = "Точечный график"
)
# savefig("dotPlot1.pdf")

n = 50
x = rand(n)
y = rand(n)
ms = rand(n) * 30
scatter(x, y, markersize = ms)
# savefig("dotPlot2.pdf")


# x = 1:1:20
# y = rand(20)
# ms = 1:1:20 # Чем больше х, тем больше точка
# scatter(x, y, markersize = ms)
# savefig("dotPlot3.pdf")


n = 50
x = rand(n)
y = rand(n)
z = rand(n)
ms = rand(n) * 30
# plotly() # Можно крутить
scatter(x, y, z, markersize = ms)
# savefig("dotPlot4.pdf")
