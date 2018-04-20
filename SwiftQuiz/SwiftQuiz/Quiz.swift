//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Anderson Altissimo on 4/12/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool{
        let answer = options[index]
        return answer == correctedAnswer
    }
    
    deinit {
        print("Líberou Quiz da Memória")
    }
}
