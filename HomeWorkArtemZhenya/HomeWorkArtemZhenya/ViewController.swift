//
//  ViewController.swift
//  HomeWorkArtemZhenya
//
//  Created by Евгений Булава on 16.04.22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: UI
    var firstTextField = UITextField()
    var secondTetField = UITextField()
    var nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGray3
        configueUI()
        
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(screenTapped(_:)))
        view.addGestureRecognizer(tapGesture)
    }

    
    
    
    
    // MARK: - Configue UI
    func configueUI() {
        
        view.addSubview(firstTextField)
        view.addSubview(secondTetField)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            
            firstTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60.0),
            firstTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200.0),
            firstTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60.0),
            firstTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstTextField.heightAnchor.constraint(equalToConstant: 44.0),
            
            secondTetField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60.0),
            secondTetField.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 150.0),
            secondTetField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60.0),
            secondTetField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondTetField.heightAnchor.constraint(equalToConstant: 44.0),
            
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100.0),
            nextButton.widthAnchor.constraint(equalToConstant: 200.0),
            nextButton.heightAnchor.constraint(equalToConstant: 60.0)
            
        ])
        
        firstTextField.translatesAutoresizingMaskIntoConstraints = false
        secondTetField.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
//        firstTextField.layer.borderWidth = 1
//        firstTextField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        firstTextField.borderStyle = .roundedRect
        firstTextField.placeholder = "   First name" // ??
        firstTextField.layer.cornerRadius = 15.0
        
//        secondTetField.layer.borderWidth = 1
//        secondTetField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        secondTetField.borderStyle = .roundedRect
        secondTetField.placeholder = "   Last name" // ??
        secondTetField.layer.cornerRadius = 15.0
        
        
        nextButton.backgroundColor = .blue
        nextButton.setTitle("Next screen", for: .normal)
        nextButton.layer.cornerRadius = 30.0
        
    }
    
    // MARK: Actions
    @objc
    func screenTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(false)
    }
    
}

