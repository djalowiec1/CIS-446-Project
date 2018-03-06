//
//  SecondViewController.swift
//  CIS446-Project1
//
//  Created by djalowiec on 2/12/18.
//  Copyright © 2018 Bradley University. All rights reserved.
//
protocol  SendCounter {
    func sendData(data : Int)
}
var mySadCounter:Int = 0;

import UIKit

class SecondViewController: UIViewController {


    override func viewDidLoad() {
        getQuote();
        super.viewDidLoad()
        mySadCounter = mySadCounter + 1;
        Mainview.backgroundColor = UIColor(patternImage: UIImage(named: "back1.jpg")!)
        // Do any additional setup after loading the view.
    }
    var delegate : SendCounter?

    @IBOutlet var Mainview: UIView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet var GoBack: [ViewController]!
    

    @IBOutlet weak var Quote: UITextView!
    @IBAction func RunFunc() {
        getQuote();
    }
    func getQuote(){
        let i = arc4random() % 2;
        if(i == 1){
            Quote.text = "You can never control who you fall in love with, even when you're in the most sad, confused time of your life. You don't fall in love with people because they're fun. It just happens."
        }
        else{
            Quote.text = "The word 'happy' would lose its meaning if it were not balanced by sadness"
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
