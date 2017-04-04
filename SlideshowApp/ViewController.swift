//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 森重翔平 on 2017/03/23.
//  Copyright © 2017年 森重翔平. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  

  
  
  var imageCount = 0
  var image = ["1","2","3","4"]
  
  var timer: Timer! = nil
  var timer_sec: Float = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    imageView.image = UIImage(named: "1")
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let resultViewController:ResultViewController = segue.destination as! ResultViewController
    resultViewController.imageCount = imageCount
  }


  @IBOutlet weak var movebtn: UIButton!

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func unwind(segue: UIStoryboardSegue) {
  }
  
  func updateTimer(timer: Timer) {
    timer_sec += 2
    
    imageCount += 1
    
    if imageCount == 4{
      imageCount = 0
    }
    imageView.image = UIImage(named: image[imageCount])
  }



  @IBOutlet weak var imageView: UIImageView!



  @IBAction func next(_ sender: Any) {
    imageCount += 1
    
    if imageCount == 4{
      imageCount = 0
    }
    imageView.image = UIImage(named: image[imageCount])
    
  

    
  }

  @IBAction func back(_ sender: Any) {
    imageCount -= 1
    if imageCount == -1{
      imageCount = 3}
    imageView.image = UIImage(named: image[imageCount])
  
  }
  
  

  @IBAction func move(_ sender: Any) {
  
      if self.timer == nil{
        movebtn.setTitle("停止", for: UIControlState.normal)
        self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(next(_:)), userInfo: nil, repeats: true)
      imageCount += 1
      
      if imageCount == 4{
        imageCount = 0
        }
      
    imageView.image = UIImage(named: image[imageCount])
      }else {
        movebtn.setTitle("再生", for: UIControlState.normal)
        print(timer)
        self.timer.invalidate()
        self.timer = nil

    }
}
}








