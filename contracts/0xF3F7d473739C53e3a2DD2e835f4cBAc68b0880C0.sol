contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 0
    stor1.length.field_8 = mem[128 len 31]
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = 0
    return code.data[318 len 1003]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 sub_c775aeea;
uint256 sub_5c160d38;

function sub_5c160d38(?) {
    return sub_5c160d38
}

function owner() {
    return owner
}

function sub_c775aeea(?) {
    return sub_c775aeea[0 len sub_c775aeea.length]
}

function _fallback() payable {
    revert
}

function sub_0b142eff(?) {
    require msg.sender == owner
    sub_5c160d38 = arg1
    sub_c775aeea[] = Array(len=arg2.length, data=arg2[all])
}



}
