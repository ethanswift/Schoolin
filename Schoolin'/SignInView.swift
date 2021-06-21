//
//  SignInView.swift
//  Schoolin'
//
//  Created by ehsan sat on 6/14/21.
//  Copyright © 2021 ehsan sat. All rights reserved.
//

import UIKit

protocol TextFieldData {
    
}

class SignInView: UIView {
    
    let cellId = "Cell"
    
    let screenHeight = UIScreen.main.bounds.height
    
    let screenWidth = UIScreen.main.bounds.width
    
    // box 3/4 width, 1/2 height, 6 parts, textfield 1/2 width
    
    let signInLbl = UILabel()
    
    let emailLbl = UILabel()
    
    let passLbl = UILabel()
    
    let emailBox = UIView()
    
    let passBox = UIView()
    
    let emailTxtField = UITextField()
    
    let passTxtField = UITextField()
    
    let categoryBtn = UIButton()
    
    let signInBtn = UIButton()
    
    let categoryTable = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        makeView()
    }
    
    func makeView() {
        
        self.backgroundColor = .white
        self.layer.cornerRadius = 15
        
        signInLbl.text = "Sing In To Your Account"
        signInLbl.textAlignment = .center
        signInLbl.font = .systemFont(ofSize: 20, weight: .bold)
        self.addSubview(signInLbl)
        signInLbl.translatesAutoresizingMaskIntoConstraints = false
        
        emailBox.layer.borderColor = UIColor.systemGray2.cgColor
        emailBox.layer.cornerRadius = 10
        emailBox.backgroundColor = .systemGray6
        self.addSubview(emailBox)
        emailBox.translatesAutoresizingMaskIntoConstraints = false
        
        emailLbl.text = "Email"
        emailLbl.font = .systemFont(ofSize: 10, weight: .regular)
        emailLbl.textAlignment = .left
        emailLbl.textColor = .systemGray2
        self.bringSubviewToFront(emailLbl)
        self.addSubview(emailLbl)
        emailLbl.translatesAutoresizingMaskIntoConstraints = false
        
        emailTxtField.placeholder = ""
        self.bringSubviewToFront(emailTxtField)
        self.addSubview(emailTxtField)
        emailTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        passBox.layer.borderColor = UIColor.systemGray2.cgColor
        passBox.layer.cornerRadius = 10
        passBox.backgroundColor = .systemGray6
        self.addSubview(passBox)
        passBox.translatesAutoresizingMaskIntoConstraints = false
        
        passLbl.text = "Password"
        passLbl.font = .systemFont(ofSize: 10, weight: .regular)
        passLbl.textAlignment = .left
        passLbl.textColor = .systemGray2
        self.bringSubviewToFront(passLbl)
        self.addSubview(passLbl)
        passLbl.translatesAutoresizingMaskIntoConstraints = false
        
        passTxtField.placeholder = ""
        self.bringSubviewToFront(passLbl)
        self.addSubview(passTxtField)
        passTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        categoryBtn.setTitle("MBBS", for: .normal)
        categoryBtn.semanticContentAttribute = .forceRightToLeft
        categoryBtn.setImage(UIImage(systemName: "chevron.down")?.withRenderingMode(.alwaysTemplate), for: .normal)
        categoryBtn.tintColor = .white
        categoryBtn.imageEdgeInsets.right = -60
        categoryBtn.backgroundColor = .systemBlue
        categoryBtn.layer.cornerRadius = 15
        categoryBtn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.addSubview(categoryBtn)
        categoryBtn.translatesAutoresizingMaskIntoConstraints = false
        
        categoryTable.delegate = self
        categoryTable.dataSource = self
        categoryTable.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        categoryTable.isHidden = true
        categoryTable.alpha = 0
        categoryTable.isScrollEnabled = false
        categoryTable.backgroundColor = .systemTeal
        categoryTable.layer.zPosition = 1
        categoryTable.layer.cornerRadius = 20
        self.addSubview(categoryTable)
        self.bringSubviewToFront(categoryTable)
        categoryTable.translatesAutoresizingMaskIntoConstraints = false
        
        signInBtn.setTitle("Sing In", for: .normal)
        signInBtn.setImage(UIImage(systemName: "chevron.left")?.withRenderingMode(.alwaysTemplate), for: .normal)
        signInBtn.tintColor = .white
        signInBtn.imageEdgeInsets.right = -50
        signInBtn.semanticContentAttribute = .forceRightToLeft
        signInBtn.backgroundColor = .systemBlue
        signInBtn.layer.cornerRadius = 15
        self.addSubview(signInBtn)
        signInBtn.translatesAutoresizingMaskIntoConstraints = false
        
        layoutViews()
    }
    
    @objc func btnClicked() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            self.categoryTable.isHidden = false
            self.categoryTable.alpha = 1
        }, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.categoryTable.isHidden = true
        self.emailTxtField.endEditing(true)
        self.passTxtField.endEditing(true)
        self.emailTxtField.resignFirstResponder()
        self.passTxtField.resignFirstResponder()
    }
    
    func layoutViews() {
        
        NSLayoutConstraint.activate([
            signInLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            signInLbl.topAnchor.constraint(equalTo: self.topAnchor, constant: screenHeight * (1/12)),
            signInLbl.heightAnchor.constraint(equalToConstant: 20),
            signInLbl.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            signInLbl.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            emailBox.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            emailBox.topAnchor.constraint(equalTo: self.topAnchor, constant: screenHeight * (2/12)),
            emailBox.heightAnchor.constraint(equalToConstant: 40),
            emailBox.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: screenWidth * (1/8)),
            emailBox.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -screenWidth * (1/8))
        ])
        
        NSLayoutConstraint.activate([
            emailLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            emailLbl.topAnchor.constraint(equalTo: emailBox.topAnchor),
            emailLbl.heightAnchor.constraint(equalToConstant: 15),
            emailLbl.leadingAnchor.constraint(equalTo: emailBox.leadingAnchor, constant: 5),
            emailLbl.trailingAnchor.constraint(equalTo: emailBox.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            emailTxtField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            emailTxtField.bottomAnchor.constraint(equalTo: emailBox.bottomAnchor),
            emailTxtField.heightAnchor.constraint(equalToConstant: 35),
            emailTxtField.leadingAnchor.constraint(equalTo: emailBox.leadingAnchor),
            emailTxtField.trailingAnchor.constraint(equalTo: emailBox.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            passBox.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            passBox.topAnchor.constraint(equalTo: self.topAnchor, constant: screenHeight * (3/12)),
            passBox.heightAnchor.constraint(equalToConstant: 40),
            emailBox.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: screenWidth * (1/8)),
            passBox.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -screenWidth * (1/8))
        ])
        
        NSLayoutConstraint.activate([
            passLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            passLbl.topAnchor.constraint(equalTo: passBox.topAnchor),
            passLbl.heightAnchor.constraint(equalToConstant: 15),
            passLbl.leadingAnchor.constraint(equalTo: passBox.leadingAnchor, constant: 5),
            passLbl.trailingAnchor.constraint(equalTo: passBox.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            passTxtField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            passTxtField.topAnchor.constraint(equalTo: passBox.topAnchor),
            passTxtField.heightAnchor.constraint(equalToConstant: 35),
            passTxtField.leadingAnchor.constraint(equalTo: passBox.leadingAnchor),
            passTxtField.trailingAnchor.constraint(equalTo: passBox.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            categoryBtn.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            categoryBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: screenHeight * (4/12)),
            categoryBtn.heightAnchor.constraint(equalToConstant: 50),
            categoryBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: screenWidth * (1/8)),
            categoryBtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -screenWidth * (1/8))
        ])
        
        NSLayoutConstraint.activate([
            categoryTable.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            categoryTable.topAnchor.constraint(equalTo: self.topAnchor, constant: screenHeight * (4/12)),
            categoryTable.heightAnchor.constraint(equalToConstant: 150),
            categoryTable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: screenWidth * (1/8)),
            categoryTable.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -screenWidth * (1/8))
        ])
        
        NSLayoutConstraint.activate([
            signInBtn.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            signInBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: screenHeight * (5/12)),
            signInBtn.heightAnchor.constraint(equalToConstant: 40),
            signInBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: screenWidth * (1/8)),
            signInBtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -screenWidth * (1/8))
        ])
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension SignInView: UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "MBBS"
        case 1:
            cell.textLabel?.text = "Optometrist"
        case 2:
            cell.textLabel?.text = "Dentist"
        default:
            cell.textLabel?.text = ""
        }
        cell.textLabel?.font = .systemFont(ofSize: 24, weight: .bold)
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.textColor = .white
        cell.backgroundColor = .systemGray6
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // protocol delegate
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
 
}
