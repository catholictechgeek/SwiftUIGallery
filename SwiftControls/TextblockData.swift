//
//  TextblockData.swift
//  SwiftControls
//
//  Created by Steven Nowak on 1/29/21.
//

import Foundation
import SwiftUI

public class TextblockData:ObservableObject {
    @Published var isbold:Bool;
    @Published var isitalics:Bool;
    @Published var fontsize:Int?;
    @Published var isstrikethrough:Bool;
    @Published var isunderlined:Bool;
    @Published var caption:String;
    @Published var foreground:Color;
    @Environment(\.colorScheme) var scheme;
    //var foregroundcolor:
    
    init() {
        isbold = true;
        isitalics = true;
        fontsize = nil;
        isstrikethrough = false;
        isunderlined = true;
        caption = "Sample Data";
        foreground = Color.black
        defer {
            if (scheme == .dark) {
                foreground = Color.white;
            }
        }
    }
    
    func getCode() -> String {
        var code:String = "Text(\"\(caption)\")";
        if(isbold) {
            code += ".bold()";
        }
        if(isitalics) {
            code += ".italic()";
        }
        if(isstrikethrough) {
            code += ".strikethrough()"
        }
        if(isunderlined) {
            code += ".underline()";
        }
        if(scheme == .dark && foreground != Color.white) {
            code += ".foregroundColor(\(ColorUtils.getColorText(foreground))";
        }
        else if(foreground != Color.black) {
            code += ".foregroundColor(\(ColorUtils.getColorText(foreground))";
        }
        return code;
    }
}
