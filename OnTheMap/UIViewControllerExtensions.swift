//
//  UIViewControllerExtensions.swift
//  OnTheMap
//
//  Created by Sugandha Naolekar on 8/13/16.
//  Copyright © 2016 icode. All rights reserved.
//

import UIKit

extension UIViewController {
    func tapOutKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func presentAlert(error: NSError) {
        presentAlert("Error", message: error.localizedDescription, actionTitle: "OK", actionHandler: nil)
    }
    
    func presentAlert(title: String, message: String, actionTitle: String, actionHandler: ((UIAlertAction) -> Void)?) {
        
        let alertControllerStyle = UIAlertControllerStyle.Alert
        let alertView = UIAlertController(title: title, message: message, preferredStyle: alertControllerStyle)
        
        let alertActionStyle = UIAlertActionStyle.Default
        let alertAction = UIAlertAction(title: actionTitle, style: alertActionStyle, handler: actionHandler)
        
        alertView.addAction(alertAction)
        
        dispatch_async(dispatch_get_main_queue(), {
            self.presentViewController(alertView, animated: true, completion: nil)
        })
    }
    
    func presentAlert(title: String, message: String, actionTitle: String) {
        
        let alertControllerStyle = UIAlertControllerStyle.Alert
        let alertView = UIAlertController(title: title, message: message, preferredStyle: alertControllerStyle)
        
        let alertActionStyle = UIAlertActionStyle.Default
        let alertActionOK = UIAlertAction(title: actionTitle, style: alertActionStyle, handler: nil)
        
        alertView.addAction(alertActionOK)
        
        dispatch_async(dispatch_get_main_queue(), {
            self.presentViewController(alertView, animated: true, completion: nil)
        })
    }
    
    func showSpinner() -> UIActivityIndicatorView {
        let spinner = UIActivityIndicatorView(activityIndicatorStyle: .WhiteLarge)
        dispatch_async(dispatch_get_main_queue(), {
            spinner.center = self.view.center
            spinner.color = UIColor.orangeColor()
            self.view.addSubview(spinner)
            spinner.startAnimating()
        })
        
        return spinner
    }
}


extension UIActivityIndicatorView {
    func hide() {
        dispatch_async(dispatch_get_main_queue(), {
            self.stopAnimating()
            self.removeFromSuperview()
        })
    }
}