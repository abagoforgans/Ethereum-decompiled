contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of struct stor4;
mapping of uint256 stor258;
uint256 stor261;
uint256 stor263;
uint256 stor264;

function _fallback() payable {
    stor264 = 2
    mem[96 len 160] = code.data[342 len 160]
    mem[64] = 256
    stor1 = mem[code.data[342 len 32] + 96] + 1
    address(stor3.field_0) = tx.origin
    Mask(96, 0, stor3.field_160) = 0
    mem[0] = tx.origin
    mem[32] = 258
    stor258[tx.origin] = 1
    idx = 0
    while idx < mem[code.data[342 len 32] + 96]:
        require idx < mem[code.data[342 len 32] + 96]
        require idx + 2 < 256
        stor4[idx].field_0 = mem[(32 * idx) + code.data[342 len 32] + 140 len 20]
        stor4[idx].field_160 = 0
        require idx < mem[code.data[342 len 32] + 96]
        mem[0] = mem[(32 * idx) + code.data[342 len 32] + 140 len 20]
        mem[32] = 258
        stor258[mem[(32 * idx) + code.data[342 len 32] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = code.data[374 len 32]
    stor261 = code.data[406 len 32]
    stor263 = block.timestamp / 24 * 3600
    return 0x3660008037602060003660003473273930d21e01ee25e4c219b63259d214872220a261235a5a03f21560015760206000
}



// =====================  Runtime code  =====================




}
