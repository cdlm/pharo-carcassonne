initialization
testGetPlacement
	| tile placement |
	tile := CCFBasicGame rfrfTile.
	
	placement := map placementFor: tile at: 2 at: 1.
	placement should be isLegal.
	placement eastward should be: startingTile.

	placement := map placementFor: tile at: 1 at: 2.
	placement should be isLegal.
	placement southward should be: startingTile.
	
	placement := map placementFor: tile at: 3 at: 2.
	placement should be isLegal.
	placement northward should be: startingTile.

	placement := map placementFor: tile at: 2 at: 3.
	placement should not be isLegal.
	placement westward should be: startingTile.