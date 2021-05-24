
PROCEDURE Main

    COPY FILE ("../hbformat/original.prg") TO original.prg
    ? FileCopy( "../hbformat/hbformat.sh" , "hbtest.sh" )
    ? FileCopy( "../unknow" , "test" )

RETURN
