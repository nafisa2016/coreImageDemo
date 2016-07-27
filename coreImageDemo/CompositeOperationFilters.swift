//
//  CompositeOperationFilters.swift
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

class CompositeOperationFilters: NSObject {
    
    //MARK:- CICategoryCompositeOperation filters
    
    //****************************************************************************
    //MARK: Filter: CIAdditionCompositing
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIAdditionCompositing(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAdditionCompositing") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "backingImg.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIColorBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIColorBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "backingImg.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIColorBurnBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIColorBurnBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorBurnBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "maskImg.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIColorDodgeBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIColorDodgeBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColorDodgeBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
     
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIDarkenBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIDarkenBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDarkenBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
        
    }
    
    //****************************************************************************
    //MARK: Filter: CIDifferenceBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIDifferenceBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDifferenceBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
        
    }
    
    //****************************************************************************
    //MARK: Filter: CIDivideBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIDivideBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIDivideBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIExclusionBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIExclusionBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIExclusionBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIHardLightBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIHardLightBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIHardLightBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIHueBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIHueBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIHueBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILightenBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCILightenBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CILightenBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILinearBurnBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCILinearBurnBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CILinearBurnBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILinearDodgeBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCILinearDodgeBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CILinearDodgeBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILuminosityBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCILuminosityBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CILuminosityBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIMaximumCompositing
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIMaximumCompositing(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIMaximumCompositing") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIMinimumCompositing
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIMinimumCompositing(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIMinimumCompositing") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIMultiplyBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIMultiplyBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIMultiplyBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIMultiplyCompositing
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIMultiplyCompositing(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIMultiplyCompositing") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIOverlayBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIOverlayBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIOverlayBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPinLightBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIPinLightBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPinLightBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISaturationBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCISaturationBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISaturationBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIScreenBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCIScreenBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIScreenBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISoftLightBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCISoftLightBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISoftLightBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output        
    }
    
    //****************************************************************************
    //MARK: Filter: CISourceAtopCompositing
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCISourceAtopCompositing(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISourceAtopCompositing") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "maskImg.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISourceInCompositing
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCISourceInCompositing(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISourceInCompositing") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "maskImg.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISourceOutCompositing
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCISourceOutCompositing(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISourceOutCompositing") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "maskImg.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISourceOverCompositing
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCISourceOverCompositing(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISourceOverCompositing") else{
            print("filter is not available")
            return nil
        }
        
        let  topImage = UIImage(named: "maskImg.jpg")
        let inputTopImage = CIImage(image: topImage!)
        filter.setValue(inputTopImage, forKey: kCIInputImageKey)
        
        filter.setValue(inputImg, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISubtractBlendMode
    //parameter :   inputImage
    //              inputBackgroundImage
    //****************************************************************************
    
    func setCISubtractBlendMode(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CISubtractBlendMode") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let  backgroundImage = UIImage(named: "targetImage.jpg")
        let inputBackgroundImage = CIImage(image: backgroundImage!)
        filter.setValue(inputBackgroundImage, forKey: "inputBackgroundImage")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
}
