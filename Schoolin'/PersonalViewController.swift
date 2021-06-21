//
//  PersonalViewController.swift
//  Schoolin'
//
//  Created by ehsan sat on 6/18/21.
//  Copyright © 2021 ehsan sat. All rights reserved.
//

import UIKit

class PersonalViewController: UIViewController {
    
    let screenWidth = UIScreen.main.bounds.width
    
    let screenHeight = UIScreen.main.bounds.height
    
    let userIdLbl = UILabel()
    
    let userTxtFld = UITextField()
    
    let schoolinLbl = UILabel()
    
    let continueBtn = UIButton()
    
    let personalView = PersonalView()

    override func viewDidLoad() {
        super.viewDidLoad()
                
        makeViews()
        
        // Do any additional setup after loading the view.
    }
    
    func makeViews() {
        
        schoolinLbl.text = "Schoolin' "
        schoolinLbl.textAlignment = .right
        schoolinLbl.textColor = .systemBlue
        schoolinLbl.font = .systemFont(ofSize: 50, weight: .heavy)
        self.view.addSubview(schoolinLbl)
        schoolinLbl.translatesAutoresizingMaskIntoConstraints = false
        
        userIdLbl.text = "User ID"
        userIdLbl.textAlignment = .left
        userIdLbl.textColor = .systemBlue
        userIdLbl.font = .systemFont(ofSize: 16, weight: .medium)
        self.view.addSubview(userIdLbl)
        userIdLbl.translatesAutoresizingMaskIntoConstraints = false
        
        userTxtFld.backgroundColor = .systemGray6
        userTxtFld.borderStyle = .roundedRect
        self.view.addSubview(userTxtFld)
        userTxtFld.translatesAutoresizingMaskIntoConstraints = false
        
//        personalView.backgroundColor = .systemBlue
        self.view.addSubview(personalView)
        personalView.translatesAutoresizingMaskIntoConstraints = false
        
        continueBtn.backgroundColor = .systemBlue
        continueBtn.layer.cornerRadius = 5
        continueBtn.setTitle("Continue", for: .normal)
        continueBtn.titleLabel?.textAlignment = .center
        continueBtn.titleLabel?.textColor = .white
        continueBtn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        self.view.addSubview(continueBtn)
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        
        layoutViews()
    }
    
    @objc func buttonClicked() {
        
    }
    
    func layoutViews() {
        
        NSLayoutConstraint.activate([
            schoolinLbl.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            schoolinLbl.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
            schoolinLbl.widthAnchor.constraint(equalToConstant: 250),
            schoolinLbl.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            userIdLbl.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: screenWidth * (1/6)),
            userIdLbl.topAnchor.constraint(equalTo: self.view.topAnchor, constant: screenHeight * (3/14)),
            userIdLbl.widthAnchor.constraint(equalToConstant: 100),
            userIdLbl.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            userTxtFld.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -screenWidth * (1/6)),
            userTxtFld.topAnchor.constraint(equalTo: self.view.topAnchor, constant: screenHeight * (3/14)),
            userTxtFld.widthAnchor.constraint(equalToConstant: screenWidth * (5/12)),
            userTxtFld.heightAnchor.constraint(equalToConstant: 30)

        ])
        
        NSLayoutConstraint.activate([
            personalView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: screenWidth * (1/6)),
            personalView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -screenWidth * (1/6)),
            personalView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            personalView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300),
            personalView.heightAnchor.constraint(equalToConstant: screenHeight * (3/7))
//            personalView.widthAnchor.constraint(equalToConstant: screenWidth * (2/3))
        ])
        
        NSLayoutConstraint.activate([
            continueBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100),
            continueBtn.widthAnchor.constraint(equalToConstant: 200),
            continueBtn.heightAnchor.constraint(equalToConstant: 40)
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
