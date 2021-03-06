%%%=============================================================================
%%% @copyright (C) 2018, Aeternity Anstalt
%%% @doc
%%%    Records for entities that are used by dispatcher in aec
%%% @end
%%%=============================================================================

-record(commitment,
        {hash    :: binary(),
         owner   :: aec_keys:pubkey(),
         created :: aec_blocks:height(),
         expires :: aec_blocks:height()
         }).

-type name_status() :: claimed | revoked.

-record(name,
        {hash            :: binary(),
         owner           :: aec_keys:pubkey(),
         expires         :: aec_blocks:height(),
         status          :: name_status(),
         client_ttl = 0  :: integer(),
         pointers   = [] :: list()}).
