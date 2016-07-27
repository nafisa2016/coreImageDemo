//
//  ProcessSelection.swift
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

class ProcessSelection{
    
    //MARK:- properties
    //MARK:  filter declarations
    let gradientFilters = GradientFilters()
    let halftoneEffectFilters = HalftoneEffectFilters()
    let reductionFilters    = ReductionFilters()
    let sharpenFilters = SharpenFilters()
    let geometryAdjustmentFilters = GeometryAdjustmentFilters()
    
    let blurFilters = BlurFilters()
    let colorEffectFilters = ColorEffectFilters()
    let colorAdjustmentFilters = ColorAdjustmentFilters()
    let compositeOperationFilters = CompositeOperationFilters()
    let distortionEffectFilters = DistortionEffectFilters()
    
    let generatorFilters = GeneratorFilters()
    let stylizeFilters = StylizeFilters()
    let tileEffectFilters = TileEffectFilters()
    let transitionFilters = TransitionFilters()
    
    //MARK:- methods
    
    //apply filter
    func applyFilters(choice : String, originalImage : CIImage) -> CIImage?{
        
        var newImage : CIImage? = originalImage
        
        switch(choice){
            
            //MARK:- Color Effect filters
            //MARK: CIColorCrossPolynomial
        case "CIColorCrossPolynomial":
            newImage = colorEffectFilters.setCIColorCrossPolynomial(originalImage)
            
            //MARK: CIColorCube
        case "CIColorCube":
            newImage = colorEffectFilters.setCIColorCube(originalImage)
            
            //MARK: CIColorCubeWithColorSpace
        case "CIColorCubeWithColorSpace":
            newImage = colorEffectFilters.setCIColorCubeWithColorSpace(originalImage)
            
            //MARK: CIPhotoEffectMono
        case "CIPhotoEffectMono":
            newImage = colorEffectFilters.setCIPhotoEffectMono(originalImage)
            
            //MARK: CISepiaTone
        case "CISepiaTone":
            newImage = colorEffectFilters.setCISepiaTone(originalImage)
            
            //MARK: CIColorMonochrome
        case "CIColorMonochrome":
            newImage = colorEffectFilters.setCIColorMonochrome(originalImage)
            
            //MARK: CIColorPosterize
        case "CIColorPosterize":
            newImage = colorEffectFilters.setCIColorPosterize(originalImage)
            
            //MARK: CIColorInvert
        case "CIColorInvert":
            newImage = colorEffectFilters.setCIColorInvert(originalImage)
            
            //MARK: CIColorMap
        case "CIColorMap":
            newImage = colorEffectFilters.setCIColorMap(originalImage)

            //MARK: CIVignetteEffect
        case "CIVignetteEffect":
            newImage = colorEffectFilters.setCIVignetteEffect(originalImage)

            //MARK: CIVignette
        case "CIVignette":
            newImage = colorEffectFilters.setCIVignette(originalImage)
            
            //MARK: CIPhotoEffectTransfer
        case "CIPhotoEffectTransfer":
            newImage = colorEffectFilters.setCIPhotoEffectTransfer(originalImage)
            
            //MARK: CIPhotoEffectTonal
        case "CIPhotoEffectTonal":
            newImage = colorEffectFilters.setCIPhotoEffectTonal(originalImage)

            //MARK: CIPhotoEffectProcess
        case "CIPhotoEffectProcess":
            newImage = colorEffectFilters.setCIPhotoEffectProcess(originalImage)
            
            //MARK: CIPhotoEffectNoir
        case "CIPhotoEffectNoir":
            newImage = colorEffectFilters.setCIPhotoEffectNoir(originalImage)
            
            //MARK: CIPhotoEffectInstant
        case "CIPhotoEffectInstant":
            newImage = colorEffectFilters.setCIPhotoEffectInstant(originalImage)
            
            //MARK: CIPhotoEffectFade
        case "CIPhotoEffectFade":
            newImage = colorEffectFilters.setCIPhotoEffectFade(originalImage)

            //MARK: CIPhotoEffectChrome
        case "CIPhotoEffectChrome":
            newImage = colorEffectFilters.setCIPhotoEffectChrome(originalImage)
            
            //MARK: CIMinimumComponent
        case "CIMinimumComponent":
            newImage = colorEffectFilters.setCIMinimumComponent(originalImage)
            
            //MARK: CIMaximumComponent
        case "CIMaximumComponent":
            newImage = colorEffectFilters.setCIMaximumComponent(originalImage)

            //MARK: CIMaskToAlpha
        case "CIMaskToAlpha":
            newImage = colorEffectFilters.setCIMaskToAlpha(originalImage)

            //MARK: CIFalseColor
        case "CIFalseColor":
            newImage = colorEffectFilters.setCIFalseColor(originalImage)

            
            
            
            //MARK:- Blur filters
            //MARK: CIBoxBlur
        case "CIBoxBlur":
            newImage = blurFilters.setCIBoxBlur(originalImage)
            
            //MARK: CIDiscBlur
        case "CIDiscBlur":
            newImage = blurFilters.setCIDiscBlur(originalImage)
            
            //MARK: CIGaussianBlur
        case "CIGaussianBlur":
            newImage = blurFilters.setCIGaussianBlur(originalImage)            
            
            //MARK: CIMedianFilter
        case "CIMedianFilter":
            newImage = blurFilters.setCIMedianFilter(originalImage)
            
            //MARK: CIMotionBlur
        case "CIMotionBlur":
            newImage = blurFilters.setCIMotionBlur(originalImage)
            
            //MARK: CINoiseReduction
        case "CINoiseReduction":
            newImage = blurFilters.setCINoiseReduction(originalImage)
            
            //MARK: CIZoomBlur
        case "CIZoomBlur":
            newImage = blurFilters.setCIZoomBlur(originalImage)
            
            
            
            
            
            
            //MARK:- Gradient filters
            //MARK: CIGaussianGradient
        case "CIGaussianGradient":
            newImage = gradientFilters.setCIGaussianGradient()
            
            //MARK: CILinearGradient
        case "CILinearGradient":
            newImage = gradientFilters.setCILinearGradient()
            
            //MARK: CIRadialGradient
        case "CIRadialGradient":
            newImage = gradientFilters.setCIRadialGradient()
            
            //MARK: CISmoothLinearGradient
        case "CISmoothLinearGradient":
            newImage = gradientFilters.setCISmoothLinearGradient()
            
            
            
            //MARK:- Geometry Adjustment filters
            //MARK: CIAffineTransform
        case "CIAffineTransform":
            newImage = geometryAdjustmentFilters.setCIAffineTransform(originalImage)
            
            //MARK: CICrop
        case "CICrop":
            newImage = geometryAdjustmentFilters.setCICrop(originalImage)
            
            //MARK: CIStraightenFilter
        case "CIStraightenFilter":
            newImage = geometryAdjustmentFilters.setCIStraightenFilter(originalImage)
            
            //MARK: CILanczosScaleTransform
        case "CILanczosScaleTransform":
            newImage = geometryAdjustmentFilters.setCILanczosScaleTransform(originalImage)
            
            //MARK: CIPerspectiveCorrection
        case "CIPerspectiveCorrection":
            newImage = geometryAdjustmentFilters.setCIPerspectiveCorrection(originalImage)
            
            //MARK: CIPerspectiveTransform
        case "CIPerspectiveTransform":
            newImage = geometryAdjustmentFilters.setCIPerspectiveTransform(originalImage)
            
            //MARK: CIPerspectiveTransformWithExtent
        case "CIPerspectiveTransformWithExtent":
            newImage = geometryAdjustmentFilters.setCIPerspectiveTransformWithExtent(originalImage)
            
            
            
            
            //MARK:- HalftoneEffect filters
            //MARK: CICircularScreen
        case "CICircularScreen":
            newImage = halftoneEffectFilters.setCICircularScreen(originalImage)
            
            //MARK: CICMYKHalftone
        case "CICMYKHalftone":
            newImage = halftoneEffectFilters.setCICMYKHalftone(originalImage)
            
            //MARK: CIDotScreen
        case "CIDotScreen":
            newImage = halftoneEffectFilters.setCIDotScreen(originalImage)
            
            //MARK: CIHatchedScreen
        case "CIHatchedScreen":
            newImage = halftoneEffectFilters.setCIHatchedScreen(originalImage)
            
            //MARK: CILineScreen
        case "CILineScreen":
            newImage = halftoneEffectFilters.setCILineScreen(originalImage)
            
            
            
            //MARK:- Reduction filters
            //MARK: CIAreaAverage
        case "CIAreaAverage":
            newImage = reductionFilters.setCIAreaAverage(originalImage)
            
            //MARK: CIAreaHistogram
        case "CIAreaHistogram":
            newImage = reductionFilters.setCIAreaHistogram(originalImage)
            
            //MARK: CIRowAverage
        case "CIRowAverage":
            newImage = reductionFilters.setCIRowAverage(originalImage)
            
            //MARK: CIColumnAverage
        case "CIColumnAverage":
            newImage = reductionFilters.setCIColumnAverage(originalImage)
            
            //MARK: CIHistogramDisplayFilter
        case "CIHistogramDisplayFilter":
            newImage = reductionFilters.setCIHistogramDisplayFilter(originalImage)
            
            //MARK: CIAreaMaximum
        case "CIAreaMaximum":
            newImage = reductionFilters.setCIAreaMaximum(originalImage)
            
            //MARK: CIAreaMinimum
        case "CIAreaMinimum":
            newImage = reductionFilters.setCIAreaMinimum(originalImage)
            
            //MARK: CIAreaMaximumAlpha
        case "CIAreaMaximumAlpha":
            newImage = reductionFilters.setCIAreaMaximumAlpha(originalImage)
            
            //MARK: CIAreaMinimumAlpha
        case "CIAreaMinimumAlpha":
            newImage = reductionFilters.setCIAreaMinimumAlpha(originalImage)
            
            
            
            
            //MARK:- Sharpen filters
            //MARK: CISharpenLuminance
        case "CISharpenLuminance":
            newImage = sharpenFilters.setCISharpenLuminance(originalImage)
            
            //MARK: CIUnsharpMask
        case "CIUnsharpMask":
            newImage = sharpenFilters.setCIUnsharpMask(originalImage)
            
            
            
            
            
            //MARK:- ColorAdjustment filters
            //MARK: CIColorClamp
        case "CIColorClamp":
            newImage = colorAdjustmentFilters.setCIColorClamp(originalImage)
            
            //MARK: CIColorControls
        case "CIColorControls":
            newImage = colorAdjustmentFilters.setCIColorControls(originalImage)
            
            //MARK: CIColorMatrix
        case "CIColorMatrix":
            newImage = colorAdjustmentFilters.setCIColorMatrix(originalImage)
            
            //MARK: CIColorPolynomial
        case "CIColorPolynomial":
            newImage = colorAdjustmentFilters.setCIColorPolynomial(originalImage)            
            
            //MARK: CIExposureAdjust
        case "CIExposureAdjust":
            newImage = colorAdjustmentFilters.setCIExposureAdjust(originalImage)
            
            //MARK: CIGammaAdjust
        case "CIGammaAdjust":
            colorAdjustmentFilters.setCIGammaAdjust(originalImage)
            
            //MARK: CIHueAdjust
        case "CIHueAdjust":
            newImage = colorAdjustmentFilters.setCIHueAdjust(originalImage)
            
            //MARK: CILinearToSRGBToneCurve
        case "CILinearToSRGBToneCurve":
            newImage = colorAdjustmentFilters.setCILinearToSRGBToneCurve(originalImage)
            
            //MARK: CISRGBToneCurveToLinear
        case "CISRGBToneCurveToLinear":
            newImage = colorAdjustmentFilters.setCISRGBToneCurveToLinear(originalImage)
            
            //MARK: CITemperatureAndTint
        case "CITemperatureAndTint":
            colorAdjustmentFilters.setCITemperatureAndTint(originalImage)
            
            //MARK: CIToneCurve
        case "CIToneCurve":
            newImage = colorAdjustmentFilters.setCIToneCurve(originalImage)
            
            //MARK: CIVibrance
        case "CIVibrance":
            newImage = colorAdjustmentFilters.setCIVibrance(originalImage)
            
            //MARK: CIWhitePointAdjust
        case "CIWhitePointAdjust":
            newImage = colorAdjustmentFilters.setCIWhitePointAdjust(originalImage)
            
            
            
            //MARK:- Composite Operation filters
            //MARK: CIAdditionCompositing
        case "CIAdditionCompositing":
            newImage = compositeOperationFilters.setCIAdditionCompositing(originalImage)
            
            //MARK: CIColorBlendMode
        case "CIColorBlendMode":
            newImage = compositeOperationFilters.setCIColorBlendMode(originalImage)
            
            //MARK: CIColorBurnBlendMode
        case "CIColorBurnBlendMode":
            newImage = compositeOperationFilters.setCIColorBurnBlendMode(originalImage)
            
            //MARK: CIColorDodgeBlendMode
        case "CIColorDodgeBlendMode":
            newImage = compositeOperationFilters.setCIColorDodgeBlendMode(originalImage)
            
            //MARK: CIDarkenBlendMode
        case "CIDarkenBlendMode":
            newImage = compositeOperationFilters.setCIDarkenBlendMode(originalImage)
            
            //MARK: CIDifferenceBlendMode
        case "CIDifferenceBlendMode":
            newImage = compositeOperationFilters.setCIDifferenceBlendMode(originalImage)
            
            //MARK: CIDivideBlendMode
        case "CIDivideBlendMode":
            newImage = compositeOperationFilters.setCIDivideBlendMode(originalImage)
            
            //MARK: CIExclusionBlendMode
        case "CIExclusionBlendMode":
            newImage = compositeOperationFilters.setCIExclusionBlendMode(originalImage)
            
            //MARK: CIHardLightBlendMode
        case "CIHardLightBlendMode":
            newImage = compositeOperationFilters.setCIHardLightBlendMode(originalImage)
            
            //MARK: CIHueBlendMode
        case "CIHueBlendMode":
            newImage = compositeOperationFilters.setCIHueBlendMode(originalImage)
            
            //MARK: CILightenBlendMode
        case "CILightenBlendMode":
            newImage = compositeOperationFilters.setCILightenBlendMode(originalImage)
            
            //MARK: CILinearBurnBlendMode
        case "CILinearBurnBlendMode":
            newImage = compositeOperationFilters.setCILinearBurnBlendMode(originalImage)
            
            //MARK: CILinearDodgeBlendMode
        case "CILinearDodgeBlendMode":
            newImage = compositeOperationFilters.setCILinearDodgeBlendMode(originalImage)
            
            //MARK: CILuminosityBlendMode
        case "CILuminosityBlendMode":
            newImage = compositeOperationFilters.setCILuminosityBlendMode(originalImage)
            
            //MARK: CIMaximumCompositing
        case "CIMaximumCompositing":
            newImage = compositeOperationFilters.setCIMaximumCompositing(originalImage)
            
            //MARK: CIMinimumCompositing
        case "CIMinimumCompositing":
            newImage = compositeOperationFilters.setCIMinimumCompositing(originalImage)
            
            //MARK: CIMultiplyBlendMode
        case "CIMultiplyBlendMode":
            newImage = compositeOperationFilters.setCIMultiplyBlendMode(originalImage)
            
            //MARK: CIMultiplyCompositing
        case "CIMultiplyCompositing":
            newImage = compositeOperationFilters.setCIMultiplyCompositing(originalImage)
            
            //MARK: CIOverlayBlendMode
        case "CIOverlayBlendMode":
            newImage = compositeOperationFilters.setCIOverlayBlendMode(originalImage)
            
            //MARK: CIPinLightBlendMode
        case "CIPinLightBlendMode":
            newImage = compositeOperationFilters.setCIPinLightBlendMode(originalImage)
            
            //MARK: CISaturationBlendMode
        case "CISaturationBlendMode":
            newImage = compositeOperationFilters.setCISaturationBlendMode(originalImage)
            
            //MARK: CIScreenBlendMode
        case "CIScreenBlendMode":
            newImage = compositeOperationFilters.setCIScreenBlendMode(originalImage)
            
            //MARK: CISoftLightBlendMode
        case "CISoftLightBlendMode":
            newImage = compositeOperationFilters.setCISoftLightBlendMode(originalImage)
            
            //MARK: CISourceAtopCompositing
        case "CISourceAtopCompositing":
            newImage = compositeOperationFilters.setCISourceAtopCompositing(originalImage)
            
            //MARK: CISourceInCompositing
        case "CISourceInCompositing":
            newImage = compositeOperationFilters.setCISourceInCompositing(originalImage)
            
            
            //MARK: CISourceOutCompositing
        case "CISourceOutCompositing":
            newImage = compositeOperationFilters.setCISourceOutCompositing(originalImage)
            
            //MARK: CISourceOverCompositing
        case "CISourceOverCompositing":
            newImage = compositeOperationFilters.setCISourceOverCompositing(originalImage)
            
            
            //MARK: CISubtractBlendMode
        case "CISubtractBlendMode":
            newImage = compositeOperationFilters.setCISubtractBlendMode(originalImage)
            
            
            
            
            //MARK:- Generator Effect filters
            
            //MARK: CIAztecCodeGenerator
        case "CIAztecCodeGenerator":
            newImage = generatorFilters.setCIAztecCodeGenerator()
            
            //MARK: CICheckerboardGenerator
        case "CICheckerboardGenerator":
            newImage = generatorFilters.setCICheckerboardGenerator()
            
            //MARK: CICode128BarcodeGenerator
        case "CICode128BarcodeGenerator":
            newImage = generatorFilters.setCICode128BarcodeGenerator()
            
            //MARK: CIConstantColorGenerator
        case "CIConstantColorGenerator":
            newImage = generatorFilters.setCIConstantColorGenerator()
            
            //MARK: CILenticularHaloGenerator
        case "CILenticularHaloGenerator":
            newImage = generatorFilters.setCILenticularHaloGenerator()
            
            //MARK: CIQRCodeGenerator
        case "CIQRCodeGenerator":
            newImage = generatorFilters.setCIQRCodeGenerator()
            
            //MARK: CIRandomGenerator
        case "CIRandomGenerator":
            newImage = generatorFilters.setCIRandomGenerator()
            
            //MARK: CIStarShineGenerator
        case "CIStarShineGenerator":
            newImage = generatorFilters.setCIStarShineGenerator()
            
            //MARK: CIStripesGenerator
        case "CIStripesGenerator":
            newImage = generatorFilters.setCIStripesGenerator()
            
            //MARK: CISunbeamsGenerator
        case "CISunbeamsGenerator":
            newImage = generatorFilters.setCISunbeamsGenerator()
            
            //MARK: CIPDF417BarcodeGenerator
        case "CIPDF417BarcodeGenerator":
            newImage = generatorFilters.setCIPDF417BarcodeGenerator()
            
            
            
            
            //MARK:- TileEffect filters
            //MARK: CIAffineClamp
        case "CIAffineClamp":
            newImage = tileEffectFilters.setCIAffineClamp(originalImage)
            
            //MARK: CIAffineTile
        case "CIAffineTile":
            newImage = tileEffectFilters.setCIAffineTile(originalImage)
            
            //MARK: CIEightfoldReflectedTile
        case "CIEightfoldReflectedTile":
            newImage = tileEffectFilters.setCIEightfoldReflectedTile(originalImage)
            
            //MARK: CIFourfoldReflectedTile
        case "CIFourfoldReflectedTile":
            newImage = tileEffectFilters.setCIFourfoldReflectedTile(originalImage)
            
            //MARK: CIFourfoldRotatedTile
        case "CIFourfoldRotatedTile":
            newImage = tileEffectFilters.setCIFourfoldRotatedTile(originalImage)
            
            //MARK: CIFourfoldTranslatedTile
        case "CIFourfoldTranslatedTile":
            newImage = tileEffectFilters.setCIFourfoldTranslatedTile(originalImage)
            
            //MARK: CIGlideReflectedTile
        case "CIGlideReflectedTile":
            newImage = tileEffectFilters.setCIGlideReflectedTile(originalImage)
            
            //MARK: CIKaleidoscope
        case "CIKaleidoscope":
            newImage = tileEffectFilters.setCIKaleidoscope(originalImage)
            
            //MARK: CIOpTile
        case "CIOpTile":
            newImage = tileEffectFilters.setCIOpTile(originalImage)
            
            //MARK: CIParallelogramTile
        case "CIParallelogramTile":
            newImage = tileEffectFilters.setCIParallelogramTile(originalImage)
            
            //MARK: CIPerspectiveTile
        case "CIPerspectiveTile":
            newImage = tileEffectFilters.setCIPerspectiveTile(originalImage)
            
            //MARK: CISixfoldReflectedTile
        case "CISixfoldReflectedTile":
            newImage = tileEffectFilters.setCISixfoldReflectedTile(originalImage)
            
            //MARK: CISixfoldRotatedTile
        case "CISixfoldRotatedTile":
            newImage = tileEffectFilters.setCISixfoldRotatedTile(originalImage)
            
            //MARK: CITriangleTile
        case "CITriangleTile":
            newImage = tileEffectFilters.setCITriangleTile(originalImage)
            
            //MARK: CITwelvefoldReflectedTile
        case "CITwelvefoldReflectedTile":
            newImage = tileEffectFilters.setCITwelvefoldReflectedTile(originalImage)
            
            //MARK: CITriangleKaleidoscope
        case "CITriangleKaleidoscope":
            newImage = tileEffectFilters.setCITriangleKaleidoscope(originalImage)
            
            
            
            //MARK:- Stylize filters
            //MARK: CIBlendWithAlphaMask
        case "CIBlendWithAlphaMask":
            newImage = stylizeFilters.setCIBlendWithAlphaMask(originalImage)
            
            //MARK: CIBlendWithMask
        case "CIBlendWithMask":
            newImage = stylizeFilters.setCIBlendWithMask(originalImage)
            
            //MARK: CIBloom
        case "CIBloom":
            newImage = stylizeFilters.setCIBloom(originalImage)
            
            //MARK: CIComicEffect
        case "CIComicEffect":
            newImage = stylizeFilters.setCIComicEffect(originalImage)
            
            //MARK: CICrystallize
        case "CICrystallize":
            newImage = stylizeFilters.setCICrystallize(originalImage)
            
            //MARK: CIEdges
        case "CIEdges":
            newImage = stylizeFilters.setCIEdges(originalImage)
            
            //MARK: CIEdgeWork
        case "CIEdgeWork":
            newImage = stylizeFilters.setCIEdgeWork(originalImage)
            
            //MARK: CIGloom
        case "CIGloom":
            newImage = stylizeFilters.setCIGloom(originalImage)
            
            //MARK: CIConvolution3X3
        case "CIConvolution3X3":
            newImage = stylizeFilters.setCIConvolution3X3(originalImage)
            
            //MARK: CIConvolution5X5
        case "CIConvolution5X5":
            newImage = stylizeFilters.setCIConvolution5X5(originalImage)
            
            //MARK: CIConvolution7X7
        case "CIConvolution7X7":
            newImage = stylizeFilters.setCIConvolution7X7(originalImage)
            
            //MARK: CIConvolution7X7
        case "CIConvolution9Horizontal":
            newImage = stylizeFilters.setCIConvolution9Horizontal(originalImage)
            
            //MARK: CIConvolution9Horizontal
        case "CIConvolution9Vertical":
            newImage = stylizeFilters.setCIConvolution9Vertical(originalImage)
            
            //MARK: CIHeightFieldFromMask
        case "CIDepthOfField":
            newImage = stylizeFilters.setCIDepthOfField(originalImage)
            
            //MARK: CIHeightFieldFromMask
        case "CIHeightFieldFromMask":
            newImage = stylizeFilters.setCIHeightFieldFromMask(originalImage)
            
            //MARK: CIHexagonalPixellate
        case "CIHexagonalPixellate":
            newImage = stylizeFilters.setCIHexagonalPixellate(originalImage)
            
            //MARK: CIHighlightShadowAdjust
        case "CIHighlightShadowAdjust":
            newImage = stylizeFilters.setCIHighlightShadowAdjust(originalImage)
            
            //MARK: CILineOverlay
        case "CILineOverlay":
            newImage = stylizeFilters.setCILineOverlay(originalImage)
            
            //MARK: CIPixellate
        case "CIPixellate":
            newImage = stylizeFilters.setCIPixellate(originalImage)
            
            //MARK: CIPointillize
        case "CIPointillize":
            newImage = stylizeFilters.setCIPointillize(originalImage)
            
            //MARK: CIShadedMaterial
        case "CIShadedMaterial":
            newImage = stylizeFilters.setCIShadedMaterial(originalImage)
            
            //MARK: CISpotLight
        case "CISpotLight":
            newImage = stylizeFilters.setCISpotLight(originalImage)
            
            //MARK: CISpotColor
        case "CISpotColor":
            newImage = stylizeFilters.setCISpotColor(originalImage)
            
            
            
            
            //MARK:- Transition filters
            //MARK: CIAccordionFoldTransition
        case "CIAccordionFoldTransition":
            newImage = transitionFilters.setCIAccordionFoldTransition(originalImage)
            
            //MARK: CIBarsSwipeTransition
        case "CIBarsSwipeTransition":
            newImage = transitionFilters.setCIBarsSwipeTransition(originalImage)
            
            //MARK: CICopyMachineTransition
        case "CICopyMachineTransition":
            newImage = transitionFilters.setCICopyMachineTransition(originalImage)
            
            //MARK: CIDisintegrateWithMaskTransition
        case "CIDisintegrateWithMaskTransition":
            newImage = transitionFilters.setCIDisintegrateWithMaskTransition(originalImage)
            
            //MARK: CIDissolveTransition
        case "CIDissolveTransition":
            newImage = transitionFilters.setCIDissolveTransition(originalImage)
            
            //MARK: CIFlashTransition
        case "CIFlashTransition":
            newImage = transitionFilters.setCIFlashTransition(originalImage)
            
            //MARK: CIModTransition
        case "CIModTransition":
            newImage = transitionFilters.setCIModTransition(originalImage)
            
            //MARK: CIPageCurlTransition
        case "CIPageCurlTransition":
            newImage = transitionFilters.setCIPageCurlTransition(originalImage)
            
            //MARK: CIPageCurlWithShadowTransition
        case "CIPageCurlWithShadowTransition":
            newImage = transitionFilters.setCIPageCurlWithShadowTransition(originalImage)
            
            //MARK: CIRippleTransition
        case "CIRippleTransition":
            newImage = transitionFilters.setCIRippleTransition(originalImage)
            
            //MARK: CISwipeTransition
        case "CISwipeTransition":
            newImage = transitionFilters.setCISwipeTransition(originalImage)
            
            
            
            
            //MARK:- Distortion filters
            //MARK: CIBumpDistortion
        case "CIBumpDistortion":
            newImage = distortionEffectFilters.setCIBumpDistortion(originalImage)
            
            //MARK: CIBumpDistortionLinear
        case "CIBumpDistortionLinear":
            newImage = distortionEffectFilters.setCIBumpDistortionLinear(originalImage)
            
            //MARK: CICircleSplashDistortion
        case "CICircleSplashDistortion":
            newImage = distortionEffectFilters.setCICircleSplashDistortion(originalImage)
            
            //MARK: CICircularWrap
        case "CICircularWrap":
            newImage = distortionEffectFilters.setCICircularWrap(originalImage)
            
            //MARK: CIDroste
        case "CIDroste":
            newImage = distortionEffectFilters.setCIDroste(originalImage)
            
            //MARK: CIDisplacementDistortion
        case "CIDisplacementDistortion":
            newImage = distortionEffectFilters.setCIDisplacementDistortion(originalImage)
            
            //MARK: CIGlassDistortion
        case "CIGlassDistortion":
            newImage = distortionEffectFilters.setCIGlassDistortion(originalImage)
            
            //MARK: CIGlassLozenge
        case "CIGlassLozenge":
            newImage = distortionEffectFilters.setCIGlassLozenge(originalImage)
            
            //MARK: CIHoleDistortion
        case "CIHoleDistortion":
            newImage = distortionEffectFilters.setCIHoleDistortion(originalImage)
            
            //MARK: CILightTunnel
        case "CILightTunnel":
            newImage = distortionEffectFilters.setCILightTunnel(originalImage)
            
            //MARK: CIPinchDistortion
        case "CIPinchDistortion":
            newImage = distortionEffectFilters.setCIPinchDistortion(originalImage)
            
            //MARK: CIStretchCrop
        case "CIStretchCrop":
            newImage = distortionEffectFilters.setCIStretchCrop(originalImage)
            
            //MARK: CITorusLensDistortion
        case "CITorusLensDistortion":
            newImage = distortionEffectFilters.setCITorusLensDistortion(originalImage)
            
            //MARK: CITwirlDistortion
        case "CITwirlDistortion":
            newImage = distortionEffectFilters.setCITwirlDistortion(originalImage)
            
            //MARK: CIVortexDistortion
        case "CIVortexDistortion":
            newImage = distortionEffectFilters.setCIVortexDistortion(originalImage)
            
            
            
        default:
            break
        }
               
        
        return newImage
        
    }
    
}

