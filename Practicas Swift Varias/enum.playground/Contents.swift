enum UserType {
    case admin
    case editor
    case author
    case reader
}

// Una estructura User que tiene una propiedad type de tipo UserType
struct User {
    let type: UserType = .admin
}


func userDidLogin(user: User) {
    switch user.type {
    case .admin: break
        // Mostrar el panel de administrador
        
    case .editor: break
        // Mostrar el panel de edición
        
    case .author: break
        // Mostrar el panel de autores
        
    case .reader: break
        // Mostrar lista de lectura
    }
}
