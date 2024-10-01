//
//  ViewController.swift
//  Homework 2.04
//
//  Created by Ivan on 28.09.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var pointOfRedLabel: UILabel!
    @IBOutlet var pointOfGreenLabel: UILabel!
    @IBOutlet var pointOfBlueLabel: UILabel!
    
    @IBOutlet var changingColorView: UIView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        changingColorView.layer.cornerRadius = 25
        
        pointOfRedLabel.text = redSlider.value.formatted()
        pointOfGreenLabel.text = greenSlider.value.formatted()
        pointOfBlueLabel.text = blueSlider.value.formatted()
    }
    
    // MARK: - IB Actions
    @IBAction func changeViewColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        changingColorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    @IBAction func redSliderAction() {
            pointOfRedLabel.text = redSlider.value.formatted()
    }
    
    @IBAction func greenSliderAction() {
        pointOfGreenLabel.text = greenSlider.value.formatted()
    }
    
    @IBAction func blueSliderAction() {
        pointOfBlueLabel.text = blueSlider.value.formatted()
    }
}
