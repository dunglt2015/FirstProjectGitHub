//
//  WebViewController.swift
//  LearnUIScrollView
//
//  Created by ADMIN on 10/17/16.
//  Copyright © 2016 dunglt2015. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    var linkIndex: Int  = 0
    var listLink = ["http://phimbathu.com/xem-phim/phim-nguoi-nhen-5-nguoi-nhen-sieu-dang-2-spider-man-5-the-amazing-spider-man-2-2014-838",
                    "http://phimbathu.com/xem-phim/phim-nguoi-hung-tia-chop-phan-3-the-flash-season-3-2016-3182",
                    "http://phimbathu.com/xem-phim/phim-x-men-cuoc-chien-chong-apocalypse-x-men-apocalypse-2016-3168",
                    "http://phimbathu.com/xem-phim/phim-nguoi-khong-lo-xanh-phi-thuong-the-incredible-hulk-2008-3596",
                    "http://phimbathu.com/xem-phim/phim-nguoi-sat-3-iron-man-3-2013-26",
                    "http://phimbathu.com/xem-phim/phim-dac-nhiem-sieu-anh-hung-phan-4-marvel-agents-of-shield-season-4-2016-3185",
                    "http://phimbathu.com/xem-phim/phim-captain-america-3-noi-chien-sieu-anh-hung-captain-america-3-civil-war-2016-2304",
                    "http://phimbathu.com/xem-phim/phim-biet-doi-sieu-anh-hung-2-de-che-ultron-the-avengers-2-age-of-ultron-2015-1463"]
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = NSURLRequest(url: NSURL(string:listLink[linkIndex]) as! URL)
        webView.loadRequest(request as URLRequest)
    }
    
    @IBAction func backBtnTapped(_ sender: AnyObject) {
        self.dismiss(animated: false, completion: nil)
            print("done")
    }
    // MARK: - Navigation

 
}
