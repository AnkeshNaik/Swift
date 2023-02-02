//
//  ViewController.swift
//  basicAnimation
//
//  Created by APPLE on 02/02/23.
//

import UIKit

class ViewController: UIViewController {
    let layer=CALayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        layer.backgroundColor=UIColor.systemRed.cgColor
        layer.frame = CGRect(x: 100, y: 100, width: 120, height: 150)
        view.layer.addSublayer(layer)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            self.animateMovement()
        }
        
    }
    
    
    
    func animateMovement(){
        let animattion = CABasicAnimation(keyPath: "position")
        animattion.fromValue=CGPoint(x: layer.frame.origin.x, y: layer.frame.origin.y)
        animattion.duration = 3
        animattion.fillMode = .forwards
        layer.add(animattion,forKey: nil)
    }
}


