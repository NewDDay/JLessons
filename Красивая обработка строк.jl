text = """Как программировать.
Пример программы:
<code>
f(x)=x+1 # объявление функции
</code>
"""

text |>
    uppercase |>
    c->replace(c, "А" => "-") |>
    c->join(c, "а")
    #replace("А"=>"о") |>
