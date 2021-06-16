function dt = GetLastCheckForUpdates()
if ~ispathvalid([av.getAppDir, 'LastCheckForUpdates.dat'])
    dt = datetime - duration(200,0,0);
else
    fd = fopen([av.getAppDir, 'LastCheckForUpdates.dat'],'rt');
    dt = fgetl(fd);
    fclose(fd);
end

