//
//  ViewController.swift
//  calculadora
//
//  Created by Mctech Aluno on 25/08/17.
//  Copyright © 2017 Mctech Aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var valorLabel: UILabel!
    
    var valorA: Double?
    var valorB: Double?
    var operadorSet: String?
    var jaCalculou: Bool = false
    
    //MARK: ciclo de vida da ui
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var usuarioEstaDigitando = false
    
    @IBAction func operadorAction(_ sender: UIButton) {
        let operador = sender.currentTitle!
        let resposta: Double?
        
        if (valorA == nil){
            valorA = Double(valorLabel.text!)
        }
        else{
            valorB = Double(valorLabel.text!)
        }
        
        if (operador == "C"){
            valorLabel.text?.removeAll()
            usuarioEstaDigitando = false
            valorA = nil
            valorB = nil
            jaCalculou = false
        }else if(operador == "➗"){
            operadorSet = "➗"
            valorLabel.text?.removeAll()
            usuarioEstaDigitando = false
        }
        else if(operador == "➕"){
            operadorSet = "➕"
            valorLabel.text?.removeAll()
            usuarioEstaDigitando = false
        }
        else if(operador == "➖"){
            operadorSet = "➖"
            valorLabel.text?.removeAll()
            usuarioEstaDigitando = false
        }
        else if(operador == "✖️"){
            operadorSet = "✖️"
            valorLabel.text?.removeAll()
            usuarioEstaDigitando = false
        }
        else if(operador == "π"){
            valorLabel.text = String(Double.pi)
        }
        else if (operador == "="){
            if (jaCalculou == false){
                if (operadorSet != nil){
                    switch operadorSet! {
                    case "➕":
                        if (valorA != nil && valorB != nil){
                            resposta = valorA! + valorB!
                            valorLabel.text = String(resposta!)
                        }
                    case "✖️":
                        if (valorA != nil && valorB != nil){
                            resposta = valorA! * valorB!
                            valorLabel.text = String(resposta!)
                        }
                    case "➖":
                        if (valorA != nil && valorB != nil){
                            resposta = valorA! - valorB!
                            valorLabel.text = String(resposta!)
                        }
                    case "➗":
                        if (valorA != nil && valorB != nil){
                            if (valorB! > 0){
                                resposta = valorA! / valorB!
                                valorLabel.text = String(resposta!)
                            }
                            else
                            {
                                valorLabel.text = "Error"
                            }
                        }
                    default:
                        valorLabel.text = "Error"
                    }
                    
                    jaCalculou = true
                }
            }
        }
    }
    
    // MARK: Action do projeto
    @IBAction func touchInside(_ sender: UIButton) {
        if (jaCalculou == false){
            let digito = sender.currentTitle!
            if (usuarioEstaDigitando) {
                let textoAtual = valorLabel!.text!
                valorLabel.text = textoAtual + digito
            }
            else{
                valorLabel!.text = digito
                usuarioEstaDigitando = true
            }
        }
        
    }
}
