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
    
    var scale: (CGFloat) -> (CGFloat) = {
        var scale: CGFloat = 1.0
        let diff = abs($0)
        if diff < 100 {
            scale = 1 + (100 - diff)/500
        }
        else if diff > 350 {
            scale = 1 + (diff - 350)/500
        }
        return scale
    }
    
    
    func body(content: Content) -> some View {
        let scale = self.scale(startingPoint)
        return content.scaleEffect(CGSize(width: scale, height: scale))
    }
    
    
    
}

