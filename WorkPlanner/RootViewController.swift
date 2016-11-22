//
//  ViewController.swift
//  WorkPlanner
//
//  Created by YOHEISASAKI on 10/11/16.
//  Copyright © 2016 YOHEISASAKI. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    
    @IBOutlet weak var toDoCameraButton: UIButton!
    lazy var rootViewController = UINavigationController(rootViewController: RootViewController())
/*
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init() {
        super.init(nibName: "RootViewController", bundle: nil)
    }
  */
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoCameraButton.addTarget(self, action: "onClickToDoCameraButton:", for: .touchUpInside)
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickToDoCameraButton(_ sender: Any) {
        let controller: UIViewController = CreateNewToDoCardController()
        if navigationController != nil {
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}

