//
//  Vehicle.m
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@interface Vehicle() {
    NSString *_brandName;
}
@end

@implementation Vehicle

//Setter method
-(void)setBrandName:(NSString *)brandName
{
    _brandName = [brandName copy];
}

//Getter method
-(NSString *)brandName
{
    return _brandName;
}

-(NSString *)goForward
{
    return nil;
}

-(NSString *)goBackward
{
    return nil;
}

-(NSString *)stopMoving
{
    return nil;
}

-(NSString *)turn:(NSInteger)degrees
{
    //Since there are only 360 degrees in a circle, calculate what a single turn would be.
    NSInteger degreesInACircle = 360;
    
    if (degrees > degreesInACircle || degrees < -degreesInACircle) {
        //The % operator returns the remainder after dividing.
        degrees = degrees % degreesInACircle;
    }
    
    return [NSString stringWithFormat:@"Turn %d degrees.", degrees];
}

-(NSString *)changeGears:(NSString *)newGearName
{
    return [NSString stringWithFormat:@"Put %@ into %@ gear.", self.modelName, newGearName];
}

-(NSString *)makeNoise
{
    return nil;
}

#pragma mark - Convenience Methods
-(NSString *)vehicleTitleString
{
    return [NSString stringWithFormat:@"%d %@ %@", self.modelYear, self.brandName, self.modelName];
}

@end
