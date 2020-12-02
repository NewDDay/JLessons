В библиотеке Plots.jl атрибуты к графику делятся условно на 4 типа:
1) Plot (Фон, dpi. Цвет, шрифт подписи графика)
2) Series (цвет, толщина, графика)
3) Subplot (Аннотация, легенда, ракурс камеры)
4) Axis (цвет, шрифт, текст оси)

- У каждого атрибута есть синонимы. Например markersize = markersizes = ms = msize. В серьёзных проектах не следует применять синонимы.
- Существует сокращённая задача настроек, например:
```julia
    plot(y, xaxis = ("my label", (0,10), 0:0.5:10, :log, :flip, font(20, "Courier")))

    plot(y,
        xlabel = "my label",
        xlims = (0,10),
        xticks = 0:0.5:10,
        xscale = :log,
        xflip = true,
        xtickfont = font(20, "Courier")
    )
```
График
![alt tag](https://github.com/NewDDay/JLessons/blob/master/Plots/attributes/plotElements.png?raw=true "График программы в директории")​
