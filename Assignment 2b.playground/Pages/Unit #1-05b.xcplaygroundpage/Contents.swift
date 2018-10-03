

// Created on: Sept-2018
// Created by: Brody Macneil 
// Created for: ICS3U
// This program will calculate the height of an object dropped from a 100 m cliff.
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let G : Float = 9.81
    let D : Float = 100
    
    let instructionsLabel : UILabel = UILabel()
    let timeLabel : UILabel = UILabel()
    let heightLabel: UILabel = UILabel()
    let timeTextField : UITextField = UITextField()
    let calculateButton : UIButton = UIButton()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter time since the man dropped object. "
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        timeLabel.text = "Enter time in seconds: "
        view.addSubview(timeLabel)
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        timeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        timeTextField.borderStyle = UITextBorderStyle.roundedRect
        timeTextField.placeholder = "    seconds"
        view.addSubview(timeTextField)
        timeTextField.translatesAutoresizingMaskIntoConstraints = false
        timeTextField.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        timeTextField.leadingAnchor.constraint(equalTo: timeLabel.trailingAnchor, constant: 10).isActive = true
        
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(calculatePrice), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        calculateButton.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 25).isActive = true
        
        view.addSubview(heightLabel)
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        heightLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        heightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true

    }
    
    
    @objc func calculatePrice() {
        // calculate and show area and perimeter 
        let time : Float = Float(timeTextField.text!)!
        
        let height = D - (1/2) * G * time * time
        
        heightLabel.text = "The height of the object is \(height)m"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
