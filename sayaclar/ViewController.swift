//
//  ViewController.swift
//  sayaclar
//
//  Created by Emir Keskin on 14.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zamanLabel: UILabel!
    
                var timer = Timer()
                var kalanZaman = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        kalanZaman = 10
        zamanLabel.text = "zaman: \(kalanZaman)"
        
    }

    @IBAction func baslatTiklandi(_ sender: Any) {
    
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFonksiyonu(){
        zamanLabel.text = "zaman: \(kalanZaman)"
        kalanZaman = kalanZaman - 1
        if kalanZaman == 0 {
            zamanLabel.text = "süre bitti"
            timer.invalidate()
            kalanZaman = 15
            
        }
    }
       
}

