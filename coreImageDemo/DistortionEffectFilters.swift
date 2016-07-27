//
//  DistortionEffectFilters.swift
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

class DistortionEffectFilters: NSObject {
    
    //MARK:- CICategoryDistortionEffect filters
    
    //****************************************************************************
    //MARK: Filter: CIBumpDistortion
    //parameter :   inputImage
    //              inputCenter
    //              inputRadius
    //              inputScale
    //****************************************************************************
    
    func setCIBumpDistortion(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIBumpDistortion") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(200.0, forKey: "inputRadius")
        filter.setValue(0.50, forKey: "inputScale")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIBumpDistortionLinear
    //parameter :   inputImage
    //              inputCenter
    //              inputRadius
    //              inputAngle
    //              inputScale
    //****************************************************************************
    
    func setCIBumpDistortionLinear(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIBumpDistortionLinear") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(200.0, forKey: "inputRadius")
        filter.setValue(-60.0, forKey: "inputAngle")
        filter.setValue(2.50, forKey: "inputScale")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CICircleSplashDistortion
    //parameter :   inputImage
    //              inputCenter
    //              inputRadius
    //****************************************************************************
    
    func setCICircleSplashDistortion(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CICircleSplashDistortion") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(130.0, forKey: "inputRadius")        
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CICircularWrap
    //parameter :   inputImage
    //              inputCenter
    //              inputRadius
    //              inputAngle
    //****************************************************************************
    
    func setCICircularWrap(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CICircularWrap") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(80.0, forKey: "inputRadius")
        filter.setValue(10.0, forKey: "inputAngle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIDroste
    //parameter :   inputImage
    //              inputInsetPoint0
    //              inputInsetPoint1
    //              inputStrands
    //              inputPeriodicity
    //              inputRotation
    //              inputZoom
    //****************************************************************************
    
    func setCIDroste(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDroste") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputInsetPoint0 = CIVector(x: 50, y: 50)
        filter.setValue(inputInsetPoint0, forKey: "inputInsetPoint0")
        
        let inputInsetPoint1 = CIVector(x: 200, y: 200)
        filter.setValue(inputInsetPoint1, forKey: "inputInsetPoint1")
        
        filter.setValue(1.0, forKey: "inputStrands")
        filter.setValue(1.0, forKey: "inputPeriodicity")
        filter.setValue(10.0, forKey: "inputRotation")
        filter.setValue(0.5, forKey: "inputZoom")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIDisplacementDistortion
    //parameter :   inputImage
    //              inputDisplacementImage
    //              inputScale
    //****************************************************************************
    
    func setCIDisplacementDistortion(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDisplacementDistortion") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let image = UIImage(named: "shadingImg.jpg")
        let inputDisplacementImage = CIImage(image: image!)
        filter.setValue(inputDisplacementImage, forKey: "inputDisplacementImage")
        filter.setValue(160.0, forKey: "inputScale")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIGlassDistortion
    //parameter :   inputImage
    //              inputTexture
    //              inputCenter
    //              inputScale
    //****************************************************************************
    
    func setCIGlassDistortion(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIGlassDistortion") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let image = UIImage(named: "bubbles.jpg")
        let inputDisplacementImage = CIImage(image: image!)
        filter.setValue(inputDisplacementImage, forKey: "inputTexture")
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(160.0, forKey: "inputScale")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIGlassLozenge
    //parameter :   inputImage
    //              inputPoint0
    //              inputPoint1
    //              inputRadius
    //              inputRefraction
    //****************************************************************************
    
    func setCIGlassLozenge(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIGlassLozenge") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputPoint0 = CIVector(x: 150, y: 150)
        filter.setValue(inputPoint0, forKey: "inputPoint0")
        
        let inputPoint1 = CIVector(x: 150, y: 150)
        filter.setValue(inputPoint1, forKey: "inputPoint1")
        
        filter.setValue(100.0, forKey: "inputRadius")
        filter.setValue(1.8, forKey: "inputRefraction")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIHoleDistortion
    //parameter :   inputImage
    //              inputCenter
    //              inputRadius
    //****************************************************************************
    
    func setCIHoleDistortion(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIHoleDistortion") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(100.0, forKey: "inputRadius")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILightTunnel
    //parameter :   inputImage
    //              inputCenter
    //              inputRotation
    //              inputRadius
    //****************************************************************************
    
    func setCILightTunnel(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CILightTunnel") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 155, y: 155)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(2.0, forKey: "inputRotation")
        filter.setValue(10.0, forKey: "inputRadius")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPinchDistortion
    //parameter :   inputImage
    //              inputCenter
    //              inputRadius
    //              inputScale
    //****************************************************************************
    
    func setCIPinchDistortion(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPinchDistortion") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(2.0, forKey: "inputScale")
        filter.setValue(300.0, forKey: "inputRadius")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIStretchCrop
    //parameter :   inputImage
    //              inputSize
    //              inputCropAmount
    //              inputCenterStretchAmount
    //****************************************************************************
    
    func setCIStretchCrop(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIStretchCrop") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputSize = CIVector(x: 150, y: 150)
        filter.setValue(inputSize, forKey: "inputSize")
        
        filter.setValue(0.5, forKey: "inputCropAmount")
        filter.setValue(0.5, forKey: "inputCenterStretchAmount")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CITorusLensDistortion
    //parameter :   inputImage
    //              inputCenter
    //              inputRadius
    //              inputWidth
    //              inputRefraction
    //****************************************************************************
    
    func setCITorusLensDistortion(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CITorusLensDistortion") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 250, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(170.0, forKey: "inputRadius")
        filter.setValue(80.0, forKey: "inputWidth")
        filter.setValue(1.5, forKey: "inputRefraction")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CITwirlDistortion
    //parameter :   inputImage
    //              inputCenter
    //              inputRadius
    //              inputAngle
    //****************************************************************************
    
    func setCITwirlDistortion(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CITwirlDistortion") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(170.0, forKey: "inputRadius")
        filter.setValue(3.0, forKey: "inputAngle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIVortexDistortion
    //parameter :   inputImage
    //              inputCenter
    //              inputRadius
    //              inputAngle
    //****************************************************************************
    
    func setCIVortexDistortion(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIVortexDistortion") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(270.0, forKey: "inputRadius")
        filter.setValue(73.0, forKey: "inputAngle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
}
