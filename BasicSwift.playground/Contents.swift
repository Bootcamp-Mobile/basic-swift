import UIKit

// ************* Var / Const *************

// Variable: var nombreVariable: Tipo = valor
var str = "Hello, playground"
str = "Hola, playground"

// Constante: let nombreConstante: Tipo = valor
let constant = "Hola, playground"
// Error -> constant = "Hello, playground"

var variable = str
variable = "Hola bootcamp!"
str = "Hola David!"


// ************* Types *************
/*
 String -> Texto -> "Hello Bootcamp"
 Int -> Número entero -> positivo 7 o negativo -7
 Float -> Número decimal (32 bits) -> 7.8941
 Double -> Número decimal con más precisión (64 bits) -> 7.894165234
 Bool -> Valor verdadero/falso -> true/false
 */

var decimal: Float = 3.14
var decimal2 = 4.0


// ************* Operaciones *************

// Suma
var suma = decimal + Float(decimal2)

// Resta
var resta = Double(decimal) - decimal2

// División entera
// Cuidado divisón por 0, produce Exception error
var division = decimal / Float(decimal2)

// Módulo división
var resto = 5 % 2


// ************* Operaciones Lógicas *************
/*
 && -> AND
 || -> OR
 < -> MenorMayor
 > -> MayorMenor
 == -> Comparación igualdad
 != -> Comparación diferente
 ! -> Negación, convierte true a false y false a true
 */

var result = (5 > 2)

/* AND
 true && true -> true
 false && false -> false
 true && false -> false
 false && true -> false
 */
result = (5 > 2 && 4 < 3)

/* OR
 true || true -> true
 false || false -> false
 true || false -> true
 false || true -> true
 */
result = !(5 == 2 || 4 != 3)


// ************* Optional *************
// null (Java, Kotlin) = nil (Swift)

// Declaramos variable de tipo opcional con ?
var bootcampName: String? = "Mobile development"
// Acceso de forma segura al valor de la variable bootcampName con ?
bootcampName?.count

bootcampName = nil
// Valor por defecto al resultado en caso de que bootcampName sea nil
bootcampName?.count ?? 0
 
var numero1 = 5
var numero2: Int? = 7

var numero2Unwrapped = numero2 ?? 0
var sumaOptional = numero1 + numero2Unwrapped


// ************* Print *************
print("HOLA")

var age = 35
var name = "David"
print("\(name) tiene \(age) años y está en \(bootcampName ?? "")")

// %d -> Int
// %f -> float
// %ld -> Long
// %@ -> String
print(String(format: "%@ tiene %d años y está en %@",
             name,
             age,
             (bootcampName ?? "")))
