---
# Front matter


# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

<h1 align="center">
<p>РОССИЙСКИЙ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ 
<p>Факультет физико-математических и естественных наук  
<p>Кафедра прикладной информатики и теории вероятностей
<p>ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №4
<br></br>
<h2  align="right">
<p>Дисциплина: Математическое моделирование
<p>Преподаватель: Кулябов Дмитрий Сергеевич
<p>Студент: Попова Юлия Дмитриевна
<p>Группа: НФИбд-03-19
<br></br>
<br></br>
<h1 align="center">
<p>МОСКВА
<p>2022 г.
</h1>


# Цель работы
Рассмотреть модель гармонических колебаний.

# Задание работы

**Вариант 37**

Построить фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для следующих случаев
1. Колебания гармонического осциллятора без затуханий и без действий внешней
силы $\ddot x + 18x = 0$
2. Колебания гармонического осциллятора c затуханием и без действий внешней
силы $\ddot x + 18\dot x + 9x = 0$
3. Колебания гармонического осциллятора c затуханием и под действием внешней
силы $\ddot x + 8\dot x + 16x = 0.5cos(3t)$

На интервале $t \in [0 ; 68]$ с шагом 0.05 с начальными условиями $x_0 = 1.8$, $y_0 = 0.8$

# Теоретичсекое введение
Гармонические колебания - колебания, при которых физическая величина изменяется с течением времени по гармоническому закону.

Уравнение свободных колебаний гармонического осциллятора имеет следующий вид:

$\ddot{x} + 2\gamma\dot{x} + \omega 0^2x = 0$,

 где $x$ - переменная, описывающая состояние системы (смещение грузика, заряд кондинсатора и тд.), $\gamma$ - параметр, характеризующий потери энергии, $\omega$ – собственная частота
колебаний, $t$ – время.

Для однозначной разрешимости уравнения второго порядка необходимо задать два начальных условия вида:

$$
\begin{cases}
\ x(t_0) = x_0\\
\dot{x}(t_0) = y_0
\end{cases}
$$

Уравнение второго порядка можно представить в виде системы двух уравнений первого порядка:

$$
\begin{cases}
\dot{x} = y\\
\dot{y} = -\omega_0^2x
\end{cases}
$$

Начальные условия для  данной системы примут вид:

$$
\begin{cases}
\ x(t_0) = x_0\\
\ y(t_0) = y_0
\end{cases}
$$

Независимые переменные $x$, $y$ определяют пространство, в котором
«движется» решение. Это фазовое пространство системы, поскольку оно двумерно
будем называть его фазовой плоскостью.
Значение фазовых координат $x$, $y$ в любой момент времени полностью
определяет состояние системы. Решению уравнения движения как функции
времени отвечает гладкая кривая в фазовой плоскости. Она называется фазовой
траекторией. Если множество различных решений (соответствующих различным начальным условиям) изобразить на одной фазовой плоскости, возникает общая
картина поведения системы. Такую картину, образованную набором фазовых
траекторий, называют фазовым портретом.


# **Выполнение лабораторной работы**

1. Колебания гармонического осциллятора без затуханий и без действий внешней
силы $\ddot x + 18x = 0$


![Программа в OpenModelica](1.jpg)   
![Фазовый портрет для колебаний гармонического осциллятора без затуханий и без действий внешней силы](2.png)

2. Колебания гармонического осциллятора c затуханием и без действий внешней
силы $\ddot x + 18\dot x + 9x = 0$

![Программа в OpenModelica](3.jpg)   
![Фазовый портрет для колебаний гармонического осциллятора c затуханием и без действий внешней силы](4.png)

3. Колебания гармонического осциллятора c затуханием и под действием внешней
силы $\ddot x + 8\dot x + 16x = 0.5cos(3t)$

![Программа в OpenModelica](55.jpg)  
![Фазовый портрет для колебаний гармонического осциллятора c затуханием и под действием внешней силы](66.png)



# Вывод

Мы рассмотрели и построили модель гармонических колебаний.


# Библиография

1. Гармонические колебания - https://skysmart.ru/articles/physics/garmonicheskie-kolebaniya
