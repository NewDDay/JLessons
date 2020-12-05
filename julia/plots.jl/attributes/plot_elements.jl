using Plots
pyplot()
# plotly()

sin_theor(x) = sin(x)
plot(sin_theor)
sin_taylor(x) = [(-1)^i*x^(2*i+1)/factorial(2*i+1) for i in 0:4] |> sum
plot!(sin_taylor)

plot(
    sin_taylor,

    label = "sin(x) разложение в ряд Тейлора",
    line = (:blue, 0.3, 6, :solid),
    # 0.3 - интенсивность цвета
    # 6 - толщина линии
    # solid - сполшная. (:dash - пунктир, :dot - пунктирная, :dashdot - штрихпунктирная, :dashdotdot)

    size = (800, 800),

    xticks = (-5:0.5:5), # Отметки на линии абцисс. От -5 до 5 с шагом 0.5
    yticks = (-1:0.1:1), # Отметки на линии ординат
    xtickfont = font(12, "Times New Roman"), # Шрифт
    ytickfont = font(12, "Times New Roman"),

    ylabel = "y", # Подписи к осям
    xlabel = "x",

    title = "Разложение в ряд Тейлора",
    xrotation = rad2deg(pi/4), # Повернули отметки на линии абцисс, чтобы не слипались

    fillrange = 0, # Сжатие по оси ординат?
    fillalpha = 0.5, # Интенсивность закраски графика
    fillcolor = :lightgoldenrod, # Цвет закраски графика

    background_color = :ivory # Закрасили график
)
plot!(
    sin_theor,
    label = "sin(x) теоретическое значение",
    line = (:black, 1.0, 2, :dash)
)

savefig("plotElements.png")
