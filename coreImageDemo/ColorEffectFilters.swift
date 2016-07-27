//
//  CICategoryColorEffect.swift
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

class ColorEffectFilters: NSObject {
    
    //MARK:- CICategoryColorEffect filters
    
    //****************************************************************************
    //MARK: Filter:     CIColorCrossPolynomial
    //Parameters:       inputImage
    //                  inputRedCoefficients
    //                  inputGreenCoefficients
    //                  inputBlueCoefficients
    //****************************************************************************
    
    func setCIColorCrossPolynomial(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorCrossPolynomial") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let floatValues: [CGFloat] = [1,0.5,1,0,0,0,0,0,0]
        let vector = CIVector(values: floatValues, count: floatValues.count)
        
        filter.setValue(vector, forKey: "inputRedCoefficients")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
        
    }
    
    //****************************************************************************
    //MARK: Filter: CIColorCube
    //Parameters:   inputImage
    //              inputCubeDimension
    //              inputCubeData
    //****************************************************************************
    
    func setCIColorCube(inputImg : CIImage)-> CIImage? {
        
        
        let size    =  64
        
        guard let filter = CIFilter(name: "CIColorCube") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        var cubeData = [Float](count: size * size * size * 4, repeatedValue: 1.0)
        
        for  i in 0..<size * size * size    {
            
            let index = i % 4
            if index == 0{
                cubeData[i ] = 1.0
                cubeData[i + 1] = 0.1
                cubeData[i + 2] = 0.1
                cubeData[i + 3] = 1.0
                
            }
        }
        
        // print(cubeData)
        
        let data = NSData(bytes: cubeData, length: cubeData.count * sizeof(Float))
        
        
        filter.setValue(data, forKey: "inputCubeData")
        filter.setValue(size, forKey: "inputCubeDimension")
        
        guard let output = filter.outputImage  where filter.outputImage != nil  else{
            return nil
        }
        
        return output
        
    }
    
    //****************************************************************************
    //MARK: Filter:     CIColorCubeWithColorSpace
    //Parameter :       inputImage
    //                  inputCubeDimension
    //                  inputCubeData
    //                  inputColorSpace
    //****************************************************************************
    
    func setCIColorCubeWithColorSpace(inputImg : CIImage)-> CIImage? {
        
        let size    =  64
        
        guard let filter = CIFilter(name: "CIColorCubeWithColorSpace") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        var cubeData = [Float](count: size * size * size * 4, repeatedValue: 1.0)
        
        for  i in 0..<size * size * size    {
            
            let index = i % 4
            if index == 0{
                cubeData[i ] = 0.5
                cubeData[i + 1] = 0.5
                cubeData[i + 2] = 1.0
                cubeData[i + 3] = 1.0
                
            }
        }
        
        
        let colorSpace : CGColorSpaceRef = CGColorSpaceCreateDeviceRGB()!
        
        // print(cubeData)
        
        let data = NSData(bytes: cubeData, length: cubeData.count * sizeof(Float))
        
        
        filter.setValue(data, forKey: "inputCubeData")
        filter.setValue(size, forKey: "inputCubeDimension")
        filter.setValue(colorSpace, forKey: "inputColorSpace")
        
        guard let output = filter.outputImage  where filter.outputImage != nil  else{
            return nil
        }
        
        return output
        
    }
    
    //****************************************************************************
    //MARK: Filter:     CIPhotoEffectMono
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIPhotoEffectMono(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPhotoEffectMono") else{
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
    //MARK: Filter: CISepiaTone
    //parameter :   intensity
    //****************************************************************************
    
    func setCISepiaTone(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISepiaTone") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(2.5, forKey: kCIInputIntensityKey)
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIVignette
    //parameter :   inputRadius
    //              inputIntensity
    //****************************************************************************
    
    func setCIVignette(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIVignette") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: "inputIntensity")
        filter.setValue(2.5, forKey: "inputRadius")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIVignetteEffect
    //parameter :   inputImage
    //              inputCenter
    //              inputIntensity
    //              inputRadius
    //****************************************************************************
    
    func setCIVignetteEffect(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIVignetteEffect") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        filter.setValue(0.6, forKey: "inputIntensity")
        filter.setValue(0.5, forKey: "inputRadius")
        
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIColorInvert
    //parameter :   inputImage
    //****************************************************************************
    
    func setCIColorInvert(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorInvert") else{
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
    //MARK: Filter: CIColorMap
    //parameter :   inputGradientImage
    //****************************************************************************
    
    func setCIColorMap(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorMap") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(inputImg, forKey: "inputGradientImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIColorMonochrome
    //parameter :   intensity
    //****************************************************************************
    
    func setCIColorMonochrome(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorMonochrome") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(1, forKey: kCIInputIntensityKey)
        
        let colorRef = UIColor.blueColor().CGColor
        let color = CIColor(CGColor: colorRef)
        filter.setValue(color, forKey: "inputColor")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter:     CIColorPosterize
    //parameter :       inputLevels
    //****************************************************************************
    
    func setCIColorPosterize(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorPosterize") else{
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
    //MARK: Filter:     CIFalseColor
    //Parameter :       inputImage
    //                  inputColor0
    //                  inputColor1
    //****************************************************************************
    
    func setCIFalseColor(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIFalseColor") else{
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
    //MARK: Filter:     CIMaskToAlpha
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIMaskToAlpha(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIMaskToAlpha") else{
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
    //MARK: Filter:     CIMaximumComponent
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIMaximumComponent(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIMaximumComponent") else{
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
    //MARK: Filter:     CIMinimumComponent
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIMinimumComponent(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIMinimumComponent") else{
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
    //MARK: Filter:     CIPhotoEffectChrome
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIPhotoEffectChrome(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPhotoEffectChrome") else{
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
    //MARK: Filter:     CIPhotoEffectFade
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIPhotoEffectFade(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPhotoEffectFade") else{
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
    //MARK: Filter:     CIPhotoEffectInstant
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIPhotoEffectInstant(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPhotoEffectInstant") else{
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
    //MARK: Filter:     CIPhotoEffectNoir
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIPhotoEffectNoir(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPhotoEffectNoir") else{
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
    //MARK: Filter:     CIPhotoEffectProcess
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIPhotoEffectProcess(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPhotoEffectProcess") else{
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
    //MARK: Filter:     CIPhotoEffectTonal
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIPhotoEffectTonal(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPhotoEffectTonal") else{
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
    //MARK: Filter:     CIPhotoEffectTransfer
    //Parameter :       inputImage
    //****************************************************************************
    
    func setCIPhotoEffectTransfer(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPhotoEffectTransfer") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
}
