//
//  ViewController.swift
//  SlidePage
//
//  Created by ibrahim on 10/17/16.
//  Copyright © 2016 Indosytem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let xOrigin = self.view.frame.width
        
        let view1 = View1(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        let view2 = View2(frame: CGRect(x: xOrigin, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        let view3 = View3(frame: CGRect(x: xOrigin * 2, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        scrollView.addSubview(view1)
        scrollView.addSubview(view2)
        scrollView.addSubview(view3)
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.width * 3, height: self.view.frame.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

