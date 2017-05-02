//
//  Rectangle.m
//  Rectangle
//
//  Created by Vasilii on 29.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

    @synthesize width, hight;

- (void)setWidht:(int)w andHight:(int)h {
    width = w;
    hight = h;
}

- (int)area {
    return width * hight;
}

- (int)perimeter {
    return (width + hight) * 2;
}

@end
