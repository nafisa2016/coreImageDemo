//
//  TransitionFilters.swift
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

class TransitionFilters: NSObject {
    
    //MARK:- CICategoryTransition filters
    
    //****************************************************************************
    //MARK: Filter: CIAccordionFoldTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputBottomHeight
    //              inputNumberOfFolds
    //              inputFoldShadowAmount
    //              inputTime
    //****************************************************************************
    
    func setCIAccordionFoldTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAccordionFoldTransition") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        filter.setValue(30.0, forKey: "inputBottomHeight")
        filter.setValue(10.0, forKey: "inputNumberOfFolds")
        filter.setValue(3.0, forKey: "inputFoldShadowAmount")
        filter.setValue(0.5, forKey: "inputTime")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIBarsSwipeTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputAngle
    //              inputWidth
    //              inputBarOffset
    //              inputTime
    //****************************************************************************
    
    func setCIBarsSwipeTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIBarsSwipeTransition") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        filter.setValue(3.0, forKey: "inputAngle")
        filter.setValue(40.0, forKey: "inputWidth")
        filter.setValue(13.0, forKey: "inputBarOffset")
        filter.setValue(0.5, forKey: "inputTime")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CICopyMachineTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputExtent
    //              inputColor
    //              inputTime
    //              inputAngle
    //              inputWidth
    //              inputOpacity
    //****************************************************************************
    
