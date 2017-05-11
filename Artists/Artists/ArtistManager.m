//
//  ArtistManager.m
//  Artists
//
//  Created by steve on 2017-05-07.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ArtistManager.h"
#import "Artist.h"

@interface ArtistManager()
@property (nonatomic) NSArray<Artist *>*artists;
@property (nonatomic) NSInteger currentIndex;
@end

@implementation ArtistManager
- (instancetype)init {
  if (self = [super init]) {
    [self createArtists];
  }
  return self;
}

- (void)createArtists {
  Artist *a1 = [[Artist alloc] initWithName:@"Iggy Pop"];
  a1.image = [UIImage imageNamed:@"iggy_p.png"];
  Artist *a2 = [[Artist alloc] initWithName:@"Taylor Swift"];
  a2.image = [UIImage imageNamed:@"taylor_s.png"];
  Artist *a3 = [[Artist alloc] initWithName:@"Justin Bieber"];
  a3.image = [UIImage imageNamed:@"justin_b.png"];
  _artists = @[a1, a2, a3];
}

- (void)randomIndex {
  NSInteger rand = arc4random_uniform((uint32_t)self.artists.count);
  if (rand == self.currentIndex) {
    [self randomIndex]; // recurrsion
  } else {
    self.currentIndex = rand;
  }
}

- (Artist *)randomArist {
  [self randomIndex];
  return self.artists[self.currentIndex];
}
@end
