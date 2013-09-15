#import <Foundation/Foundation.h>

#import "PhoneBook.h"
#import "PhoneCard.h"

@implementation PhoneBook

-(id)initWithName:(NSString *)name
{
	 if ((self = [super init]))
    {
		bN=[[NSString alloc]initWithString:name];
		Na=[[NSMutableArray alloc]init];//To store the entries so that they are modifiable.
    }
    return self;
}

- (id) init
{
    if (( self = [super init]))
    {
	 	[self initWithName:@"NoName"];//Initially the name is blank.
    }
    return self;
}

-(PhoneCard *) searchByName:(NSString *)name
{
	for(PhoneCard *card in Na)
	{
		if([card.name caseInsensitiveCompare:name]==NSOrderedSame)//Compares the array of card names with the given names,if its same returns the name.
			return card;
	}
	return nil;
}
-(void) deleteEntry:(PhoneCard *)c2 
{
	
	[Na removeObject:c2];//Inbuilt funtion is used to remove the object.
	
}

-(void) editEntry:(NSString *) name andArg:(int) phone_no
{
	PhoneCard *temp;
	temp=[self searchByName:name];//the name is searched first to edit.
	temp.phone_no=phone_no;//Dot operator is used to take the name's phone no and the argument phone no is assigned to the searched name's phone no.
}

-(void) list //To list the details of phone book and which inturn calls the phone card "print" function.
{
	for(PhoneCard *card in Na)
	{
		[card print];
	}
}

-(int) countOfEntries
{
	int c= [Na count];//Inbuilt fuction is used.
    return c;
}

-(NSMutableArray*) getNa
{
	return Na;
}
@end