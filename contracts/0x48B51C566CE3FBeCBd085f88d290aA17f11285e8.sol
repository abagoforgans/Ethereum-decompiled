contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of struct stor4;
mapping of uint256 stor258;
uint256 stor271;
uint256 stor273;

function _fallback() payable {
    mem[96 len 192] = code.data[484 len 192]
    mem[64] = 288
    stor1 = mem[code.data[484 len 32] + 96] + 1
    address(stor3.field_0) = msg.sender
    Mask(96, 0, stor3.field_160) = 0
    stor258[address(msg.sender)] = 1
    idx = 0
    while idx < mem[code.data[484 len 32] + 96]:
        require idx < mem[code.data[484 len 32] + 96]
        require idx + 2 < 256
        stor4[idx].field_0 = mem[(32 * idx) + code.data[484 len 32] + 140 len 20]
        stor4[idx].field_160 = 0
        require idx < mem[code.data[484 len 32] + 96]
        mem[0] = mem[(32 * idx) + code.data[484 len 32] + 140 len 20]
        mem[32] = 258
        stor258[mem[(32 * idx) + code.data[484 len 32] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = code.data[516 len 32]
    stor271 = code.data[548 len 32]
    stor273 = block.timestamp / 24 * 3600
    return 0x5636600080376020600036600073d0277d91cca2cded2b731e1f6412cf3b3c29512c60325a03f41560015760206000
}



// =====================  Runtime code  =====================




}
