//
//  GeometryAdjustmentFilters.swift
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

class GeometryAdjustmentFilters: NSObject {
    
    //MARK:- CICategoryGeometryAdjustment filters
    
    //****************************************************************************
    //MARK: Filter: CIAffineTransform
    //parameter :   inputImage
    //              inputTransform
    //****************************************************************************
    
    func setCIAffineTransform(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAffineTransform") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let rotation = CGAffineTransformMakeRotation(90.0)
        filter.setValue(NSValue(CGAffineTransform: rotation), forKey: "inputTransform")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIStraightenFilter
    //parameter :   inputImage
    //              inputAngle
    //****************************************************************************
    
    func setCIStraightenFilter(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIStraightenFilter") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        filter.setValue(M_PI, forKey: "inputAngle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
        
    }
    
    //****************************************************************************
    //MARK: Filter: CICrop
    //parameter :   inputImage
    //              inputRectangle
    //*************************************************************************************
    
    func setCICrop(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CICrop") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        let Rectangle = CIVector(x: 50, y: 50, z: 200, w: 200)
        
        filter.setValue(Rectangle, forKey: "inputRectangle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
        
    }
    
    //****************************************************************************
    //MARK: Filter: CILanczosScaleTransform
    //parameter :   inputImage
    //              inputScale
    //              inputAspectRatio
    //****************************************************************************
    
    func setCILanczosScaleTransform(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CILanczosScaleTransform") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(3.0, forKey: "inputScale")
        filter.setValue(5.0, forKey: "inputAspectRatio")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPerspectiveCorrection
    //parameter :   inputImage
    //              inputTopLeft
    //              inputTopRight
    //              inputBottomRight
    //              inputBottomLeft
    //****************************************************************************
    
    func setCIPerspectiveCorrection(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPerspectiveCorrection") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputTopLeft = CIVector(x: 118, y: 488)
        filter.setValue(inputTopLeft, forKey: "inputTopLeft")
        
        let inputTopRight = CIVector(x: 640, y: 508)
        filter.setValue(inputTopRight, forKey: "inputTopRight")
        
        let inputBottomRight = CIVector(x: 548, y: 150)
        filter.setValue(inputBottomRight, forKey: "inputBottomRight")
        
        let inputBottomLeft = CIVector(x: 155, y: 150)
        filter.setValue(inputBottomLeft, forKey: "inputBottomLeft")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPerspectiveTransform
    //parameter :   inputImage
    //              inputTopLeft
    //              inputTopRight
    //              inputBottomRight
    //              inputBottomLeft
    //****************************************************************************
    
    func setCIPerspectiveTransform(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPerspectiveTransform") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputTopLeft = CIVector(x: 118, y: 488)
        filter.setValue(inputTopLeft, forKey: "inputTopLeft")
        
        let inputTopRight = CIVector(x: 640, y: 508)
        filter.setValue(inputTopRight, forKey: "inputTopRight")
        
        let inputBottomRight = CIVector(x: 548, y: 150)
        filter.setValue(inputBottomRight, forKey: "inputBottomRight")
        
        let inputBottomLeft = CIVector(x: 155, y: 150)
        filter.setValue(inputBottomLeft, forKey: "inputBottomLeft")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
        
    }
    
    //****************************************************************************
    //MARK: Filter: CIPerspectiveTransformWithExtent
    //parameter :   inputImage
    //              inputTopLeft
    //              inputTopRight
    //              inputBottomRight
    //              inputBottomLeft
    //****************************************************************************
    
    func setCIPerspectiveTransformWithExtent(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPerspectiveTransformWithExtent") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputTopLeft = CIVector(x: 118, y: 488)
        filter.setValue(inputTopLeft, forKey: "inputTopLeft")
        
        let inputTopRight = CIVector(x: 640, y: 508)
        filter.setValue(inputTopRight, forKey: "inputTopRight")
        
        let inputBottomRight = CIVector(x: 548, y: 150)
        filter.setValue(inputBottomRight, forKey: "inputBottomRight")
        
        let inputBottomLeft = CIVector(x: 155, y: 150)
        filter.setValue(inputBottomLeft, forKey: "inputBottomLeft")
        
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output        
    }
    
}
