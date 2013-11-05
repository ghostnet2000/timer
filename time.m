/*
 * My first ever Objective C - program 
 * author: Kevin Viwe Lolwane
 */

#import <Foundation/Foundation.h>

@interface Time: NSObject
{
    int days;
    int hours;
    int minutes;
    int seconds;
}

-(void) outputTime;
-(void) setTime: (int) d :(int) h :(int) m :(int) s;
-(void) adjustTime;
@end

@implementation Time
-(void) outputTime
{
    NSLog(@" %i days : %i hours : %i minutes : %i seconds", days, hours, minutes, seconds );
}

-(void) setTime: (int) d :(int) h :(int) m :(int) s
{
    days += d;
    hours += h;
    minutes += m;
    seconds += s;
    
    [self adjustTime];
}

-(void) adjustTime
{
    while( seconds >= 60 )
    {
        seconds -= 60;
        minutes += 1;
    }
    while( minutes >= 60 )
    {
        minutes -= 60;
        hours += 1;
    }
    while( hours >= 24 )
    {
        hours -= 24;
        days += 1;
    }
    NSLog(@"adjusted");
}
@end

int main( int argc, const char * argv[] )
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    Time * time = [Time alloc];
    time = [time init];
    
    [time setTime: 10 : 7777 : 10 : 3974];
    [time outputTime];
    [time release];
    
    [pool drain];

    return 0;
}





