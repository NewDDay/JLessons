Пакет Plots.jl имеет 4 основных бэкенда
1) GR
Очень быстрый. Поддерживает много типов графиков
	+ Очень быстрый
	- Ограниченная интерактивность

2) Plotly
Является отдельным бэкендом. Работает на javascript.
	+ Функциональный
	+ Зрелая библиотека
	+ Интерактивный
	- Плохо работает с JSON

3) PyPlot
Оболочка Джулии для пакета питона PyPlot(Matplotlib)
	+ Функциональный
	+ Зрелая библиотека
	+ Хорошо поддерживается в Plots
	- Работает на питоне

4) UnicodePlos
Работает в терминале. Простой и лёгкий, для быстрого взгляда
	+ Простой
	+ Лёгкий
	- Ограниченная функциональность