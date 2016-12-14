//
//  ViewController.swift
//  TindableViewSample
//
//  Created by Kenzo on 12/15/16.
//  Copyright © 2016 TinderSample. All rights reserved.
//

import UIKit
import SnapKit

class TindableView: UIView, Tindable {
    override func didMoveToSuperview() {
        self.mdc_setupPanGestureRecognizer()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        let tView = TindableView()
        tView.backgroundColor = .blue
        self.view.addSubview(tView)
        tView.snp.makeConstraints { make in
            make.height.width.equalTo(100)
            make.center.equalTo(self.view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

