//
//  StylizeFilters.swift
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

class StylizeFilters: NSObject {
    
    //MARK:- CICategoryStylize filters
    
    //****************************************************************************
    //MARK: Filter: CIBlendWithAlphaMask
    //parameter :   inputImage
    //              inputBackgroundImage
    //              inputMaskImage
    //****************************************************************************
    
    func setCIBlendWithAlphaMask(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIBlendWithAlphaMask") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        let  maskImage = UIImage(named: "maskImg.jpg")
        let inputMaskImage = CIImage(image: maskImage!)
        filter.setValue(inputMaskImage, forKey: "inputMaskImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIBlendWithMask
    //parameter :   inputImage
    //              inputBackgroundImage
    //              inputMaskImage
    //****************************************************************************
    
    func setCIBlendWithMask(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIBlendWithMask") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        let  maskImage = UIImage(named: "maskImg.jpg")
        let inputMaskImage = CIImage(image: maskImage!)
        filter.setValue(inputMaskImage, forKey: "inputMaskImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIBloom
    //parameter :   inputImage
    //              inputRadius
    //              inputIntensity
    //****************************************************************************
    
    func setCIBloom(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIBloom") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(20.0, forKey: "inputRadius")
        filter.setValue(0.8, forKey: "inputIntensity")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIComicEffect
    //parameter :   inputImage
    //****************************************************************************
    
    func setCIComicEffect(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIComicEffect") else{
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
    //MARK: Filter: CIConvolution3X3
    //parameter :   inputImage
    //              inputWeights
    //              inputBias
    //****************************************************************************
    
    func setCIConvolution3X3(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIConvolution3X3") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let values : [CGFloat] = [  1.0,0.0,
            -1.0,2.0,0.0,
            -2.0,1.0,0.0,-1.0]
        let inputWeights = CIVector(values: values, count: values.count)
        
        filter.setValue(inputWeights, forKey: "inputWeights")
        filter.setValue(0.5, forKey: "inputBias")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIConvolution5X5
    //parameter :   inputImage
    //              inputWeights
    //              inputBias
    //****************************************************************************
    
    func setCIConvolution5X5(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIConvolution5X5") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let values : [CGFloat] = [  0.5,0.0,0.0,0.0,0.0,
            0.0,0.0,0.0,0.0,0.0,
            0.0,0.0,0.0,0.0,0.0,
            0.0,0.0,0.0,0.0,0.0,
            0.0,0.0,0.0,0.0,0.5]
        let inputWeights = CIVector(values: values, count: values.count)
        
        filter.setValue(inputWeights, forKey: "inputWeights")
        filter.setValue(0.5, forKey: "inputBias")
        
        
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIConvolution7X7
    //parameter :   inputImage
    //              inputWeights
    //              inputBias
    //****************************************************************************
    
    func setCIConvolution7X7(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIConvolution7X7") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let values : [CGFloat] = [  0.0,0.0,-1.0,-1.0,-1.0,0.0,0.0,
            0.0,-1.0,-3.0,-3.0,-3.0,-1.0,0.0,
            -1.0,-3.0,0.0,7.0,0.0,-3.0,-1.0,
            -1.0,-3.0,7.0,25.0,7.0,-3.0,-1.0,
            -1.0,-3.0,0.0,7.0,0.0,-3.0,-1.0,
            0.0,-1.0,-3.0,-3.0,-3.0,-1.0,0.0,
            0.0,0.0,-1.0,-1.0,-1.0,0.0,0.0]
        
        let inputWeights = CIVector(values: values, count: values.count)
        
        filter.setValue(inputWeights, forKey: "inputWeights")
        filter.setValue(0.5, forKey: "inputBias")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIConvolution9Horizontal
    //parameter :   inputImage
    //              inputWeights
    //              inputBias
    //****************************************************************************
    
    func setCIConvolution9Horizontal(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIConvolution9Horizontal") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let values : [CGFloat] = [1, -1, 1, 0, 1, 0, -1, 1, -1]
        let inputWeights = CIVector(values: values, count: values.count)
        
        filter.setValue(inputWeights, forKey: "inputWeights")
        filter.setValue(0.5, forKey: "inputBias")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIConvolution9Vertical
    //parameter :   inputImage
    //              inputWeights
    //              inputBias
    //****************************************************************************
    
    func setCIConvolution9Vertical(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIConvolution9Vertical") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let values : [CGFloat] = [1, -1, 1, 0, 1, 0, -1, 1, -1]
        let inputWeights = CIVector(values: values, count: values.count)
        
        filter.setValue(inputWeights, forKey: "inputWeights")
        filter.setValue(0.5, forKey: "inputBias")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CICrystallize
    //parameter :   inputImage
    //              inputRadius
    //              inputCenter
    //****************************************************************************
    
    func setCICrystallize(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CICrystallize") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(25.0, forKey: "inputRadius")
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIDepthOfField
    //parameter :   inputImage
    //              inputPoint0
    //              inputPoint1
    //              inputSaturation
    //              inputUnsharpMaskRadius
    //              inputUnsharpMaskIntensity
    //              inputRadius
    //****************************************************************************
    
    func setCIDepthOfField(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDepthOfField") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(5.0, forKey: "inputRadius")
        filter.setValue(2.0, forKey: "inputSaturation")
        filter.setValue(4.0, forKey: "inputUnsharpMaskRadius")
        filter.setValue(2.0, forKey: "inputUnsharpMaskIntensity")
        
        let inputCenter0 = CIVector(x: 15, y: 15)
        filter.setValue(inputCenter0, forKey: "inputPoint0")
        
        let inputCenter1 = CIVector(x: 20, y: 20)
        filter.setValue(inputCenter1, forKey: "inputPoint1")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIEdges
    //parameter :   inputImage
    //              inputIntensity
    //****************************************************************************
    
    func setCIEdges(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIEdges") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(2.0, forKey: "inputIntensity")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIEdgeWork
    //parameter :   inputImage
    //              inputRadius
    //****************************************************************************
    
    func setCIEdgeWork(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIEdgeWork") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(3.0, forKey: "inputRadius")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIGloom
    //parameter :   inputImage
    //              inputRadius
    //              inputIntensity
    //****************************************************************************
    
    func setCIGloom(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIGloom") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(3.0, forKey: "inputRadius")
        filter.setValue(2.0, forKey: "inputIntensity")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIHeightFieldFromMask
    //parameter :   inputImage
    //              inputRadius
    //****************************************************************************
    
    func setCIHeightFieldFromMask(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIHeightFieldFromMask") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(13.0, forKey: "inputRadius")
        
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIHexagonalPixellate
    //parameter :   inputImage
    //              inputCenter
    //              inputScale
    //****************************************************************************
    
    func setCIHexagonalPixellate(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIHexagonalPixellate") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(13.0, forKey: "inputScale")
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIHighlightShadowAdjust
    //parameter :   inputImage
    //              inputHighlightAmount
    //              inputShadowAmount
    //****************************************************************************
    
    func setCIHighlightShadowAdjust(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIHighlightShadowAdjust") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        filter.setValue(13.0, forKey: "inputHighlightAmount")
        filter.setValue(1.0, forKey: "inputShadowAmount")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILineOverlay
    //parameter :   inputImage
    //              inputNRNoiseLevel
    //              inputNRSharpness
    //              inputEdgeIntensity
    //              inputThreshold
    //              inputContrast
    //****************************************************************************
    
    func setCILineOverlay(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CILineOverlay") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        filter.setValue(0.07, forKey: "inputNRNoiseLevel")
        filter.setValue(0.7, forKey: "inputNRSharpness")
        filter.setValue(2.5, forKey: "inputEdgeIntensity")
        filter.setValue(0.0, forKey: "inputThreshold")
        filter.setValue(1.5, forKey: "inputContrast")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPixellate
    //parameter :   inputImage
    //              inputCenter
    //              inputScale
    //****************************************************************************
    
    func setCIPixellate(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPixellate") else{
            print("filter is not available")
            return nil
        }
       
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(13.0, forKey: "inputScale")
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPointillize
    //parameter :   inputImage
    //              inputRadius
    //              inputCenter
    //****************************************************************************
    
    func setCIPointillize(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPointillize") else{
            print("filter is not available")
            return nil
        }
        
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        filter.setValue(13.0, forKey: "inputRadius")
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIShadedMaterial
    //parameter :   inputImage
    //              inputShadingImage
    //              inputScale
    //****************************************************************************
    func setCIShadedMaterial(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIShadedMaterial") else{
            print("filter is not available")
            return nil
        }
       
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  shadingImage = UIImage(named: "icon.jpg")
        let inputShadingImage = CIImage(image: shadingImage!)
        filter.setValue(inputShadingImage, forKey: "inputShadingImage")
        
        filter.setValue(13.0, forKey: "inputScale")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISpotColor
    //parameter :   inputImage
    //              inputCenterColor1
    //              inputReplacementColor1
    //              inputCloseness1
    //              inputContrast1
    //              inputCenterColor2
    //              inputReplacementColor2
    //              inputCloseness2
    //              inputContrast2
    //              inputCenterColor3
    //              inputReplacementColor3
    //              inputCloseness3
    //              inputContrast3
    //****************************************************************************
    
    func setCISpotColor(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISpotColor") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let colorRef1 = UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 1.0).CGColor
        let color1 = CIColor(CGColor: colorRef1)
        filter.setValue(color1, forKey: "inputCenterColor1")
        
        let replColorRef1 = UIColor(red: 100.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 1.0).CGColor
        let repColor1 = CIColor(CGColor: replColorRef1)
        filter.setValue(repColor1, forKey: "inputReplacementColor1")
        
        filter.setValue(0.22, forKey: "inputCloseness1")
        filter.setValue(0.98, forKey: "inputContrast1")
        
        let colorRef2 = UIColor(red: 100.0/255.0, green: 200.0/255.0, blue: 100.0/255.0, alpha: 1.0).CGColor
        let color2 = CIColor(CGColor: colorRef2)
        filter.setValue(color2, forKey: "inputCenterColor2")
        
        let replColorRef2 = UIColor(red: 100.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 1.0).CGColor
        let repColor2 = CIColor(CGColor: replColorRef2)
        filter.setValue(repColor2, forKey: "inputReplacementColor2")
        
        filter.setValue(0.15, forKey: "inputCloseness2")
        filter.setValue(0.98, forKey: "inputContrast2")
        
        let colorRef3 = UIColor(red: 90.0/255.0, green: 200.0/255.0, blue: 200.0/255.0, alpha: 1.0).CGColor
        let color3 = CIColor(CGColor: colorRef3)
        filter.setValue(color3, forKey: "inputCenterColor3")
        
        let replColorRef3 = UIColor(red: 100.0/255.0, green: 150.0/255.0, blue: 100.0/255.0, alpha: 1.0).CGColor
        let repColor3 = CIColor(CGColor: replColorRef3)
        filter.setValue(repColor3, forKey: "inputReplacementColor3")
        filter.setValue(0.55, forKey: "inputCloseness3")
        filter.setValue(0.99, forKey: "inputContrast3")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISpotLight
    //parameter :   inputImage
    //              inputLightPosition
    //              inputLightPointsAt
    //              inputBrightness
    //              inputConcentration
    //              inputColor
    //****************************************************************************
    
    func setCISpotLight(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISpotLight") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let inputLightPosition = CIVector(x: 400, y: 600, z: 150)
        filter.setValue(inputLightPosition, forKey: "inputLightPosition")
        
        let inputLightPointsAt = CIVector(x: 200, y: 200, z: 1)
        filter.setValue(inputLightPointsAt, forKey: "inputLightPointsAt")
        
        filter.setValue(3.0, forKey: "inputBrightness")
        filter.setValue(0.10, forKey: "inputConcentration")
        
        let colorRef0 = UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 1.0).CGColor
        let color0 = CIColor(CGColor: colorRef0)
        filter.setValue(color0, forKey: "inputColor")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
}
