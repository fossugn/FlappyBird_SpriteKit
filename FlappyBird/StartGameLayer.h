//
//  StartGameLayer.h
//  FlappyBird
//
//  Created by MacBook  on 7/13/14.
//  Copyright (c) 2014 MacBook . All rights reserved.
//

#import "GameHelperLayer.h"

typedef NS_ENUM(NSUInteger, StartGameLayerButtonType)
{
    StartGameLayerPlayButton = 0
};

@protocol StartGameLayerDelegate;
@interface StartGameLayer : GameHelperLayer
@property (nonatomic, assign) id<StartGameLayerDelegate> delegate;
@end

@protocol StartGameLayerDelegate<NSObject>
@optional
- (void)startGameLayer:(StartGameLayer *)sender tapRecognizedOnButton:(StartGameLayerButtonType)startGameLayerButton;
@end
