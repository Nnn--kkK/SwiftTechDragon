//
//  ViewController.swift
//  SwiftTechandDragon
//
//  Created by anneka naganuma on 2015/03/12.
//  Copyright (c) 2015年 anneka. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var powerLabel: UILabel!
    @IBOutlet var hpLabel: UILabel!

    
    var power:Int = 0
    var hp:Int = 0
    
    //遷移先のstoryboard
 //   var infoView: UIStoryboard!
 //   var myExprainViewController: UIViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hp=100
        hpLabel.text = String(hp)
        
        //遷移先のstoryboard
    //    infoView = UIStoryboard(name: "ExprainViewController", bundle: nil)
    //    myExprainViewController = infoView!.instantiateViewControllerWithIdentifier("ExprainViewController") as UIViewController
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func powerButton(){
        power = power+3
        powerLabel.text = String(power)
    }
    
    @IBAction func hpButton(){
        

        hp = hp-power
        hpLabel.text = String(hp)
        
        if hp<0{
            
            hp=0
            hpLabel.text = String(hp)

        }
    }
    
    @IBAction func retry(){
        hp = 100
        hpLabel.text = String(hp)
        
        power = 0
        powerLabel.text = String(power)
    }
    
    
    @IBAction func infomation(sender:AnyObject){
        
        //遷移する画面を設定
        let myExprainViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("info") as UIViewController
        
        //アニメーションを設定
        myExprainViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        
        //Viewを移動
        self.presentViewController(myExprainViewController, animated: true, completion: nil)
    }
}

