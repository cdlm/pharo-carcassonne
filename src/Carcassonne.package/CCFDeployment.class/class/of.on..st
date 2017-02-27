instance creation
of: aFollower on: aSegment 
	^ self new
		setSegment: aSegment follower: aFollower;
		yourself