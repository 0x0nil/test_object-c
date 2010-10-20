#import "DoPoxy.h"
#import "Callte.h"
#import "Bull.h"

@implementation DoProxy
-(void) setAllIVars
{
    cattle[0] = [Cattle new];

    bullClass = NSClassFromString(BULL_CLASS);
    cattle[1] = [bullClass new];
    cattle[2] = [bullClass new];

    say = @selector(saySomething);
    skin = NSSelectorFromString(SET_SKIN_COLOR);
}

-(void) SELFunc
{
    [self doWithCattleId:cattle[0] colorParam:@"brown"];
    [self doWithCattleId:cattle[1] colorParam:@"red"];
    [self doWithCattleId:cattle[2] colorParam:@"black"];
    [self doWithCattleId:self colorParam:@"haha"];
}

- (void) functonPoints
{
    setSkinColorFunc
    = (void (*) (id,SET,NSString*)) [cattle[1] methodForSelector:skin];
    sayFunc
}


@end
