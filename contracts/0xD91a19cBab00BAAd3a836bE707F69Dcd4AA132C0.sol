contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    mem[128] = 'first line
Second line
Third lin'
    mem[160] = 'e'
    stor1.length = 67
    s = 0
    idx = 128
    while 161 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1.length + 31 / 32 > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    return code.data[332 len 511]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 sub_7e7b8a96;

function sub_7e7b8a96(?) {
    return sub_7e7b8a96[0 len sub_7e7b8a96.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
