//
//  Rectangle.h
//  Rectangle
//
//  Created by Vasilii on 29.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

@property int width, hight;
-(int) area;
-(int) perimeter;
-(void) setWidht:(int)w andHight:(int) h;

@end
