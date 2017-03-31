//
//  note.swift
//  2
//
//  Created by Jennifer Wang on 3/30/17.
//  Copyright © 2017 Jennifer Wang. All rights reserved.
//

import UIKit

var allNotes:[Note] = []
var currentNoteIndex:Int = -1
var noteTable:UITableView?

let kAllNotes:String = "notes"

class Note: NSObject {
    var date:String
    var note:String
    
    override init() {
        date = NSDate().description
        note = ""
    }
    
    func dictionary() -> NSDictionary{
        return["note":note, "date":date]
    }
    
    class func saveNotes () {
        let aDictionaries:[NSDictionary] = []
       // for i in 0...allNotes.count
        //{
            
          //      aDictionaries.append(allNotes[i].dictionary())
        //}
        UserDefaults.standard.set(aDictionaries, forKey: kAllNotes)
        
    }
    class func loadNotes(){
        let defaults:UserDefaults = UserDefaults.standard
        let savedData:[NSDictionary]? = defaults.object(forKey:kAllNotes) as? [NSDictionary]
        if let data:[NSDictionary] = savedData {
            for i in 0...data.count{
                let n:Note = Note()

                  //  n.setValuesForKeys(data[i] as! [String : Any])
                    allNotes.append(n)
                    
                }
            }
        }
    }


    
