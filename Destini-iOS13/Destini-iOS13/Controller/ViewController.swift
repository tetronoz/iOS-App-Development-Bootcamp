//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender == choice1Button {
            storyBrain.nextStory(1)
        } else {
            storyBrain.nextStory(2)
        }
        
        updateUI()
    }
    
    func updateUI() {
        let choiceTexts = storyBrain.getChoiceText()
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(choiceTexts[0], for: .normal)
        choice2Button.setTitle(choiceTexts[1], for: .normal)
    }
}
