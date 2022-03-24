contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    mem[96 len -184] = code.data[1217 len -184]
    stor0 = 9
    mem[64] = -24
    mem[-88] = 8
    uint8(stor1.length) = 16
    Mask(248, 0, stor1.length.field_8) = 'xianpeng' / 256
    idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2 = 1000
    stor4.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
    while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor9 = mem[128]
    mem[0] = 8
    stor8.length = (2 * mem[mem[160] + 96]) + 1
    s = 0xf3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636ee3
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d
    while (stor8.length + 31 / 32) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor5[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor6[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    stor7[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor10 = 1
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[1033 len 184]
}



// =====================  Runtime code  =====================


address stor3;
uint256 stor10;

function _fallback() payable {
  stop
}

function sub_8cb31b72(?) payable {
    require stor3 == msg.sender
    require 1 == stor10
}

function sub_b9c3d0a5(?) payable {
    require stor3 == msg.sender
    require 1 == stor10
}

function transferOwner(address arg1) payable {
    require stor3 == msg.sender
    require 1 == stor10
}



}
