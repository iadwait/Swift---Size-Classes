//
//  ViewController.swift
//  Size Classes
//
//  Created by Adwait Barkale on 02/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgViewHeight: NSLayoutConstraint!
    @IBOutlet weak var imgViewLeading: NSLayoutConstraint!
    @IBOutlet weak var imgViewTrailing: NSLayoutConstraint!
    @IBOutlet weak var txtUNameLeading: NSLayoutConstraint!
    @IBOutlet weak var txtPasswordLeading: NSLayoutConstraint!
    @IBOutlet weak var txtUNameTrailing: NSLayoutConstraint!
    @IBOutlet weak var txtPasswordTrailing: NSLayoutConstraint!
    @IBOutlet weak var btnLoginLeading: NSLayoutConstraint!
    @IBOutlet weak var btnLoginTrailing: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        detectDevices()
        checkMode()
        print(UIScreen.main.nativeBounds.height)
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        checkMode()
    }
    
    func checkMode()
    {
        if UIDevice.current.orientation.isLandscape{
                  print("Landscape Mode is Active")
                  if UIScreen.main.nativeBounds.height == 2732
                  {
                      setLandscapeConstraints()
                  }
              }else{
                  print("Portrait Mode is Active")
                  setPortraitConstraints()
              }
    }
    
    func setPortraitConstraints()
    {
        imgViewLeading.constant = 200
        imgViewTrailing.constant = 200
        txtUNameLeading.constant = 200
        txtPasswordLeading.constant = 200
        txtUNameTrailing.constant = 200
        txtPasswordTrailing.constant = 200
        btnLoginLeading.constant = 300
        btnLoginTrailing.constant = 300
    }
    
    func setLandscapeConstraints()
    {
        imgViewLeading.constant = 350
        imgViewTrailing.constant = 350
        txtUNameLeading.constant = 350
        txtPasswordLeading.constant = 350
        txtUNameTrailing.constant = 350
        txtPasswordTrailing.constant = 350
        btnLoginLeading.constant = 450
        btnLoginTrailing.constant = 450
    }
    
    func detectDevices()
    {
        if UIDevice().userInterfaceIdiom == .phone{
            switch UIScreen.main.nativeBounds.height{
            case 1136:
                print("iPhone 5 or 5C or 5S")
            case 1334:
                print("iPhone 6/6S/7/8")
            case 1920,2208:
                print("iPhone Plus")
            case 2436:
                print("iPhone X")
            default:
                print("Unknown")
            }
        }
    }
    
}

