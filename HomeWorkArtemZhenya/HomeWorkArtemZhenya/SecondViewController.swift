//
//  SecondViewController.swift
//  HomeWorkArtemZhenya
//
//  Created by Артем Томило on 16.04.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    let backButton = UIButton()
    let firstLabel = UILabel()
    
    weak var delegate: SecondViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configuration()
    }
    
    func configuration() {
        view.backgroundColor = .cyan
        
        view.addSubview(backButton)
        view.addSubview(firstLabel)
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            backButton.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 100),
            
            firstLabel.heightAnchor.constraint(equalToConstant: 30),
            firstLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            firstLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            firstLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        ])
        
        backButton.backgroundColor = .blue
        backButton.setTitle("My second Button", for: .normal)
        
        firstLabel.backgroundColor = .white
        
        backButton.addTarget(self, action: #selector(backButtonaction(_:)), for: .primaryActionTriggered)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        firstLabel.text = (delegate?.textForVC(vc: self)[0] ?? "") + " " + (delegate?.textForVC(vc: self)[1] ?? "")
    }
    
    @objc func backButtonaction(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

protocol SecondViewControllerDelegate: AnyObject {
    func textForVC(vc: SecondViewController) -> [String]
}
