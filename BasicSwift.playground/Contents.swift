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


// ************* Collection Types *************

// Array lista ordenada de datos de tipo de String que pueden estar duplicados
var array: [String] = ["David", "Elena", "Adrián", "Natalia", "Sergi", "Belén", "Miguel"]

array.count
array.append("Alex")
array.append(contentsOf: ["Carlos", "Sara"])
array.remove(at: 3)
array.contains("David")
array.contains("Juan")

array[0]
array.isEmpty

var arrayDoubles = [1.0, 2.0, 4.0, 1.0, 23.0]

// No se modifica la lista original, se devuelve una copia ordenada
var sorted = arrayDoubles.sorted()
arrayDoubles

// Modificamos la lista original y la ordenamos
arrayDoubles.sort()


// Dictionary listado de pares [clave:valor] sin ordenar, las claves son únicas
var diccionario: [Int:String] = [77 : "David",
                                 10 : "Elena",
                                 25 : "Adrián",
                                 0 : "Elena"]

diccionario.isEmpty
diccionario.count

diccionario.keys
diccionario.values

diccionario[77]
diccionario[1]

diccionario.removeValue(forKey: 0)
diccionario.count

diccionario[0] = "Elena"
diccionario.count
diccionario[0] = "Natalia"
diccionario.count
diccionario[0] = nil
diccionario.count


// Set, lista de datos no ordenada con valores únicos
var setList: Set<String> = []

// Se inserta en la colección
setList.insert("David")
// No se inserta en la colección porque ya existe
setList.insert("David")

setList.count
setList.removeFirst()
setList.isEmpty

setList.insert("Sergi")
setList.count

setList.contains("David")


// ************* Tuple *************
var tuplaVar: (user: String?, password: String?) = (nil, nil)
tuplaVar.0
tuplaVar.1

tuplaVar.user = "David"
tuplaVar.password = "123456"
tuplaVar


// ************* Enum *************
enum LoginType {
    case userPassword, google, apple, outlook, facebook
}

var userLogin: LoginType = .apple

enum FontSize: Int {
    case small = 5
    case medium = 7
    case big = 10
}

var fontSize: FontSize = .medium
// Accedemos con rawValue al valor asociado al case 'medium'
fontSize.rawValue

var fontBig = FontSize(rawValue: 10)



enum Saludos: String {
    case normal = "Hola"
    case raro = "Holitaaaa"
    case otro = "Que pasa!"
}

var saludosVar: Saludos = .otro
// Accedemos con rawValue al valor asociado al case 'otro'
saludosVar.rawValue

var saludoNormal = Saludos(rawValue: "Hola")


enum Country {
    case spain(Int?)
    case portugal
    case france
    case germany(salary: Int?, days: Int)
    case brazil
    case italy
}

var countrySpain = Country.spain(24_000)
var countryGermany: Country = .germany(salary: 52_000, days: 240)

countryGermany
countrySpain

// Obtenemos todos los posibles valores del enum 'Country' al conformar enum Country: CaseIterable
// Country.allCases


// ************* If && Switch *************

if (5 > 0 || 3 == 3 && 0 == 1) {
    print("5 es mayor que 0")
} else if (3 == 3) {
    print("3 igual a 3")
} else {
    print("Todo es mentira")
}

var userAge = 19
switch (userAge) {
    case 0...3:
        print("Bebé")
        
    case 3...12:
        print("Niño")
        
    case 12...18:
        print("Adolescente")
        
    case 18...70:
        print("Adulto")
        
    case 70...120:
        print("Anciano")
        
    default:
        break
}

switch fontSize {
    case .small:
        print("Font size small \(fontSize.rawValue)")
        
    case .medium:
        print("Font size medium \(fontSize.rawValue)")
        
    case .big:
        print("Font size big \(fontSize.rawValue)")
}

switch userLogin {
    case .userPassword:
        print("User login with email and password")
        
    default:
        print("User login with Social Login")
}

switch countryGermany {
    case .spain(let salary):
        print("Salario medio en España es \(salary ?? 0)")
                
    case .germany(let salary, let days):
        print("Salario medio en Alemania es \(salary ?? 0) para \(days) días trabajados")

    default:
        break
}


// ************* Optionals: if let && guard let *************

// Unwrapped de la variable opcional 'numero2'
var otroNumero: Int? = nil

// Definimos y creamos dos constantes que solo existen dentro del if 'numeroUnwrapped'
// y 'otroNumeroUnwrapped'
if let numeroUnwrapped = numero2,
   let otroNumeroUnwrapped = otroNumero,
   (numeroUnwrapped > otroNumeroUnwrapped || otroNumeroUnwrapped > 0),
   numeroUnwrapped > 5 {
    print("\(numeroUnwrapped) \(otroNumeroUnwrapped)")
}

print("Hola")

