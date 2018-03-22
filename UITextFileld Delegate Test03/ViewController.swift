//
//  ViewController.swift
//  UITextFileld Delegate Test03
//
//  Created by D7703_18 on 2018. 3. 22..
//  Copyright © 2018년 D7703_18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lab: UILabel!
    
    @IBOutlet weak var txt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txt.placeholder = "입력을 하세요"     //TextField 입력하시요 코딩
        txt.clearButtonMode = UITextFieldViewMode.whileEditing
        txt.borderStyle = UITextBorderStyle.line    //TextField의 라인을 진하게 함
    }

    @IBAction func but(_ sender: Any) {
        lab.text = "Hello" + txt.text!
        txt.text = ""
        
        //키패드를. 내림
            txt.resignFirstResponder()
    }
    
    //background의 View를 누르면 keybord가 내려감
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


 }


