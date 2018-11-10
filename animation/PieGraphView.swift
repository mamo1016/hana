//
//  PieGraphView.swift
//  animation
//
//  Created by 末利　花 on 2018/07/07.
//  Copyright © 2018年 末利　花. All rights reserved.
//

import UIKit

var instead : Int!

class PieGraphView: UIView {
    var _params:[Dictionary<String,AnyObject>]!
    var _end_angle:CGFloat!
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(frame: CGRect,params:[Dictionary<String,AnyObject>]) {
        super.init(frame: frame)
        _params = params;
        self.backgroundColor = UIColor.clear;
        _end_angle = -CGFloat(Double.pi / 2.0);
    }
    
    
    func update(link:AnyObject){
        let angle = CGFloat(Double.pi*1.0 / 10.0);
        _end_angle = _end_angle +  angle
        if(_end_angle > CGFloat(Double.pi*2)) {
            //終了
            link.invalidate()
        } else {
            self.setNeedsDisplay()
        }
        
    }
    
    func startAnimating(){
        let displayLink = CADisplayLink(target: self, selector: Selector("update:"))
        displayLink.add(to: RunLoop.current, forMode: RunLoopMode.commonModes)
    }
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let context:CGContext = UIGraphicsGetCurrentContext()!;
        var x:CGFloat = rect.origin.x;
        x += rect.size.width/2;
        var y:CGFloat = rect.origin.y;
        y += rect.size.height/2;
        var max:CGFloat = 0;
        for dic : Dictionary<String,AnyObject> in _params {
        let value = CGFloat(dic["value"] as! Float)
            max += value;
        }
        
        
        var start_angle:CGFloat = -CGFloat(Double.pi * 2);
        var end_angle:CGFloat    = 0;
        let radius:CGFloat  = x - 10.0;
        for dic : Dictionary<String,AnyObject> in _params {
            let value = CGFloat(dic["value"] as! Float)
            end_angle = start_angle + CGFloat(Double.pi*2) * (value/max);
            if(end_angle > _end_angle) {
                end_angle = _end_angle;
            }
            let color:UIColor = dic["color"] as! UIColor
            
            context.move(to: CGPoint(x: x, y: y))
//            context.addArc(center: center, radius: radius, startAngle: 0, endAngle: CGFloat(M_PI * 2.0), clockwise: true)
            
            context.addArc(center: center,
                           radius: radius,
                           startAngle: 0.0,
                           endAngle: CGFloat(M_PI * 2.0),
                           clockwise: false)
//          CGContextAddArc(context, x, y, radius,  start_angle, end_angle, 0);
            //ここのコメントアウトを解除すると、中くりぬき
            //CGContextAddArc(context, x, y, radius/2,  end_angle, start_angle, 1);
            context.setFillColor(red: 0.9,
                                 green: 0,
                                 blue: 0,
                                 alpha: 0.5)
            context.closePath();
            context.fillPath();
            start_angle = end_angle;
        }
    
    
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

