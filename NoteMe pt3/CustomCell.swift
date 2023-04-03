//
//  CustomCell.swift
//  NoteMe pt3
//
//  Created by Александр Х on 03.04.2023.
//

import UIKit

class CustomCell: UITableViewCell {

    static let identifier = "CustomCell"
    
     let myLabel: UILabel = {
       let label = UILabel()
        label.textColor = .systemBlue
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.text = "CustomCell text label"
        return label
    }()
    
    private let myImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(systemName: "square.and.pencil.circle")
        return image
    }()
    
    @objc func didTapOpenButton(_ sender: UIButton) {
//        print("hi")
        self.window?.rootViewController?.present(EditVC(), animated: true, completion: nil)
    }
    
    let editButton: UIButton = {
       let button = UIButton()
        button.setTitle("EDIT", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapOpenButton), for: .touchUpInside)
        return button
    }()
 
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(myLabel)
        contentView.addSubview(myImage)
        contentView.addSubview(editButton)
       
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myImage.translatesAutoresizingMaskIntoConstraints = false
        editButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            myImage.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            myImage.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            myImage.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            myImage.widthAnchor.constraint(equalToConstant: 40),
            
            myLabel.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            myLabel.leadingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: 10),
            myLabel.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            
            editButton.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            editButton.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor, constant: 0),
            editButton.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
        
        ])
    }
    
//    func setupText() {
//        addSubview(textView)
//        textView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            textView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 0),
//            textView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 0),
//            textView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor, constant: 0),
//            textView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor, constant: -50),
//            ])
//    }
}
