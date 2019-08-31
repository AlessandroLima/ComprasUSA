//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by Alessandro on 14/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var lblDolar: UILabel!
    @IBOutlet weak var lblStateTax: UILabel!
    @IBOutlet weak var lblIOF: UILabel!
    @IBOutlet weak var lblTaxDescription: UILabel!
    @IBOutlet weak var lblIOFDescription: UILabel!
    @IBOutlet weak var swCreditCard: UISwitch!
    @IBOutlet weak var lblReal: UILabel!
    
    var totalValue:Double = 0.0
    var totalValueInReal:Double = 0.0
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
        setInformation()
    }
    
    @IBAction func changeTotalValue(_ sender: Any) {
        
        finalValue()
        
    }
    

}

extension TaxesViewController{
    
    func setInformation(){
        
        finalValue()
        
        lblDolar.text = tc.getFormattedValue(of: tc.shoppingValue, whithCurrency: "US$ ")
        lblStateTax.text = tc.getFormattedValue(of: tc.stateTaxValue, whithCurrency: "US$ ")
        lblIOF.text = tc.getFormattedValue(of: tc.iofValue, whithCurrency: "US$ ")
        lblTaxDescription.text = "Imposto do Estado (\(tc.getFormattedValue(of: tc.stateTax, whithCurrency: ""))%)"
        lblIOFDescription.text = "IOF (\(tc.getFormattedValue(of: tc.iof, whithCurrency: "")))"
    }
    
    func finalValue(){
        totalValue = tc.calculate(usingCreditCard: swCreditCard.isOn)
        totalValueInReal = totalValue 
        lblReal.text = tc.getFormattedValue(of: totalValueInReal, whithCurrency: "US$ ")
    }
}
