function SetLastCheckForUpdates(dt)
if ~exist('dt','var') && ispathvalid([av.getAppDir, 'LastCheckForUpdates.dat'])
    return;
end
if ~exist('dt','var')
    dt = datetime;
end
fd = fopen([av.getAppDir, 'LastCheckForUpdates.dat'],'wt');
fprintf(fd, '%s\n', dt);
fclose(fd);

