using DataFrames, CSV, Plots

# Загрузка данных:
houses = CSV.File("/home/rosenrot/Lessons/julia/data_science/clustering_kNN/houses.csv") |> DataFrame

# Фильтрация данных по заданному условию:
filter_houses = houses[houses[!,:sqft].>0,:]
# Добавление данных :latitude и :longitude в новый фрейм:
X = filter_houses[[:latitude,:longitude]]
# Конвертация данных в матричный вид:
X = convert(Matrix{Float64}, X)
X = X'

# Подключение пакета NearestNeighbors:
import Pkg
Pkg.add("NearestNeighbors")
using NearestNeighbors
# Найдём k-среднее одного из объектов недвижимости:
knearest = 10
id = 70
point = X[:,id]

# Поиск ближайших соседей:
kdtree = KDTree(X)
idxs, dists = knn(kdtree, point, knearest, true)

# Все объекты недвижимости:
x = filter_houses[!,:latitude];
y = filter_houses[!,:longitude];
scatter(x,y)
# Соседи:
x = filter_houses[idxs,:latitude];
y = filter_houses[idxs,:longitude];
scatter!(x,y, c = :red)
