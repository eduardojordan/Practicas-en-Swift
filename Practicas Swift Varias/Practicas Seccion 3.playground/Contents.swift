// convertir un numero a un double
let convertNumber = 12

let doubleConvert = Double (convertNumber)

let failedNumber = Double ("a")


// TypeAlias

typealias Integer = Int
let integerNumber: Integer

// Colecciones

var swift = "swift mola"
swift = swift + " !!!!"


/// Array

var words = [ "uno", "dos" , "tres"]
words = words +  ["cuatro"]
words [1]


// Diccionario
var elDiccionario = [1: "uno", 2: "dos"]
elDiccionario [3] = "tres"
elDiccionario[1]

print(elDiccionario)

// Eliminar valor en diccionario haciendolo igual a nil
elDiccionario [1] = nil

print (elDiccionario)

// Iterando por las cadenas

var total = ""
for elementos in words {
    total = "\(total) \(elementos)"
    
}
total

for (key, value) in elDiccionario {
    //    print ( "\(key) \(valor)¨)
}


// Tuplas
var pair = (2,"one")
pair.0
pair.1

pair.0 = 42

print (pair)

