//
//  ControlTransformations.swift
//  SwiftControls
//
//  Created by Steven Nowak on 1/29/21.
//

import Foundation
import SwiftUI

public extension Text {
    func fromData(data:TextblockData) -> Text {
        var instance = self;
        if(data.isbold) {
            instance = instance.bold();
        }
        if(data.isitalics) {
            instance = instance.italic();
        }
        if(data.isstrikethrough) {
            instance = instance.strikethrough();
        }
        if(data.isunderlined) {
            instance = instance.underline();
        }
        if let size = data.fontsize {
            if(size > 0) {
                instance = instance.font(.system(size: CGFloat(size)));
            }
        }
        if(data.foreground != Color.accentColor) {
            instance = instance.foregroundColor(data.foreground);
        }
        return instance;
    }
    
    /*
    func getDefaultFontSize() -> Int {
        var temp = Text("");
        return temp.label
    }
 */
}

public extension TextField {
    func fromData(data:TextboxData) -> TextField {
        var instance = self;
        return instance;
    }
}

public extension Button {
    func fromData(data:ButtonData) -> Button {
        var instance = self;
        return instance;
    }
}
