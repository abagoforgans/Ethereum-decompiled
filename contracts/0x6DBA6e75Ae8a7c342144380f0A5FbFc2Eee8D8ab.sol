contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of struct sub_8475100d;

function sub_8475100d(?) payable {
    require calldata.size - 4 >= 32
    return sub_8475100d[arg1].field_0, sub_8475100d[arg1].field_256
}

function _fallback() payable {
    revert
}

function publications(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function sub_c1829110(?) payable {
    require calldata.size - 4 >= 64
    if stor0[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x64546869732066696c6520686173206265656e20616c7265616479207075626c69736865,
                    mem[200 len 28]
    stor0[arg1].field_0 = msg.sender
    stor0[arg1].field_256 = arg2
}

function sub_58160db7(?) payable {
    require calldata.size - 4 >= 32
    if sub_8475100d[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe5468697320706565722072657669657720686173206265656e20616c7265616479207075626c69736865,
                    mem[207 len 21]
    sub_8475100d[arg1].field_0 = msg.sender
    sub_8475100d[arg1].field_256 = arg1
}



}
