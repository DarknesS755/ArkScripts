F1::
{
    loop
    {

    SEND , {w down}
    sleep 5000
    Send , {w Up  }
    sleep 1299
    SEND , {Left down}
    sleep 5000
    Send , {left Up  }
    sleep 500
    send , {F 1}
    sleep 4000
 MouseMove , 627 , 340
Send , {Lbutton 1}
    sleep 2000
     MouseMove , 1780 , 340
Send , {Lbutton 1}
send , {f 1}
    sleep 2000
    Send , {Lbutton 1}
    sleep 1500
}
i:=1
loop 3
{
Send ,{1 1}
sleep 300
Send ,{2 1}
sleep 300
Send ,{3 1}
sleep 300
Send ,{4 1}
sleep 300
Send ,{5 1}
sleep 300
Send ,{6 1}
sleep 300
Send ,{7 1}
sleep 300
Send ,{8 1}
sleep 300
}




}
return


F2::
Reload
return