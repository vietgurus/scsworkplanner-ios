//
//  ToDoCardListController.swift
//  WorkPlanner
//
//  Created by YOHEISASAKI on 23/11/16.
//  Copyright © 2016 YOHEISASAKI. All rights reserved.
//

import UIKit
import iCarousel

class ToDoCardListController: UIViewController {


    @IBOutlet weak var toDoCardList: iCarousel!
    
    lazy var cardSize:CGRect = {
        let width  = self.toDoCardList.frame.width
        let height = self.toDoCardList.frame.height
        let frame = CGRect(x: 0, y: 0, width: width, height: height)
        return frame
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "ToDo Card List"
/*
        let toDoCardListView = ToDoCardListView()
        toDoCardListView.center = CGPoint(x: toDoCardList.frame.width/2, y: toDoCardList.frame.height/2)

        toDoCardList.addSubview(toDoCardListView)
   */
        self.toDoCardList.delegate = self
        self.toDoCardList.dataSource = self
        self.toDoCardList.bounceDistance = 0.3
        self.toDoCardList.clipsToBounds = true
        self.toDoCardList.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ToDoCardListController: iCarouselDataSource {
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        //TODO
        // return the count of cards
        return 2
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        var toDoCardListView: ToDoCardListView?
        //if let castedView = view as? ToDoCardListView {
          //  toDoCardListView = castedView
        //} else {
        toDoCardListView = ToDoCardListView(frame: cardSize)
        //}
        //toDoCardListView!.updateMonitoring(monitorings[index])
        return toDoCardListView!
    }
}

extension ToDoCardListController: iCarouselDelegate {
    
}
