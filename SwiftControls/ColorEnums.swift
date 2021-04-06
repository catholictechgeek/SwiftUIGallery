//
//  ColorEnums.swift
//  SwiftControls
//
//  Created by Steven Nowak on 2/8/21.
//

import Foundation
import SwiftUI

public enum ColorChoice {
    case normal, accentColor, black, blue, clear, gray, green, orange, pink, primary, purple, red, secondary, white, yellow, custom
}

public class ColorUtils {
    //public static var instance:ColorUtils = ColorUtils();
    
    private init() {
        
    }
    
    public static func getColorText(_ choice:Color) -> String {
        //Color(red: 1, green: 1, blue: 1, opacity: 1);
        switch(choice) {
        case Color.black:return ".black";
        case .blue:return ".blue";
        case .clear:return ".clear";
        case .gray:return ".gray";
        case .green:return ".green";
        case .orange:return ".orange";
        case .pink:return ".pink";
        case .primary:return ".primary";
        case .purple:return ".purple";
        case .red:return ".red";
        case .secondary:return ".secondary";
        case .white:return ".white";
        case .yellow:return ".yellow";
        default: let stats = choice.cgColor!.components!; return "Color(red: \(stats[0]), green: \(stats[1]), blue: \(stats[2]))";
        }
    }
    
    public static func isColorEqual(c1:Color, c2:Color) -> Bool {
        return false;
    }
}
