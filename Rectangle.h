//
//  Rectangle.h
//  Rectangle
//
//  Created by Vasilii on 29.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject


@property int width, hight;

-(XYPoint *) origin;//метод начала координат
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidht:(int)w andHight:(int) h;
-(int) area;
-(int) perimeter;


@end
