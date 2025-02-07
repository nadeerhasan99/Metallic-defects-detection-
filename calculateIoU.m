function intersectionOverUnion = calculateIoU(groundTruth1, groundTruth2)
    % Check if the input images have the same size
    if ~isequal(size(groundTruth1), size(groundTruth2))
        error('Input images must have the same dimensions.');
    end

    % Convert binary images to logical type
    groundTruth1 = logical(groundTruth1);
    groundTruth2 = logical(groundTruth2);

    % Calculate intersection and union
    intersection = sum(groundTruth1(:) & groundTruth2(:));
    union = sum(groundTruth1(:) | groundTruth2(:));

    % Calculate Intersection over Union (IoU)
    intersectionOverUnion = intersection / union;
end