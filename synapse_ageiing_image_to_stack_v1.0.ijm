input = getDirectory("C:/Users/uqyrong/Desktop/test2");

list = getFileList(input);

for (i = 0; i < list.length; i++)
	if (endsWith(list[i], ".nd2")) {
		open(input + File.separator + list[i]);
//		run("Bio-Formats Importer", "open=["+input+"/"+list[i]+"] color_mode=Composite quiet rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT use_virtual_stack");
		run("Z Project...", "projection=[Max Intensity]");
		run("Green");
		setMinAndMax(100, 1000);
	}
run("Images to Stack", "name=Stack_KP1148 use");

