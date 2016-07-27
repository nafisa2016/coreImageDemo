//
//  ViewController.swift
//  core image demo
//
//  Created by Mrunmoy Samal on 4/29/16.
//  Copyright © 2016 enspawn.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    //MARK:- properties
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    //instance
    let myTableData = TableData()
    let processSelection = ProcessSelection()
    
    
    let context = CIContext(options: nil)
    
    //MARK:- methods
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableData.getAvailableFilters()
        //myTableData.getFilterFuncName()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- UITableViewDataSource Methods
    
    //MARK: number of sections
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    //MARK: number of rows in a section
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myTableData.filters.count
    }
    
    //MARK: configure cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")!
        cell.textLabel?.text = myTableData.filters[indexPath.row]
        
        return cell
    }
    
    
    //MARK:- UITableViewDelegate methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let choice =  myTableData.filters[indexPath.row]
        
        //MARK: activity indicator
        let myActivityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
        myActivityIndicator.center = view.center
        myActivityIndicator.startAnimating()
        view.addSubview(myActivityIndicator)
        
        //MARK: convert image to CIImage
        let image = UIImage(named: "try.jpg")
        guard let InputImage = CIImage(image: image!) else{
            print("input image not converted to CIImage")
            return
        }
        
        
        //MARK: apply filter in global queue for better table row scrolling performance
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0)){ [weak self] in
            
            //weak reference
            if let weakSelf = self{
                
                //image processing
                guard let outputImage : CIImage? = weakSelf.processSelection.applyFilters(choice,originalImage: InputImage) where outputImage != nil else{
                    
                    print("filter processing is not successful")
                    return
                }
                
                //MARK: convert CIImage to UIImage
                let processedImage = UIImage(CIImage: outputImage!)
                
                //MARK: convert CIImage to CGImage
                var processedCGIImg : CGImage? = nil
                
                if  (choice != "CIAffineTransform") &&
                    (choice != "CICircularWrap") &&
                    (choice != "CITorusLensDistortion")  &&
                    (choice != "CIStraightenFilter") {
                    
                    var extent = InputImage.extent
                    
                    if choice == "CIAztecCodeGenerator" ||
                        choice == "CICode128BarcodeGenerator" ||
                        choice == "CIPDF417BarcodeGenerator" ||
                        choice == "CIQRCodeGenerator" ||
                        choice == "CISunbeamsGenerator" ||
                        choice == "CILenticularHaloGenerator" ||
                        choice == "CIAreaAverage" ||
                        choice == "CIAreaMaximum" ||
                        choice == "CIAreaHistogram" ||
                        choice  == "CIAreaMinimum" ||
                        choice == "CIAreaMaximumAlpha" ||
                        choice == "CIAreaMinimumAlpha" ||
                        choice == "CIColorCube" ||
                        choice == "CIColorCubeWithColorSpace" ||
                        choice == "CIKaleidoscope"
                    {
                        
                        extent = outputImage!.extent
                    }
                    
                    //create CGImage
                    guard let processedCGIImage : CGImage? = weakSelf.context.createCGImage(outputImage!, fromRect: extent) where processedCGIImage != nil else{
                        print("no output")
                        return
                    }
                    
                    processedCGIImg = processedCGIImage
                    
                }
                
                //MARK: output image in main thread
                dispatch_async(dispatch_get_main_queue()) {
                    
                    if  choice == "CIAffineTransform" ||
                        choice == "CICircularWrap" ||
                        choice == "CITorusLensDistortion"  ||
                        choice == "CIStraightenFilter" {
                        
                        weakSelf.myImage.contentMode = .ScaleAspectFit
                        weakSelf.myImage.image = processedImage
                        print(weakSelf.myImage.image!.size)
                        
                    }
                        
                    else {
                        
                        //display processed image
                        guard let newImage : UIImage? = UIImage(CGImage: processedCGIImg!) else{
                            print("processed image can't be converted")
                            return
                        }
                        
                        print(newImage!.size)
                        weakSelf.myImage.contentMode = .ScaleAspectFit
                        weakSelf.myImage.image = newImage
                        
                    }
                    
                    //MARK: stop activity indicator when processed image is loaded
                    myActivityIndicator.stopAnimating()
                    myActivityIndicator.hidesWhenStopped = true
                }
            }
        }
    }
}

