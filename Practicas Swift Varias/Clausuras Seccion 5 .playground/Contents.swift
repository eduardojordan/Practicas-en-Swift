//Clausuras

func sum1 (a: Int) ->Int {
    return a + 1
}

// Siempre tiene preferencia la forma de abajo, fijate en el ejemplo
let sum1 = { (a:Int)-> Int in
    return a + 42
    
}

sum1(2)
let width = 20
let addWidth = { ( a:Int) -> Int in
    return a + width
}

let addWidthAgain = {(a:Int) -> Int in
    return addWidth (a)
}
addWidthAgain(42)


var closures = [addWidth,
    { (a:Int)-> Int in return a + 42},
    {a in return a + 5},
    {a in a + 2},
    {$0 * 22}

]
closures [4](2)

typealias BinaryFunc = (Int, Int)->Int
let applier = { ( f: BinaryFunc, m: Int, n: Int)-> Int in
    return f ( m, n)
    
}
applier ( *, 2, 3)


//Trailing Clousures

func applierInv (m : Int , n: Int, f: BinaryFunc)-> Int {
    return applier (f,m,n)
}

applierInv (m: 2, n: 3, f: {
$0 * 2 + $1 * 3
})

