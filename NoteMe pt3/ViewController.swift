//
//  ViewController.swift
//  NoteMe pt3
//
//  Created by Александр Х on 03.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var noteText: [String] = [
        "текст написанный для 1 ячейки",
        "текст написанный для 2 ячейки",
        "текст написанный для 3 ячейки",
        "текст написанный для 4 ячейки",
        "текст написанный для 5 ячейки",
        "текст написанный для 6 ячейки"
    ]
    let customCell = CustomCell()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        myTableView.delegate = self
        myTableView.dataSource = self
     }
    
    private let myTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        
        
        return tableView
    }()
    
    func setupUI() {
        view.backgroundColor = .systemBlue
        view.addSubview(myTableView)
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
            myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            
        ])
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {
            fatalError("TableView could not dequeue a CusctomCell")
        }
        
//        var content = cell.defaultContentConfiguration()
//        customCell.myLabel.text = noteText[indexPath.row]
//        content.text = "\(customCell.myLabel.text!)"
//        content.secondaryText = " секондери текст"
//        content.image = UIImage(systemName: "square.and.pencil.circle")
//        cell.contentConfiguration = content
        return cell
    }
    
    
    
    
    
}
