using Plots, Distributions
pyplot()

ages = rand(15:55,1000)

histogram(ages)
savefig("histogram_1.png")

d = Normal(35.0, 10.0)

ages = rand(d, 1000)

histogram(ages,
    label = "Распределение по возрастам (года)",
    xlabel = "Возраст (лет)",
    ylabel = "Количество")
savefig("histogram_2.png")

d1 = Normal(10, 5)
d2 = Normal(35, 10)
d3 = Normal(60, 5)
N = 1000
ages = (Float64)[]
ages = append!(ages, rand(d1, Int64(ceil(N/2))))
ages = append!(ages, rand(d2, N))
ages = append!(ages, rand(d3, Int64(ceil(N/3))))

histogram(ages,
    bins = 50,
    label = "Распределение по возрастам (года)",
    xlabel = "Возраст (лет)",
    ylabel = "Количество",
    title = "Распределение по возрастам (года)")
savefig("histogram_3.png")
