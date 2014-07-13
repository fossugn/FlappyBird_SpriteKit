//
//  GameHelperLayer.m
//  FlappyBird
//
//  Created by MacBook  on 7/13/14.
//  Copyright (c) 2014 MacBook . All rights reserved.
//

#import "GameHelperLayer.h"

#define kTranspartentNodeName @"transparent"

@implementation GameHelperLayer

-(id)initWithSize:(CGSize) size
{
    self = [super init];
    if (self) {
        SKSpriteNode *node = [SKSpriteNode spriteNodeWithColor:[UIColor colorWithWhite:1.0 alpha:0.0] size:size];
        node.anchorPoint = CGPointZero;
        [self addChild:node];
        node.zPosition = -1;
        node.name = kTranspartentNodeName;
    }
    return self;
}

@end
