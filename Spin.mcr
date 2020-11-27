#!MC 1410

$!VARSET |NUMBEROFPICS| = 60
$!VARSET |DELTATHETA| = 360
$!VARSET |DELTATHETA| /= |NUMBEROFPICS|


$!LOOP |NUMBEROFPICS|
	
	$!ROTATE3DVIEW ABOUTVECTOR
	VECTORX = 0
	VECTORY = 1
	VECTORZ = 0
	ANGLE = |DELTATHETA|

	$!REDRAWALL 
	
	
	$!EXPORTSETUP IMAGEWIDTH = 1500
	$!EXPORTSETUP EXPORTFNAME = "F:/01 - Lofted Cylinder/01 - SPIV/02 - Processing/01 - Average Reconstruction/45 deg/200k_Interpolated/Animation/|LOOP|.png"
	$!EXPORT 
	EXPORTREGION = CURRENTFRAME
  
	#$!Pause "DT: |THETA%.2f|"
$!ENDLOOP

#$!Pause "DT: |DELTATHETA%.2f|"


#This code spins the view and exports figures for a nice 3d orbit animation.
