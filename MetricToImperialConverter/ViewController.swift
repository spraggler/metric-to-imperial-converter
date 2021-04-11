//
//  ViewController.swift
//  MetricToImperialConverter
//
//  Created by Kirk Jones on 3/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var typePicker: UIPickerView!
    
    let pickerList = ["weight","length","volume","temperature"]
    var selectedValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        typePicker?.dataSource = self
        typePicker?.delegate = self
        typePicker?.selectRow(0, inComponent: 0, animated: true)
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerList.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let controller: ConverterViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ConverterViewController") as! ConverterViewController
        
        controller.selectedCategory = pickerList[row]
        present(controller, animated: true, completion: nil)
    }
}
