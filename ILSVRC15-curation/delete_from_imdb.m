function imdb = delete_from_imdb(imdb, to_delete)
% -----------------------------------------------------------------------------------------------
    if ~isempty(to_delete)
        imdb.total_valid_objects =  imdb.total_valid_objects - sum(imdb.n_valid_objects(to_delete));
        imdb.id(to_delete) = [];
        imdb.path(to_delete) = [];
        imdb.nframes(to_delete) = [];
        if isfield(imdb, 'set')
            imdb.set(to_delete) = [];
        end
        imdb.n_valid_objects(to_delete) = [];
        imdb.objects(to_delete) = [];
        imdb.valid_trackids(:,to_delete) = [];
        imdb.valid_per_trackid(:, to_delete) = [];
    end
end