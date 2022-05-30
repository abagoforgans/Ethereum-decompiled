contract main {




// =====================  Runtime code  =====================


array of uint256 names;
mapping of uint256 prices;
mapping of uint256 stor2;
uint256 stor3;
address stor4;

function names(uint256 arg1) {
    return names[arg1][0 len names[arg1].length]
}

function prices(uint256 arg1) {
    return prices[arg1]
}

function _fallback() payable {
    revert
}

function getParameters(uint256 arg1) {
    return prices[arg1], stor2[arg1], stor3
}

function sub_3a23bdc8(?) {
    require msg.sender == stor4
    names[arg1][] = Array(len=arg2.length, data=arg2[all])
    prices[arg1] = arg3
    stor2[arg1] = arg4
    stor3 = arg5
    emit 0x26b53763: Array(len=arg2.length, data=arg2[all]), arg3, arg4, arg5
}



}
