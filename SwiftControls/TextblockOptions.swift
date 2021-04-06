//
//  TextblockOptions.swift
//  SwiftControls
//
//  Created by Steven Nowak on 1/29/21.
//

import SwiftUI
import LNPopupUI

struct TextblockOptions: View {
    @StateObject var viewdata = TextblockData()
    @State var showcode:Bool = false
    @State var truebool:Bool = true
    
    var body: some View {
        VStack {
            Text("Text").bold().padding(.bottom)
            Text("preview").font(.caption)
            ZStack{
                Rectangle().foregroundColor(.white)
                Text(viewdata.caption).fromData(data: viewdata).padding(.all).zIndex(2)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1.5)
            
            VStack {
                Text("Options").padding(.top)
                ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                        Text("Text")
                        TextField("captionz", text: $viewdata.caption).border(Color.black, width: 2).padding(.horizontal)
                    }
                    Toggle(isOn: $viewdata.isbold, label: {
                        Text("Bold")
                    })
                    Toggle(isOn: $viewdata.isitalics, label: {
                        Text("Italicized")
                    })
                    Toggle(isOn: $viewdata.isstrikethrough, label: {
                        Text("Strikethrough")
                    })
                    Toggle(isOn: $viewdata.isunderlined, label: {
                        Text("Underlined")
                    })
                    HStack {
                        Text("Font Size")
                        TextField("default", value: $viewdata.fontsize, formatter: NumberFormatter()).border(Color.black, width: 2).padding(.horizontal)
                    }
                    ColorPicker("Foreground", selection: $viewdata.foreground)
                }
            }
        }.popup(isBarPresented: $truebool, isPopupOpen: $showcode) {
            VStack{
                Text("Your Code").bold().underline()
                Text(viewdata.getCode()).padding(.vertical)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
        }.popupBarCustomView(wantsDefaultTapGesture: true, wantsDefaultPanGesture: true, wantsDefaultHighlightGesture: true) {
            ZStack(alignment: .trailing) {
                HStack {
                    Spacer()
                    Button("Show me the Source") {
                        if(showcode) {
                            showcode = false;
                        }
                        else {
                            showcode = true;
                        }
                    }.cornerRadius(25)
                    Spacer()
                }
                Button(action: {
                    //do nothing
                }, label: {
                    Image(systemName: "chevron.up")
                        .renderingMode(.template)
                })
                .padding()
            }
            Spacer()
        }
    }
}

struct TextblockOptions_Previews: PreviewProvider {
    static var previews: some View {
        TextblockOptions()
    }
}
