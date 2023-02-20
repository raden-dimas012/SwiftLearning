//
//  CategoryCell.swift
//  BecomeAnAppDeveloper
//
//  Created by Raden Dimas on 19/02/23.
//

import UIKit

final class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupView() {
        selectionStyle = .none
    }
    
    func configureLabel(text: String) {
        categoryLabel.text = text
    }
    
}
