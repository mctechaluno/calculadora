//
//  Calculadora.swift
//  calculadora
//
//  Created by Mctech Aluno on 01/09/17.
//  Copyright © 2017 Mctech Aluno. All rights reserved.
//

import Foundation

class Calculadora: NSObject {
    
    var valorA : Double?
    var valorB : Double?
    var operador: String?
    
    func somar() -> Double {
        if (self.valorA != nil && self.valorB != nil){
            return self.valorA! + self.valorB!
        }
        else{
            return 0
        }
    }
    
    func subtrair() -> Double {
        if (self.valorA != nil && self.valorB != nil){
            return self.valorA! - self.valorB!
        }
        else{
            return 0
        }
    }
    
    func multiplicar() -> Double{
        if (self.valorA != nil && self.valorB != nil){
            return self.valorA! * self.valorB!
        }
        else{
            return 0
        }
    }
    
    
    func dividir() -> Double{
        if (self.valorA != nil && self.valorB != nil && self.valorB! != 0){
            return self.valorA! / self.valorB!
        }
        else{
            return 0
        }
    }
    
    func raiz() -> Double{
        if (self.valorA != nil){
            return sqrt(self.valorA!)
        }
        else{
            return 0
        }
    }
    
    func potencia() -> Double{
        if (self.valorA != nil && self.valorB != nil){
            return pow(self.valorA!, self.valorB!)
        }
        else{
            return 0
        }
    }
    
    func pi() -> Double{
        return Double.pi
    }
}
