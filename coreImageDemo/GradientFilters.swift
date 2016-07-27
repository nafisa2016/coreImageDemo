//
//  GradientFilters.swift
//  core image demo
//
//  Created on: 22-May-2016
//      Author: Nafisa Rahman
//
//  LICENSE:-
//  The MIT License (MIT)
//  Copyright (c) 2016 Nafisa Rahman
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom
//  the Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall
//  be included in all copies or substantial portions of the
//  Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
//  OR OTHER DEALINGS IN THE SOFTWARE.
//


import UIKit

class GradientFilters: NSObject {
    
    //MARK:- CICategoryGradient filters
    
    //****************************************************************************
    //MARK: Filter: CIGaussianGradient
    //parameter :   inputCenter
    //              inputColor0
    //              inputColor1
    //              inputRadius
    //****************************************************************************
    
    func setCIGaussianGradient()-> CIImage? {
        
        guard let filter = CIFilter(name: "CIGaussianGradient") else{
            print("filter is not available")
            return nil
        }
        
        let colorRef0 = UIColor.blackColor().CGColor
        let color0 = CIColor(CGColor: colorRef0)
        
        filter.setValue(color0, forKey: "inputColor0")
        
        let colorRef1 = UIColor.blueColor().CGColor
        let color1 = CIColor(CGColor: colorRef1)
        
        filter.setValue(color1, forKey: "inputColor1")
        filter.setValue(300.0, forKey: "inputRadius")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILinearGradient
    //parameter :   inputPoint0
    //              inputPoint1
    //              inputColor0
    //              inputColor1
    //****************************************************************************
    
    func setCILinearGradient()-> CIImage? {
        
        guard let filter = CIFilter(name: "CILinearGradient") else{
            print("filter is not available")
            return nil
        }
        
        let colorRef0 = UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 0.5).CGColor
        let color0 = CIColor(CGColor: colorRef0)
        
        filter.setValue(color0, forKey: "inputColor0")
        
        let colorRef1 = UIColor(red: 100.0/255.0, green: 100.0/255.0, blue: 200.0/255.0, alpha: 0.5).CGColor
        let color1 = CIColor(CGColor: colorRef1)
        
        filter.setValue(color1, forKey: "inputColor1")
        
        let inputPoint0 = CIVector(x: 0.5, y: 0.5)
        filter.setValue(inputPoint0, forKey: "inputPoint0")
        
        let inputPoint1 = CIVector(x: 150, y: 150)
        filter.setValue(inputPoint1, forKey: "inputPoint1")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIRadialGradient
    //parameter :   inputCenter
    //              inputRadius0
    //              inputRadius1
    //              inputColor0
    //              inputColor1
    //****************************************************************************
    
    func setCIRadialGradient()-> CIImage? {
        
        guard let filter = CIFilter(name: "CIRadialGradient") else{
            print("filter is not available")
            return nil
        }
        
        let colorRef0 = UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 0.5).CGColor
        let color0 = CIColor(CGColor: colorRef0)
        
        filter.setValue(color0, forKey: "inputColor0")
        
        let colorRef1 = UIColor(red: 100.0/255.0, green: 100.0/255.0, blue: 200.0/255.0, alpha: 0.5).CGColor
        let color1 = CIColor(CGColor: colorRef1)
        filter.setValue(color1, forKey: "inputColor1")
        
        let inputCenter = CIVector(x: 100  , y: 100)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(10.0, forKey: "inputRadius0")
        filter.setValue(200.0, forKey: "inputRadius1")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISmoothLinearGradient
    //parameter :   inputPoint0
    //              inputPoint1
    //              inputColor0
    //              inputColor1
    //****************************************************************************
    
    func setCISmoothLinearGradient()-> CIImage? {
        
        guard let filter = CIFilter(name: "CISmoothLinearGradient") else{
            print("filter is not available")
            return nil
        }
        
        let colorRef0 = UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 0.5).CGColor
        let color0 = CIColor(CGColor: colorRef0)
        
        filter.setValue(color0, forKey: "inputColor0")        
        
        let colorRef1 = UIColor(red: 100.0/255.0, green: 100.0/255.0, blue: 200.0/255.0, alpha: 0.5).CGColor
        let color1 = CIColor(CGColor: colorRef1)
        
        filter.setValue(color1, forKey: "inputColor1")
        
        let inputPoint0 = CIVector(x: 10.5, y: 10.5)
        filter.setValue(inputPoint0, forKey: "inputPoint0")
        
        let inputPoint1 = CIVector(x: 150, y: 150)
        filter.setValue(inputPoint1, forKey: "inputPoint1")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
}
