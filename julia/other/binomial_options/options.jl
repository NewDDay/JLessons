using Plots

S = 100 # начальная цена акции
T = 1  # длина биномиального дерева в годах
n = 10000 # количество периодов
σ = 0.3 # волатильность акции
r = 0.08 # годовая процентная ставка
h = T/n # длина одного периода

u = exp(r*h + σ*sqrt(h)) # Коэф увеличения цены
d = exp(r*h - σ*sqrt(h)) # Коэф понижения цены

p = (exp(r*h) - d)/ (u - d) # Шанс повышения цены

a = [100.0] # Начальная цена

for x in 1:n
    if rand() > p
        push!(a, a[end]*u)
    else
        push!(a, a[end]*d)
    end
end

plot(a, leg = false, title = "Возможное движение цены")

savefig("./Lessons/julia/other/binomial_options/1.png")


function createPath(S::Number, r::Number, σ::Number, T::Number, n::Number)
    h = T/n
    u = exp(r*h + σ*sqrt(h))
    d = exp(r*h - σ*sqrt(h))

    p = (exp(r*h) - d)/ (u - d)

    a = [S]

    for x in 1:n
        if rand() > p
            push!(a, a[end]*u)
        else
            push!(a, a[end]*d)
        end
    end

    plot!(a, leg = false, title = "Параллельная генерация цен")
end

plot() # Очистим коор. плоскость
for x in 1:10
    Threads.@spawn createPath(100*rand(), r, σ, T, n)
end

plot!() # Посмотрим коор. плоскость
savefig("./Lessons/julia/other/binomial_options/2.png")
