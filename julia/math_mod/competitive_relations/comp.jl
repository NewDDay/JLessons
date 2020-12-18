using ParameterizedFunctions, Plots, DifferentialEquations

lv! = @ode_def LotkaVolterra begin
    dx = A*x - B*x*y
    dy = A*y - B*x*y
end A B
# задаём начальное условие:
u0 = [10.0,12.0] # Первый вид имеет 10 особей, второй 12
# задаём знанчения параметров:
p = (1.0,1.0) # Коэффиценты рождаемости и угнетения
# задаём интервал времени:
tspan = (0.0,2.5)
# решение:
prob = ODEProblem(lv!,u0,tspan,p)
sol = solve(prob)
plot(sol, label = ["Вид1" "Вид2"], color="black", ls=[:solid :dash], title="Отбор на основе конкурентных отношений", xaxis="Время",yaxis="Размер популяции")
