//
//  ViewController.swift
//  HomeWorkArtemZhenya
//
//  Created by Евгений Булава on 16.04.22.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {

    // MARK: UI
    var firstTextField = UITextField()
    var secondTextField = UITextField()
    var nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGray3
        configueUI()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(screenTapped(_:)))
        view.addGestureRecognizer(tapGesture)
        
        nextButton.addTarget(self, action: #selector(nextButtonAction(_:)), for: .primaryActionTriggered)
    }

    // MARK: - Configue UI
    func configueUI() {
        
        view.addSubview(firstTextField)
        view.addSubview(secondTextField)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            
            firstTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60.0),
            firstTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200.0),
            firstTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60.0),
            firstTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstTextField.heightAnchor.constraint(equalToConstant: 44.0),
            
            secondTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60.0),
            secondTextField.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 150.0),
            secondTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60.0),
            secondTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondTextField.heightAnchor.constraint(equalToConstant: 44.0),
            
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100.0),
            nextButton.widthAnchor.constraint(equalToConstant: 200.0),
            nextButton.heightAnchor.constraint(equalToConstant: 60.0)
            
        ])
        
        firstTextField.translatesAutoresizingMaskIntoConstraints = false
        secondTextField.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
//        firstTextField.layer.borderWidth = 1
//        firstTextField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        firstTextField.borderStyle = .roundedRect
        firstTextField.placeholder = "   First name" // ??
        firstTextField.layer.cornerRadius = 15.0
        
//        secondTetField.layer.borderWidth = 1
//        secondTetField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        secondTextField.borderStyle = .roundedRect
        secondTextField.placeholder = "   Last name" // ??
        secondTextField.layer.cornerRadius = 15.0
        
        
        nextButton.backgroundColor = .blue
        nextButton.setTitle("Next screen", for: .normal)
        nextButton.layer.cornerRadius = 30.0
        
    }
    
    // MARK: SecondViewControllerDelegate
    func textForVC(vc: SecondViewController) -> [String] {
        return [firstTextField.text ?? "", secondTextField.text ?? ""]
    }
    
    // MARK: Actions
    @objc
    func screenTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(false)
    }
    
    @objc
    func nextButtonAction(_ sender: UIButton) {
        let secondVC = SecondViewController()
        present(secondVC, animated: true, completion: nil)
        
        secondVC.delegate = self
    }
    
}

