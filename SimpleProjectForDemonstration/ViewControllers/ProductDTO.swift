//
//  ProductDTO.swift
//  SimpleProjectForDemonstration
//
//  Created by Julio Cesar Pereira on 02/01/25.
//

import Foundation

//Value Type: A struct é um tipo de valor, ou seja, é copiada ao ser atribuída ou passada como parâmetro.

//Imutabilidade: Para alterar propriedades, tanto a instância quanto as propriedades precisam ser var.

//Mutating: Métodos que alteram propriedades internas precisam ser marcados com mutating.

// No Swift, quando você usa uma struct, ela é um tipo de valor. Isso significa que, ao modificar qualquer propriedade de uma instância da struct, você está, na verdade, criando uma nova cópia da struct com o valor atualizado.

//Sem ARC: A memória da struct é gerenciada automaticamente, sem contagem de referências.

//Independência: Cópias são independentes; alterações em uma cópia não afetam outras.

//Recomendada para DTOs: Ideal para transportar dados imutáveis ou simples entre camadas.

//Customização: Suporte a inicializadores customizados, protocolos, extensões e métodos.

//Escopo e Ciclo de Vida: A memória é liberada automaticamente ao sair do escopo.

struct ProductDTO {
    var id : Int
    var name: String
    var price: Double
    
    
    mutating func changeName(name: String) {
        self.name = name
    }
    
    
    init(id: Int, name: String, price: Double) {
        self.id = id
        print("Método customizado")
        self.name = name
        self.price = price
    }
}


class ProductClassDTO {
    var id : Int
    var name: String
    var price: Double
    
    
    init(id: Int, name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
    }   
    
}
