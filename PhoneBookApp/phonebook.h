#import <Foundation/Foundation.h>
#import "PhoneCard.h"

@interface PhoneBook:NSObject
{
	NSMutableArray *Na;
	NSString *bN;
}

-(void) deleteEntry:(PhoneCard *) c2;
-(PhoneCard *) searchByName:(NSString *)name;
-(void) editEntry:(NSString *) name andArg:(int)phone_no;
-(void) list;
-(int) countOfEntries;
-(NSMutableArray*) getNa;

@end