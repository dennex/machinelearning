listObjects = dir('101_ObjectCategories');
listAnnotations = dir('Annotations');

for i = 3:length(listObjects)
    listImages = dir(strcat('101_ObjectCategories/', listObjects(i).name));
    
    listImagesAnnot = dir(strcat('Annotations/', listObjects(i).name));
    if (~isempty(listImagesAnnot))
        for j = 3:length(listImages)
            imgStr = strcat('101_ObjectCategories/',listObjects(i).name,'/',listImages(j).name);
            annotStr = strcat('Annotations/',listObjects(i).name,'/',listImagesAnnot(j).name);
            show_annotation(imgStr, annotStr);
        end
    else
        strcat(listObjects(i).name, ' is empty');
    end
end