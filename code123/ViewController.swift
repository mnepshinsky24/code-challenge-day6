//
//  ViewController.swift
//  code123
//
//  Created by Apple on 7/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

// First, you need to create TWO classes to be able to work between both view controllers.
//You can create two classes within one file, as I did here OR you can create two separate files to contain your classes like we did with Aviatrix.
// The first class (ViewController) is going to be linked to our FIRST (our input) view controller.
//The second class (DisplayViewController) is going to be linked to our second view controller.
// First step is to create a segue from the first viewcontroller to the second, name the segue identifier as "InputToSVC"



class ViewController: UIViewController {
    //your text field outlet goes here under this first class!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // make sure you name your identifier for the segue to add within your code here:
    @IBAction func nextButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "InputToSVC", sender: self)

    }
    // This is where the magic happens! This code allows you to transfer text to the label on the next view controller
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "InputToSVC"){
            let displayVC = segue.destination as! DisplayViewController
            displayVC.name = nameTextField.text
        }
        
        
    }
    
    
}
// This is the second class you're going to use with your second view controller. This is where your text is going to show up in the label.

class DisplayViewController: UIViewController {
// Add your outlet for your label under this second class. Make sure to link your second view controller here!
    @IBOutlet weak var nameLabel: UILabel!
    
    var name : String?
    
    // This is where your label will pick up what the user typed into the text box.
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        
    }
    
}

