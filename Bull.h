#import <Foundation/Foundation.h>
#import "Callte.h"

@interface Bull : Cattle
{
        NSString *skinColor;
}

- (void) saySomething;
- (NSString*) getSkinColor;
- (void) setSkinColor : (NSString *) color;

@end
