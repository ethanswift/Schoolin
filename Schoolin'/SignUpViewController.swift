//
//  SignUpViewController.swift
//  Schoolin'
//
//  Created by ehsan sat on 6/13/21.
//  Copyright © 2021 ehsan sat. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let screenHeight = UIScreen.main.bounds.height
    
    let screenWidth = UIScreen.main.bounds.width
    
    let schoolinLbl = UILabel()
    
    let welcomeLbl = UILabel()
    
    let signInBox = SignInView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBlue
        
        makeViews()
        
        // Do any additional setup after loading the view.
    }
    
    func makeViews() {
        
        schoolinLbl.text = "Schoolin'"
        schoolinLbl.font = .systemFont(ofSize: 60, weight: .heavy)
        schoolinLbl.textColor = .white
        schoolinLbl.textAlignment = .center
        self.view.addSubview(schoolinLbl)
        schoolinLbl.translatesAutoresizingMaskIntoConstraints = false
        
        welcomeLbl.text = "Welcome"
        welcomeLbl.font = .systemFont(ofSize: 46, weight: .bold)
        welcomeLbl.textColor = .black
        welcomeLbl.textAlignment = .center
        self.view.addSubview(welcomeLbl)
        welcomeLbl.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(signInBox)
        signInBox.translatesAutoresizingMaskIntoConstraints = false
        
        layoutView()
    }
    
    func layoutView() {
        NSLayoutConstraint.activate([
            schoolinLbl.topAnchor.constraint(equalTo: self.view.topAnchor, constant: screenHeight * (1/9)),
            schoolinLbl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            schoolinLbl.heightAnchor.constraint(equalToConstant: 50),
            schoolinLbl.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            schoolinLbl.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            welcomeLbl.topAnchor.constraint(equalTo: self.view.topAnchor, constant: screenHeight * (2/9)),
            welcomeLbl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            welcomeLbl.heightAnchor.constraint(equalToConstant: 40),
            welcomeLbl.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            welcomeLbl.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)

        ])
        
        NSLayoutConstraint.activate([
            signInBox.topAnchor.constraint(equalTo: self.view.topAnchor, constant: screenHeight * (2/6)),
            signInBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: screenWidth * (1/8)),
            signInBox.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -screenWidth * (1/8)),
            signInBox.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -screenWidth * (1/6))
        ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
