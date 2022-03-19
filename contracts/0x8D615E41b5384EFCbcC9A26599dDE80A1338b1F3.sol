contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint64 stor2;
uint256 stor2; offset 64

function _fallback() payable {
    mem[96 len -931] = code.data[1241 len -931]
    mem[64] = -835
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint64(stor2.field_0) = uint64(1000 * block.timestamp)
    Mask(192, 0, stor2.field_64) = 0
    stor1.length = (2 * mem[mem[96] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[310 len 931]
}



// =====================  Runtime code  =====================


address versionAddress;
array of struct stor1;
uint64 stor2;
uint256 stor2;

function getVersion() payable {
    return versionAddress
}

function kill() payable {
    selfdestruct(versionAddress)
}

function _fallback() payable {
  stop
}

function get() payable {
    mem[192] = uint256(stor1.field_0)
    idx = 192
    s = 0
    while stor1.length + 192 > idx + 32:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor1.length + ceil32(stor1.length) + 480] = mem[stor1.length + ceil32(stor1.length) + 507 len 5]
    return Array(len=stor1.length, data=mem[192 len stor1.length], 5, mem[ceil32(stor1.length) + stor1.length + 480]), 
           uint64(stor2),
           uint64(stor2),
           stor1.length + 192,
           versionAddress
}

function sub_4ec58e14(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if versionAddress == msg.sender:
        uint256(stor2) = 18446744073709551616000 * block.timestamp or Mask(128, 128, uint256(stor2)) or uint64(stor2)
        stor1.length = (2 * arg1.length) + 1
        s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        idx = 128
        while arg1.length + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
        while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}



}
