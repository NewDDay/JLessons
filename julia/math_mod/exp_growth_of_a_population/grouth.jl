using DifferentialEquations, Plots # Подключаем пакеты

# Задаём модель с начальными условиями:
a = 0.98
f(u,p,t) = a*u
u0 = 1.0

# Задаём временной интервал
tspan = (0.0,1.0)

# Решение
prob = ODEProblem(f,u0,tspan)
sol = solve(prob,abstol=1e-8,reltol=1e-8) # Увеличили точность решения

# Строим график
# Строим графики
plot(sol, lw=2, color="black", title="Модель экспоненциального роста", xaxis="Время",yaxis="u(t)", label="Численное решение")
plot!(sol.t, t->1.0*exp(a*t),lw=3,ls=:dash, color="red",label="Аналитическое решение")
