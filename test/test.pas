program test;
var f:TextFile;s,temp:String;l:Integer;
begin
    assign(f,'/workspaces/ICT-SBA_NEW/asset/puzzle/txt/test.txt');
    reset(f);
    s:='';
    temp:='';
    for l:=1 to 3 do
    begin
        Readln(f)
    end;
    Readln(f,s);
    Close(f);
    Write(s);
    Write('ok');
end.