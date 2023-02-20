//
//  CurrencyTextField.swift
//  BecomeAnAppDeveloper
//
//  Created by Raden Dimas on 07/02/23.
//

import UIKit

@IBDesignable
final class CurrencyTextField: UITextField {
    
    // MARK: For Interactive View in XIB
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currrencyLabel: UILabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currrencyLabel.backgroundColor = UIColor.darkGray.withAlphaComponent(0.3)
        currrencyLabel.textAlignment = .center
        currrencyLabel.textColor = UIColor.black
        currrencyLabel.layer.cornerRadius = 5.0
        currrencyLabel.clipsToBounds = true
        let formatter =  NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currrencyLabel.text = formatter.currencySymbol
        addSubview(currrencyLabel)
    }
    
    private func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        guard let placeholder = placeholder else {return}
        let place = NSAttributedString(string: placeholder,attributes: [.foregroundColor: UIColor.black])
        attributedPlaceholder = place
        textColor = .black
    }
}
