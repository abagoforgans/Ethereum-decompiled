contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[60 len 2243]
}



// =====================  Runtime code  =====================


uint256 numberOfRequests;
mapping of struct sub_1251dbc3;
mapping of struct sub_120eed7f;

function sub_120eed7f(?) {
    return sub_120eed7f[arg1][2][arg2].field_0
}

function sub_1251dbc3(?) {
    return sub_1251dbc3[arg1].field_512
}

function sub_3ffaa2f3(?) {
    return sub_1251dbc3[arg1].field_768
}

function getNumberOfRequests() {
    return numberOfRequests
}

function sub_dfb92b39(?) {
    return sub_1251dbc3[arg1].field_0
}

function sub_f2f88614(?) {
    return sub_1251dbc3[arg1][4][0 len sub_1251dbc3[arg1][4].length].field_0
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

function sub_cf0c574d(?) {
    if arg1 > block.timestamp:
        emit 0x9b3d185e: Array(len=7, data='Success'), msg.sender
        numberOfRequests++
        sub_1251dbc3[stor0].field_0 = msg.sender
        sub_1251dbc3[stor0].field_256 = arg1
        sub_1251dbc3[stor0].field_512 = arg4
        sub_1251dbc3[stor0].field_768 = arg2
        sub_1251dbc3[stor0][4][].field_0 = Array(len=arg3.length, data=arg3[all])
}



}
