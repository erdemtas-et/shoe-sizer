//
//  ViewController.swift
//  FashiSizer
//
//  Created by Erdem Tas on 30.05.2021.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    
    
    @IBOutlet weak var brandView: UIPickerView!
    @IBOutlet weak var sizeView: UIPickerView!
    
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var maleButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
  
    var brandManager = BrandManager()
    var brand = ""
    var size = Double()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brandManager.brandViewData.sort()
        fillPickerView()
        
        resultLabel.isHidden = true
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1).cgColor, UIColor(red: 120/255, green: 170/255, blue: 230/255, alpha: 1).cgColor]
        gradientLayer.shouldRasterize = true
        gradientLayer.zPosition = -1
        view.layer.addSublayer(gradientLayer)
        
        
       
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == brandView {
            return brandManager.brandViewData.count
        } else {
            return brandManager.sizeViewData.count
        }
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
   func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      
    if pickerView == brandView{
        
        return brandManager.brandViewData[row]
        
    }else {
        
      
        
        return brandManager.sizeViewData[row]
        
    }

    }
    
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == brandView{
            brand = brandManager.brandViewData[row]
            
        }else if pickerView == sizeView {
            if let safeSize  = Double(brandManager.sizeViewData[row]) {
                size = safeSize
                resultLabel.isHidden = false
               
                resultLabel.text =  String( brandManager.getBrand(brand, safeSize))
            }
           
            
        }
        
        resultLabel.text =  String( brandManager.getBrand(brand, size))
    }
    
    
    @IBAction func femaleButtonPressed(_ sender: UIButton) {
        maleButton.isSelected = false
        femaleButton.isSelected = true
        fillPickerView()
        brandView.reloadAllComponents()
        sizeView.reloadAllComponents()
    }
    
    
    @IBAction func maleButtonPressed(_ sender: UIButton) {
        femaleButton.isSelected = false
        maleButton.isSelected = true
        fillPickerView()
        brandView.reloadAllComponents()
        sizeView.reloadAllComponents()
    }
    
    
    func fillPickerView() {
        if femaleButton.isSelected {
            brandManager.sizeViewData.removeAll()
            for i in stride(from: 33, to: 45, by: 0.5){
                
                brandManager.sizeViewData.append(String(i))
            }
            
        } else if maleButton.isSelected {
            brandManager.sizeViewData.removeAll()
            for i in stride(from: 35, to: 48.5, by: 0.5){
            
                
                brandManager.sizeViewData.append(String(i))
            }
            
        }  else {
            brandManager.sizeViewData = ["Choose Gender"]
        }
        
    }
    
    
    
  
  

}

