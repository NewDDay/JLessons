using Plots
pyplot()

seriestypes = [ :steppre, :sticks, :bar, :hline, :vline, :path]
titles = ["steppre" "sticks" "bar" "hline" "vline" "path"]

plot(rand(20,1),
    st = seriestypes,
    layout = (2,3),
    ticks = nothing,
    legend = false,
    title = titles,
    m = 3)
savefig("other_types.png")
