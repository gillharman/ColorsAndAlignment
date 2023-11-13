//
//  ViewController.swift
//  ButtonsAndStacks
//
//  Created by Harmand Gill on 11/7/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorLabel: UILabel!
    
    var colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .systemIndigo, .systemPurple]
    
    let alignment : [NSTextAlignment] = [.left, .center, .right]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func colorButtonPressed(_ sender: UIButton) {
        print("You clicked tag #\(sender.tag)")
        
        if sender.tag >= 0 && sender.tag <= 6 {
            colorLabel.text = "You clicked \(sender.currentTitle!)"
            colorLabel.textColor = colors[sender.tag]
        } else {
            colorLabel.text = ""
        }
        
//        if sender.tag == 1000 {
//            colorLabel.text = ""
//        } else {
//            colorLabel.text = "You clicked \(sender.currentTitle!)"
//            colorLabel.textColor = colors[sender.tag]
//        }

    }
    
    @IBAction func alignmentButtonPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            colorLabel.textAlignment = alignment[sender.tag]
        } else if sender.tag == 1 {
                colorLabel.textAlignment = alignment[sender.tag]
        } else {
            colorLabel.textAlignment = alignment[sender.tag]
        }
    }
}

