//
//  ViewController.swift
//  WorkPlanner
//
//  Created by YOHEISASAKI on 10/11/16.
//  Copyright © 2016 YOHEISASAKI. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.initLabel()
        //self.loadTemplate()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initLabel(){
        let helloLabel: UILabel = UILabel(frame: CGRect(x:60, y:100, width:200, height:30))
        
        helloLabel.text = "Hello World!"
        helloLabel.textAlignment = NSTextAlignment.center
        helloLabel.textColor = UIColor.black
        helloLabel.backgroundColor = UIColor.orange
        
        self.view.addSubview(helloLabel)
    }
    /*
    func loadTemplate() {
        let view: UIView = UINib(nibName: "RootViewController", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! UIView
        self.view.addSubview(view)
    }
 */

}

