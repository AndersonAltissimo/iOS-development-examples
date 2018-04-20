//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Anderson Altissimo on 4/12/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectedAnswers: Int = 0
    var totalAnswers: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbAnswered.text = "Total de Perguntas Respondidas: \(totalAnswers)"
        lbCorrect.text = "Total de Perguntas Corretas: \(totalCorrectedAnswers)"
        lbWrong.text = "Total de Perguntas Erradas: \(totalAnswers - totalCorrectedAnswers)"
        
        let score = (totalCorrectedAnswers * 100)/totalAnswers
        lbScore.text = "\(score)%"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(_ sender: UIButton) {
       dismiss(animated: true, completion: nil)
    }
}
