using ParameterizedFunctions, Plots, DifferentialEquations

# задаём описание модели:
lv! = @ode_def func begin
    ds = -B*i*s
    di = B*i*s-U*i
    dr = U*i
end B U
# задаём начальное условие:
u0 = [89.0,10.0,1.0]
# задаём знанчения параметров:
p = (0.05, 0.5)
# задаём интервал времени:
tspan = (0.0,10.0)

# решение:
prob = ODEProblem(lv!,u0,tspan,p)
sol = solve(prob)
plot(sol, label = ["Восприимчивые" "Заболевшие" "Переболевшие"], color=["black" "red" "blue"], title="Модель эпидемии Кермака–Маккендрика", xaxis="Время",yaxis="Размер популяции")
