//
//  ArtistViewController.m
//  Artists
//
//  Created by steve on 2017-05-07.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ArtistViewController.h"
#import "ArtistManager.h"
#import "Artist.h"

@interface ArtistViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) ArtistManager *manager;
@end

@implementation ArtistViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.manager = [[ArtistManager alloc] init];
  [self updateView];
}

- (void)updateView {
  Artist *artist = [self.manager randomArist];
  self.label.text = artist.name;
  [self.label sizeToFit];
  self.imageView.image = artist.image;
}

- (IBAction)buttonTapped:(UIButton *)sender {
  [self updateView];
}

@end
