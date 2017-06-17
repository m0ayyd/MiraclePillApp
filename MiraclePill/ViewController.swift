//
//  ViewController.swift
//  MiraclePill
//
//  Created by the Luckiest on 6/17/17.
//  Copyright © 2017 the Luckiest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var miracleImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullnameTF: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTF: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTF: UITextField!
    @IBOutlet weak var buyBtn: UIButton!
    
    
    
    
    
    @IBOutlet weak var successImage: UIImageView!
    
    let stats = ["Alaska", "Arkansas", "Alabama", "California", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        
        // Hide country and zip code
        countryLabel.isHidden = true
        countryTF.isHidden = true
        zipLabel.isHidden = true
        zipTF.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stats.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stats[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(stats[row], for: UIControlState.normal);
        statePicker.isHidden = true
        
        // Show country and zip code
        countryLabel.isHidden = false
        countryTF.isHidden = false
        zipLabel.isHidden = false
        zipTF.isHidden = false
    }
    
    @IBAction func buyBtnTapped(_ sender: Any) {
        miracleImage.isHidden = true
        titleLabel.isHidden = true
        priceLabel.isHidden = true
        fullnameLabel.isHidden = true
        divider.isHidden = true
        fullnameTF.isHidden = true
        addressLabel.isHidden = true
        addressTF.isHidden = true
        cityLabel.isHidden = true
        cityTF.isHidden = true
        stateLabel.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryTF.isHidden = true
        zipLabel.isHidden = true
        zipTF.isHidden = true
        buyBtn.isHidden = true
        
        successImage.isHidden = false
    }
    
    
}

