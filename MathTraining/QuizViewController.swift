//
//  QuizViewController.swift
//  MathTraining
//
//  Created by r_yamate on 2022/02/10.
//

import UIKit

class QuizViewController: UIViewController {
    
    let total = 10 // 問題数
    var correct = 0 // 正解数
    var questionIndex = 0 // 問題の番号（何番目の問題か）
    var answerIndex = 0 // 正解の番号
    
    @IBOutlet var leftNumberLabel: UILabel!
    @IBOutlet var centerNumberLabel: UILabel!
    @IBOutlet var rightNumberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setQuestions()// ビューを読み込んだタイミングで問題が出題される。
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.（再作成可能なリソースは破棄する。）
    }
        
    @IBAction func tapped(sender: UIButton) {
        // 正解の判定を行う。
        if sender.tag - 1 == answerIndex {
            correct += 1
        }
        
        questionIndex += 1
        if questionIndex >= total {
            performSegue(withIdentifier: "QuizToResult", sender: nil)
        }else {
            setQuestions()
        }
    }
    
    //
    func setQuestions() {
        let leftNum = Int(arc4random_uniform(10)) // 0から10までの乱数が生じる
        var centerNum = Int(arc4random_uniform(10))
        
        answerIndex = Int(arc4random_uniform(4)) // 0から3までの4通り
        switch answerIndex {
        case 0:
            rightNumberLabel.text = "\(leftNum + centerNum)"
        case 1:
            rightNumberLabel.text = "\(leftNum - centerNum)"
        case 2:
            rightNumberLabel.text = "\(leftNum * centerNum)"
        default:
            if centerNum == 0 {
                centerNum = 1
            }
            rightNumberLabel.text = "\(leftNum / centerNum)"
        }
        
        leftNumberLabel.text = "\(leftNum)"
        centerNumberLabel.text = "\(centerNum)"
    }

}
