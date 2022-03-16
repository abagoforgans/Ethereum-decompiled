contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -655] = code.data[1025 len -655]
    mem[64] = -559
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
    require 0 < stor2.length
    stor2 = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0x1ab0c6948a275349ae45a06aad66a8bd65ac18074615d53676c09b67809099e0
        while (stor2 + 31 / 32) + 0x1ab0c6948a275349ae45a06aad66a8bd65ac18074615d53676c09b67809099e0 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0x1ab0c6948a275349ae45a06aad66a8bd65ac18074615d53676c09b67809099e0
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x1ab0c6948a275349ae45a06aad66a8bd65ac18074615d53676c09b67809099e0
        while (stor2 + 31 / 32) + 0x1ab0c6948a275349ae45a06aad66a8bd65ac18074615d53676c09b67809099e0 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    return code.data[370 len 655]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of struct stor2;
uint256 stor1AB0;

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

function books(uint256 arg1) payable {
    require arg1 < stor2.length
    if not stor2[arg1].field_0:
        return 32, stor2[arg1].field_0
    mem[160] = stor2[arg1].field_0
    idx = 160
    s = 0
    while stor2[arg1].field_0 + 160 > idx + 32:
        mem[idx + 32] = stor2[arg1 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2[arg1].field_0, data=mem[160 len stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32)]), 
}

function sub_c2554156(?) payable {
    require 0 < stor2.length
    if uint256(stor2.field_0):
        mem[160] = stor[sha3(('name', 'stor2', 2))].field_0
        if uint256(stor2.field_0) + 160 > 192:
            mem[192] = stor1AB0
            idx = 192
            s = 0x1ab0c6948a275349ae45a06aad66a8bd65ac18074615d53676c09b67809099e1
            while uint256(stor2.field_0) + 160 > idx + 32:
                mem[idx + 32] = stor1[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=uint256(stor2.field_0), data=mem[160 len uint256(stor2.field_0)])
}



}
