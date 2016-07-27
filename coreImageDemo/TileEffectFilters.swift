//
//  TileEffectFilters.swift
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

class TileEffectFilters: NSObject {
    
    //MARK:- CICategoryTileEffect filters
    
    //****************************************************************************
    //MARK: Filter: CIAffineClamp
    //parameter :   inputImage
    //              inputTransform
    //****************************************************************************
    
    func setCIAffineClamp(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAffineClamp") else{
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
    //MARK: Filter: CIAffineTile
    //parameter :   inputImage
    //              inputTransform
    //****************************************************************************
    
    func setCIAffineTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAffineTile") else{
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
    //MARK: Filter: CIEightfoldReflectedTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputWidth
    //****************************************************************************
    
    func setCIEightfoldReflectedTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIEightfoldReflectedTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(100.0, forKey: "inputWidth")
        filter.setValue(0.0, forKey: "inputAngle")
      
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIFourfoldReflectedTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputAcuteAngle
    //              inputWidth
    //****************************************************************************
    
    func setCIFourfoldReflectedTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIFourfoldReflectedTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(100.0, forKey: "inputWidth")
        filter.setValue(2.0, forKey: "inputAngle")
        filter.setValue(3.0, forKey: "inputAcuteAngle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIFourfoldRotatedTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputWidth
    //****************************************************************************
    
    func setCIFourfoldRotatedTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIFourfoldRotatedTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(100.0, forKey: "inputWidth")
        filter.setValue(2.0, forKey: "inputAngle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIFourfoldTranslatedTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputAcuteAngle
    //              inputWidth
    //****************************************************************************
    
    func setCIFourfoldTranslatedTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIFourfoldTranslatedTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(100.0, forKey: "inputWidth")
        filter.setValue(2.0, forKey: "inputAngle")
        filter.setValue(2.0, forKey: "inputAcuteAngle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIGlideReflectedTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputWidth
    //****************************************************************************
    
    func setCIGlideReflectedTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIGlideReflectedTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(100.0, forKey: "inputWidth")
        filter.setValue(2.0, forKey: "inputAngle")
       
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIKaleidoscope
    //parameter :   inputImage
    //              inputCount
    //              inputCenter
    //              inputAngle
    //****************************************************************************
    
    func setCIKaleidoscope(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIKaleidoscope") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(2.0, forKey: "inputAngle")
        filter.setValue(8.0, forKey: "inputCount")
      
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIOpTile
    //parameter :   inputImage
    //              inputCenter
    //              inputScale
    //              inputAngle
    //              inputWidth
    //****************************************************************************
    
    func setCIOpTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIOpTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(1.5, forKey: "inputScale")
        filter.setValue(2.0, forKey: "inputAngle")
        filter.setValue(80.0, forKey: "inputWidth")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIParallelogramTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputAcuteAngle
    //              inputWidth
    //****************************************************************************
    
    func setCIParallelogramTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIParallelogramTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(1.5, forKey: "inputAcuteAngle")
        filter.setValue(2.0, forKey: "inputAngle")
        filter.setValue(80.0, forKey: "inputWidth")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPerspectiveTile
    //parameter :   inputImage
    //              inputTopLeft
    //              inputTopRight
    //              inputBottomRight
    //              inputBottomLeft
    //****************************************************************************
    
    func setCIPerspectiveTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPerspectiveTile") else{
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
    //MARK: Filter: CISixfoldReflectedTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputWidth
    //****************************************************************************
    
    func setCISixfoldReflectedTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISixfoldReflectedTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(2.0, forKey: "inputAngle")
        filter.setValue(80.0, forKey: "inputWidth")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISixfoldRotatedTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputWidth
    //****************************************************************************
    
    func setCISixfoldRotatedTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISixfoldRotatedTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(2.0, forKey: "inputAngle")
        filter.setValue(80.0, forKey: "inputWidth")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CITriangleKaleidoscope
    //parameter :   inputImage
    //              inputPoint
    //              inputSize
    //              inputRotation
    //              inputDecay
    //****************************************************************************
    
    func setCITriangleKaleidoscope(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CITriangleKaleidoscope") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputPoint")
        
        filter.setValue(200.0, forKey: "inputSize")
        filter.setValue(-10.0, forKey: "inputRotation")
        filter.setValue(0.95, forKey: "inputDecay")
       
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CITriangleTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputWidth
    //****************************************************************************
    
    func setCITriangleTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CITriangleTile") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(2.0, forKey: "inputAngle")
        filter.setValue(80.0, forKey: "inputWidth")
       
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CITwelvefoldReflectedTile
    //parameter :   inputImage
    //              inputCenter
    //              inputAngle
    //              inputWidth
    //****************************************************************************
    
    func setCITwelvefoldReflectedTile(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CITwelvefoldReflectedTile") else{
            print("filter is not available")
            return nil
        }        
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(2.0, forKey: "inputAngle")
        filter.setValue(80.0, forKey: "inputWidth")     
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
}
