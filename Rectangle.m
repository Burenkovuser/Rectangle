//
//  Rectangle.m
//  Rectangle
//
//  Created by Vasilii on 29.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle{
    
    XYPoint *origin; // origin объект класса XYPoint (точка)
}


@synthesize width, hight;

- (void)setWidht:(int)w andHight:(int)h {
    width = w;
    hight = h;
}

- (void)setOrigin:(XYPoint *)pt {  // устанавливаем начальную точку
    if (!origin) {
        origin = [[XYPoint alloc] init];
        origin.x = pt.x;
        origin.y = pt.y;
    }
}

- (int)area {
    return width * hight;
}

- (int)perimeter {
    return (width + hight) * 2;
}

- (XYPoint *)origin {
    return  origin;
}

@end
