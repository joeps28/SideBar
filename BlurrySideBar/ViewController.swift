//
//  ViewController.swift
//  BlurrySideBar
//
//  Created by Joel Pineiro on 1/9/17.
//  Copyright © 2017 Joel Pineiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SideBarDelegate {
    
    var sideBar:SideBar = SideBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideBar = SideBar(sourceView: self.view, menuItems: ["first item", "second item", "third item"])
    }

    func sideBarDidSelectButtonAtIndex(index: Int) {
        if index == 0 {
            performSegue(withIdentifier: "view1", sender: nil)
        }
        else if index == 1 {
            performSegue(withIdentifier: "view2", sender: nil)
        }
    }


}

