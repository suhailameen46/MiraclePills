//
//  ViewController.swift
//  MiraclePills
//
//  Created by Suhail Ameen on 25/01/17.
//  Copyright © 2017 Suhail Ameen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet var statePicker: UIPickerView!
    
    @IBOutlet var statePickerBtn: UIButton!
    @IBOutlet var MainView: UIView!
    @IBOutlet var successBtn: UIImageView!
    
    let states = ["Assam", "Tamil Nadu","Gujrat","Meghalaya","Arunachal Pradesh","Sikkim","New Delhi"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }

    @IBAction func BuyNowPressed(_ sender: Any) {
        //MainView.isHidden = true
        successBtn.isHidden = false
    }
}

