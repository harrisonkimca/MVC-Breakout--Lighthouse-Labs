//
//  Artist.m
//  Artists
//
//  Created by steve on 2017-05-07.
//  Copyright © 2017 steve. All rights reserved.
//

#import "Artist.h"

@implementation Artist
- (instancetype)initWithName:(NSString *)name {
  if (self = [super init]) {
    _name = name;
  }
  return self;
}
@end
