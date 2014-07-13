//
//  GameOverLayer.h
//  FlappyBird
//
//  Created by MacBook  on 7/13/14.
//  Copyright (c) 2014 MacBook . All rights reserved.
//

#import "GameHelperLayer.h"

typedef NS_ENUM(NSUInteger, GameOverLayerButtonType)
{
    GameOverLayerPlayButton = 0
};


@protocol GameOverLayerDelegate;
@interface GameOverLayer : GameHelperLayer
@property (nonatomic, assign) id<GameOverLayerDelegate> delegate;
- (void) setScore: (int)score;
@end


@protocol GameOverLayerDelegate <NSObject>
@optional

- (void) gameOverLayer:(GameOverLayer*)sender tapRecognizedOnButton:(GameOverLayerButtonType) gameOverLayerButtonType;
@end
