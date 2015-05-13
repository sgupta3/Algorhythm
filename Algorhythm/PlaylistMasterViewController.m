//
//  ViewController.m
//  Algorhythm
//
//  Created by Sahil Gupta on 2015-05-12.
//  Copyright (c) 2015 Sahil Gupta. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press Me" forState:UIControlStateNormal];
    
    Playlist *playlist =[[Playlist alloc] initWithIndex:0];
    self.playlistImageView0.image = playlist.playlistIcon;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqual:@"showPlaylistDetail"]){
        
        PlaylistDetailViewController *playListDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        
        
        playListDetailController.playlist = [[Playlist alloc] initWithIndex:0];
    }
}


@end
