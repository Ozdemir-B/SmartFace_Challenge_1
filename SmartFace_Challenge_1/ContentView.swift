//
//  ContentView.swift
//  SmartFace_Challenge_1
//
//  Created by Berkay Özdemir on 20.08.2022.
//

import SwiftUI


struct NewView: View {
    var body:some View {
        VStack{
            Text("LOREM IPSUM")
            Text("LOREM IPSUM")
        }
        .foregroundColor(.blue)
        .font(.system(size: 30))
    }
}


struct ContentView: View {
    
    @State private var isPressed = false
    @State private var pressMeColor:Color = .blue
    
    var inBody:some View {
        VStack{
            
            HStack(){
                ZStack{
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(maxWidth:176,maxHeight:176)
                        .cornerRadius(40, corners: [.topLeft])
                        .cornerRadius(20,corners:[.topRight])
                        //.shadow(color: .black, radius: 10, x: 0, y: 0)
                    
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(maxWidth:164,maxHeight:164)
                        .cornerRadius(35, corners: [.topLeft])
                        .cornerRadius(15,corners:[.topRight])
                }
                    

                    
                
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(maxWidth:176,maxHeight:176)
                    .cornerRadius(50, corners: [.topLeft])
                    .cornerRadius(20,corners:[.topRight])
            }
            .padding(.vertical)
            
            HStack{
                
                ZStack{
                    Rectangle() //  a thin rectangle to be able to shadow only the bottom
                        .frame(maxWidth:170,maxHeight: 3)
                        .padding(.top,165)
                        .shadow(color: .black, radius: 5, x: 0, y: 5)
                    
                    
                    Rectangle()
                        .foregroundColor(.yellow)
                        .frame(maxWidth:176,maxHeight:176)
                        .cornerRadius(40, corners: [.topLeft])
                        .cornerRadius(20,corners:[.topRight])
                        //.shadow(color: .black, radius: 10, x: 0, y: 0)
                    
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(maxWidth:164,maxHeight:164)
                        .cornerRadius(35, corners: [.topLeft])
                        .cornerRadius(15,corners:[.topRight])
                    

                    
                }
                
            }
            .padding()
            
            HStack{
                
                /*
                NavigationLink(destination: {
                    NewView()
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 100)
                            .frame(maxHeight:75)
                            .foregroundColor(.blue)
                        
                        Text("PRESS ME")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                    }
                })
                 */
                NavigationLink(isActive: $isPressed, destination: {NewView()}, label: {EmptyView()})
                
                ZStack{
                    RoundedRectangle(cornerRadius: 100)
                        .frame(maxHeight:75)
                        .foregroundColor(.blue)
                    if isPressed{
                        RoundedRectangle(cornerRadius: 100)
                            .frame(maxHeight:75)
                            .foregroundColor(.white)
                            .opacity(0.5)
                    }
                    
                    Text("PRESS ME")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                }
                .onTapGesture {
                    isPressed.toggle()
                }

                
                
                

            }
            .padding(.top,50)
            .padding()
            .padding()
        }
    }
    
    
    
    var body: some View {
        
        NavigationView{
            inBody
        }
        //avigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
