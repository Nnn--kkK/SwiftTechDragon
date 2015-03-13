//
//  ExprainViewController.swift
//  SwiftTechandDragon
//
//  Created by anneka naganuma on 2015/03/13.
//  Copyright (c) 2015年 anneka. All rights reserved.
//

import UIKit



class ExprainViewController: UIViewController {
    
    @IBOutlet var backbutton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        backbutton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(backbutton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func back(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義.
        let myViewController: UIViewController = ViewController()
        
        // アニメーションを設定.
        myViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        
        // Viewの移動.
        self.presentViewController(myViewController, animated: true, completion: nil)
        
    }

}
