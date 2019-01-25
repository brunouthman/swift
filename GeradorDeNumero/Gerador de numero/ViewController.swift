//
//  ViewController.swift
//  Gerador de numero
//
//  Created by Bruno Uthman on 23/01/2019.
//  Copyright © 2019 Bruno Uthman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBAction func gerarNumero(_ sender: Any) {
        
        var num_ant:UInt32 = 0
        
        var numero = arc4random_uniform(11)
        
        repeat {
        
            numero = arc4random_uniform(11)
            
        } while (num_ant == numero)
        
        num_ant = numero
        
        legendaResultado.text = String(numero)
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

