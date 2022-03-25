contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[22 len 1167]
}



// =====================  Runtime code  =====================


uint256 numberOfRequests;
mapping of struct sub_1251dbc3;
mapping of struct sub_120eed7f;

function sub_120eed7f(?) payable {
    return sub_120eed7f[arg1][2][arg2].field_0
}

function sub_1251dbc3(?) payable {
    return sub_1251dbc3[arg1].field_160
}

function sub_3ffaa2f3(?) payable {
    return sub_1251dbc3[arg1].field_256
}

function getNumberOfRequests() payable {
    return numberOfRequests
}

function sub_dfb92b39(?) payable {
    return sub_1251dbc3[arg1].field_0
}

function sub_f2f88614(?) payable {
    return sub_1251dbc3[arg1][2][0 len sub_1251dbc3[arg1][2].length].field_0
}

function sub_fa662ae2(?) payable {
    return sub_120eed7f[arg1].field_0
}

function _fallback() payable {
  stop
}

function sub_9df4254e(?) payable {
    if 0 == sub_120eed7f[arg1].field_256:
        sub_120eed7f[arg1].field_0 = 0
        sub_120eed7f[arg1].field_256 = 1
    sub_120eed7f[arg1].field_0++
    sub_120eed7f[arg1][2][sub_120eed7f[arg1].field_0 + 1].field_0 = arg2
}

function sub_913fdfbd(?) payable {
    numberOfRequests++
    sub_1251dbc3[stor0].field_0 = msg.sender or Mask(96, 160, sub_1251dbc3[stor0].field_0)
    sub_1251dbc3[stor0].field_160 = Mask(96, 0, arg3)
    sub_1251dbc3[stor0].field_256 = arg1
    sub_1251dbc3[stor0][2][].field_0 = Array(len=arg2.length, data=arg2[all])
}



}
