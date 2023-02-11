unit filing;

interface
    function Get_table(level:integer);

implementation
var Table:file of String ;level_type,table:string;
    function Get_table(level:integer):String;
        var l,lines,max_lines,target:integer;temp:string;
        begin
            randomize;
            table:='';
            case (level) of 
                1:level_type:='easy.txt';
                2:level_type:='hard.txt';
                3:level_type:='hardest.txt';
            end;

            Assign(table,'asset/txt/'+level_type);
            Reset(f);
            readln(f,max_lines);

            target:=random(max_lines-1)+1; 
            for l:= 1 to target do
                ReadLn(f);
            readln(f,table);
            Close(f);
            get_table:=table;

    end;