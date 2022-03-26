contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[60 len 4488]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


uint256 numberOfRequests;
mapping of struct sub_34d105ea;
mapping of struct sub_120eed7f;

function sub_120eed7f(?) {
    return sub_120eed7f[arg1][2][arg2].field_0
}

function sub_34d105ea(?) {
    return sub_34d105ea[arg1].field_1024
}

function sub_38e47f47(?) {
    return sub_34d105ea[arg1].field_1288
}

function sub_3ffaa2f3(?) {
    return sub_34d105ea[arg1].field_1536
}

function sub_86bae08e(?) {
    return sub_34d105ea[arg1].field_512
}

function sub_8df170b1(?) {
    return sub_34d105ea[arg1].field_2048
}

function getNumberOfRequests() {
    return numberOfRequests
}

function sub_ce53e4dc(?) {
    return sub_34d105ea[arg1].field_1280
}

function sub_dfb92b39(?) {
    return sub_34d105ea[arg1].field_256
}

function sub_ed48e545(?) {
    return sub_34d105ea[arg1].field_0
}

function sub_f2f88614(?) {
    return sub_34d105ea[arg1][7][0 len sub_34d105ea[arg1][7].length].field_0
}

function sub_f2fa80f0(?) {
    return sub_34d105ea[arg1].field_768
}

function sub_fa662ae2(?) {
    return sub_120eed7f[arg1].field_0
}

function _fallback() payable {
    revert 
}

function sub_598e50ca(?) {
    if arg1 <= block.timestamp:
        return 1
    else:
        return 0
}

function sub_9df4254e(?) {
    if not sub_120eed7f[arg1].field_256:
        sub_120eed7f[arg1].field_0 = 0
        sub_120eed7f[arg1].field_256 = 1
    sub_120eed7f[arg1].field_0++
    sub_120eed7f[arg1][2][sub_120eed7f[arg1].field_0].field_0 = arg2
}

function sub_afce5059(?) {
    if arg1 <= block.timestamp:
        emit 0x9e609148: 0, 64, 43, 'The start date for this journey ', 'is invalid.', msg.sender
    else:
        if arg3 < 1:
            emit 0x9e609148: 0, 64, 19, 'Amount is negative.', msg.sender
        else:
            if arg2 < arg1:
                emit 0x9e609148: 0, 64, 55, 'The end date for this journey is', ' before the start date.', msg.sender
            else:
                if arg6 < 0:
                    emit 0x9e609148: 0, 64, 26, 'Insurance Type is invalid.', msg.sender
                else:
                    if arg6 > 4:
                        emit 0x9e609148: 0, 64, 26, 'Insurance Type is invalid.', msg.sender
                    else:
                        if arg5 < 0:
                            emit 0x9e609148: 0, 64, 23, 'Travel Type is invalid.', msg.sender
                        else:
                            if arg5 > 3:
                                emit 0x9e609148: 0, 64, 23, 'Travel Type is invalid.', msg.sender
                            else:
                                if arg11 < 0:
                                    emit 0x9e609148: 0, 64, 29, 'Traveller parameters invalid.', msg.sender
                                else:
                                    if arg10 < 0:
                                        emit 0x9e609148: 0, 64, 29, 'Traveller parameters invalid.', msg.sender
                                    else:
                                        if arg9 < 0:
                                            emit 0x9e609148: 0, 64, 29, 'Traveller parameters invalid.', msg.sender
                                        else:
                                            emit 0x9e609148: 1, Array(len=7, data='Success'), msg.sender
                                            numberOfRequests++
                                            sub_34d105ea[stor0].field_0 = block.timestamp
                                            sub_34d105ea[stor0].field_256 = msg.sender
                                            sub_34d105ea[stor0].field_512 = arg1
                                            sub_34d105ea[stor0].field_768 = arg2
                                            sub_34d105ea[stor0].field_1024 = arg8
                                            sub_34d105ea[stor0].field_1280 = arg7
                                            sub_34d105ea[stor0].field_1288 = uint8(arg5)
                                            sub_34d105ea[stor0].field_1536 = arg3
                                            sub_34d105ea[stor0][7][].field_0 = Array(len=arg4.length, data=arg4[all])
                                            sub_34d105ea[stor0].field_2048 = uint8(arg6)
                                            sub_34d105ea[stor0].field_2056 = uint8(arg11)
                                            sub_34d105ea[stor0].field_2304 = arg10
                                            sub_34d105ea[stor0].field_2560 = uint8(arg9)
}



}
