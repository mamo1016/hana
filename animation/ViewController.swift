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

        let circleSize:Int = 320
        var params = [Dictionary<String,AnyObject>]()
        params.append(["value":7 as AnyObject,"color":UIColor.red])
        params.append(["value":5 as AnyObject,"color":UIColor.blue])
        params.append(["value":8 as AnyObject,"color":UIColor.green])
        params.append(["value":10 as AnyObject,"color":UIColor.yellow])
        graphView = PieGraphView(frame:  CGRect(x : 0, y : 0, width : circleSize, height : circleSize), params: params)
        graphView.backgroundColor = UIColor.gray
        graphView.center = self.view.center
        self.view.addSubview(graphView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func start(sender: AnyObject) {
        graphView.startAnimating()
        
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
}






