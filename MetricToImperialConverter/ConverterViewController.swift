//
//  ConverterViewController.swift
//  MetricToImperialConverter
//
//  Created by Kirk Jones on 3/6/21.
//

import UIKit

class ConverterViewController: UIViewController {
        
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var startingUnitPicker: UIPickerView!
    @IBOutlet weak var endingUnitPicker: UIPickerView!
    @IBOutlet weak var valueToBeConverted: UITextField!
    
    var selectedCategory = ""
    let weightList = ["Pounds", "Ounces", "Stone", "Milligrams", "Grams", "Kilograms", "Tons"]
    let lengthList = ["Inches", "Feet", "Yards", "Miles", "Millimeters", "Centimeters", "Meters", "Kilometers"]
    let volumeList = ["Teaspoon", "Tablespoon", "Cups", "Quarts", "Gallons", "Milliliters", "Deciliters", "Liters"]
    let temperatureList = ["Fahrenheit", "Celsius"]
    
    var startingUnit = ""
    var endingUnit = ""
    
    var isConverted = false
    
    let table = CLookupTable()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        startingUnitPicker?.delegate = self
        startingUnitPicker?.dataSource = self
        endingUnitPicker?.delegate = self
        endingUnitPicker?.dataSource = self
        
//        startingUnitPicker?.selectRow(0, inComponent: 0, animated: true)
//        endingUnitPicker?.selectRow(0, inComponent: 0, animated: true)
        
        // Set these values so that on initial load if the user doesn't change the pickers from
        // their initial value, the user still gets a result.
        switch selectedCategory {
        case "weight":
            startingUnit = "Pounds"
            endingUnit = "Pounds"
        case "length":
            startingUnit = "Inches"
            endingUnit = "Inches"
        case "volume":
            startingUnit = "Teaspoon"
            endingUnit = "Teaspoon"
        case "temperature":
            startingUnit = "Fahrenheit"
            endingUnit = "Fahrenheit"
        default:
            startingUnit = "Pounds"
            endingUnit = "Pounds"
        }
        
    }
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if isConverted {
            dismiss(animated: true, completion: nil)
        } else {
            var value = 0.0
            
            if let text = valueToBeConverted.text {
               value = Double(text) ?? 0.0
            }

            answerLabel.text = String(format: "%.8f", convertUnit(unit: value, start: startingUnit, end: endingUnit))
            isConverted = true
            convertButton.setTitle("Start Over", for: .normal)
        }
    }
    
    private func convertUnit(unit: Double, start: String, end: String) -> Double {
        if start+end == "CelsiusFahrenheit" {
            return (unit * 1.8) + 32
        } else if start+end == "FahrenheitCelsius" {
            return (unit - 32) / 1.8
        }
        
        if unit == 0 {
            return 0
        }
        
        if unit > 0 && start == end {
            return unit
        } else {
            if let lookupValue = table.unitConversionLookupTable[start+end] {
                return unit * lookupValue
            }
        }
        
        return 0
    }
}

extension ConverterViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch selectedCategory {
        case "weight":
            return weightList.count
        case "length":
            return lengthList.count
        case "volume":
            return volumeList.count
        case "temperature":
            return temperatureList.count
        default:
            return 0
        }
    }
}

extension ConverterViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch selectedCategory {
        case "weight":
            return weightList[row]
        case "length":
            return lengthList[row]
        case "volume":
            return volumeList[row]
        case "temperature":
            return temperatureList[row]
        default:
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == startingUnitPicker {
            switch selectedCategory {
            case "weight":
                startingUnit = weightList[row]
            case "length":
                startingUnit = lengthList[row]
            case "volume":
                startingUnit = volumeList[row]
            case "temperature":
                startingUnit = temperatureList[row]
            default:
                startingUnit = ""
            }
        } else {
            switch selectedCategory {
            case "weight":
                endingUnit = weightList[row]
            case "length":
                endingUnit = lengthList[row]
            case "volume":
                endingUnit = volumeList[row]
            case "temperature":
                endingUnit = temperatureList[row]
            default:
                endingUnit = ""
            }
        }
    }
}
