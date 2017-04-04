//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 森重翔平 on 2017/03/23.
//  Copyright © 2017年 森重翔平. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
  var image = ["1","2","3","4"]
  var imageCount = 0
  

  
  @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
      imageView.image = UIImage(named: image[imageCount])
      
      
      
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
