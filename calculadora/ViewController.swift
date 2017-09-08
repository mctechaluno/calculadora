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
    var usuarioEstaDigitando = false
    let brain : Calculadora = Calculadora()
    
    var valorDisplay: Double{
        get{
            return Double(valorLabel.text!)!
        }
        set{
            valorLabel.text = String(newValue)
        }
    }
    
    
    //MARK: ciclo de vida da ui
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func limparAction(_ sender: UIButton) {
        valorLabel.text?.removeAll()
        usuarioEstaDigitando = false
        brain.valorA = nil
        brain.valorB = nil
        jaCalculou = false
    }
    
    @IBAction func igualAction(_ sender: UIButton) {
        
        self.brain.valorB = valorDisplay
        
        switch brain.operador! {
        case "➕":
            valorDisplay = brain.somar()
        case "✖️":
            valorDisplay = brain.multiplicar()
        case "➖":
            valorDisplay = brain.subtrair()
        case "➗":
            valorDisplay = brain.dividir()
            case "√":
            valorDisplay = brain.raiz()
        case "°":
            valorDisplay = brain.potencia()
        default:
            break
        }
        
        jaCalculou = true
    }
    
    @IBAction func operadorAction(_ sender: UIButton) {
        
        let operador = sender.currentTitle!
        
        if (brain.valorA == nil){
            brain.valorA = valorDisplay
        }
        
        brain.operador = operador
        usuarioEstaDigitando = false
        
        switch operador {
        case "√":
            valorDisplay = brain.raiz()
        case "±":
            valorDisplay = valorDisplay * -1
            brain.valorA = valorDisplay
        default:
            break
        }
    }
    
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
