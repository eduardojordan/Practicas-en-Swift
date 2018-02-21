// Funciones

func doubleria (a:Int) -> Int{
    return a * 2
}
doubleria(a: 4)


func sum (a: Int , b:Int) -> Int{
    return a + b
}

func sum (a: Int, b: Int, theMultyplyBy c: Int)-> Int
{
    return (a + b) * c
}
sum(a: 2, b: 3, theMultyplyBy: 6)


//Parametros por defectos, son parametros que tienen un valor aunque nosotros no le demos  un valor

func addSuffix ( a: String, suffix: String = "ingly" ) -> String
{
    return a + suffix
}
addSuffix(a: "interesting")
addSuffix(a: "interest", suffix: "ed")

func substract (a: inout Int, b: Int) ->Int {
    a = a + 1
    return a - b
    }

var originalNumber = 10
substract(a: &originalNumber, b: 5)
originalNumber



// como se devuelven tuplas?

func eat (code: Int) -> (food: String, quantity: Int){
    switch code {
    case 0 :
        return ( "Pizza", 1)
    case 1 :
        return ( "Burguer", 2)
    default:
        return ("salad", 0)
    }
    
}
let badFood = eat (code: 56)
let (goodFood, quantity) = eat (code:1)
print ( goodFood)

//FUNCIONES DE PRIMER NIVEL

//Funcion que acepta otra funcion

func doubler (a: Int) -> Int
{
    return a * 2
}

typealias funcIntToIntType = (Int) -> Int
func apply ( f: funcIntToIntType, a: Int) ->Int {
    return f (a)
}
apply(f: doubler, a: 2)
doubler ( a: 2)


func sum42 (a: Int) -> Int{
    return a + 42
}
func compose (f: @escaping funcIntToIntType, g: @escaping funcIntToIntType)-> funcIntToIntType
{
    func comp (a: Int)-> Int
    {
        return f (g (a))
    }
    return comp
}
let number = compose (f: doubler, g: sum42)(2)
doubler(a: sum42(a: 2))
let numberFunc = compose(f: doubler, g: sum42)
numberFunc(2)

var functions = [sum42, doubler, numberFunc]
for f in functions {
    f(33)
}
