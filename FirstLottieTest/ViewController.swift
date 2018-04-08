//
//  ViewController.swift
//  FirstLottieTest
//
//  Created by Murat Ekrem Kolcalar on 4/8/18.
//  Copyright © 2018 murtilicious. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func playAnimation(_ sender: Any) {
        print("Animation playing.")
        
        let animationView = LOTAnimationView.init(name: "LottieTest3")
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 250)
        animationView.contentMode = .scaleAspectFill
        animationView.loopAnimation = true
        
        self.view.addSubview(animationView)
        animationView.play { (true) in
            animationView.removeFromSuperview()
        }
        
        animationView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        animationView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
}

