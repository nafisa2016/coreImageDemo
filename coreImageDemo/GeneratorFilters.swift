//
//  GeneratorFilters.swift
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

class GeneratorFilters: NSObject {
    
    //MARK:- CICategoryGenerator filters
    
    //****************************************************************************
    //MARK: Filter: CIAztecCodeGenerator
    //parameter :   inputMessage
    //              inputCorrectionLevel
    //              inputLayers
    //              inputCompactStyle
    //****************************************************************************
    
    func setCIAztecCodeGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAztecCodeGenerator") else{
            print("filter is not available")
            return nil
        }
        
        let stringData = "Hello"
        let inputMessage: NSData = stringData.dataUsingEncoding(NSUTF8StringEncoding)!
        filter.setValue(inputMessage, forKey: "inputMessage")
        
        filter.setValue(25.0, forKey: "inputCorrectionLevel")
        filter.setValue(1.0, forKey: "inputLayers")
        filter.setValue(1.0, forKey: "inputCompactStyle")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CICheckerboardGenerator
    //parameter :   inputCenter
    //              inputColor0
    //              inputColor1
    //              inputWidth
    //              inputSharpness
    //****************************************************************************
    
    func setCICheckerboardGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CICheckerboardGenerator") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(CIVector(x: 30.0, y: 20.0), forKey: "inputCenter")
        
        let colorRef0 = UIColor.blackColor().CGColor
        let color0 = CIColor(CGColor: colorRef0)
        
        filter.setValue(color0, forKey: "inputColor0")
        
        let colorRef1 = UIColor.blueColor().CGColor
        let color1 = CIColor(CGColor: colorRef1)
        
        filter.setValue(color1, forKey: "inputColor1")
        
        filter.setValue(25.0, forKey: "inputWidth")
        filter.setValue(1.0, forKey: "inputSharpness")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CICode128BarcodeGenerator
    //parameter :   inputMessage
    //              inputQuietSpace
    //****************************************************************************
    
    func setCICode128BarcodeGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CICode128BarcodeGenerator") else{
            print("filter is not available")
            return nil
        }
        
        let stringData = "Hello"
        let inputMessage: NSData = stringData.dataUsingEncoding(NSUTF8StringEncoding)!
        filter.setValue(inputMessage, forKey: "inputMessage")
        filter.setValue(25.0, forKey: "inputQuietSpace")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIConstantColorGenerator
    //parameter :   inputColor
    //****************************************************************************
    
    func setCIConstantColorGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CIConstantColorGenerator") else{
            print("filter is not available")
            return nil
        }
        
        let colorRef = UIColor.blueColor().CGColor
        let color = CIColor(CGColor: colorRef)
        
        filter.setValue(color, forKey: "inputColor")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CILenticularHaloGenerator
    //parameter :   inputCenter
    //              inputColor
    //              inputHaloRadius
    //              inputHaloWidth
    //              inputHaloOverlap
    //              inputStriationStrength
    //              inputStriationContrast
    //              inputTime
    //****************************************************************************
    
    func setCILenticularHaloGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CILenticularHaloGenerator") else{
            print("filter is not available")
            return nil
        }
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        let colorRef = UIColor.blueColor().CGColor
        let color = CIColor(CGColor: colorRef)
        filter.setValue(color, forKey: "inputColor")
        
        filter.setValue(95.0, forKey: "inputHaloRadius")
        filter.setValue(82.0, forKey: "inputHaloWidth")
        filter.setValue(0.4, forKey: "inputHaloOverlap")
        filter.setValue(1.0, forKey: "inputStriationContrast")
        filter.setValue(0.5, forKey: "inputStriationStrength")
        filter.setValue(0.4, forKey: "inputTime")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIPDF417BarcodeGenerator
    //parameter :   inputMessage
    //              inputMinWidth
    //              inputMaxWidth
    //              inputMinHeight
    //              inputMaxHeight
    //              inputDataColumns
    //              inputRows
    //              inputPreferredAspectRatio
    //              inputCompactionMode
    //              inputCompactStyle
    //              inputCorrectionLevel
    //              inputAlwaysSpecifyCompaction
    //****************************************************************************
    
    func setCIPDF417BarcodeGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CIPDF417BarcodeGenerator") else{
            print("filter is not available")
            return nil
        }
        
        let stringData = "H"
        let inputMessage: NSData = stringData.dataUsingEncoding(NSISOLatin1StringEncoding)!
        filter.setValue(inputMessage, forKey: "inputMessage")
        filter.setDefaults()
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output

    }
    
    //****************************************************************************
    //MARK: Filter: CIQRCodeGenerator
    //parameter :   inputMessage
    //              inputCorrectionLevel
    //****************************************************************************
    
    func setCIQRCodeGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CIQRCodeGenerator") else{
            print("filter is not available")
            return nil
        }
        
        let stringData = "Hello"
        let inputMessage: NSData = stringData.dataUsingEncoding(NSUTF8StringEncoding)!
        filter.setValue(inputMessage, forKey: "inputMessage")
        
        filter.setValue("H", forKey: "inputCorrectionLevel")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output

    }
    
    //****************************************************************************
    //MARK: Filter: CIRandomGenerator
    //****************************************************************************
    
    func setCIRandomGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CIRandomGenerator") else{
            print("filter is not available")
            return nil
        }
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIStarShineGenerator
    //parameter :   inputCenter
    //              inputColor
    //              inputRadius
    //              inputCrossScale
    //              inputCrossAngle
    //              inputCrossOpacity
    //              inputCrossWidth
    //              inputEpsilon
    //****************************************************************************
    
    func setCIStarShineGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CIStarShineGenerator") else{
            print("filter is not available")
            return nil
        }
        
        let inputCenter = CIVector(x: 150, y: 150)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        let colorRef = UIColor.blueColor().CGColor
        let color = CIColor(CGColor: colorRef)
        filter.setValue(color, forKey: "inputColor")
        
        filter.setValue(5.0, forKey: "inputRadius")
        filter.setValue(12.0, forKey: "inputCrossScale")
        filter.setValue(0.4, forKey: "inputCrossAngle")
        filter.setValue(-1.0, forKey: "inputCrossOpacity")
        filter.setValue(3.5, forKey: "inputCrossWidth")
        filter.setValue(-1.4, forKey: "inputEpsilon")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIStripesGenerator
    //parameter :   inputCenter
    //              inputColor
    //              inputColor1
    //              inputWidth
    //              inputSharpness
    //****************************************************************************
    
    func setCIStripesGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CIStripesGenerator") else{
            print("filter is not available")
            return nil
        }
        
        let inputCenter = CIVector(x: 15, y: 15)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        let colorRef0 = UIColor.blueColor().CGColor
        let color0 = CIColor(CGColor: colorRef0)
        filter.setValue(color0, forKey: "inputColor0")
        
        let colorRef1 = UIColor.redColor().CGColor
        let color1 = CIColor(CGColor: colorRef1)
        filter.setValue(color1, forKey: "inputColor1")
        
        
        filter.setValue(5.0, forKey: "inputWidth")
        filter.setValue(1.0, forKey: "inputSharpness")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CISunbeamsGenerator
    //parameter :   inputCenter
    //              inputColor
    //              inputSunRadius
    //              inputMaxStriationRadius
    //              inputStriationStrength
    //              inputStriationContrast
    //              inputTime
    //****************************************************************************
    
    func setCISunbeamsGenerator()-> CIImage? {
        
        guard let filter = CIFilter(name: "CISunbeamsGenerator") else{
            print("filter is not available")
            return nil
        }
        
        let inputCenter = CIVector(x: 15, y: 15)
        filter.setValue(inputCenter, forKey: "inputCenter")
        
        let colorRef = UIColor.blueColor().CGColor
        let color = CIColor(CGColor: colorRef)
        filter.setValue(color, forKey: "inputColor")
        
        filter.setValue(10.0, forKey: "inputSunRadius")
        filter.setValue(2.0, forKey: "inputMaxStriationRadius")
        filter.setValue(0.4, forKey: "inputStriationStrength")
        filter.setValue(1.4, forKey: "inputStriationContrast")
        filter.setValue(0.5, forKey: "inputTime")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
}
