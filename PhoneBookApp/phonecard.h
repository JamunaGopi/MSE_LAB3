#import <Foundation/Foundation.h>

@interface PhoneCard:NSObject
{
	NSString *name;
	NSString *email_id;
	int phone_no;
}
@property (readwrite,retain) NSString *name;
@property (readwrite,retain) NSString *email_id;
@property int phone_no;

-(void) print;

@end