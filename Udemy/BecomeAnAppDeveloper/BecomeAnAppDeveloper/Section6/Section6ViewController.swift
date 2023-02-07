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
    }
    
    
    @objc private func calculate() {
        debugPrint("Dimas")
    }

}