    func setCICopyMachineTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CICopyMachineTransition") else{
            print("filter is not available")
            return nil
        }
       
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        let colorRef0 = UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 0.5).CGColor
        let color0 = CIColor(CGColor: colorRef0)
        
        filter.setValue(color0, forKey: "inputColor")
        
        filter.setValue(0.0, forKey: "inputAngle")
        filter.setValue(0.5, forKey: "inputTime")
        filter.setValue(15, forKey: "inputWidth")
        filter.setValue(1.5, forKey: "inputOpacity")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIDisintegrateWithMaskTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputMaskImage
    //              inputTime
    //              inputShadowRadius
    //              inputShadowDensity
    //              inputShadowOffset
    //****************************************************************************
    
    func setCIDisintegrateWithMaskTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDisintegrateWithMaskTransition") else{
            print("filter is not available")
            return nil
        }
       
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "bubbles.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        let  maskImage = UIImage(named: "targetImage.jpg")
        let inputMaskImage = CIImage(image: maskImage!)
        filter.setValue(inputMaskImage, forKey: "inputMaskImage")
        
        filter.setValue(10.0, forKey: "inputShadowRadius")
        filter.setValue(0.0, forKey: "inputShadowDensity")
        filter.setValue(0.5, forKey: "inputTime")
        
        let shadowOffset = CIVector(x: 0, y: -10)
        filter.setValue(shadowOffset, forKey: "inputShadowOffset")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIDissolveTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputTime
    //****************************************************************************
    
    func setCIDissolveTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDissolveTransition") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        filter.setValue(0.5, forKey: "inputTime")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIFlashTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputCenter
    //              inputExtent
    //              inputColor
    //              inputTime
    //              inputMaxStriationRadius
    //              inputStriationStrength
    //              inputStriationContrast
    //              inputFadeThreshold
    //****************************************************************************
    
    func setCIFlashTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIFlashTransition") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        let colorRef0 = UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 0.5).CGColor
        let color0 = CIColor(CGColor: colorRef0)
        filter.setValue(color0, forKey: "inputColor")
        
        filter.setValue(3.5, forKey: "inputMaxStriationRadius")
        filter.setValue(0.5, forKey: "inputStriationStrength")
        filter.setValue(1.5, forKey: "inputStriationContrast")
        filter.setValue(0.5, forKey: "inputFadeThreshold")
        
        filter.setValue(0.5, forKey: "inputTime")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIModTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputCenter
    //              inputTime
    //              inputAngle
    //              inputRadius
    //              inputCompression
    //****************************************************************************
    
    func setCIModTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIModTransition") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        filter.setValue(3.5, forKey: "inputAngle")
        filter.setValue(130.5, forKey: "inputRadius")
        filter.setValue(310.0, forKey: "inputCompression")
        
        filter.setValue(0.5, forKey: "inputTime")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPageCurlTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputBacksideImage
    //              inputShadingImage
    //              inputExtent
    //              inputTime
    //              inputAngle
    //              inputRadius
    //****************************************************************************
    
    func setCIPageCurlTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPageCurlTransition") else{
            print("filter is not available")
            return nil
        }
       
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        let  backsideImage = UIImage(named: "backingImg.jpg")
        let inputBacksideImage = CIImage(image: backsideImage!)
        filter.setValue(inputBacksideImage, forKey: "inputBacksideImage")
        
        let  shadingImage = UIImage(named: "maskImg.jpg")
        let inputShadingImage = CIImage(image: shadingImage!)
        filter.setValue(inputShadingImage, forKey: "inputShadingImage")
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        filter.setValue(130.5, forKey: "inputRadius")
        
        filter.setValue( 0.5, forKey: "inputAngle")
        filter.setValue(0.5, forKey: "inputTime")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPageCurlWithShadowTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputBacksideImage
    //              inputExtent
    //              inputTime
    //              inputAngle
    //              inputRadius
    //              inputShadowSize
    //              inputShadowAmount
    //              inputShadowExtent
    //****************************************************************************
    
    func setCIPageCurlWithShadowTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPageCurlWithShadowTransition") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        let  backsideImage = UIImage(named: "maskImg.jpg")
        let inputBacksideImage = CIImage(image: backsideImage!)
        filter.setValue(inputBacksideImage, forKey: "inputBacksideImage")
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        filter.setValue(130.5, forKey: "inputRadius")
        filter.setValue(0.5, forKey: "inputTime")
        filter.setValue(2.5, forKey: "inputAngle")
        filter.setValue(0.5, forKey: "inputShadowSize")
        filter.setValue(0.5, forKey: "inputShadowAmount")
        
        let inputShadowExtent = CIVector(x: 0, y: 0, z: 1, w: 0)
        filter.setValue(inputShadowExtent, forKey: "inputShadowExtent")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIRippleTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputShadingImage
    //              inputExtent
    //              inputTime
    //              inputCenter
    //              inputWidth
    //              inputScale
    //****************************************************************************
    
    func setCIRippleTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIRippleTransition") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        let  shadingImage = UIImage(named: "maskImg.jpg")
        let inputShadingImage = CIImage(image: shadingImage!)
        filter.setValue(inputShadingImage, forKey: "inputShadingImage")
        
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")        
        
        filter.setValue(0.5, forKey: "inputTime")
        filter.setValue(100.0, forKey: "inputWidth")
        filter.setValue(55.0, forKey: "inputScale")
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISwipeTransition
    //parameter :   inputImage
    //              inputTargetImage
    //              inputExtent
    //              inputColor
    //              inputTime
    //              inputAngle
    //              inputWidth
    //              inputOpacity
    //****************************************************************************
    
    func setCISwipeTransition(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISwipeTransition") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  targetImage = UIImage(named: "targetImage.jpg")
        let inputTargetImage = CIImage(image: targetImage!)
        filter.setValue(inputTargetImage, forKey: "inputTargetImage")
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        let colorRef0 = UIColor(red: 200.0/255.0, green: 100.0/255.0, blue: 100.0/255.0, alpha: 0.5).CGColor
        let color0 = CIColor(CGColor: colorRef0)
        
        filter.setValue(color0, forKey: "inputColor")
        
        filter.setValue(0.0, forKey: "inputAngle")
        filter.setValue(0.5, forKey: "inputTime")
        filter.setValue(15, forKey: "inputWidth")
        filter.setValue(1.5, forKey: "inputOpacity")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    

    
}
