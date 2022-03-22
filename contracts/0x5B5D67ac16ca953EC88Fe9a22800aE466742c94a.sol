contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
array of uint256 stor4;
mapping of uint256 stor258;
uint256 stor271;
uint256 stor273;

function _fallback() payable {
    mem[96 len 224] = code.data[506 len 224]
    mem[64] = 320
    stor1 = mem[code.data[506 len 32] + 96] + 1
    stor3 = msg.sender or Mask(96, 160, stor3)
    mem[0] = msg.sender
    mem[32] = 258
    stor258[address(msg.sender)] = 1
    idx = 0
    while idx < mem[code.data[506 len 32] + 96]:
        require idx < mem[code.data[506 len 32] + 96]
        require idx + 2 < 256
        stor4[idx] = mem[(32 * idx) + code.data[506 len 32] + 128]
        require idx < mem[code.data[506 len 32] + 96]
        mem[0] = mem[(32 * idx) + code.data[506 len 32] + 140 len 20]
        mem[32] = 258
        stor258[mem[(32 * idx) + code.data[506 len 32] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = code.data[538 len 32]
    stor271 = code.data[570 len 32]
    stor273 = block.timestamp / 24 * 3600
    return 0x5636600080376020600036600073ef67af99564d229893145c73e1ce00c0462a612460325a03f41560015760206000
}



// =====================  Runtime code  =====================




}
