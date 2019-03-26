//
//  ViewController.swift
//  Navigation1to1
//
//  Created by Jeongwon Na on 26/03/2019.
//  Copyright © 2019 Jeongwon Na. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pizzaChicken: UISegmentedControl!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
            let destVC = segue.destination as! OrderViewController
            // destination은 orderViewController 인스턴스의 객체
            let ordered: String! = pizzaChicken.titleForSegment(at: pizzaChicken.selectedSegmentIndex)
            
            destVC.title = ordered
            
            var outString: String = "감사합니다!!\n 주문내역: <"
            outString += ordered
            outString += ">, 맞나요?"
            destVC.info = outString
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

