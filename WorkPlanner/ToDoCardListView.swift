//
//  ToDoCardListView.swift
//  WorkPlanner
//
//  Created by YOHEISASAKI on 23/11/16.
//  Copyright © 2016 YOHEISASAKI. All rights reserved.
//

import UIKit

class ToDoCardListView:  UIView{
    
    @IBOutlet weak var toDoCardListView: UITableView!
    @IBOutlet var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
        self.view.frame = frame
        self.toDoCardListView.dataSource = self
        self.toDoCardListView.delegate = self
        self.toDoCardListView.estimatedRowHeight = 50
        
        self.toDoCardListView.register(UINib(nibName: "ToDoCardCell", bundle: nil), forCellReuseIdentifier: "ToDoCardCell")

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        Bundle.main.loadNibNamed("ToDoCardListView", owner: self, options: nil)
        self.addSubview(self.view)
    }
}

extension ToDoCardListView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCardCell") as! ToDoCardCell
        return cell
    }
}

extension ToDoCardListView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.contentView.updateConstraints()
    }
}

