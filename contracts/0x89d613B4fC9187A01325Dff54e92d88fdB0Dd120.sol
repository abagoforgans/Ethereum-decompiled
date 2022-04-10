contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address stor0;
array of uint256 stor4;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function getMenu() {
    mem[256] = 0
    mem[288 len 128] = 0
    idx = 0
    while idx < 5:
        mem[(32 * idx) + 256] = stor4[idx]
        idx = idx + 1
        continue 
    return mem[256], mem[288 len 128]
}



}
