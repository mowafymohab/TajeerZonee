//
//  DatePopUpFirstVC.swift
//  TZONE
//
//  Created by lapstore on 8/15/18.
//  Copyright © 2018 AmrSobhy. All rights reserved.
//

import UIKit

class DatePopUpFirstVC: UIViewController {

    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

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
    
    @IBAction func DatePickerAction(_ sender: UIDatePicker) {
        print("AASDSDSDSDSDS",sender.date)
        
    }
    
    
    
    
    
    @IBAction func DismissButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}