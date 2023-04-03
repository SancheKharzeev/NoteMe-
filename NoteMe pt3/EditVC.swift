//
//  EditVC.swift
//  NoteMe pt3
//
//  Created by Александр Х on 03.04.2023.
//

import UIKit

class EditVC: UIViewController {
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.textAlignment = .left
        textView.backgroundColor = .systemBrown
        textView.font = .systemFont(ofSize: 20, weight: .medium)
        textView.textColor = .white
        return textView
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.text = "Новая заметка"
        return label
    }()
    
    private let myImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.and.pencil.circle")
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupText()
        setupUI()
    }
    
    func setupText() {
        view.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50),
            textView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 0),
            textView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 0),
            textView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 0),
        ])
    }
    
    private func setupUI() {
        view.addSubview(myLabel)
        view.addSubview(myImage)
        
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myImage.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            myImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 15),
            myImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
            
            myLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 15),
            myLabel.leadingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: 10),
            
            
        ])
    }
    
}
