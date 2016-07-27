//
//  ReductionFilter.swift
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

class ReductionFilters: NSObject {
    
    //MARK:- CICategoryReduction filters
    
    //****************************************************************************
    //MARK: Filter: CIAreaAverage
    //parameter :   inputImage
    //              inputExtent
    //****************************************************************************
    
    func setCIAreaAverage(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAreaAverage") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIAreaHistogram
    //parameter :   inputImage
    //              inputExtent
    //              inputCount
    //              inputScale
    //****************************************************************************
    
    func setCIAreaHistogram(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAreaHistogram") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        filter.setValue(10.0, forKey: "inputCount")
        filter.setValue(10.0, forKey: "inputScale")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIRowAverage
    //parameter :   inputImage
    //              inputExtent
    //****************************************************************************
    
    func setCIRowAverage(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIRowAverage") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIColumnAverage
    //parameter :   inputImage
    //              inputExtent
    //****************************************************************************
    
    func setCIColumnAverage(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIColumnAverage") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIHistogramDisplayFilter
    
    //parameter :   inputImage
    //              inputHeight
    //              inputHighLimit
    //              inputLowLimit
    //****************************************************************************
    
    func setCIHistogramDisplayFilter(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIHistogramDisplayFilter") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let extent = inputImg.extent
        filter.setValue(extent.size.height, forKey: "inputHeight")
        filter.setValue(1.0, forKey: "inputHighLimit")
        filter.setValue(0.0, forKey: "inputLowLimit")
        
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIAreaMaximum
    //parameter :   inputImage
    //              inputExtent
    //****************************************************************************
    
    func setCIAreaMaximum(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAreaMaximum") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        
        //returns 1 pixel image
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIAreaMinimum
    //parameter :   inputImage
    //              inputExtent
    //****************************************************************************
    
    func setCIAreaMinimum(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAreaMinimum") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        //returns 1 pixel image
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIAreaMaximumAlpha
    //parameter :   inputImage
    //              inputExtent
    //****************************************************************************
    
    func setCIAreaMaximumAlpha(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAreaMaximumAlpha") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        
        //returns 1 pixel image
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }
        
        return output
    }
    
    //****************************************************************************
    //MARK: Filter: CIAreaMinimumAlpha
    //parameter :   inputImage
    //              inputExtent
    //****************************************************************************
    
    func setCIAreaMinimumAlpha(inputImg : CIImage)-> CIImage? {
        
        guard let filter = CIFilter(name: "CIAreaMinimumAlpha") else{
            print("filter is not available")
            return nil
        }
        
        filter.setValue(inputImg, forKey: kCIInputImageKey)
        
        let extent = inputImg.extent
        let inputExtent = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.size.width, w: extent.size.height)
        filter.setValue(inputExtent, forKey: "inputExtent")
        
        //returns 1 pixel image
        guard let output = filter.outputImage where filter.outputImage != nil else{
            return nil
        }        
        
        return output
    }
    
}
