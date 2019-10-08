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
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = configureBlurview(effect: blurEffect)
        view.addSubview(blurView)
        
        
        view.backgroundColor = .green
    }
    
    private func setupMainImageView() {
        view.addSubview(imageView)
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFill
    }
    private func configureBlurview(effect: UIVisualEffect) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = effect
        view.frame = self.view.bounds.inset(by: .init(top: 200, left: 32, bottom: 200, right: 32))
        return view
    }
    
    private func configureLabel() -> UILabel {
        let label = UILabel()
        label.text = "GitHub"
        label.textAlignment = .center
        label.textColor = .systemBackground
        label.font = UIFont.systemFont(ofSize: 40, weight: .medium)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
