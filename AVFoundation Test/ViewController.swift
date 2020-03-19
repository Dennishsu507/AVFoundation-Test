//
//  ViewController.swift
//  AVFoundation Test
//
//  Created by HSU, Hong-Wei on 2020/3/16.
//  Copyright © 2020 HSU, Hong-Wei. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var lable: UILabel!
    
   
    //按下return鍵盤消失，要設定storyboard
    @IBAction func textField(_ sender: Any) {
    }
    @IBOutlet weak var textField: UITextField!
    @IBAction func button(_ sender: UIButton) {
        
    //呼叫按鈕縮放的CASpringAnimation函數
        sender.buttonScales()
     //判斷textField是不是空字串
        if textField.text! == ""{
            lable.text = """
            "Hello"
            """
        } else if textField.text! == "beauty "{
                    lable.text = "아름다운"
        } else if textField.text! == "good "{
                    lable.text = "좋은"
        } else if textField.text! == "cheer up "{
            lable.text = "힘내"
        } else {lable.text = """
            "\(textField.text!)"
            """}
       

        let speachUtterance = AVSpeechUtterance(string: lable.text!)
        //speachUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        //speachUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        speachUtterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
        //調整音量，值介於0~1.0
        speachUtterance.volume = 1
        //調整音高，值介於0.5~2之間，標準值1.0
        speachUtterance.pitchMultiplier = 1.6
        //調整語速，值介於0.1~1.0，標準值0.5
        speachUtterance.rate = 0.4
        let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(speachUtterance)
     
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.adjustsImageWhenHighlighted = false
    }
    
    
    
    
}

