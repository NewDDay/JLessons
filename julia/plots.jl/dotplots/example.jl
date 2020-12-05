using Plots, Distributions
pyplot()

birch_length = ceil.(Int, rand(Normal(70, 15),  100)) # Замерили длину листов берёзы
birch_width = ceil.(Int, rand(Normal(40, 10), 100)) # Замерили ширину листов берёзы

maple_length = ceil.(Int, rand(Normal(100, 20),  100)) # Замерили длину листов клёна
maple_width = ceil.(Int, rand(Normal(80, 15), 100)) # Замерили ширину листов клёна

scatter(birch_length, birch_width,
    markersize = 6,
    markerstrokealpha = 0.6,
    markercolor = colorant"#4869D6",
    gridstyle = :dash,
    gridalpha = 0.8,
    label = "Замеры листьев берёзы")

scatter!(maple_length, maple_width,
    markersize = 6,
    markerstrokealpha = 0.6,
    markercolor = colorant"#FFE540",
    gridstyle = :dash,
    gridalpha = 0.8,
    label = "Замеры листьев клёна")

savefig("example.png")
