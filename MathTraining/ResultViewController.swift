//
//  ResultViewController.swift
//  MathTraining
//
//  Created by r_yamate on 2022/02/16.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result = 0.0
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabel.text = "\(round(result))%" // roundで小数点第一位が四捨五入される

        if result < 50 {
            messageLabel.text = "もっぺんやってみ！"
        }else if result < 80 {
            messageLabel.text = "ええやん！"
        }else{
            messageLabel.text = "めっちゃええやん！"
        }
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

}
