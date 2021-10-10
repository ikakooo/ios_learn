//
//  AllData.swift
//  Task_12
//
//  Created by MacBook Pro on 10.10.21.
//

import Foundation

class AllData {
    
    static var instance: AllData = AllData()
    private init() {}
    
    
     let allUniqueLanguages = [
        LanguageModel(title: "Start Learning Swift", imageName: "logo_swift"),
        LanguageModel(title: "Start Learning Kotlin ", imageName: "logo_kotlin"),
        LanguageModel(title: "Start Learning Java ", imageName: "logo_java"),
        LanguageModel(title: "Start Learning javascript ", imageName: "logo_javascript"),
        LanguageModel(title: "Start Learning C# ", imageName: "logo_CSharp"),
        LanguageModel(title: "Start Learning C++ ", imageName: "logo_cpp"),
        LanguageModel(title: "Start Learning python ", imageName: "logo_python"),
        LanguageModel(title: "Start Learning Haskell ", imageName: "logo_haskell"),
        LanguageModel(title: "Start Learning Dart ", imageName: "logo_dart")
    ]
    
    func languages()->[LanguageModel] {
        (1...Int.random(in: 30..<100)).compactMap { _ in allUniqueLanguages.randomElement()}
    }
    
    
}