otroNumero = 10
func opcional() {
    guard let numeroUnwrapped = numero2,
          let otroNumeroUnwrapped = otroNumero,
          (numeroUnwrapped > otroNumeroUnwrapped || otroNumeroUnwrapped > 0),
          numeroUnwrapped > 5 else {
        return
    }
    
    print("\(numeroUnwrapped) \(otroNumeroUnwrapped)")
}

opcional()


// ************* Bucles *************
var students = ["Elena", "Adrián", "Natalia", "Sergi", "Belén", "Miguel", "Alex"]

print()
print("************** BUCLES **************")
print("****** 1 ******")
for student in students {
    // 1.- Hacer el print solo de los estudiantes que su nombre contenga una 'e'
    if(student.contains("e")) {
        print(student)
    }
}

print("****** 2 ******")
for student in students {
    // 2.- Hacer el print solo de los estudiantes que su nombre contenga más de 5 letras
    if(student.count > 5) {
        print(student)
    }
}

print("****** 3 ******")
// 3.- Escribir en consola todos los números pares entre 1 y 100
for number in 1...100 where number % 2 == 0 {
    print(number)
}

print("****** 4 ******")
// 4.- Escribir en consola todos los números entre 1 y 100 empezando por 100
for number in (1...100).reversed() {
    if(number == 69) {
        // Con 'break' salimos del bucle y se finaliza las iteraciones
        break
    }
    
    if(number == 80) {
        // Con 'continue' saltamos a la siguiente iteración del bucle
        continue
    }
    
    print(number)
}

//for number in stride(from: 100.0, to: 1.0, by: -1.5) {
//    print(number)
//}

var index = 0
// 0 < 7 -> true
// 1 < 7 -> true
// .
// .
// 7 < 7 -> false
while (index < students.count) {
    print(students[index])
    index += 1 // index = index + 1
}

var indexRepeat = 0
// Con un bucle 'repeat' nos aseguramos que el bucle siempre se ejecuta al menos 1 vez
repeat {
    print(students[indexRepeat])
    indexRepeat += 1 // indexRepeat = indexRepeat + 1
} while (indexRepeat < students.count)

print("****** 5 ******")
// 5.- Iterar sobre el listado de 'students' y añadir a un nuevo listado todos
// los estudiantes que tengan un número para de carácteres en su nombre
var studentsPar: [String] = []
for student in students {
    if (student.count % 2 == 0) {
        studentsPar.append(student)
    }
}

print(studentsPar)


print("****** 6 ******")
// 6.- Crear un diccionario en el que las claves sean nombre de planetas y los valores
// nombres de estudiantes. Utilizar el listado ya creado de 'students' y el Enum de 'Planet'
enum Planet: Int, CaseIterable {
    case earth // rawValue = 0
    case jupiter // rawValue = 1
    case mercurio // rawValue = 2
    case venus // rawValue = 3
    case saturn // rawValue = 4
    case urano // rawValue = 5
    case mars // rawValue = 6
}

// Utilizamos allCases para obtener el listado de todos los posibles cases del enum Planet
// podemos utilizar allCases porque el enum Planet conforma el protocolo CaseIterable
var planetas = Planet.allCases
// Creamos un diccionario con clave de tipo Int y valor de tipo String [Int : String]
var planetaStudent: [Int:String] = [:]

// planetas -> [Planet.earth, Planet.jupiter, Planet.mercurio, Planet.venus,
//             Planet.saturn, Planet.urano, Planet.mars]
// students -> ["Elena", "Adrián", "Natalia", "Sergi", "Belén", "Miguel", "Alex"]
/*
    index -> 0
    student -> "Elena"
 
    index -> 1
    stundet -> "Adrián"
 
    ...
 
    index -> 6
    student -> "Alex"
 */
for (index, student) in students.enumerated() {
    // print("Index \(index), Value \(student)")
    // Comprobamos que el indice 'index' existe en la lista de 'planetas'
    if(index < planetas.count) {
        let planet = planetas[index]
        // planetaStudent.updateValue(student, forKey: planet.rawValue)
        planetaStudent[planet.rawValue] = student
    }
}

print(planetaStudent)
/*
 index = 0
 if(0 < 7) {
    planetas[0] -> earth
    planetaStudent[earth.rawValue -> 0] = "Elena"
 }
 
 index = 1
 if(1 < 7) {
    planetas[1] -> jupiter
    planetaStudent[jupiter.rawValue -> 1] = "Adrián"
 }
 .
 .
 .
 index = 6
 if(6 < 7) {
    planetas[6] -> mars
    planetaStudent[mars.rawValue -> 6] = "Alex"
 }
 */

// planetaStudent[0] = "David"
// planetaStudent[Planet.earth.rawValue] = "David"
// planetaStudent[Planet.mars.rawValue] = "Miguel"
// [0:"David", 6:"Miguel"]

// planetaStudent[0] -> "David"
// planetaStudent[Planet.earth.rawValue]
// planetaStudent[6] -> "Miguel"
// planetaStudent[Planet.mars.rawValue]

//for key in planetaStudent.keys {
//    print(Planet(rawValue: key))
//}

