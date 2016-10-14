//
//  ViewController.swift
//  App
//
//  Created by David Chin on 14/10/2016.
//  Copyright © 2016 Dakerr Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupFirstLabel()
    }
    
    private func setupFirstLabel() {
        let labelView = UILabel()
        
        // Add to superview
        view.addSubview(labelView)
        
        // Set translatesAutoresizingMaskIntoConstraints to false to allow programmatic constraints to take full effect
        labelView.translatesAutoresizingMaskIntoConstraints = false
        
        // Appearance
        labelView.backgroundColor = UIColor.orange
        
        // Content
        labelView.text = "Why you 'lil ..."
        
        // Constraints - array
        var constraints: [NSLayoutConstraint] = []
        
        // Size constraints
        let height: CGFloat = 40
        let width = view.widthAnchor
        constraints += [
            labelView.heightAnchor.constraint(equalToConstant: height),
            labelView.widthAnchor.constraint(equalTo: width)
        ]
        
        // Position constraints
        // eg 40 points from top of superview
        let vectorY: CGFloat = 40
        constraints += [
            labelView.topAnchor.constraint(equalTo: view.topAnchor, constant: vectorY)
        ]
        
        // Activate constraints
        NSLayoutConstraint.activate(constraints)
        
        // Done
        print("done")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

