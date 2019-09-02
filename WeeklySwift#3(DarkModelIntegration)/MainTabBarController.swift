//
//  MainTabBarController.swift
//  WeeklySwift#3(DarkModelIntegration)
//
//  Created by Ruslan on 9/2/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit
class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as? ViewController
        
        viewControllers = [
            generateViewController(with: viewController!, title: "Photos", image: #imageLiteral(resourceName: "photos")),
            generateViewController(with: FavouriViewContriller(), title: "Favourites", image: #imageLiteral(resourceName: "heart"))
        ]
        
    }
    func generateViewController(with rootviewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootviewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }
    
    
}
