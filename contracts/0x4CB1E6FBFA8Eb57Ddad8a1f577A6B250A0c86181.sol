contract main {


// =======================  Init code  ======================


array of uint256 stor1;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 0
    stor1.length.field_8 = mem[128 len 31]
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[239 len 2013]
}



// =====================  Runtime code  =====================


#
#  - message()
#
address stor0;
array of uint256 stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function mortal() {
    stor0 = msg.sender
}

function sub_f57269a5(?) {
    stor1[] = Array(len=arg1.length, data=arg1[all])
}



}
