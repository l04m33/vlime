function! vlime#contrib#presentation_streams#Init(conn)
    call a:conn.Send(
                \ a:conn.EmacsRex(
                    \ [vlime#Sym('SWANK', 'INIT-PRESENTATION-STREAMS')]),
                \ function('vlime#SimpleSendCB',
                    \ [a:conn, v:null, 'vlime#contrib#presentation_streams#Init']))
endfunction

