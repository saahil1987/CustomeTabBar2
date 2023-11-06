//
//  ContentView.swift
//  CustomeTabBar2
//
//  Created by Saahil Kaushal on 06/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
        
       
    
            }
        }

struct Home :View{
    @State var index = 0
    var body : some
    View{
        VStack(spacing: 0){
            appBar(index: self.$index)
            ZStack{
                Chats().opacity(self.index == 0 ? 1 : 0)
                
                Setting().opacity(self.index == 1 ? 1 : 0)
                
                Profile().opacity(self.index == 2 ? 1 : 0)
                
                   // .frame(height: 600,alignment: .top)
            }
            
            
        }.edgesIgnoringSafeArea(.top)
    }
}
struct appBar : View{
    @Binding  var index : Int
    var body: some View {

        VStack(spacing: 25){
            HStack{
                Text("SetUP profile")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(maxWidth: 390)
                
                Spacer(minLength: 10)
                
                
                
                
            }
            
            HStack{
                Button(action:{
                    self.index = 0
                }) {
                    VStack{
                        Text("Chats")
                            .foregroundColor(.black)
                            .fontWeight(self.index == 0 ? .bold : .none)

                        
                        Capsule().fill(self.index == 0 ? Color.red : Color.clear)
                            .frame(height: 4)
                        
                    }
                }
                
                Button(action:{
                    self.index = 1
                }) {
                    VStack{
                        Text("Setting")
                            .foregroundColor(.black)
                            .fontWeight(self.index == 1 ? .bold : .none)

                        
                        Capsule().fill(self.index == 1 ? Color.red : Color.clear)
                            .frame(height: 4)
                        
                    }
                    
                }
                Button(action:{
                    self.index = 2
                }) {
                    VStack{
                        Text("Profile")
                            .foregroundColor(.black)
                           
                            //.font(self.index == 0 ? .bold : .none)
                            .fontWeight(self.index == 2 ? .bold : .none)
                    
                        
                        Capsule().fill(self.index == 2 ? Color.red : Color.clear)
                            .frame(height: 4)
                        
                    }
                    
                }
            }
            }.padding(.bottom,10)
                .padding(.horizontal)
                .padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top)! + 10)
        }
        
    }
   
struct Chats :View {
    @State var flagA = false
    @State var flagB = false
    var body: some View{
        VStack{
            Text("Hello")
                .frame(width: 350,height: 630,alignment: .topLeading)
            
        
    }
        }
    }

struct Setting :View {
    var body: some View{
        GeometryReader{_ in
            VStack{
                Text("GudBuy")
            }
        }
       
    }
}
struct Profile :View {
    var body: some View{
        GeometryReader{_ in
            VStack{
                
                
                Text("Welcome")
            }
        }
        
    }
}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

