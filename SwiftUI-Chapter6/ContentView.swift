//
//  ContentView.swift
//  SwiftUI-Chapter6
//
//  Created by Hiroaki Ishiga on 2021/06/05.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    
    var body: some View {
        Button(action: {
            isError = true
        }){
            Text("Alert テスト")
        }.alert(isPresented: $isError) {
            Alert(title: Text("エラー"),
                  message: Text("メッセージ文"),
                  primaryButton:.destructive(Text("削除する"), action: {}),
                  secondaryButton: .cancel(Text("キャンセル"),action :{})
            )
        }
    }
}

func okAction(){
    print("OKボタンが選ばれました．")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
