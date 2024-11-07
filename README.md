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
# calculamos el valor futuro
a=A(VF=VF,r=r,n=n)
# imprimimos el resultado
a
```
