#import "Callte.h"

@implementation Cattle
-(void) saySomething
{
    NSLog(@"Hello,I am a cattle,I have %d legs.",legsCount);
}

-(void) setLegsCount :(int) count
{
    legsCount = count;
}

@end
