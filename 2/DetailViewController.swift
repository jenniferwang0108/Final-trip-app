//
//  DetailViewController.swift
//  2
//
//  Created by Jennifer Wang on 3/30/17.
//  Copyright © 2017 Jennifer Wang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var tView: UITextView!


        override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if tView.text == "" {
            allNotes.remove(at: currentNoteIndex)
        }
        else{
            if allNotes.count > 0 {
            allNotes[currentNoteIndex].note = tView.text
            }
            
        }
            Note.saveNotes()
            noteTable?.reloadData()
            
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if allNotes.count > 0 {
            tView.text = allNotes[currentNoteIndex].note
        }
        
        tView.becomeFirstResponder()

    }
    var detailItem: NSDate? {
        didSet {
            // Update the view.
            
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

}

