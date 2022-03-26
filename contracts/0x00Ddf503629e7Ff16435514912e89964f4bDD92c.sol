contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 760]




// =====================  Runtime code  =====================


mapping of uint256 identity;

function getIdentity(address arg1) {
    return identity[address(arg1)]
}

function _fallback() {
    revert 
}

function register(uint256 arg1) {
    identity[address(msg.sender)] = arg1
    emit Register(block.timestamp, msg.sender, arg1);
}

function getIdentities(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 224] = identity[mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 224] = 32
    mem[(64 * arg1.length) + 256] = arg1.length
    mem[(64 * arg1.length) + 288 len 32 * arg1.length] = mem[(32 * arg1.length) + 224 len 32 * arg1.length]
    return memory
      from (64 * arg1.length) + 224
       len (161 * arg1.length) + 64
}



}
