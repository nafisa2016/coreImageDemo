//
//  HalftoneEffectFilters.swift
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

class HalftoneEffectFilters: NSObject {
    
    //MARK:- CICategoryHalftoneEffect filters
    
    //****************************************************************************
    //MARK: Filter: CICircularScreen
    //parameter :   inputImage
    //              inputCenter
    //              inputWidth
    //              inputSharpness
    //****************************************************************************
    
    func setCICircularScreen(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CICircularScreen") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 180, y: 180)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(10.0, forKey: "inputWidth")
        filter.setValue(0.7, forKey: "inputSharpness")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CICMYKHalftone
    //parameter :   inputImage
    //              inputCenter
    //              inputWidth
    //              inputAngle
    //              inputSharpness
    //              inputGCR
    //              inputUCR
    //****************************************************************************
    
    func setCICMYKHalftone(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CICMYKHalftone") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 180, y: 180)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(10.0, forKey: "inputWidth")
        filter.setValue(10.0, forKey: "inputAngle")
        filter.setValue(0.7, forKey: "inputSharpness")
        filter.setValue(10.0, forKey: "inputGCR")
        filter.setValue(0.7, forKey: "inputUCR")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIDotScreen
    //parameter :   inputImage
    //              inputCenter
    //              inputWidth
    //              inputAngle
    //              inputSharpness
    //****************************************************************************
    
    func setCIDotScreen(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDotScreen") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 180, y: 180)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        
        filter.setValue(10.0, forKey: "inputWidth")
        filter.setValue(10.0, forKey: "inputAngle")
        filter.setValue(0.7, forKey: "inputSharpness")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIHatchedScreen
    //parameter :   inputImage
    //              inputCenter
    //              inputWidth
    //              inputSharpness
    //****************************************************************************
    
    func setCIHatchedScreen(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIHatchedScreen") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 180, y: 180)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(10.0, forKey: "inputWidth")
        filter.setValue(0.7, forKey: "inputSharpness")        
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILineScreen
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputWidth
    //              inputSharpness
    //****************************************************************************
    
    func setCILineScreen(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CILineScreen") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 180, y: 180)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(10.0, forKey: "inputWidth")
        filter.setValue(0.7, forKey: "inputSharpness")
        filter.setValue(10.0, forKey: "inputAngle")
                
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
}
