initialization
testGetPlacement
	| tile placement |
	tile := CCFBasicGame rfrfTile.
	placement := map placementFor: tile at: 1 at: 2.
	
	placement should be isLegal.
	placement eastward should be: (map at: 2 at: 2)