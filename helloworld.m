#import <Foundation/Foundation.h>
#import "Callte.h"
#import "Bull.h"

int main (int argc, const char *argv[])
{
    NSAutoreleasePool *pool=[[NSAutoreleasePool alloc] init];
    NSLog(@"Hello World!");

    id cattle = [Cattle new];
    [cattle setLegsCount:4];
    [cattle saySomething];

    id redBull = [Bull new];
    [redBull setLegsCount:4];
    [redBull setSkinColor:@"red"];
    [redBull saySomething];

    Bull *blackBull = [Bull new];
    [blackBull setLegsCount:4];
    [blackBull setSkinColor:@"black"];
    [blackBull saySomething];

    [pool drain];
    return 0;
}
