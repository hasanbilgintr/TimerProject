//
//  ViewController.swift
//  230921_TimerProject
//
//  Created by hasan bilgin on 21.09.2023.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var timeLabel: UILabel!
    var timer=Timer()
    var counter=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //kodu 1 sn uyutur
        //Thread.sleep(forTimeInterval:  1)//1sn demek
        
        counter=10
        timeLabel.text="Time: \(counter)"
        //her aralık yani 1snde fonksiyonu kullanıcak
        //repeats tekrarlancakmı diye
        //heraralıkta timerFunction kullanıcak
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction(){
        timeLabel.text="Time: \(counter)"
        //1 eksilcek
        counter-=1
        
        if counter == 0 {
            //timer bitirir demek
            timer.invalidate()
            timeLabel.text="Time's Over"
        }
    }


    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
        
    }
}

