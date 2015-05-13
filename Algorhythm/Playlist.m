//
//  Playlist.m
//  Algorhythm
//
//  Created by Sahil Gupta on 2015-05-12.
//  Copyright (c) 2015 Sahil Gupta. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist


- (instancetype)initWithIndex: (NSUInteger)index
{
    self = [super init];
    if(self){
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
        
        NSDictionary *playListDictionary = library[index];
        _playlistTitle = [playListDictionary objectForKey:kTitle];
        _playlistDescription = [playListDictionary objectForKey:kDescription];
        _playlistIcon = [UIImage imageNamed:[playListDictionary objectForKey:kIcon]];
        _playlistIconLarge = [UIImage imageNamed:[playListDictionary objectForKey:kLargeIcon]];
        _playlistArtists = [NSArray arrayWithArray:[playListDictionary objectForKey:kArtists]];
        _playlistBackgroundColor = [self rgbColorFromDictionary:[playListDictionary objectForKey:kBackgroundColor]];
    }
    return self;
}


-(UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary{
    
     CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
     CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
     CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
     CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];

    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
