---
title: "Лабораторная работа №2"
author: |
  Попова Юлия Дмитриевна\inst{1}
date: "19.02.2022, Moscow"
output:
  powerpoint_presentation: default
  slidy_presentation: default
  ioslides_presentation: default
  beamer_presentation: default
subtitle: Задача о погоне
lang: ru-RU
institute: |
  \inst{1}RUDN University, Moscow, Russian Federation
toc: no
slide_level: 2
theme: metropolis
header-includes:
- \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
- \makeatletter
- \beamer@ignorenonframefalse
- \makeatother
aspectratio: 43
section-titles: yes
---


## Выполнила 
Попова Юлия Дмитриевна 1032192876 НФИбд-03-19

## Цель работы

Построить математические модели в Scilab, ознакомиться с задачей о погоне.

## Задание работы

- Запишите уравнение, описывающее движение катера, с начальными
условиями для двух случаев (в зависимости от расположения катера
относительно лодки в начальный момент времени).
- Постройте траекторию движения катера и лодки для двух случаев.
- Найдите точку пересечения траектории катера и лодки 

## Теоретическое введение

**Scilab** - пакет прикладных математических программ, предоставляющий открытое окружение для инженерных и научных расчётов.

## Выполнения работы
Уравнение, решение которого является траекторией движения катера в поялрных координатах: 
$$\frac{dr}{d\theta}=\frac{r}{\sqrt{14.21}}$$
Начальные условия для первого случая: $\begin{cases}
\theta_0=0 \\
r_0=118/49
\end{cases}$
Начальные условия для второго случая: $\begin{cases}
\theta_0=-\pi \\
r_0=118/28
\end{cases}$

## Траектория движения в первом случае

Точка пересечения траекторий в первом случае (-7.5, 7.5)
![График первого случая](1.4.png)

## Траектория движения во втором случае

Точка пересечения траекторий во втором случае (-11.5, 11.5)
![График второго случая](1.5.png)

## Заключение
 - Построили математические модели в Scilab.
 - Ознакомилисб с задачей о погоне.


## Библиография

1. Wikipedia: Scilab (https://ru.wikipedia.org/wiki/Scilab)

