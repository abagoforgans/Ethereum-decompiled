contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    mem[96 len -538] = code.data[914 len -538]
    mem[64] = -442
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        while (stor1 + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
        while (stor1 + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    mem[64] = -410
    stor2[0] = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c2f
        while (stor2[0] + 31 / 32) + 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c2f > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c2f
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c2f
        while (stor2[0] + 31 / 32) + 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c2f > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    return code.data[376 len 538]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
mapping of struct stor2;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function greet() payable {
    if stor1.length:
        mem[160] = uint256(stor1.field_0)
        idx = 160
        s = 0
        while stor1.length + 160 > idx + 32:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len stor1.length])
}

function greeting() payable {
    if stor1.length:
        mem[128] = uint256(stor1.field_0)
        idx = 128
        s = 0
        while stor1.length + 128 > idx + 32:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[128 len stor1.length])
}

function books(uint256 arg1) payable {
    if not stor2[arg1].field_0:
        return 32, stor2[arg1].field_0
    mem[160] = stor2[arg1].field_0
    idx = 160
    s = 0
    while stor2[arg1].field_0 + 160 > idx + 32:
        mem[idx + 32] = stor2[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2[arg1].field_0, data=mem[160 len stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32)]), 
}



}
