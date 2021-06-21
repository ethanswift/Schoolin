//
//  PrescriptionView.swift
//  Schoolin'
//
//  Created by ehsan sat on 6/20/21.
//  Copyright © 2021 ehsan sat. All rights reserved.
//

import UIKit

class PrescriptionView: UIView {
    
    let prescriptionBtn = UIButton()
    
    let powerLbl = UILabel()
    
    let eyeLbl = UILabel()
    
    let lEyeLbl = UILabel()
    
    let rEyeLbl = UILabel()
    
    let sphericalLbl = UILabel()
    
    let cylindricalLbl = UILabel()
    
    let axisLbl = UILabel()
    
    let apLbl = UILabel()
    
    let rEyeSpherTF = UITextField()
    
    let lEyeSpherTF = UITextField()
    
    let rEyeCylindTF = UITextField()
    
    let lEyeCylindTF = UITextField()
    
    let rEyeAxisTF = UITextField()
    
    let lEyeAxisTF = UITextField()
    
    let rEyeApTF = UITextField()
    
    let lEyeApTF = UITextField()
    
    let lblSTView = UIStackView()
    
    let eyeLblSTView = UIStackView()
    
    let lEyeTFSTView = UIStackView()
    
    let rEyeTFSTView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        makeViews()
    }
    
    func makeViews() {
        
        prescriptionBtn.setTitle("Prescription", for: .normal)
        prescriptionBtn.isUserInteractionEnabled = false
        prescriptionBtn.backgroundColor = .systemBlue
        prescriptionBtn.layer.cornerRadius = 15
        self.addSubview(prescriptionBtn)
        
        powerLbl.text = "POWER TYPE"
        powerLbl.textAlignment = .center
        powerLbl.font = .systemFont(ofSize: 18, weight: .bold)
        self.addSubview(powerLbl)
        
        
        
        layoutViews()
    }
    
    func layoutViews() {
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
