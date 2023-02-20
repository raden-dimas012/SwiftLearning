//
//  Section7ViewController.swift
//  BecomeAnAppDeveloper
//
//  Created by Raden Dimas on 07/02/23.
//

import UIKit

final class Section7ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainTableView: UITableView!
    
    let categories: [String] = ["Shirts","Hoodies","Hats"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.separatorStyle = .none
        let categoryCell = UINib(nibName: String(describing: CategoryCell.self), bundle: Bundle(for: Section7ViewController.self))
        mainTableView.register(categoryCell, forCellReuseIdentifier: "CategoryCellId")
    }
}

extension Section7ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension Section7ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellId") as? CategoryCell else {return UITableViewCell()}
        cell.configureLabel(text: categories[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
}
