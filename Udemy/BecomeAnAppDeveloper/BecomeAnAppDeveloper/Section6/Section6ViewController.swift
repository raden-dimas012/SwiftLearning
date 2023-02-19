//
//  ViewController.swift
//  WindowShopperApp
//
//  Created by Raden Dimas on 07/02/23.
//

import UIKit

final class Section6ViewController: UIViewController {
    // MARK: Components
    @IBOutlet weak var priceTextField: CurrencyTextField!
    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    
    // MARK: Initializer
    init() {
        super.init(nibName: String(describing: Section6ViewController.self), bundle: Bundle(for: Section6ViewController.self))
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = .blue
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        priceTextField.inputAccessoryView = calcBtn
        wageTextField.inputAccessoryView = calcBtn
        
        clearButton.addTarget(self, action: #selector(clearCalculate), for: .touchUpInside)
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    
    @objc private func calculate() {
        if let wageText = wageTextField.text, let priceText = priceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @objc private func clearCalculate() {
        priceTextField.text = nil
        wageTextField.text = nil
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
}

