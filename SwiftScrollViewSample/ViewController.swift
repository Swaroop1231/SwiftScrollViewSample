//
//  ViewController.swift
//  SwiftScrollViewSample
//
//  Created by User 0001 on 10/10/14.
//  Copyright (c) 2014 Colan Infotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var imagelist=["apple.jpeg","pears.jpeg","banana.jpeg","grapes.jpeg","mango.jpeg","orange.jpeg"]
    
    var itemNames = ["Apple", "Pear", "Banana", "Grapes", "Mango", "Orange"]
    
    
    
    var scrollView: UIScrollView!
    
    var yPos: Float = 0
    
    
    
    override func viewDidLoad()
        
    {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        createScrollview()
        
    }
    
    
    
    func createScrollview()
        
    {
        
        scrollView = UIScrollView(frame: view.bounds)
        
        for var index = 0; index < self.imagelist.count; ++index
            
        {
            
            var fruitsImgView:UIImageView = UIImageView()
            
            fruitsImgView.frame=CGRectMake(0,CGFloat(yPos), 320, 200)
            
            fruitsImgView.image=UIImage(named: self.imagelist[index])
            
            scrollView.addSubview(fruitsImgView)
            
            yPos=yPos+200
            
        }
        
        
        
        scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, 200 * CGFloat(imagelist.count)+200)
        
        
        
        view.addSubview(scrollView)
        
        
        
    }
    
   
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

