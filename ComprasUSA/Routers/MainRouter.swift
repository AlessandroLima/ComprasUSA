//
//  MainRouter.swift
//  ComprasUSA
//
//  Created by Alessandro on 14/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import Foundation
import UIKit


// MARK: CustomersRouter
class MainRouter: UINavigationController ,MainRouterProtocol{

    // MARK: Properties
    
    var window: UIWindow?
    let myTabBarController = UITabBarController()
    
    // MARK: Initializers
    
    convenience init(window: UIWindow?) {
        self.init()
        self.window = window
    }

    
    func inicialView() {
        
        let buyVC = BuyViewController()
        buyVC.title = "Compra"
        let settingsVC = SettingsViewController()
        settingsVC.title = "Ajustes"
        let taxesVC = TaxesViewController()
        taxesVC.title = "Taxas"
        
        buyVC.tabBarItem = UITabBarItem(title: "Compra", image: UIImage.init(named: "bag"), tag: 0)
        settingsVC.tabBarItem = UITabBarItem(title: "Ajustes", image: UIImage.init(named: "settings"), tag: 1)
        taxesVC.tabBarItem = UITabBarItem(title: "Taxas", image: UIImage.init(named: "taxes"), tag: 2)
        
        let controllers = [buyVC, settingsVC, taxesVC]
        myTabBarController.viewControllers = controllers
        
        myTabBarController.viewControllers = controllers.map { UINavigationController(rootViewController: $0)}
        
        window?.rootViewController = myTabBarController
        window?.rootViewController?.navigationItem.title = "Teste"
        
    }
    
    
}
