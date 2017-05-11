//
//  Artist.h
//  Artists
//
//  Created by steve on 2017-05-07.
//  Copyright © 2017 steve. All rights reserved.
//

@import UIKit;

@interface Artist : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic) UIImage *image;
- (instancetype)initWithName:(NSString *)name;
@end