print("****** 7 ******")
// 7.- Escribir en consola el nombre de cada planeta del Enum 'Planet'
for planet in planetas {
    switch planet {
        case .earth: print("Tierra")
        case .jupiter: print("Jupiter")
        case .mercurio: print("Mercurio")
        case .venus: print("Venus")
        case .saturn: print("Saturno")
        case .urano: print("Urano")
        case .mars: print("Marte")
    }
}

print("****** 7.1 ******")
enum Planetas: String, CaseIterable {
    case earth = "Tierra"// rawValue = "Tierra"
    case jupiter = "Jupiter" // rawValue = "Jupiter"
    case mercurio = "Mercurio" // rawValue = "Mercurio"
    case venus = "Venus" // rawValue = "Venus"
    case saturn = "Saturno" // rawValue = "Saturno"
    case urano = "Urano" // rawValue = "Urano"
    case mars = "Marte" // rawValue = "Marte"
}

var planetsName = Planetas.allCases
for planet in planetsName {
    print(planet.rawValue)
}


// ************* Functions *************
print("****** Functions ******")
/* func nombreFuncion(parametroEntrada: TipoParametro) -> TipoValorDevuelto {

   }
 */

func printHello() {
    print("Hello")
}

printHello()

// Al parámetro de entrada 'age' le damos un valor por defecto nil
func printHelloStudent(name: String, age: Int = 0) {
    print("Hello \(name) age \(String(describing: age))")
}

printHelloStudent(name: "Belén", age: 256)
printHelloStudent(name: "Adrián")

// Añadimos etiquetas a los parámetros 'email' y 'password'
func login(email user: String, password pass: String) -> Bool {
    print("Login \(user) password \(pass)")
    
    if(user.isEmpty || pass.isEmpty) {
        return false
    } else {
        return true
    }
}

let isLogged = login(email: "David",
                     password: "123456")

// Función que devuelve un valor de tipo Int  ' -> Int '
func increment(_ number: Int, by increment: Int) -> Int {
    let result = number + increment
    print("\(result)")
    
    return result
}

let resultIncrement = increment(3, by: 5) // -> 3 + 5 = 8
print("El resultado del incremento es \(resultIncrement)")


print("****** 8 ******")
// 8.- Crear una función que me devuelva los estudiantes con más de 5 letras
func studentsName5(_ estudiantes: [String]) -> [String] {
    var studentsResult: [String] = []
    
    for student in estudiantes {
        if(student.count > 5) {
            studentsResult.append(student)
        }
    }
    
    return studentsResult
}

let studentsResult = studentsName5(students)

// 8.1.- Crear una función que me devuelva los estudiantes que el número de letras de su nombre sea par
func studentsNamePar(estudiantes: [String]) -> [String] {
    var studentsPar: [String] = []
    
    for student in estudiantes {
        if (student.count % 2 == 0) {
            studentsPar.append(student)
        }
    }
    
    return studentsPar
}

studentsNamePar(estudiantes: students)

// 8.2.- Crear una función que me devuelva el número de estudiantes que su nombre contenga más de 5 letras
func studentsName5Count(estudiantes: [String]) -> Int {
    return studentsName5(estudiantes).count
}

studentsName5Count(estudiantes: students)


// 8.3.- Crear una función que me devuelva el número de estudiantes que el número de letras de su nombre sea par
func studentsNameParCount(estudiantes: [String]) -> Int {
    return studentsNamePar(estudiantes: estudiantes).count
}

studentsNameParCount(estudiantes: students)


// 8.4.- Crear una función que escriba en consola "Hello \(studentName)" por cada estudiante
func printStudentHello(student: String) {
    print("Hello \(student)")
}

func printStudentsHello(estudiantes: [String]) {
    for student in estudiantes {
        printStudentHello(student: student)
    }
}

printStudentsHello(estudiantes: students)

// 8.5.- Crear una función que escriba en consola "Hello \(studentName)" por cada estudiante que su nombre contenga una 'a'
func printStudentsA(estudiantes: [String]) {
    for student in estudiantes {
        if(student.contains("a")) {
            printStudentHello(student: student)
        }
    }
}

printStudentsA(estudiantes: students)


// ************* Closures *************
/* for student in students {
    print("Value \(student)")
 }
 */
students.forEach { student in
    print("Value \(student)")
}

// $0 es el parámetro de entrada del Closure, sería igual que 'student' en cada iteración
students.forEach { print("Value \($0)") }

// for (index, student) in students.enumerated() { }
students.enumerated().forEach { index, student in
    print("Index \(index), Value \(student)")
}

// $0 y $1 son los parámetros de entrada del Closure, serían igual que 'index' y 'student' en cada iteración
students.enumerated().forEach { print("Index \($0), Value \($1)") }

/*
 for student in estudiantes {
     if(student.contains("a")) {
         printStudentHello(student: student)
     }
 }
 */
students.filter { student -> Bool in
    return student.contains("a")
}

var studentsFiltered = students.filter { $0.contains("a") }
