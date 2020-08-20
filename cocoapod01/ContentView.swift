//
//  ContentView.swift
//  cocoapod01
//
//  Created by Terry Gaul on 8/20/20.
//

import SwiftUI
import Alamofire

struct ContentView: View {
  var body: some View {
    Text("Hello, world!")
      .padding()
      .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
        let request = AF.request("https://swapi.dev/api/films")
        // 2
        request.responseJSON { (data) in
          print(data)
        }
      })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
