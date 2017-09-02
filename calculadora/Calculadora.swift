//
//  Calculadora.swift
//  calculadora
//
//  Created by Mctech Aluno on 01/09/17.
//  Copyright © 2017 Mctech Aluno. All rights reserved.
//

import Foundation

class Calculadora: NSObject {
    /// Metodo vai somar dois inteiros
    ///
    /// - Parameters:
    ///   - valorA: Primeiro Numero
    ///   - valorB: Segundo Numero
    /// - Returns: Soma dos valores a e b
    func somarInteiros(valorA: Int, valorB: Int) -> Int {
        return valorA + valorB
    }
    
    /// Subtrair Dois numero
    ///
    /// - Parameters:
    ///   - valorA: Numero A
    ///   - valorB: Numero B
    /// - Returns: Retorna a subtracao
    func subtrairInteiros(valorA: Int, valorB: Int) -> Int{
        return valorA - valorB
    }
    
    
    /// Subtrai qualquer numero
    ///
    /// - Parameters:
    ///   - valorA: valor de a
    ///   - valorB: valor de b
    /// - Returns: retorno da subtracao
    func subtrairNumeros(valorA: Double, valorB: Double) -> Double{
        return valorA - valorB
    }
    
    /// Dividir dois numero
    ///
    /// - Parameters:
    ///   - valorA: Valor a ser divido
    ///   - valorB: Valor do Divisor
    /// - Returns: Divisao
    func dividirNumero(valorA: Int, valorB: Int) -> Double {
        if (valorB == 0){
            // Nao existe divisao por zero, logo vamos voltar zero.
            return 0
        }
        else{
            return Double(valorA) / Double(valorB)
        }
    }
    
    
    func multiplicarNumero(valorA: Int, valorB: Int) -> Int{
        return valorA * valorB
    }
    
    func somaInfinita(valorLimite: Int){
        var soma = 0
        for i in 1...valorLimite{
            soma = soma + i
            debugPrint(soma)
        }
    }
    
    func raiz(valor: Double) -> Double{
        return sqrt(valor)
    }
}
