contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -781] = code.data[989 len -781]
    mem[64] = -685
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[208 len 781]
}



// =====================  Runtime code  =====================


address stor0;
array of struct greet;

function greet() payable {
    return greet[0 len greet.length].field_0
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setGreeting(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    greet.length = (2 * arg1.length) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (greet.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 192] = uint256(greet.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + greet.length + 160 > idx:
        mem[idx + 32] = greet[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=greet.length, data=mem[ceil32(arg1.length) + 192 len greet.length])
}



}
