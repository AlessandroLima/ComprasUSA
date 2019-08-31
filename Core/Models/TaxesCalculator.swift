//
//  TaxesCalculator.swift
//  ComprasUSA
//
//  Created by Alessandro on 21/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import Foundation

class TaxesCalculator {
    
    //MARK: Singleton
    static let shared = TaxesCalculator()
    
    //MARK: Properties
    
    var dolar:Double = 3.50
    var iof:Double = 6.38
    var stateTax:Double = 7.0
    var shoppingValue:Double = 0
    
    var shoppingValueInReal:Double{
        return shoppingValue * dolar
    }
    var stateTaxValue:Double{
        return (shoppingValue * stateTax) / 100
    }
    
    var iofValue:Double{
        return ((shoppingValue + iof) * iof) / 100
    }
    
    var formatter = NumberFormatter()
    
    //MARK: Initializers
    private init(){
        formatter.usesGroupingSeparator = true
    }
    
    //MARK: Functions
    func calculate(usingCreditCard:Bool)->Double{
        
        var value = (shoppingValue + stateTaxValue)
        
        if usingCreditCard{
            value += iofValue
        }
        
        return value * dolar
    }
    
    func convertToDouble(_ string:String)->Double{
        formatter.numberStyle =  .none
        return formatter.number(from: string)!.doubleValue
    }
    
    func getFormattedValue(of value:Double, whithCurrency currency:String)->String{
        formatter.numberStyle = .currency
        formatter.currencySymbol = currency
        formatter.alwaysShowsDecimalSeparator = true
        return formatter.string(for: value)!
    }

}
