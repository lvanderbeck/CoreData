//
//  SingleNoteViewController.swift
//  Notes
//
//  Created by Logan VanDerBeck on 11/30/17.
//  Copyright © 2017 Logan VanDerBeck. All rights reserved.
//

import UIKit

class SingleNoteViewController: UIViewController {
    @IBOutlet weak var singleNote: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        singleNote.delegate = self as? UITextViewDelegate
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addNote(_ sender: Any){
        let oneNote = singleNote.text
        if let note = Notes(rawNote: oneNote){
            do{
                let managedContext = note.managedObjectContext
                try managedContext?.save()
                self.navigationController?.popViewController(animated: true)
            }
            catch{
                print("Context could not be saved")
            }
        }
    }
    
    @IBAction func saveNote(_ sender: Any) {
        let note = singleNote.text
        
        var notes:Notes?
        notes = Notes(rawNote: note)
    
    if let notes = notes {
        do {
            let managedContext = notes.managedObjectContext
            
            try managedContext?.save()
            
            self.navigationController?.popViewController(animated: true)
        }catch{
            print("Context could not be saved.")
        }
    }
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
