//
//  ThirdViewController.swift
//  CIS446-Project1
//
//  Created by djalowiec on 2/12/18.
//  Copyright © 2018 Bradley University. All rights reserved.
//
var myAngryCounter = 0;

import UIKit

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        Mainview.backgroundColor = UIColor(patternImage: UIImage(named: "back1.jpg")!)
        
        getQ();
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var Mainview: UIView!
    @IBOutlet weak var Q: UITextView!
    
    func getQ(){
        let i = arc4random() % 2;
        if(i == i){
            Q.text = "For every minute you remain angry, you give up sixty seconds of peace of mind."
        }
        else{
            Q.text = "Speak when you are angry - and you'll make the best speech you'll ever regret."
        }
    }


     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
      myAngryCounter = myAngryCounter + 1 ;
     // Pass the selected object to the new view controller.
     }

    
}

