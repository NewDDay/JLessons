using ParameterizedFunctions, Plots, DifferentialEquations

lv! = @ode_def LotkaVolterra begin
    dx = a*x*(1-x) - x*y
    dy = -c*y + d*x*y
end a c d
# задаём начальное условие:
u0 = [1.0,1.0]
# задаём знанчения параметров:
p = (2.0,1.0,5.0)
# задаём интервал времени:
tspan = (0.0,40.0)
# решение:
prob = ODEProblem(lv!,u0,tspan,p)
sol = solve(prob)
plot(sol, label = ["Хищники" "Жертвы"], color="black", ls=[:solid :dash], title="Модель Лотки - Вольтерры", xaxis="Время",yaxis="Размер популяции")

plot(sol,vars=(1,2), color="black", xaxis="Хищника",yaxis="Жертвы", legend=false)
