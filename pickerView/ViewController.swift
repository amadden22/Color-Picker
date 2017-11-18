//
//  ViewController.swift
//  pickerView
//
//  Created by Aidan Madden on 11/17/17.
//  Copyright © 2017 Aidan Madden. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialColor = colors[0]
        self.view.backgroundColor = initialColor.uiColor
        self.label.text = initialColor.colorName

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
   
    struct color {
        let colorName: String?
        let uiColor: UIColor
        
    }
    
    var colors: [color] = [color(colorName: "Red", uiColor: UIColor.red),color(colorName: "Orange", uiColor: UIColor.orange),color(colorName: "Yellow", uiColor: UIColor.yellow),color(colorName: "Green", uiColor: UIColor.green),color(colorName: "Blue", uiColor: UIColor.blue), color(colorName: "Purple", uiColor: UIColor.purple)]
    
    
    var selectedColor: String?

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].colorName
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       label.text = colors[row].colorName
       self.view.backgroundColor = colors[row].uiColor
    }
    
    
    
    
    

}

