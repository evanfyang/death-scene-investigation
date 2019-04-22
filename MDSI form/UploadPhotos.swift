//
//  Upload_Photos.swift
//  MDSI form
//
//  Created by Team Awesome on 4/16/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit

class Upload_Photos: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    
    @IBOutlet weak var UserImage1: UIImageView!
    @IBOutlet weak var UserImage2: UIImageView!
    @IBOutlet weak var UserImage3: UIImageView!
    @IBOutlet weak var UserImage4: UIImageView!
    @IBOutlet weak var UserImage5: UIImageView!
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    var index = 0
    var ImArray: [UIImageView] = []

    
    @IBAction func TakePhoto1(_ sender: UIButton) {
        if index > 4{
            displayMessage(message: "Maximum number of photos allowed is 5")
            return
        }
        let imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    //let photoArr: [UIImageView] = [UserImage1, UserImage2, UserImage3, UserImage4, UserImage5]
    
    @IBAction func Next(_ sender: UIButton) {
        allVar.UserImage1 = UserImage1
        allVar.UserImage2 = UserImage2
        allVar.UserImage3 = UserImage3
        allVar.UserImage4 = UserImage4
        allVar.UserImage5 = UserImage5

    }
    @IBAction func Save(_ sender: UIButton) {
        allVar.UserImage1 = UserImage1
        allVar.UserImage2 = UserImage2
        allVar.UserImage3 = UserImage3
        allVar.UserImage4 = UserImage4
        allVar.UserImage5 = UserImage5
        goToHomePage()
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Local variable inserted by Swift 4.2 migrator.
        ImArray = [UserImage1, UserImage2, UserImage3, UserImage4, UserImage5]
        let info = convertFromUIImagePickerControllerInfoKeyDictionary(info)
        
        picker.dismiss(animated: true)
        guard let image = info[convertFromUIImagePickerControllerInfoKey(UIImagePickerController.InfoKey.originalImage)] as? UIImage else {
            print("No image found")
            return
        }
        ImArray[index].image = image
        index+=1
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        
        if allVar.isPending || allVar.isPublished{
            if let image1 = allVar.UserImage1?.image{
            UserImage1?.image = image1
            }
            if let image2 = allVar.UserImage2?.image{
                UserImage2?.image = image2
            }
            if let image3 = allVar.UserImage3?.image{
                UserImage3?.image = image3
            }
            if let image4 = allVar.UserImage4?.image{
                UserImage4?.image = image4
            }
            if let image5 = allVar.UserImage5?.image{
                UserImage5?.image = image5
            }
        }
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKeyDictionary(_ input: [UIImagePickerController.InfoKey: Any]) -> [String: Any] {
    return Dictionary(uniqueKeysWithValues: input.map {key, value in (key.rawValue, value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKey(_ input: UIImagePickerController.InfoKey) -> String {
    return input.rawValue
}




