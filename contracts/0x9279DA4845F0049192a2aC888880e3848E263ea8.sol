contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;

function _fallback() payable {
    mem[96 len -516] = code.data[708 len -516]
    mem[64] = -420
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1 = 0
    return code.data[192 len 516]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor1;

function _fallback() payable {
  stop
}

function greet() payable {
    stor1.length++
    mem[192] = uint256(stor0.field_0)
    idx = 192
    s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while stor0.length + 192 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xefdeaaf5: Array(len=stor0.length, data=mem[192 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)])
    mem[160] = uint256(stor0.field_0)
    idx = 160
    s = 0
    while stor0.length + 128 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0.length, data=mem[160 len stor0.length])
}



}
