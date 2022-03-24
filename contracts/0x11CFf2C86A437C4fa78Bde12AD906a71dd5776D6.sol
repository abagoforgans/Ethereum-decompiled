contract main {


// =======================  Init code  ======================


bool stor1; offset 256
uint8 stor1;
uint8 stor1; offset 8

function _fallback() payable {
    uint8(stor1.field_0) = 6
    uint8(stor1.field_8) = 32
    stor1.field_256 % 1 = 0
    return code.data[42 len 675]
}



// =====================  Runtime code  =====================


array of uint256 stor0;
uint8 stor1;
uint8 stor1; offset 8

function numbers(uint256 arg1) payable {
    require arg1 < stor0.length
    return numbers[uint8(arg1)]
}

function _fallback() payable {
  stop
}

function sub_bbbe9eae(?) payable {
    mem[96] = 0
    stor0.length = 0
    if not stor0.length <= 0:
        mem[0] = 0
        idx = 0
        while stor0.length + 31 / 32 > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    mem[128] = uint8(uint8(stor1.field_8) + 1)
    mem[64] = (32 * uint8(uint8(stor1.field_8) + 1)) + 160
    idx = 0
    s = 0
    while idx < 512:
        mem[mem[64]] = block.difficulty
        mem[mem[64] + 32] = address(block.coinbase)
        mem[mem[64] + 52] = block.timestamp
        mem[mem[64] + 84] = address(msg.sender)
        mem[mem[64] + 104] = idx
        if 0 == uint8(sha3(block.difficulty, block.coinbase, block.timestamp, msg.sender, idx) % uint8(stor1.field_8)):
            idx = idx + 1
            s = sha3(block.difficulty, block.coinbase, block.timestamp, msg.sender, idx) % uint8(stor1.field_8)
            continue 
        require uint8(sha3(block.difficulty, block.coinbase, block.timestamp, msg.sender, idx) % uint8(stor1.field_8)) < mem[128]
        if 1 == mem[(32 * uint8(sha3(block.difficulty, block.coinbase, block.timestamp, msg.sender, idx) % uint8(stor1.field_8))) + 191 len 1]:
            idx = idx + 1
            s = sha3(block.difficulty, block.coinbase, block.timestamp, msg.sender, idx) % uint8(stor1.field_8)
            continue 
        require uint8(sha3(block.difficulty, block.coinbase, block.timestamp, msg.sender, idx) % uint8(stor1.field_8)) < mem[128]
        mem[(32 * uint8(sha3(block.difficulty, block.coinbase, block.timestamp, msg.sender, idx) % uint8(stor1.field_8))) + 160] = 1
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            s = sha3(0) + (stor0.length + 32 / 32)
            while sha3(0) + (stor0.length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        require stor0.length - 1 < stor0.length
        mem[0] = 0
        stor0[0.03125 / stor0.length - 1] = stor0[0.03125 / stor0.length - 1] and !(255 * 256^(stor0.length - 1 % 32)) or 256^(stor0.length - 1 % 32) * sha3(block.difficulty, block.coinbase, block.timestamp, msg.sender, idx) % uint8(stor1.field_8)
        if uint8(stor1.field_0) != stor0.length:
            idx = idx + 1
            s = sha3(block.difficulty, block.coinbase, block.timestamp, msg.sender, idx) % uint8(stor1.field_8)
            continue 
}



}
