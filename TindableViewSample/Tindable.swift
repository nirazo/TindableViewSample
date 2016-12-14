//
//  Tindable.swift
//  TindableViewSample
//
//  Created by Kenzo on 12/15/16.
//  Copyright © 2016 TinderSample. All rights reserved.
//

import UIKit

@objc protocol Tindable {
    @objc optional func didPanned()
}

extension Tindable where Self: UIView {
    func mdc_setupPanGestureRecognizer() {
        //let action = #selector(Tindable.didPanned)
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(didPanned))
        self.addGestureRecognizer(panGesture)
    }
    
    private func didPanned() {
        print("paaaan!!!")
    }
    
    private func aaTest() {
        print("aaTest")
    }
}
