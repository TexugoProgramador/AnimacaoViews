//
//  ViewController.swift
//  Animacao
//
//  Created by humberto Lima on 09/09/19.
//  Copyright © 2019 humberto Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var botao1: UIButton!
    @IBOutlet var botao2: UIButton!
    
    @IBOutlet var viewBotoes: UIView!
    @IBOutlet var labelDestaque: UILabel!
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func trocaView(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1, delay: 0, options: [],animations: {
            if sender.tag == 0 {
                self.botao1.backgroundColor = #colorLiteral(red: 0.006877648178, green: 0.1753363013, blue: 0.3906010687, alpha: 1)
                self.botao1.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
                self.botao2.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                self.botao2.setTitleColor(#colorLiteral(red: 0.006877648178, green: 0.1753363013, blue: 0.3906010687, alpha: 1), for: .normal)
                
                self.labelDestaque.center.x = self.botao1.center.x
                self.view2.frame.origin = CGPoint(x: self.view1.frame.width, y: self.view1.frame.origin.y)
                self.view.layoutIfNeeded()
                
            }else if sender.tag == 1 {
                self.botao1.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                self.botao1.setTitleColor(#colorLiteral(red: 0.006877648178, green: 0.1753363013, blue: 0.3906010687, alpha: 1), for: .normal)
                self.botao2.backgroundColor = #colorLiteral(red: 0.006877648178, green: 0.1753363013, blue: 0.3906010687, alpha: 1)
                self.botao2.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
                
                self.labelDestaque.center.x = self.botao2.center.x
                self.view2.frame.origin = CGPoint(x: 0, y: self.view2.frame.origin.y)
                self.view.layoutIfNeeded()
                self.view2.frame.origin = CGPoint(x: 0, y: self.view2.frame.origin.y)
                self.view.layoutIfNeeded()
            }
            //self.view.layoutIfNeeded()
        },completion: nil
        )
    }
}

