contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    idx = 0
    while uint8(idx) < 10:
        stor1[uint8(idx) / 32] = idx * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor1[uint8(idx) / 32]
        idx = idx + 1
        continue 
    return code.data[105 len 207]
}



// =====================  Runtime code  =====================


address stor0;
array of uint8 stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function getSum() {
    idx = 0
    s = 0
    while uint8(idx) < 10:
        idx = idx + 1
        s = stor1[uint8(idx)] + s
        continue 
    return uint8(stor1[uint8(None)] * None)
}



}
