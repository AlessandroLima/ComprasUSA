//
//  ExtensionUIViewController.swift
//  ComprasUSA
//
//  Created by Alessandro on 21/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    var tc:TaxesCalculator{
        return TaxesCalculator.shared
    }
}
