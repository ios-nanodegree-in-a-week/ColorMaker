//
//  ViewController.swift
//  ColorMaker
//
//  Created by Jasmeet Singh on 2018-12-27.
//  Copyright © 2018 Jusmyth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var canvas: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canvas.backgroundColor = UIColor.black
    }
    
    @IBAction func changeCanvasColor(_ sender: Any) {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redSwitch == nil {
            return
        }
        
        let r: CGFloat = self.redSwitch.isOn ? 1 : 0
        let b: CGFloat = self.blueSwitch.isOn ? 1 : 0
        let g: CGFloat = self.greenSwitch.isOn ? 1 : 0
        
        canvas.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

