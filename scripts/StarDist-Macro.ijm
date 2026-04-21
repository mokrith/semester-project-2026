//run("Close All");
run("Set Measurements...", "area display redirect=None decimal=5");

a = getTitle();
selectImage(a);

// předávám název obrázku
// TODO: upravit paramery' probThresh':'0.x', 'nmsThresh':'0.x'
run("Command From Macro", "command=[de.csbdresden.stardist.StarDist2D], args=['input':'"+a+"', 'modelChoice':'Versatile (fluorescent nuclei)', 'normalizeInput':'true', 'percentileBottom':'1.0', 'percentileTop':'99.8', 'probThresh':'0.5', 'nmsThresh':'0.7', 'outputType':'Both', 'nTiles':'1', 'excludeBoundary':'2', 'roiPosition':'Automatic', 'verbose':'false', 'showCsbdeepProgress':'true', 'showProbAndDist':'false'], process=[false]");
selectImage("Label Image");
roiManager("Measure");

count = roiManager("count");
print(a +"; " + count);