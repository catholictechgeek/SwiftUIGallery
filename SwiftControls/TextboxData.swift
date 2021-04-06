//
//  TextboxData.swift
//  SwiftControls
//
//  Created by Steven Nowak on 1/29/21.
//

import Foundation

public class TextboxData:ObservableObject {
    @Published var valuez:String;
    init() {
        valuez = "";
    }
    
    func getCode() -> String {
        var code:String = "Text(\"\(valuez)\")";
        return code;
    }
}
