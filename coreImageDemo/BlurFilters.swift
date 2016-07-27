//
//  CICategoryBlurFilters.swift
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

class BlurFilters: NSObject {
    
    //MARK:- CICategoryBlur filters
    
    //****************************************************************************
    //MARK: Filter: CIBoxBlur
    //parameter :   inputRadius
    //****************************************************************************
    
    func setCIBoxBlur(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIBoxBlur") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(20.5, forKey: "inputRadius")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIDiscBlur
    //parameter :   inputRadius
    //****************************************************************************
    
    func setCIDiscBlur(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDiscBlur") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(20.5, forKey: "inputRadius")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
        
    }
    
    //****************************************************************************
    //MARK: Filter: CIGaussianBlur
    //parameter :   inputRadius
    //****************************************************************************
    
    func setCIGaussianBlur(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIGaussianBlur") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(200.5, forKey: "inputRadius")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    
    //****************************************************************************
    //MARK: Filter: CIMedianFilter
    //parameter :   inputImage
    //****************************************************************************
    
    func setCIMedianFilter(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIMedianFilter") else{
            print("filter is not available")
            return nil
        }
       
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIMotionBlur
    //parameter :   inputImage
    //              inputRadius
    //              inputAngle
    //****************************************************************************
    
    func setCIMotionBlur(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIMotionBlur") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(30.0, forKey: "inputRadius")
        filter.setValue(10.0, forKey: "inputAngle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CINoiseReduction
    //parameter :   inputImage
    //              inputNoiseLevel
    //              inputSharpness
    //****************************************************************************
    
    func setCINoiseReduction(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CINoiseReduction") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(30.0, forKey: "inputNoiseLevel")
        filter.setValue(10.0, forKey: "inputSharpness")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIZoomBlur
    //parameter :   inputImage
    //              inputCenter
    //              inputAmount
    //****************************************************************************
    
    func setCIZoomBlur(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIZoomBlur") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(CIVector(x: 30.0, y: 20.0), forKey: "inputCenter")
        filter.setValue(100.0, forKey: "inputAmount")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
}
