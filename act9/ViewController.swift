//
//  ViewController.swift
//  act9
//
//  Created by Alumno IDS on 08/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 80, y: 120, width: 100, height: 50))
        button.setImage(UIImage(named: "TESTpiedra.png"), for: .normal)
        button.setTitle("Piedra", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        let button1 = UIButton(frame: CGRect(x: 250, y: 120, width: 120, height: 50))
        button1.backgroundColor = .green
        button1.setTitle("Papel", for: .normal)
        button1.addTarget(self, action: #selector(button1Action), for: .touchUpInside)
        
        self.view.addSubview(button1)
        
        let button2 = UIButton(frame: CGRect(x: 160, y: 240, width: 120, height: 50))
        button2.backgroundColor = .green
        button2.setTitle("Tijera", for: .normal)
        button2.addTarget(self, action: #selector(button2Action), for: .touchUpInside)
        
        self.view.addSubview(button2)
        
        
        let bakk = UIButton(frame: CGRect(x: 160, y: 360, width: 120, height: 50))
        bakk.backgroundColor = .green
        bakk.setTitle("Tijera", for: .normal)
        bakk.addTarget(self, action: #selector(bakkAction(sender:)), for: .touchUpInside)
        bakk.isHidden = true
        
        
        self.view.addSubview(bakk)
        
    }
    
    //Piedra = 0, Papel = 1, Tijera = 2
    
    func buttonAction(sender: UIButton!) {
        print("Piedra tapped")
        let rand = arc4random_uniform(3)
        
        if rand == 0 { print("TIE") }
        else if rand == 1 { print("WIN") }
        else if rand == 2 { print("LOSE") }
        
    }
    
    func button1Action(sender: UIButton!) {
        print("Papel1 tapped")
        let rand = arc4random_uniform(3)
        
        if rand == 0 { print("LOSE") }
        else if rand == 1 { print("TIE") }
        else if rand == 2 { print("WIN") } //Aquí probare la opción de hacer aparecer un boton e imagen para bloquear
        
    }
    
    func button2Action(sender: UIButton!) {
        print("Tijera2 tapped")
        let rand = arc4random_uniform(3)
        
        if rand == 0 { print("WIN") }
        else if rand == 1 { print("LOSE") }
        else if rand == 2 { print("TIE") }
        
    }
    
    func bakkAction(sender: UIButton!) {
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

