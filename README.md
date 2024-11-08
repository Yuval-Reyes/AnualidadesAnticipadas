# AnualidadesAnticipadas
Con el siguiente codigo, puede usted cargar las funciones relativas a los calculos de anualides anticipadas:
```(r)
source("https://raw.githubusercontent.com/Yuval-Reyes/AnualidadesAnticipadas/refs/heads/main/AnualidadesAnticipadas.R")
```
Diviremos la explicación de las formulas en dos partes, las que hacen uso del *valor futuro* y las que usan *valor actual*
## valor futuro
### Valor futuro, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
Para realizar el ejemplo de valor futuro tenemos el siguiente enunciado:
Un individuo deposita $900 al inicio de cada mes en una cuenta que paga una tasa del 5% anual, compuesta mensualmente, durante 7 años. ¿Cuál será el valor futuro de la anualidad anticipada al término del plazo?
Donde:
$A$=$900
$i$=5%
$n$=84 meses
Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
A=900
i=0.05
r=0.05/12
n=84
# calculamos el valor futuro
VFt=VF(A=A,r=r,n=n)
# imprimimos el resultado
VFt
```
### Anualidad, conociendo valor futuro, tasa del periodo y número de pagos.
Usando el mismo ejercico pero ahora buscaremos la anualidad donde:
$VF$=$90295.79
$i$=5%
$n$=84 meses
Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VF=90295.79
i=0.05
r=0.05/12
n=84
# calculamos la anualidad
a=A(VF=VF,r=r,n=n)
# imprimimos el resultado
a
```
### Número de pagos o plazo, conociendo valor futuro, número de pagos y tasa del periodo.
Nuavamente utilizando el ejemplo anterior obtendremos el numero de pagos y para esto veremos que:
$VF$=$90295.79
$i$=5%
$A$=900
Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VF=90295.79
i=0.05
r=0.05/12
A=900
# calculamos el numero de plazos
Np=n(VF=VF,r=r,A=A)
# imprimimos el resultado
Np
```
### Tasa del periodo, conociendo valor futuro, número de pagos y monto de la anualidad.
Para finalizar los ejemplos con valor final resolveremos el ejercicio para la tasa del periodo por lo que los datos se usarian de la siguiente manera:
$VF$=$90295.79
$n$=84
$A$=900
Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VF=90295.79
n=84
A=900
# calculamos la tasa del periodo
Tp=r(VF=VF,n=n,A=A)
# imprimimos el resultado
Tp
```
## valor actual
### Valor actual, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
Ahora usaremos un nuevo enunciado para plantear el siguiente ejemplo:
¿Cuál es el valor presente de una renta de $500 depositada a principio de cada mes, durante 15 años en una cuenta de ahorros que gana el 9%, convertible mensualmente? 
Donde:
$A$=$500
$i$=9%
$n$=180 meses
Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
A=500
i=0.09
r=0.09/12
n=180
# calculamos el valor futuro
va=VA(A=A,r=r,n=n)
# imprimimos el resultado
va
```
### Anualidad, conociendo valor actual, tasa del periodo y número de pagos.
Usando el mismo ejercico pero ahora buscaremos la anualidad donde:
$VA$=$49296.7
$i$=9%
$n$=180 meses
Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VA=49296.7
i=0.09
r=0.09/12
n=180
# calculamos la anualidad
a=A_(VA=VA,r=r,n=n)
# imprimimos el resultado
a
```
### Número de pagos o plazo, conociendo valor actual, número de pagos y tasa del periodo.
Nuavamente utilizando el ejemplo anterior obtendremos el numero de pagos y para esto veremos que:
$VA$=$49296.7
$i$=9%
$A$=500
Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VA=49296.7
i=0.09
r=0.09/12
A=500
# calculamos el numero de plazos
Np=n_(VA=VA,r=r,A=A)
# imprimimos el resultado
Np
```
### Tasa del periodo, conociendo valor actual, número de pagos y monto de la anualidad.
Para finalizar los ejemplos con valor final resolveremos el ejercicio para la tasa del periodo por lo que los datos se usarian de la siguiente manera:
$VA$=$49296.7
$n$=180
$A$=500
Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VA=49296.7
n=180
A=500
# calculamos la tasa del periodo
Tp=r_(VA=VA,n=n,A=A)
# imprimimos el resultado
Tp
```
