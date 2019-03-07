//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stories = StoryBank()
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    var storyIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restart()
    }

    // This is a painful dumpster fire of logic... DRY be damned
    @IBAction func buttonPressed(_ sender: UIButton) -> Void {
        
        if storyIndex == 0 && sender.tag == 1 || storyIndex == 1 && sender.tag == 1 {
            storyIndex = 2
            updateUI(storyIndex)
            return
        }
        
        if storyIndex == 0 && sender.tag == 2 {
            storyIndex = 1
            updateUI(storyIndex)
            return
        }
        
        if storyIndex == 1 && sender.tag == 2 {
            storyIndex = 3
            updateUI(storyIndex)
            topButton.isHidden = true
            bottomButton.isHidden = true
            restartButton.isHidden = false
            return
        }
        
        if storyIndex == 2 && sender.tag == 1 {
            storyIndex = 5
            updateUI(storyIndex)
            topButton.isHidden = true
            bottomButton.isHidden = true
            restartButton.isHidden = false
            return
        }
        
        if storyIndex == 2 && sender.tag == 2 {
            storyIndex = 4
            updateUI(storyIndex)
            topButton.isHidden = true
            bottomButton.isHidden = true
            restartButton.isHidden = false
            return
        }
    }
    
    func updateUI(_ index: Int) {
        storyTextView.text = stories.list[index].text
        topButton.setTitle(stories.list[index].answerA, for: .normal)
        bottomButton.setTitle(stories.list[index].answerB, for: .normal)
    }
    
    @IBAction func restartPressed(_ sender: UIButton) {
        restart()
    }
    
    func restart() {
        storyIndex = 0
        storyTextView.text = stories.list[0].text
        topButton.setTitle(stories.list[0].answerA, for: .normal)
        topButton.isHidden = false
        bottomButton.setTitle(stories.list[0].answerB, for: .normal)
        bottomButton.isHidden = false
        restartButton.isHidden = true
    }
}
