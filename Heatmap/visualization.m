%Visualize the restaurant inspection data, -true positives, false
%positives, false negatives

%read the data
 
ds = datastore(...
    'RF_testset_w_confusionmatrix.csv', ...         % wild card char *
    'ReadVariableNames',false, ...                      % ignore header
    'VariableNames',{'Lat','Lon','tp','fp','fn' }); 
ds.NumHeaderLines = 1;                                  % has header line
ds.TextscanFormats = ...                                % set data formats
    {'%f','%f','%s','%s','%s'};
preview(ds)  


ds.SelectedVariableNames = { 'Lat', 'Lon','tp','fp','fn'};  % select variables
T = readall(ds);                                        % read all
save('violations.mat', 'T');                                  % save to disk

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
T1=T(strcmp(T.tp,'True'),1:2); %true positive
T2=T(strcmp(T.fp,'True'),1:2); %false positive
T3=T(strcmp(T.fn,'True'),1:2); %false negatives

load wms
figure                                                  % create a new figure
usamap(R.LatitudeLimits, R.LongitudeLimits);                               % limit to New York area
geoshow(A, R)                                           % display raster map
geoshow(T1.Lat, T1.Lon, ...                               % overlay data points
    'DisplayType', 'point', ...                         % display as a point
    'Marker', '.', ...                                  % use dot
    'MarkerSize', 6, ...                                % keep the size small
    'MarkerEdgeColor', 'r')                             % set color to cyan
geoshow(T2.Lat, T2.Lon, ...                               % overlay data points
    'DisplayType', 'point', ...                         % display as a point
    'Marker', '.', ...                                  % use dot
    'MarkerSize', 6, ...                                % keep the size small
    'MarkerEdgeColor', 'b')                             % set color to cyan
geoshow(T3.Lat, T3.Lon, ...                               % overlay data points
    'DisplayType', 'point', ...                         % display as a point
    'Marker', '.', ...                                  % use dot
    'MarkerSize', 6, ...                                % keep the size small
    'MarkerEdgeColor', 'g')                             % set color to cyan
title({'NYC Restaurants'})  % add title  
legend('true positives','false positives','false negatives')

% %Visualize violation prediction with a heat map
% 
% nbins = 150;                                            % number of bins
% xbinedges = linspace(lim.lon(1),lim.lon(2),nbins);      % x-axis bin edges
% ybinedges = linspace(lim.lat(1),lim.lat(2),nbins);      % y-axis bin edges
% map = flipud(A);                                        % flip image
% 
% figure
% imagesc(lim.lon, lim.lat, map)                          % show raster map
% hold on                                                 % don't overwrite
% colormap cool                                           % set colormap
% histogram2(T.Lon, T.Lat, xbinedges, ybinedges, ...      % overlay histogram
%     'DisplayStyle', 'tile', ...                         % in 2D style
%     'FaceAlpha', 0.5)
% hold off                                                % restore default
% daspect(dar)                                            % adjust ratio
% set(gca,'ydir','normal');                               % fix y orientation
% caxis([0 5000])                                         % color axis scaling
% title({'NYC Uber Pickup Frequency'; 'Apr - Sep 2014'})  % add title
% text(lmk1.lon, lmk1.lat, lmk1.str, 'Color', 'w');       % add landmarks
% text(lmk2.lon, lmk2.lat, lmk2.str, 'Color', 'w', ...    % add landmarks
%     'HorizontalAlignment', 'right');
% colorbar                                                % add colorbar