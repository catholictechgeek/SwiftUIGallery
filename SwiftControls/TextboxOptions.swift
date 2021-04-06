//
//  TextboxOptions.swift
//  SwiftControls
//
//  Created by Steven Nowak on 1/29/21.
//

import SwiftUI

struct TextboxOptions: View {
    @StateObject var viewdata = TextboxData()
    var body: some View {
        VStack {
            Text("TextField").bold().padding(.bottom)
            
            ZStack{
                Rectangle().foregroundColor(.white)
                TextField("preview text", text: $viewdata.valuez).fromData(data: viewdata).padding(.all).zIndex(2)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1.5)
            VStack {
                Text("Options").padding(.top)
                ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                        Text("Text")
                        TextField("captionz", text: $viewdata.valuez).border(Color.black, width: 2).padding(.horizontal)
                    }
                    
                }
            }
        }
    }
}

struct TextboxOptions_Previews: PreviewProvider {
    static var previews: some View {
        TextboxOptions()
    }
}
