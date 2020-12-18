Интерполяция -  нахождение неизвестных промежуточных значений. Применяется, если у нас имеются точечные значения и нам необходимо найти промежуточные. Интерполяция сглаживает график, но даёт лишь приблизительные значения. Продемонстрируем на системе Лоренца:

Системой Лоренца является нелинейная автономная система обыкновенных дифференциальных уравнений третьего порядка:

![alt tag](https://github.com/NewDDay/Lessons/blob/master/julia/math_mod/interpolation/1.png?raw=true "")

где 𝜎, 𝜌 и 𝛽 — параметры системы (некоторые положительные числа, обычно указывают 𝜎 = 10, 𝜌 = 28 и 𝛽 = 8/3). 
Построим график: 

![alt tag](https://github.com/NewDDay/Lessons/blob/master/julia/math_mod/interpolation/interpolation.png?raw=true "")

Выключим интерполяцию:

![alt tag](https://github.com/NewDDay/Lessons/blob/master/julia/math_mod/interpolation/without.png?raw=true "")
