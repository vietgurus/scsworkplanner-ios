//
//  SelectCategoryPickerViewController.swift
//  WorkPlanner
//
//  Created by YOHEISASAKI on 25/11/16.
//  Copyright © 2016 YOHEISASAKI. All rights reserved.
//

import UIKit

class SelectCategoryPickerViewController: UIViewController {

    @IBOutlet weak var selectCategoryPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(originalPosition: String, onClickOk:@escaping ((_ recognized: String) -> ())) {
        self.originalPosition = originalPosition
        self.onClickOk = onClickOk
        super.init(nibName: "PositionPickerViewController", bundle: nil)
    }

    
    
    func onClickChangePosition(_ monitoring:Monitoring, position: String, cardView: MonitoringCardView) {
        let controller = PositionPickerViewController(originalPosition: position) { (editedPosition: String) in
            cardView.updatePosition(editedPosition)
            monitoring.update(method: { (monitoring: Monitoring) in
                monitoring.recordedPosition = editedPosition
            }, onUpdated: {
                // Do nothing
            })
        }
        controller.setupAppearance()
        present(controller, animated: true, completion: nil)
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

extension SelectCategoryPickerViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Global.PRIORITIES[row]
    }
}

extension SelectCategoryPickerViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        /*
        let temperture =  NSDecimalNumber(string: Global.OPT_TEMPS[row])
        onUpdateTemperture(self.monitoring!, temperture)
        */
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        if let uiLabel = view as? UILabel {
            uiLabel.text = Global.PRIORITIES[row]
            return uiLabel
        }
        let pickerLabel = UILabel()
        pickerLabel.font = UIFont.systemFont(ofSize: 50, weight: UIFontWeightLight)
        pickerLabel.textAlignment = NSTextAlignment.center
        pickerLabel.text = Global.PRIORITIES[row]
        return pickerLabel
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
}
