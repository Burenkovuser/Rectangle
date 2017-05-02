//
//  Square.m
//  Rectangle
//
//  Created by Vasilii on 02.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Square.h"
#import "Rectangle.h"

@implementation Square

-(void)setSide:(int)s {
    
    [self setWidht:s andHight:s]; // вызываем для этого квадрата метод созданный в прямоугольнике который установит значение высоты и ширины
}
- (int)side {
    return self.width;
}

@end
