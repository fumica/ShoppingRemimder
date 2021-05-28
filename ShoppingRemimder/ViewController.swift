//
//  ViewController.swift
//  ShoppingRemimder
//
//  Created by 河野文香 on 2021/05/23.
//

import UIKit
import FSCalendar

class ViewController: UIViewController,FSCalendarDataSource,FSCalendarDelegate {

    @IBOutlet var labelDate: UILabel!
  
    //日付がタップされた時に年月日を表示する
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let tempDate = Calendar(identifier: .gregorian)
        let year = tempDate.component(.year, from: date)
        let month = tempDate.component(.month, from: date)
        let day = tempDate.component(.day, from: date)
        labelDate.text = "\(year)/\(month)/\(day)"
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

