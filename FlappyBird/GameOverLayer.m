//
//  GameOverLayer.m
//  FlappyBird
//
//  Created by MacBook  on 7/13/14.
//  Copyright (c) 2014 MacBook . All rights reserved.
//

#import "GameOverLayer.h"

@interface GameOverLayer()
@property (nonatomic, retain) SKSpriteNode* retryButton;
@property (nonatomic, retain) SKLabelNode* scoreLabel;
@end

@implementation GameOverLayer

-(id)initWithSize:(CGSize)size
{
    if(self = [super initWithSize:size])
    {
        SKSpriteNode* startGameText = [SKSpriteNode spriteNodeWithImageNamed:@"GameOverText"];
        startGameText.position = CGPointMake(size.width * 0.5f, size.height * 0.8f);
        [self addChild:startGameText];
        
        SKSpriteNode* retryButton = [SKSpriteNode spriteNodeWithImageNamed:@"PlayButton"];
        retryButton.position = CGPointMake(size.width * 0.5f, size.height * 0.30f);
        [self addChild:retryButton];
        
        [self setRetryButton:retryButton];
        
        SKLabelNode *scoreLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        scoreLabel.text = @"Score: 0";
        scoreLabel.fontSize = 30;
        scoreLabel.position = CGPointMake(size.width * 0.5f, size.height * 0.5f);
        [self addChild:scoreLabel];
        
        [self setScoreLabel:scoreLabel];
        
        
    }
    
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    
    if ([_retryButton containsPoint:location])
    {
        if([self.delegate respondsToSelector:@selector(gameOverLayer:tapRecognizedOnButton:)])
        {
            [self.delegate gameOverLayer:self tapRecognizedOnButton:GameOverLayerPlayButton];
        }
    }
}

- (void) setScore: (int)score
{
    if (self.scoreLabel) {
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", score];
    }
}

@end
