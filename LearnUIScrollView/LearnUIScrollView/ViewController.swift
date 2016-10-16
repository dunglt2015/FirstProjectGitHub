//
//  ViewController.swift
//  LearnUIScrollView
//
//  Created by ADMIN on 10/16/16.
//  Copyright © 2016 dunglt2015. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!

    var images = [UIImageView]()
    var contentWidth: CGFloat = 0.0
    var newX:CGFloat = 0.0
    //let gestureRecognizer = UITapGestureRecognizer(target: self, action: Selector(("handleImageDidTap:")))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...11 {
            let image = UIImage (named: "image\(i).jpg")
            let imageView = UIImageView (image: image)
            images.append(imageView)
            
            newX = view.frame.midX + view.frame.width * CGFloat(i);
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - view.frame.width/2, y: 0, width: view.frame.width, height: view.frame.height)
            
        }
        contentWidth = newX + view.frame.width/2;

        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func handleImageDidTap(gestureRecognizer: UITapGestureRecognizer){
        let alertController = UIAlertController(title: nil, message: "You are tapped at\(gestureRecognizer.location(in: self.scrollView))", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.cancel, handler: {(alert: UIAlertAction!) in print("Foo")}))
        self.present(alertController, animated:true, completion: nil)
    }
}

