contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 9
    mem[96 len -453] = code.data[859 len -453]
    mem[64] = -357
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 9
            require idx < 9
            address(stor[(2 * idx) + (18 * s) + 2].field_0) = 0
            require 0 < mem[mem[96] + 96]
            require s < 9
            require idx < 9
            Mask(96, 0, stor[(2 * idx) + (18 * s) + 1].field_160) = mem[mem[96] + 148 len 12]
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    return code.data[406 len 453]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getTileDescription(uint8 arg1, uint8 arg2) payable {
    require arg1 < 9
    require arg2 < 9
    call stor[(2 * arg2) + (18 * arg1) + 2].getDescription() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
}



}
