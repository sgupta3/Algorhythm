//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Sahil Gupta on 2015-05-12.
//  Copyright (c) 2015 Sahil Gupta. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.playlist){
        self.playlistCoverImage.image  = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.playlistBackgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
