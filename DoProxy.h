#import <Foundation/Foundation.h>

#define SET_SKIN_COLOR @"setSkinColor:"
#define BULL_CLASS @"Bull"
#define CATTLE_CLASS @"Cattle"

@interface DoPorxy :NSObject
{
    BOOL notFirstRun;
    id cattle[3];
    SEL say;
    SEL ski;
    void (*setSkinColorFunc) (id,SEL,NSString*);
    IMP sayFunc;
    Class bullClass;
}

- (void) doWithCattleId:(id) aCattel colorPraram:(NSString*) color;
- (void) setAllIVars;
- (void) SELFuncs;
- (void) functionPointers;

@end
