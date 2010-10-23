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

- (void) functonPointers
{
    setSkinColorFunc
    = (void (*) (id,SET,NSString*)) [cattle[1] methodForSelector:skin];
    sayFunc = [cattle[1] methodForSelector:say];
    setSkinColorFunc(cattle[1],skin,@"verbose");
    NSLog(@"Running as a function pointer will be more efficiency!");
    asyFunc(cattle[1],say);
}

- (void) doWithCattleId:(id) aCattle colorParam:(NSString *) color
{
    if(notFirstRun == NO)
    {
    NSString *myName = NSStringFromSellector(_cmd);
        NSLog(@"Running in the method of %@",myName);
        notForstRun = YES;
    }

    NSString *cattleParamClassName = [aCattle className];
    if([cattleParamClassName isEqualToString:BULL_CLASS] ||
       [cattleParamClassName isEqualToString:CATTLE_CLASS])
    {
            [aCattle setLegsCount:4];
            if([aCattle respondsToSelector:skin])
            {
                    [aCattle perFormSelector:skin withObject:color];
            }
            else
            {
                    NSLog(@"Hi,I am a %@,have not setSkinColor!",
                                    cattleParamClassName);
            }
            [aCattle performSelector:say];
    }
    else
    {
            NSString *yourClassName = [aCattle className];
            NSLog(@"Hi, you are a %@, but I like cattle or bull!",
                            yourClassName);
    }
}


@end
