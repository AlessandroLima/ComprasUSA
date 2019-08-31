//
//  BuyViewController.swift
//  ComprasUSA
//
//  Created by Alessandro on 14/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController {

    
    
    @IBOutlet weak var txtDolar: UITextField!
    
    @IBOutlet weak var lblRealDescription: UILabel!
    
    @IBOutlet weak var lblReal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        setAmmount()
        txtDolar.resignFirstResponder()
    }

}

extension BuyViewController{
    func setAmmount(){
        tc.shoppingValue = tc.convertToDouble(txtDolar.text!)
        lblReal.text = tc.getFormattedValue(of: tc.shoppingValueInReal, whithCurrency: "R$ ")
        lblRealDescription.text = "Valor sem impostos (Dolar \(tc.getFormattedValue(of: tc.dolar, whithCurrency: "R$ ")))"
    }
}
