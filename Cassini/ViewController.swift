//
//  ViewController.swift
//  Cassini
//
//  Created by Tulin Akdogan on 4/5/15.
//  Copyright (c) 2015 Tulin Akdogan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController{
            if let identifier = segue.identifier {
                switch identifier {
                    case "Earth":
                        ivc.imageURL = DemoURL.NASA.Earth
                    case "Saturn":
                        ivc.imageURL = DemoURL.NASA.Saturn
                    case "Cassini":
                        ivc.imageURL = DemoURL.NASA.Cassini
                    default: break
                }
            }
        }
    }

}

