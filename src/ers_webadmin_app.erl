%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the ers_webadmin application.

-module(ers_webadmin_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for ers_webadmin.
start(_Type, _StartArgs) ->
    ers_webadmin_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for ers_webadmin.
stop(_State) ->
    ok.
