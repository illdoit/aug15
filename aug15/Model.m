//
//  Model.m
//  Tree
//
//  Created by NYU User on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Model.h"

/*
The model consists of a big tree containing little trees.
The little trees have even smaller ones inside them.
At the very bottom are trees that contain no smaller trees.
We call them the "leaves".

An NSIndexPath identifies a tree.  For example,
0 represents the United States.
0.0 represents Connecticut.
0.1 represents New York.
0.2 represents New Jersey.
0.1.1 represents Putnam County.
0.1.1.2 represents Cold Spring.

Each tree is implemented as an NSArray.  The first object in the NSArray is an NSString
giving the name of the tree.  The remaining objects, if any, are the subtrees inside of
the tree.
*/

#define BEGIN [NSArray arrayWithObjects:
#define END , nil]

@implementation Model

- (id) init {
	self = [super init];
	if (self) {
		tree = BEGIN @"NBA",
			BEGIN @"Atlantic Division",
				BEGIN @"Broooklyn Nets",
					BEGIN @"alan anderson"
					END,
        			BEGIN @"andray blatche"
        			END,
        			BEGIN @"reggie evans"
        			END,
        			BEGIN @"kevin garnett"
        			END,
        			BEGIN @"joe johnson"
        			END,
          			BEGIN @"andrei kirilinko"
                    END,
        			BEGIN @"shaun livingston"
        			END,
        			BEGIN @"brooke lopez"
        			END,
        			BEGIN @"paul pierce"
        			END,
        			BEGIN @"mason plumlee"
        			END,
        			BEGIN @"tornike shengelia"
        			END,
        			BEGIN @"jerry stackhouse"
        			END,
       	 			BEGIN @"tyshawn taylor"
        			END,
        			BEGIN @"mirza teletovic"
        			END,
        			BEGIN @"jason terry"
        			END,
        			BEGIN @"deron williams"
        			END
				END,

        BEGIN @"New York Knicks",
        BEGIN @"carmelo anthony"
        END,
        BEGIN @"andrea bargnani"
        END,
        BEGIN @"earl barron"
        END,
        BEGIN @"tyson chandler"
        END,
        BEGIN @"raymond felton"
        END,
        BEGIN @"timothy hardaway"
        END,
        BEGIN @"cj leslie"
        END,
        BEGIN @"kenyon martin"
        END,
        BEGIN @"pablo prigioni"
        END,
        BEGIN @"iman shummpert"
        END,
        BEGIN @"jr smith"
        END,
        BEGIN @"amare stoudemire"
        END,
        BEGIN @"jeremy tyler"
        END,
        BEGIN @"beno udrih"
        END,
        BEGIN @"metta world peace"
        END
        END,
				
        BEGIN @"Boston Celtics",
        BEGIN @"brandon bass"
        END,
        BEGIN @"keith bogans"
        END,
        BEGIN @"avery bradley"
        END,
        BEGIN @"marson brooks"
        END,
        BEGIN @"jordan crawford"
        END,
        BEGIN @"vitor faverani"
        END,
        BEGIN @"jeff green"
        END,
        BEGIN @"kris humphries"
        END,
        BEGIN @"kelly olynyk"
        END,
        BEGIN @"phil pressey"
        END,
        BEGIN @"rajon rondo"
        END,
        BEGIN @"jared sullinger"
        END,
        BEGIN @"gerald wallace"
        END,
        BEGIN @"chris wilcox"
        END
        END,
        
        
        BEGIN @"Philadelphia 76ers",
        BEGIN @"lavoy allen"
        END,
        BEGIN @"james anderson"
        END,
        BEGIN @"kwame brown"
        END,
        BEGIN @"micheal carter-williams"
        END,
        BEGIN @"spencer hawes"
        END,
        BEGIN @"justin holiday"
        END,
        BEGIN @"royal ivey"
        END,
        BEGIN @"charles jenkins"
        END,
        BEGIN @"arsalan kazemi"
        END,
        BEGIN @"arnett moultrie"
        END,
        BEGIN @"knerlens noel"
        END,
        BEGIN @"tim ohlbrecht"
        END,
        BEGIN @"jason richardson"
        END,
        BEGIN @"evan turner"
        END,
        BEGIN @"royce white"
        END,
        BEGIN @"damien wilkins"
        END,
        BEGIN @"thaddeus young"
        END
        END,
        
        BEGIN @"Toronto Raptors",
        BEGIN @"quincy acy"
        END,
        BEGIN @"dj augustin"
        END,
        BEGIN @"dwight buycks"
        END,
        BEGIN @"demar derozan"
        END,
        BEGIN @"landry fields"
        END,
        BEGIN @"rudy gay"
        END,
        BEGIN @"aaron gray"
        END,
        BEGIN @"tyler hansbrough"
        END,
        BEGIN @"amir johnson"
        END,
        BEGIN @"linas kleiza"
        END,
        BEGIN @"kyle lowry"
        END,
        BEGIN @"steve novak"
        END,
        BEGIN @"mickael pietrus"
        END,
        BEGIN @"quentin richardson"
        END,
        BEGIN @"terrance ross"
        END,
        BEGIN @"sebastian telfair"
        END,
        BEGIN @"jonas valanciunas"
        END
        END
        
        END
		END;
	}




	return self;
}


//Return the tree to which the index path leads.

- (NSArray *) tree: (NSIndexPath *) indexPath
{
	NSArray *a = tree;

	for (NSUInteger p = 0; p < indexPath.length; ++p) {
		NSUInteger i = [indexPath indexAtPosition: p];
		a = [a objectAtIndex: i + 1];
	}

	return a;
}

//Return the name of the tree to which the indexPath leads.

- (NSString *) name: (NSIndexPath *) indexPath
{
	NSArray *a = [self tree: indexPath];
	return [a objectAtIndex: 0];
}

//Return the number of subtrees of the tree to which the indexPath leads.

- (NSUInteger) numberOfRows: (NSIndexPath *) indexPath
{
	NSArray *a = [self tree: indexPath];
	return a.count - 1;
}

//Return the line of text that should go in the specified row
//of the tree to which the indexPath leads.

- (NSString *) text: (NSIndexPath *) indexPath row: (NSUInteger) row
{
	indexPath = [indexPath indexPathByAddingIndex: row];
	return [self name: indexPath];
}

@end
