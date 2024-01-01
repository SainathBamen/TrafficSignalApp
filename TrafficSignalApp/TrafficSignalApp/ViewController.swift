//
//  ViewController.swift
//  TrafficSignalApp
//
//  Created by mac on 1/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    var currentSignal: UIView = UIView()


    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentSignal = redView
        redView.alpha = 1.0
        greenView.alpha = 0.1
        yellowView.alpha = 0.1
        
        
    }


    @IBAction func trafficBtn(_ sender: UIButton) {
        switch currentSignal {
                case redView:
                    currentSignal = yellowView
                    redView.alpha = 0.1
                    yellowView.alpha = 1.0
                case yellowView:
                    currentSignal = greenView
                    yellowView.alpha = 0.1
                    greenView.alpha = 1.0
                case greenView:
                    currentSignal = redView
                    greenView.alpha = 0.1
                    redView.alpha = 1.0
                default:
                    break
                }
    }
}

