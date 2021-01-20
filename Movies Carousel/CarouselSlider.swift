//
//  CarouselSlider.swift
//  Movies Carousel
//
//  Created by Admin on 20/01/2021.
//

import SwiftUI

struct CarouselSlider: ViewModifier {
        
    var alignment:Bool
    var proxy: GeometryProxy
    
    var startingPoint: CGFloat {
        if alignment {
            return proxy.frame(in: .global).minX
        }
        else {
            return proxy.frame(in: .global).maxX
        }
    }
    
    var scale: (GeometryProxy, CGFloat) -> (CGFloat) = {
        var scale: CGFloat = 1.0
        
        let diff = abs($1)
        if diff < 100 {
            scale = 1 + (100 - diff)/500
        }
        /*else if diff > 200 {
            scale = 1 + (diff - 200)/500
        }*/
        return scale
    }
    
    
    func body(content: Content) -> some View {
        let scale = self.scale(proxy,startingPoint)
        return content.scaleEffect(CGSize(width: scale, height: scale))
    }
    
    
    
}

