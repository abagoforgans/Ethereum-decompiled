contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[54 len 1056]
}



// =====================  Runtime code  =====================


mapping of struct sub_e6853e28;
address stor1;

function sub_e6853e28(?) {
    return sub_e6853e28[arg1].field_768
}

function _fallback() payable {
    revert 
}

function sub_7df86031(?) {
    if stor1 != msg.sender:
        emit 0xf61a6002: 1
    else:
        sub_e6853e28[arg1].field_0 = arg2
        sub_e6853e28[arg1].field_256 = arg3
        sub_e6853e28[arg1].field_512 = arg4
        sub_e6853e28[arg1].field_768 = arg5
        emit 0xf3480358: arg4, arg5, arg1, arg2, arg3
}

function sub_7d017b0e(?) {
    if sub_e6853e28[arg1].field_256 != msg.sender:
        emit 0xf61a6002: 2
    else:
        if sub_e6853e28[arg1].field_512 != arg2:
            emit 0xf61a6002: 2
        else:
            if sub_e6853e28[arg1].field_768 <= 0:
                emit 0xf61a6002: 2
            else:
                sub_e6853e28[arg1].field_768 = uint64(sub_e6853e28[arg1].field_768 - 1)
                sub_e6853e28[arg1].field_0 = sub_e6853e28[arg1].field_0
                sub_e6853e28[arg1].field_256 = sub_e6853e28[arg1].field_256
                sub_e6853e28[arg1].field_768 = sub_e6853e28[arg1].field_768
                emit 0xff0b7e8a: sub_e6853e28[arg1].field_512, 1, arg1, sub_e6853e28[arg1].field_0, sub_e6853e28[arg1].field_256
}



}
