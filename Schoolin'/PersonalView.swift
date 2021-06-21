//
//  PersonalView.swift
//  Schoolin'
//
//  Created by ehsan sat on 6/18/21.
//  Copyright © 2021 ehsan sat. All rights reserved.
//

import UIKit

class PersonalView: UIView {
    
    // margin 1/6 textfield 5/8 height 1/7
    
    let screenHeight = UIScreen.main.bounds.height
    
    let screenWidth = UIScreen.main.bounds.width
    
    let personalLbl = UILabel()
    
    let nameLbl = UILabel()
    
    let classLbl = UILabel()
    
    let schoolLbl = UILabel()
    
    let dobLbl = UILabel()
    
    let nameTxtField = UITextField()
    
    let classTxtFld = UITextField()
    
    let schoolTxtFld = UITextField()
    
    let dobTxtFld = UITextField()
    
    let lblStackView = UIStackView()
    
    let txtFldStackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        makeViews()
    }
    
    func makeViews() {
        
        personalLbl.text = "Personal Details"
        personalLbl.textAlignment = .center
        personalLbl.font = .systemFont(ofSize: 20, weight: .heavy)
        self.addSubview(personalLbl)
        personalLbl.translatesAutoresizingMaskIntoConstraints = false
        
        nameLbl.text = "NAME"
        nameLbl.textAlignment = .left
        nameLbl.font = .systemFont(ofSize: 16, weight: .regular)
        self.addSubview(nameLbl)
        nameLbl.translatesAutoresizingMaskIntoConstraints = false
        
        classLbl.text = "CLASS"
        classLbl.textAlignment = .left
        classLbl.font = .systemFont(ofSize: 16, weight: .regular)
        self.addSubview(classLbl)
//        classLbl.translatesAutoresizingMaskIntoConstraints = false
        
        schoolLbl.text = "SCHOOL"
        schoolLbl.textAlignment = .left
        schoolLbl.font = .systemFont(ofSize: 16, weight: .regular)
        self.addSubview(schoolLbl)
//        schoolLbl.translatesAutoresizingMaskIntoConstraints = false
        
        dobLbl.text = "DOB"
        dobLbl.textAlignment = .left
        dobLbl.font = .systemFont(ofSize: 16, weight: .regular)
        self.addSubview(dobLbl)
//        dobLbl.translatesAutoresizingMaskIntoConstraints = false

        lblStackView.alignment = .fill
        lblStackView.distribution = .fillEqually
        lblStackView.axis = .vertical
        lblStackView.addArrangedSubview(nameLbl)
        lblStackView.addArrangedSubview(classLbl)
        lblStackView.addArrangedSubview(schoolLbl)
        lblStackView.addArrangedSubview(dobLbl)
        lblStackView.spacing = 40
        lblStackView.backgroundColor = .systemPink
        self.addSubview(lblStackView)
        lblStackView.translatesAutoresizingMaskIntoConstraints = false
        
        nameTxtField.backgroundColor = .systemGray6
        nameTxtField.borderStyle = .roundedRect
//        nameTxtField.frame.size.width = 200
        self.addSubview(nameTxtField)
//        nameTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        classTxtFld.backgroundColor = .systemGray6
        classTxtFld.borderStyle = .roundedRect
//        classTxtFld.frame.size.width = 200
        self.addSubview(classTxtFld)
//        classTxtFld.translatesAutoresizingMaskIntoConstraints = false

        schoolTxtFld.backgroundColor = .systemGray6
        schoolTxtFld.borderStyle = .roundedRect
//        schoolTxtFld.frame.size.width = 200
        self.addSubview(schoolTxtFld)
//        schoolTxtFld.translatesAutoresizingMaskIntoConstraints = false

        dobTxtFld.backgroundColor = .systemGray6
        dobTxtFld.borderStyle = .roundedRect
//        dobTxtFld.frame.size.width = 200
        self.addSubview(dobTxtFld)
//        dobTxtFld.translatesAutoresizingMaskIntoConstraints = false
        
        txtFldStackView.alignment = .fill
        txtFldStackView.distribution = .fillEqually
        txtFldStackView.axis = .vertical
        txtFldStackView.addArrangedSubview(nameTxtField)
        txtFldStackView.addArrangedSubview(classTxtFld)
        txtFldStackView.addArrangedSubview(schoolTxtFld)
        txtFldStackView.addArrangedSubview(dobTxtFld)
        txtFldStackView.spacing = 40
//        txtFldStackView.frame.size.width = 200
//        txtFldStackView.backgroundColor = .systemPink
        self.addSubview(txtFldStackView)
        txtFldStackView.translatesAutoresizingMaskIntoConstraints = false

        layoutViews()
    }
    
    func layoutViews() {
        
        NSLayoutConstraint.activate([
            personalLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            personalLbl.heightAnchor.constraint(equalToConstant: 50),
            personalLbl.topAnchor.constraint(equalTo: self.topAnchor),
            personalLbl.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            lblStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            lblStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: screenHeight * (1/7)),
            lblStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            lblStackView.heightAnchor.constraint(equalToConstant: screenHeight * (2/7)),
            lblStackView.widthAnchor.constraint(equalToConstant: 80)
        ])
        
        NSLayoutConstraint.activate([
            txtFldStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            txtFldStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: screenHeight * (1/7)),
            txtFldStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            txtFldStackView.heightAnchor.constraint(equalToConstant: screenHeight * (2/7)),
            txtFldStackView.widthAnchor.constraint(equalToConstant: screenWidth * (5/12))
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
