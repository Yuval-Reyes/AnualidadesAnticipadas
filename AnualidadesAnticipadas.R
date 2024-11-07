# se presentan las funciones de anualidades anticipadas
#autor: Dana Yuval Reyes González
#v1.0: 3 noviembre de 2024

# 1. Cálculo de Valor Futuro (VF) dado A, r y n
VF = function(A, r, n) {
  A * ((1 + r)^n - 1) / r
}

# 2. Cálculo de Anualidad (A) dado VF, r y n
A = function(VF, r, n) {
  VF * r / ((1 + r)^n - 1)
}

# 3. Cálculo de Número de Pagos (n) dado VF, A y r
n = function(VF, A, r) {
  log((VF * r / A) + 1) / log(1 + r)
}

# 4. Cálculo de Tasa de Interés (r) dado FV, n y A (aproximación)
r = function(VF, A, n) {
  # Ajustamos los límites para evitar problemas numéricos
  uniroot(function(r) A * ((1 + r)^n - 1) / r - VF, 
          lower = 1e-10, upper = 1)$root
}


# 5. Cálculo de Valor Actual (VA) dado A, r y n
VA = function(A, r, n) {
  A * (1 - (1 + r)^(-n)) / r
}

# 6. Cálculo de Anualidad (A) dado VA, r y n
A_ = function(VA, r, n) {
  VA * r / (1 - (1 + r)^(-n))
}

# 7. Cálculo de Número de Pagos (n) dado VA, A y r
n_ = function(VA, A, r) {
  log(1 - (VA * r / A)) / log(1 + r) * -1
}

# 8. Cálculo de Tasa de Interés (r) dado VA, n y A (aproximación)
r_ = function(VA, A, n) {
  # Ajustamos los límites para evitar problemas numéricos
  uniroot(function(r) A * (1 - (1 + r)^(-n)) / r - VA, 
          lower = 1e-10, upper = 1)$root
}

