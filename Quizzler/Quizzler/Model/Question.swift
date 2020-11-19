//
//  Question.swift
//  Quizzler
//
//  Created by Shubhangi Gupta on 19/11/20.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
