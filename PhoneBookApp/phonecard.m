#import <Foundation/Foundation.h>
#import "PhoneCard.h"

@implementation PhoneCard

@synthesize name,email_id,phone_no;

-(void) print //To print the details.
{
	NSLog(@"Name: %@",name);
	NSLog(@"Email Id: %@",email_id);
	NSLog(@"Phone Number: %d",phone_no);
}

@end