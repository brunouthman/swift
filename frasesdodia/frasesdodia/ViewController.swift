//
//  ViewController.swift
//  frasesdodia
//
//  Created by Bruno Uthman on 27/01/2019.
//  Copyright © 2019 Bruno Uthman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBAction func geraFrase(_ sender: Any) {
        
        var frases: [String] = []
        frases.append("frase 1")
        frases.append("frase 2")
        frases.append("frase 3")
        
        let numAnt:UInt32=0
        var num:UInt32=0
        
        repeat{
            num = arc4random_uniform(3)
        
            
        }while(num == numAnt)
        
        numAnt
        legendaResultado.text = frases[Int(arc4random_uniform(3))]
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

