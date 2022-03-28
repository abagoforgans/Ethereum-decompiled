contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor3;
uint8 stor3; offset 8

function _fallback() payable {
    uint8(stor3.field_0) = 0
    uint8(stor3.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[151 len 1822]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_04d692f9;
mapping of struct sub_396cd546;
uint8 lotteryCount;
uint8 sub_2720cd00; offset 8

function sub_04d692f9(?) {
    return sub_04d692f9[arg1 << 248].field_256
}

function sub_2720cd00(?) {
    return sub_2720cd00
}

function getLotteryCount() {
    return lotteryCount
}

function sub_396cd546(?) {
    return sub_396cd546[arg1 << 248].field_0
}

function sub_f220ff99(?) {
    return sub_04d692f9[arg1 << 248].field_0
}

function _fallback() payable {
    revert
}

function sub_a2dc15b7(?) {
    sub_04d692f9[stor3].field_0 = arg1
    sub_04d692f9[stor3].field_256 = arg2
    sub_04d692f9[stor3].field_512 = 0
    lotteryCount = uint8(lotteryCount + 1)
}

function sub_27c4a475(?) {
    if msg.sender == stor0:
        sub_396cd546[stor3].field_0 = arg1
        sub_396cd546[stor3].field_256 = block.timestamp
        sub_396cd546[stor3].field_512 = arg2
        sub_396cd546[stor3].field_520 = arg3
        sub_396cd546[stor3].field_528 = arg4
        sub_396cd546[stor3].field_536 = arg5
        sub_396cd546[stor3].field_544 = arg6
        sub_396cd546[stor3].field_552 = arg7
        sub_396cd546[stor3].field_560 = arg8
        sub_2720cd00 = uint8(sub_2720cd00 + 1)
        return 0
    else:
        return 0
}



}
