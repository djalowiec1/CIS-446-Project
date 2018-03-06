//
//  ThirdViewController.swift
//  CIS446-Project1
//
//  Created by djalowiec on 2/12/18.
//  Copyright © 2018 Bradley University. All rights reserved.
//
var myDemotivatedCounter = 0;

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        myDemotivatedCounter = myDemotivatedCounter + 1; 
        getQ();
        Mainview.backgroundColor = UIColor(patternImage: UIImage(named: "back1.jpg")!)
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
            Q.text = "If you must have motivation, think of your paycheck on Friday."
        }
        else{
            Q.text = "Desire is the key to motivation, but it's the determination and commitment to unrelenting pursuit of your goal - a commitment to excellence - that will enable you to attain the success you seek."
        }
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
