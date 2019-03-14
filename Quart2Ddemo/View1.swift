//
//  View1.swift
//  Quart2Ddemo
//
//  Created by apple_mini on 2019/3/14.
//  Copyright © 2019年 Scode. All rights reserved.
//

import UIKit

class View1: UIView {
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        //设置背景颜色
        UIColor.lightGray.setFill()
        UIRectFill(rect)
        
        //三种方式进行绘图
        let context = UIGraphicsGetCurrentContext()
//        context?.rotate(by: CGFloat((10*M_PI) / 180))//设置ctm变化
    
        context?.setStrokeColor(UIColor.cyan.cgColor)
        context?.setLineCap(.round)
        context?.setLineWidth(20)
        context?.move(to: CGPoint(x: 100, y: 100))
        context?.addLine(to: CGPoint(x: 200, y: 200))
        context?.strokePath()
        
        context?.setStrokeColor(UIColor.brown.cgColor)
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 200,y: 200))
        path.addLine(to: CGPoint(x: 100, y: 300))
        context?.addPath(path)
        context?.strokePath()
        
        context?.setStrokeColor(UIColor.blue.cgColor)
        let path2 = UIBezierPath()
        path2.lineWidth = 20
        path2.lineCapStyle = .round
        path2.move(to: CGPoint(x: 100, y: 300))
        path2.addLine(to: CGPoint(x: 200, y: 400))
        path2.stroke()
        
        context?.setStrokeColor(UIColor.green.cgColor)
    
        let path3 = CGMutablePath()
        path3.move(to: CGPoint(x: 80, y: 120))
        path3.addLine(to: CGPoint(x: 160, y: 200))
        path3.addLine(to: CGPoint(x: 80, y: 280))
        path3.addLine(to: CGPoint(x: 0, y: 200))
        path3.addLine(to: CGPoint(x: 80, y: 120))
        context?.setLineJoin(.round)
        context?.addPath(path3)
        context?.strokePath()
        
        
//        let affine = CGAffineTransform(scaleX: 1.5, y: 1.5)
//        context?.concatenate(affine)//设置仿射变换
        
        context?.setStrokeColor(UIColor.red.cgColor)
        let path4 = CGMutablePath()
        path4.move(to: CGPoint(x: 220, y: 220))
        path4.addLine(to: CGPoint(x: 300, y: 300))
        path4.addLine(to: CGPoint(x: 220, y: 380))
        path4.addLine(to: CGPoint(x: 140, y: 300))
        path4.addLine(to: CGPoint(x:220, y: 220))
        context?.addPath(path4)
        context?.strokePath()
        
        
        
        
        
    }
    
    
}
