using ParameterizedFunctions, Plots, DifferentialEquations

@gif for x in 0:0.01:0.4
    function pkf!(du, u, p, t)
      x = u[1]
      y = u[2]
      ω = p[1]
      γ = p[2]
      du[1] = u[2]
      du[2] = -(2*γ*du[1] + ω*ω*x)
    end

    #Начальное значение
    u0 = [10.0, 10.0]
    #Параметры
    p = [2.0, x]
    #Отрезок времени
    tspan = (0.0, 30.0)
    #ODE problem
    prob = ODEProblem(pkf!, u0, tspan, p)
    #Решение
    sol = solve(prob)
    #Графики
    plot(sol, label = ["Ускорение" "Колебания"],
        xaxis = "Время", yaxis = "Положение")
end
