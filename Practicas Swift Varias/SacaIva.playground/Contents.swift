

// Funcion para sacar el iva

func cuantoEsElIva (a: Double )-> Double
{
    return (a * 0.21) + a
    
}


cuantoEsElIva(a:20)


// print ("El 21% de \(a) serian  \(suma) ")



func sinIva (a: Double )->Double {
    return a / 1.18
}
sinIva (a:24.2)
