//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 0001 QBS on 2020/04/24.
//  Copyright © 2020 qbs0001. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているnameに値を代入して渡す
        resultViewController.name = "yamada"

    }
    
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }


}

