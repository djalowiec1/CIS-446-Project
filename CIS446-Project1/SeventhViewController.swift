//
//  SeventhViewController.swift
//  CIS446-Project1
//
//  Created by djalowiec on 2/12/18.
//  Copyright © 2018 Bradley University. All rights reserved.
//
var myHappyCounter = 0;
import UIKit

class SeventhViewController: UIViewController {

    override func viewDidLoad() {
        myHappyCounter = myHappyCounter + 1;
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
        if(i == 1){
            Q.text = "Be happy for this moment. This moment is your life."
        }
        else{
            Q.text = "The only thing that will make you happy is being happy with who you are, and not who people think you are."
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
