//
//  CreateNewToDoCardController.swift
//  WorkPlanner
//
//  Created by YOHEISASAKI on 17/11/16.
//  Copyright © 2016 YOHEISASAKI. All rights reserved.
//

import UIKit

class CreateNewToDoCardController: UIViewController {
    
    @IBOutlet weak var categoryButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    let categories: [String] = [
        "Deck",
        "Engine",
        "Catering",
        "Vessel Manager"
    ]

    func updateCategory(_ categoryName: String){
        categoryButton.titleLabel?.text = categoryName
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init() {
        super.init(nibName: "CreateNewToDoCardController", bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "New ToDo Card"
        //TODO
        //setLocation
        showSetCategoryAlert()
        //TODO
        //showSetPriorityAlert()
    }
    
    
    func showSetCategoryAlert() {
        let alert: UIAlertController = UIAlertController(title: "Category", message: "Select Task Category", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        for category in self.categories {
            let action = UIAlertAction(title: category, style: UIAlertActionStyle.default, handler:{
                (action:UIAlertAction!) -> Void in
                self.updateCategory(category)})

            alert.addAction(action)
        }
        //TODO
        //add cancel
        present(alert, animated:true, completion:nil)
    }
    
}
