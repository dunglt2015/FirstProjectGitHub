//
//  ViewController.swift
//  FirstGitHub
//
//  Created by ADMIN on 10/15/16.
//  Copyright © 2016 dunglt2015. All rights reserved.
//

import UIKit

class ViewController:UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    let states = ["Alaska","Arkansas","California","Los Angeles","New york"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
        print("Hello GitHub")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateBtnPressed(_ sender: AnyObject) {
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
        statePickerBtn.setTitle(states[row], for: UIControlState()) // UIControlState normal
        statePicker.isHidden = true
    }
}

