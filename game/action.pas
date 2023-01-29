unit action;

interface 
var check=check;

    procedure add_key_to_table(x,y,key,table);
    var index:integer;
    begin
        index:=y*9+x;
        if check.Check(index,key,table) and (ord(table[index])<10 and ord(table[index]>0)) then
        begin
            table[index] :=key;
        end;
    end;

    procedure del_key_from_table(x,y,key,table);
    var index:integer;
    begin
        index:=y*9+x;
        if table[index]<>'0' then
            table[index]:='0';

    end;

    procedure hint(x,y,table);
    var index:integer;
    begin
        index:=y*9+x;
    end;

implementation
type 
    check=class
    public
        constructor Check(index,key,table):boolean;

    private
        function check_row(index,key,table):boolean;
        function check_column(index,key,table):integer;
        function check_box(index,key,table):boolean


    constructor check.Check(index,key,table):boolean;
            begin
                Check:=check_box(index,key,table) and check_column(index,key,table) and check_row(index,key,table) then  
            end;

    function check.check_row(index,key,table):boolean;;
    var l,row :integer;result:boolean;
    begin
        result:=true;
        row:=index div 9+1;
        for l:=index to index+9 do
            begin
                if l+9*row =index then
                    continue;
                if table[l+9*row]=key then
                    result:=false;
                
            end; 
            check_row:=result;
    end;

    function check.check_column(index,key,table):integer;
    var l,column:integer;result=boolean;
    begin
        column:=index mod 9+1;
        for l:=1 to 9 do
        begin
            if l*9+column =index then
                continue 
            if table[l*9+column]=key then
                result:=false;
        end;
        check_column:=result;
    end;

    function check.check_box(index,key,table):boolean
    var x,y,l.l2,_pointer,now_pointer:integer;box:array of integer;result:boolean;
    begin
        result:=true;
        x:=(index div 9 +1)div 3 ;
        y:=(index mod 9+1)div 3 ;
        _pointer:=x*3+y*3*9;
        now_pointer:=_pointer;
        for l:=1 to 3 do
            for l2:=1 to 3 do
                begin
                    now_pointer:=now_pointer+l2+l*9;
                    if now_pointer =index then
                        continue;
                    if table[now_pointer]=key then
                        result:=false;
                end;
        check_box:=result;
    end;