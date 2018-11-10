//
//  ViewController.swift
//  animation
//
//  Created by 末利　花 on 2018/07/07.
//  Copyright © 2018年 末利　花. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet var graphView: PieGraphView!

     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myBoundSize: CGSize = UIScreen.main.bounds.size
        let size: CGSize = UIScreen.main.bounds.size
        
        print("height");  
        print("width");
        print("x");
        print("y");
        
//        let height = 320
//        print("height : " + height)      // str : Samurai Engineer
        // string
        
        
//        print("result : " . size)  // result : 100points
        print("result : \(size.width)")
        print("result : \(size.height)")  // result : 100points
        

        
//
//        let width = 320
//        print("width : \(width)")      // str : Samurai Engineer
//
//        //int
//        let nVal = 100
//        //print("nVal : " + nVal)  //エラー：文字列と数値型変数の結合はできない
//        print("nVal : \(nVal)")    //nVal : 100
//
//        //double
//        let dVal = 100.1234
//        print("dVal : \(dVal)")    //dVal : 100.1234//
//
//        //bool
//        let bVal1 = true
//        let bVal2 = false
//
//        print("bVal1 : \(bVal1)")  // bVal1 : true
//        print("bVal2 : \(bVal2)")  // bVal2 : false

        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
        var params = [Dictionary<String,AnyObject>]()
        params.append(["value":7 as AnyObject,"color":UIColor.red])
        params.append(["value":5 as AnyObject,"color":UIColor.blue])
        params.append(["value":8 as AnyObject,"color":UIColor.green])
        params.append(["value":10 as AnyObject,"color":UIColor.yellow])
        graphView = PieGraphView(frame:  CGRect(x : 0, y : 0, width : myBoundSize.width, height : myBoundSize.height), params: params)
        
        self.view.addSubview(graphView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start(sender: AnyObject) {
        graphView.startAnimating()
        print("start")
    }
    
//    @IBOutlet weak var vi: UIView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        vi.frame = CGRect(x: 0, y: 0, width: 50, height: 200)
    }
    
}


//override func viewDidLoad() {
        //super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib

    //override func didReceiveMemoryWarning() {
        //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.





