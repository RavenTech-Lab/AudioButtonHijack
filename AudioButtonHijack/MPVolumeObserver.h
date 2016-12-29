//
//  MPVolumeObserver.h
//  AudioButtonHijack
//
//  Created by 叔 陈 on 06/12/2016.
//  Copyright © 2016 叔 陈. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>

@class MPVolumeObserver;

@protocol MPVolumeObserverProtocol <NSObject>

- (void)volumeButtonDidUp:(MPVolumeObserver *)button;
- (void)volumeButtonDidDown:(MPVolumeObserver *)button;

@end


@interface MPVolumeObserver : NSObject
@property (nonatomic, assign) id<MPVolumeObserverProtocol> delegate;

+ (MPVolumeObserver*) sharedInstance;
- (void)startObserveVolumeChangeEvents;
- (void)stopObserveVolumeChangeEvents;

@end
