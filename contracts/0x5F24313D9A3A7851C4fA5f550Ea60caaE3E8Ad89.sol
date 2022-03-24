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
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    mem[96 len -184] = code.data[1069 len -184]
    stor0 = 9
    mem[64] = -24
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
    stor8 = mem[128]
    stor5.length = (2 * mem[mem[192] + 96]) + 1
    s = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    while (stor5.length + 31 / 32) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor6[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor7[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor9 = 1
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[885 len 184]
}



// =====================  Runtime code  =====================


address stor3;
uint256 stor9;

function _fallback() payable {
  stop
}

function sub_8cb31b72(?) payable {
    require stor3 == msg.sender
    require 1 == stor9
}

function sub_b9c3d0a5(?) payable {
    require stor3 == msg.sender
    require 1 == stor9
}

function transferOwner(address arg1) payable {
    require stor3 == msg.sender
    require 1 == stor9
}



}
