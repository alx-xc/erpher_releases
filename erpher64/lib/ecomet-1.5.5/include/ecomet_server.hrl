-include("ecomet_nums.hrl").

-ifndef(ecomet_server).
-define(ecomet_server, true).

% state of a server server
-record(csr, {
    sio_children = [], % socket-io
    sjs_children = [], % sockjs
    child_config = [],
    socketio_config = [],
    sockjs_config = [],
    log,
    conn, % #conn{}
    rses, % #rses{}
    stat, % #stat{}
    timer_stat        :: reference(), % timer reference for periodic log stat
    log_stat_interval :: non_neg_integer(), % seconds

    % for smoke test
    smoke_test        :: undefined | broadcast | {random, non_neg_integer()},
    debug
}).

-endif.
