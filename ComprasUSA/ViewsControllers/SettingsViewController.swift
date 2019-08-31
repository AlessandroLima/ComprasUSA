//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Alessandro on 14/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var txtDolar: UITextField!
    @IBOutlet weak var txtIOF: UITextField!
    @IBOutlet weak var txtStateTaxes: UITextField!
    
    override func viewDidLoad() {
        
        txtDolar.text = tc.getFormattedValue(of: tc.dolar, whithCurrency: "")
        txtIOF.text = tc.getFormattedValue(of: tc.iof, whithCurrency: "")
        txtStateTaxes.text = tc.getFormattedValue(of: tc.stateTax, whithCurrency: "")
        setDelegates()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        setValues()
        
    }
    
    func setValues(){
        tc.dolar = tc.convertToDouble(txtDolar.text!)
        tc.iof = tc.convertToDouble(txtIOF.text!)
        tc.stateTax = tc.convertToDouble(txtStateTaxes.text!)
    }

}

extension SettingsViewController: UITextFieldDelegate{
    
    func setDelegates(){
        txtDolar.delegate = self
        txtIOF.delegate = self
        txtStateTaxes.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
    
}
