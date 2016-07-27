//
//  CICategoryColorAdjustment.swift
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

class ColorAdjustmentFilters: NSObject {
    
    //MARK:- CICategoryColorAdjustment filters
    
    //****************************************************************************
    //MARK: Filter: CIColorClamp
    //parameter :   inputImage
    //              inputMinComponents
    //              inputMaxComponents
    //****************************************************************************
    
    func setCIColorClamp(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorClamp") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inpMinComp = CIVector(x:0, y:0, z:1, w: 0)
        let inpMaxComp = CIVector(x:0, y:1, z:1, w: 1)
        
        filter.setValue(inpMinComp, forKey: "inputMinComponents")
        filter.setValue(inpMaxComp, forKey: "inputMaxComponents")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIColorControls
    //parameter :   inputImage
    //              inputSaturation
    //              inputBrightness
    //              inputContrast
    //****************************************************************************
    
    func setCIColorControls(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorControls") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        filter.setValue(200.0, forKey: "inputSaturation")
        filter.setValue(30.0, forKey: "inputBrightness")
        filter.setValue(20.9, forKey: "inputContrast")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIColorMatrix
    //parameter :   inputImage
    //              inputRVector
    //              inputGVector
    //              inputBVector
    //              inputAVector
    //              inputBiasVector
    //****************************************************************************
    
    func setCIColorMatrix(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorMatrix") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let rVector = CIVector(x: 1.0, y: 0.1, z: 0.0, w: 0.0)
        let gVector = CIVector(x: 0.0, y: 0.1, z: 0.0, w: 0.0)
        let bVector = CIVector(x: 0.0, y: 1.0, z: 0.2, w: 0.0)
        let aVector = CIVector(x: 0.0, y: 0.0, z: 0.0, w: 1.0)
        let biasVector = CIVector(x: 0.0, y: 0.0, z: 1.0, w: 0.0)
        
        filter.setValue(rVector, forKey: "inputRVector")
        filter.setValue(gVector, forKey: "inputGVector")
        filter.setValue(bVector, forKey: "inputBVector")
        filter.setValue(aVector, forKey: "inputAVector")
        filter.setValue(biasVector, forKey: "inputBiasVector")
                
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIColorPolynomial
    //parameter :   inputImage
    //              inputRedCoefficients
    //              inputGreenCoefficients
    //              inputBlueCoefficients
    //              inputAlphaCoefficients
    //****************************************************************************
    
    func setCIColorPolynomial(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorPolynomial") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let rVector = CIVector(x: 1.0, y: 0.0, z: 0.2, w: 0.5)
        let gVector = CIVector(x: 0.0, y: 0.0, z: 0.0, w: 0.0)
        let bVector = CIVector(x: 0.0, y: 1.0, z: 0.0, w: 0.5)
        let aVector = CIVector(x: 0.0, y: 0.1, z: 0.0, w: 1.0)
        
        filter.setValue(rVector, forKey: "inputRedCoefficients")
        filter.setValue(gVector, forKey: "inputGreenCoefficients")
        filter.setValue(bVector, forKey: "inputBlueCoefficients")
        filter.setValue(aVector, forKey: "inputAlphaCoefficients")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIExposureAdjust
    //parameter :   inputImage
    //              inputEV
    //****************************************************************************
    
    func setCIExposureAdjust(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIExposureAdjust") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(2.0, forKey: "inputEV")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIGammaAdjust
    //parameter :   inputImage
    //              inputPower
    //****************************************************************************
    
    func setCIGammaAdjust(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIGammaAdjust") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(2.9, forKey: "inputPower")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIHueAdjust
    //parameter :   inputImage
    //              inputAngle
    //****************************************************************************
    
    func setCIHueAdjust(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIHueAdjust") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(-100.0, forKey: "inputAngle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILinearToSRGBToneCurve
    //parameter :   inputImage
    //****************************************************************************
    
    func setCILinearToSRGBToneCurve(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CILinearToSRGBToneCurve") else{
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
    //MARK: Filter: CISRGBToneCurveToLinear
    //parameter :   inputImage
    //****************************************************************************
    
    func setCISRGBToneCurveToLinear(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISRGBToneCurveToLinear") else{
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
    //MARK: Filter: CITemperatureAndTint
    //parameter :   inputImage
    //              inputNeutral
    //              inputTargetNeutral
    //****************************************************************************
    
    func setCITemperatureAndTint(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CITemperatureAndTint") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputNeutral = CIVector(x: 7000,y: 1000)
        filter.setValue(inputNeutral, forKey: "inputNeutral")
        
        let inputTargetNeutral = CIVector(x: 10000,y: 2000)
        filter.setValue(inputTargetNeutral, forKey: "inputTargetNeutral")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIToneCurve
    //parameter :   inputImage
    //              inputPoint0
    //              inputPoint1
    //              inputPoint2
    //              inputPoint3
    //              inputPoint4
    //****************************************************************************
    
    func setCIToneCurve(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIToneCurve") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputPoint0 = CIVector(x: 0,y: 0)
        filter.setValue(inputPoint0, forKey: "inputPoint0")
        
        let inputPoint1 = CIVector(x: 0.20,y: 0.20)
        filter.setValue(inputPoint1, forKey: "inputPoint1")
        
        let inputPoint2 = CIVector(x: 0.70,y: 0.70)
        filter.setValue(inputPoint2, forKey: "inputPoint2")
        
        let inputPoint3 = CIVector(x: 0.80,y: 0)
        filter.setValue(inputPoint3, forKey: "inputPoint3")
        
        let inputPoint4 = CIVector(x: 0.10,y: 0)
        filter.setValue(inputPoint4, forKey: "inputPoint4")
        
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIVibrance
    //parameter :   inputImage
    //              inputAmount
    //****************************************************************************
    
    func setCIVibrance(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIVibrance") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(50.0, forKey: "inputAmount")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIWhitePointAdjust
    //parameter :   inputImage
    //              inputColor
    //****************************************************************************
    
    func setCIWhitePointAdjust(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIWhitePointAdjust") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let colorRef = UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 0.5).CGColor
        let color = CIColor(CGColor: colorRef)
        
        filter.setValue(color, forKey: "inputColor")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
}
