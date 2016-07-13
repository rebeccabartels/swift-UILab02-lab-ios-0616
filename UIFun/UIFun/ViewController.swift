//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var paintBucket: UIView!
    
    @IBOutlet weak var segmentControlOne: UISegmentedControl!
    
    @IBOutlet weak var segmentControlTwo: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       paintBucket.paintColorName = "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        
        switch first.lowercaseString {
            case "red":
                switch second.lowercaseString {
                    case "red": return "red"
                    case "yellow": return "orange"
                    case "blue": return "purple"
                default: assert(false, "Invalid Colors")
            }
            
            case "yellow":
                switch second.lowercaseString {
                    case "red": return "orange"
                    case "yellow": return "yellow"
                    case "blue": return "green"
                default: assert(false, "Invalid Colors")
            }
            case "blue":
                switch second.lowercaseString {
                    case "red": return "purple"
                    case "yellow": return "green"
                    case "blue": return "blue"
                default: assert(false, "Invalid Colors")
            }
        default: assert(false, "Invalid Colors")
            }
        
        }


    @IBAction func colorSelected(sender: UISegmentedControl)
    {
        print("First Color: \(segmentControlOne.color.name)")
        print("Second Color: \(segmentControlTwo.color.name)")
        paintBucket.paintColorName = mixColors(withFirst: segmentControlOne.color.name, second: segmentControlTwo.color.name)
    }
    
}
