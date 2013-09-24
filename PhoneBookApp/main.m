#import<Foundation/Foundation.h>
#import "PhoneCard.h"
#import "PhoneBook.h"

int main(int argc,char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];

	PhoneBook *mybook=[[PhoneBook alloc]initWithName:@"PHONEBOOK"];
	PhoneCard *pc1,*pc2,*pc3;
	pc1=[[PhoneCard alloc]init];//To set values instead of add entry.
	pc2=[[PhoneCard alloc]init];
	pc3=[[PhoneCard alloc]init];
	
	[pc1 setName:@"Inky"];
	[pc1 setEmail_id:@"inky@gmail.com"];
	[pc1 setPhone_no:98765];
	
	[pc2 setName:@"Pinky"];
	[pc2 setEmail_id:@"pinky@gamil.com"];
	[pc2 setPhone_no:99677];
	
	[pc3 setName:@"Ponky"];
	[pc3 setEmail_id:@"ponky@gmail.com"];
	[pc3 setPhone_no:95453];
	NSLog(@"THE PHONE BOOK ENTRIES ARE:");
	NSLog(@"--------------------------------------");
	[[mybook getNa] addObject:pc1];//to add these each object to PhoneBook class
	[[mybook getNa] addObject:pc2];
	[[mybook getNa] addObject:pc3];
	
	[mybook list];
	int count1=[mybook countOfEntries];
	NSLog(@"----------------------------------------");
	NSLog(@"Total number of entries are:%d",count1);
	NSLog(@"***************************************************************************************");
	[mybook deleteEntry:pc2];//Delete the object
	NSLog(@"ENTRIES AFTER DELETING ONE CARD:");
	[mybook list];
	int count2=[mybook countOfEntries];
	NSLog(@"----------------------------------------");
	NSLog(@"Total number of entries are:%d",count2);
	NSLog(@"***************************************************************************************");

	id s=[mybook searchByName:@"inky"];//send name to search.If the same is present print successful else print unsuccessfull.
	if(s == nil)
	{
	
		NSLog(@"Search unsuccessfull");
	}
	else
	{
		NSLog(@"Search successfull");
	}
	NSLog(@"----------------------------------------");

	[mybook editEntry:@"ponky" andArg: 90000]; //Edit the phone no using name as key.
	NSLog(@"AFTER EDITING THE PHONE.NO FOR THE GIVEN NAME:");

	[mybook list];
	int count3=[mybook countOfEntries];
	NSLog(@"----------------------------------------");
	NSLog(@"Total number of entries are:%d",count3);
	NSLog(@"******************************************************************************************");

	
	[pc1 release];
	[pc2 release];
	[pc3 release];
	[mybook release];
	[pool drain];     
	return 0;
}
