//
//  ViewController.swift
//  gerador-numero3
//
//  Created by Bruno Uthman on 24/01/2019.
//  Copyright © 2019 Bruno Uthman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var num_ant:UInt32 = 0
    var num:UInt32 = 0
    
    
    
    @IBOutlet weak var exibeValor: UILabel!
    
    @IBAction func geraValor(_ sender: Any) {
        
        print("to aqui")
        
        repeat{
            
            print("entrei no loop")
            num = arc4random_uniform(11)
            print("num: "+String(num)+"num_ant: "+String(num_ant))
            
        }while (num == num_ant)
 
        print("passei pelo loop")
        num_ant = num
        
        exibeValor.text = String(num)
  
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

