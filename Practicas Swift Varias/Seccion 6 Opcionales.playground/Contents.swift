// Se indica con el signo ? en la variable.
var something : String? = "Hola"
var letalVirus : String? = nil


// para sacar y saber que tiene
if let value = something {
    print(value)
}

if let value = letalVirus {
    print(value)
}

///// La manera mas brutal de sacar el contenido.

something!

// letalVirus! // Si ejecutas este con nil se cae la aplicacion da ERROR!!! es por ello que esta menra no es muy recomendable usar.

// Si se indica al tipo que no es un nil, aunque si sabes que no es un niil para que quieres indicarlo? bueno el sistema lo trae

var s : String! = "Hola"


// considerarlos peligrosos

//Swift es muy sensible a los nil

var d : String? = nil
var z : String? = "Hola Mundo"

// Este es un metodo -->hasPrefix
d?.hasPrefix("Hol")
z?.hasPrefix("Hol")

// Opcionales

var maybe: Int? = 20   // Some
var maybeNothing : Int?   // .none, o nil

