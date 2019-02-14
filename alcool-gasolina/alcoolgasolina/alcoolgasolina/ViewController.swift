//
//  ViewController.swift
//  alcoolgasolina
//
//  Created by Bruno Uthman on 07/02/2019.
//  Copyright © 2019 Bruno Uthman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultadoLegenda: UILabel!
    @IBOutlet weak var precoAlcoolCampo: UITextField!
    @IBOutlet weak var precoGasolinaCampo: UITextField!
    
    
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        if let precoAlcool = precoAlcoolCampo.text {
            if let precoGasolina = precoGasolinaCampo.text {
                
                var campoValidado = self.validaCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                
                if campoValidado {
                    
                    //calcula
                
                }else{
                    resultadoLegenda.text = "Digite valores!!!"
                }
                
            }
        }
    }
    
    func calcularMelhorValor(precoAlcool: String, precoGasolina: String){
        
        if let valorAlcool = Double(precoAlcool){
            if let valorGasolina = Double(precoGasolina){
                
                let valorResultado = valorAlcool / valorGasolina
                
                if valorResultado >= 0.7 {
                    resultadoLegenda.text = "melhor utilizar gasolina"
                    
                }else{
                    resultadoLegenda.text = "melhor utilizar alcool"
                }
            }
        }
    }
    
    func validaCampos(precoAlcool: String, precoGasolina: String) -> Bool{
        
        var camposValidados = true
        
        if precoAlcool.isEmpty{
            camposValidados = false
        }
        
        if precoGasolina.isEmpty{
            camposValidados = false
        }
        
        return camposValidados
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

