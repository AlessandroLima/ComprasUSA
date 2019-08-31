//
//  AppDelegate.swift
//  ComprasUSA
//
//  Created by Alessandro on 14/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var mainRouter:MainRouter?
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        mainRouter = MainRouter(window: window)
        if let mainRouter = mainRouter{
            mainRouter.inicialView()
        }
        
            return true
        
        
    }
    
}

