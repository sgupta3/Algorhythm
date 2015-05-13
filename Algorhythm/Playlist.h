//
//  Playlist.h
//  Algorhythm
//
//  Created by Sahil Gupta on 2015-05-12.
//  Copyright (c) 2015 Sahil Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Playlist : NSObject

@property(strong,nonatomic) NSString *playlistTitle;
@property(strong,nonatomic) NSString *playlistDescription;
@property(strong,nonatomic) UIImage *playlistIcon;
@property(strong,nonatomic) UIImage *playlistIconLarge;
@property(strong,nonatomic) NSArray *playlistArtists;
@property(strong,nonatomic) UIColor *playlistBackgroundColor;
- (instancetype)initWithIndex: (NSUInteger)index;
@end
