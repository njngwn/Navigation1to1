//
//  OrderViewController.swift
//  Navigation1to1
//
//  Created by Jeongwon Na on 26/03/2019.
//  Copyright © 2019 Jeongwon Na. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    var info: String?
    // ? 는 info의 값이 있을 수도 있고 없을 수도 있다는 뜻
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let contentString = info {
            infoLabel.text = contentString
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
