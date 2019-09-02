//
//  FavouriViewContriller.swift
//  WeeklySwift#3(DarkModelIntegration)
//
//  Created by Ruslan on 9/2/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class FavouriViewContriller: UIViewController {
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "iOS13_BlueWhite_FlareZephyr"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainImageView()
        view.backgroundColor = .green
    }
    
    private func setupMainImageView() {
        view.addSubview(imageView)
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFill
    }
}
