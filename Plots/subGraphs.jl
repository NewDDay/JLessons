using Plots
pyplot()

x = range(-2, 2, length = 10)
y = rand(10, 4)

plot(x, y,
    layout = (4, 1))
# savefig("subGraphs1.pdf")

plot(x, y,
    layout = 4)
# savefig("subGraphs2.pdf")

plot(x, y,
    size = (600, 300),
    layout = grid(4, 1, heights = [0.2, 0.3, 0.4, 0.15]))
# savefig("subGraphs3.pdf")

p1 = plot(x, y)
p2 = scatter(x, y)
p3 = plot(x, y[:, 1:2], xlabel = "labelled plot of two columns", lw = 2, title = "Wide lines")
p4 = histogram(x, y)
plot(p1, p2, p3, p4,
    layout = (2, 2),
    legend = false,
    size = (800, 600),
    background_color = :ivory)
# savefig("subGraphs4.pdf")

l = @layout [ a{0.3w} [grid(3,3)
                        b{0.2h}]]

plot(rand(10,11),
    layout = l,
    legend = false,
    seriestype = [:bar :scatter :path],
    title = ["($i)" for j = 1:1, i = 1:11], titleloc = :right,
    titlefont = font(8))
# savefig("subGraphs5.pdf")
