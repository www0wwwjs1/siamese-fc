parfor i = 0 : 4
    per_frame_annotation('/home/zhang/data/ILSVRC2015_VID/', i);
end

%%
parfor i = 0 : 4
    parse_objects('/home/zhang/data/ILSVRC2015_VID/', i);
end

%%
imdb_video = vid_setup_data('/home/zhang/data/ILSVRC2015_VID/');