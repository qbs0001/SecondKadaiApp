//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 0001 QBS on 2020/04/24.
//  Copyright © 2020 qbs0001. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var textFieldString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController

        // textFieldStringに画面で入力された名前を代入する
        textFieldString = textField.text!
        
        // 名前が空白の場合は、名無しとする
        if textFieldString == "" {
            textFieldString = "名無し"
        }
        
        // 遷移先のResultViewControllerで宣言しているnameに値を代入して渡す
        resultViewController.name = textFieldString

    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }


}

