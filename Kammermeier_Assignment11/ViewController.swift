//
//  ViewController.swift
//  Kammermeier_Assignment11
//
//  Created by Paxton Kammermeier on 11/29/18.
//  Copyright © 2018 Paxton Kammermeier. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var translateLabel: UILabel!
    @IBOutlet weak var translateImage: UIImageView!
    
    var EnglishWords = [String]()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 6
    
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print("titleForRow called with compenent \(component), row \(row)")
        return "\(EnglishWords[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("didSelectRow called for row \(row)")
        if row == 0{
            translateLabel.text = "Let's Learn French!"
            translateImage.image = #imageLiteral(resourceName: "FrenchFlag")
        }else if row == 1 {
            translateLabel.text = "Un Chien"
            translateImage.image = #imageLiteral(resourceName: "Dog")
        } else if row == 2 {
            translateLabel.text = "Un Chat"
            translateImage.image = #imageLiteral(resourceName: "Cat")
        } else if row == 3{
            translateLabel.text = "Un Cheval"
            translateImage.image = #imageLiteral(resourceName: "Horse")
        }else if row == 4{
            translateLabel.text = "Un Hamster"
            translateImage.image = #imageLiteral(resourceName: "Hamster")
        }else{
            translateLabel.text = "Un Lézard"
            translateImage.image = #imageLiteral(resourceName: "lizard")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            EnglishWords.append("Select an English Word Below")
            EnglishWords.append ("Dog")
            EnglishWords.append("Cat")
            EnglishWords.append("Horse")
            EnglishWords.append("Hamster")
            EnglishWords.append("Lizard")
        translateLabel.text = "Let's Learn French!"
        translateImage.image = #imageLiteral(resourceName: "FrenchFlag")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

