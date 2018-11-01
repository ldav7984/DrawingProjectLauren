//
//  DrawingView.swift
//  DrawingProjectLauren
//
//  Created by Davis, Lauren on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
     {
        // Drawing code
        createStickFigure().stroke()
        //drawTurtle()
        drawRectangle().stroke()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.magenta.setStroke()
        figure.lineWidth = 5.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                            radius: CGFloat(20),
                            startAngle: CGFloat(0),
                            endAngle: CGFloat(2) * CGFloat.pi,
                            clockwise: true) //parameters
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
    
    private func drawRectangle() -> UIBezierPath
    {
        let myRectangle : UIBezierPath = UIBezierPath()
        UIColor.blue.setStroke()
        myRectangle.lineWidth = 3.0
        
        myRectangle.move(to : CGPoint(x: 50, y: 250))
        myRectangle.addLine(to: CGPoint(x: 50, y: 300)) //vertical l ine
        
        myRectangle.move(to: CGPoint(x: 50, y: 250))
        myRectangle.addLine(to: CGPoint(x: 100, y: 250)) //horizontal line
        
        myRectangle.move(to: CGPoint(x: 100, y: 250))
        myRectangle.addLine(to: CGPoint(x: 100, y: 300)) //verticle line
        
        myRectangle.move(to: CGPoint(x: 50, y: 300))
        myRectangle.addLine(to: CGPoint(x: 100, y: 300)) //horizontal line
        
        return myRectangle
        
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 200, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
        
    }

}
