contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    mem[96 len -899] = code.data[1658 len -899]
    mem[64] = -803
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
    stor5 = mem[128]
    stor2.length = (2 * mem[mem[192] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[0] = 3
    stor3.length = (2 * mem[mem[224] + 96]) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = mem[224] + 128
    while mem[224] + mem[mem[224] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[224] + 96] + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4.length = (2 * mem[mem[160] + 96]) + 1
    s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
    while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor6 = 1
    return code.data[759 len 899]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
array of struct stor1;
array of struct stor2;
array of struct stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
  stop
}

function sub_b9c3d0a5(?) payable {
    require address(stor0) == msg.sender
    require 1 == stor6
}

function sub_8cb31b72(?) payable {
    require address(stor0) == msg.sender
    require 1 == stor6
    stor6 = 0
    emit 0xecca85d0: address(stor0)
}

function transferOwner(address arg1) payable {
    require address(stor0) == msg.sender
    require 1 == stor6
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    emit 0xe933fb42: address(stor0), arg1
}

function order() payable {
    mem[352] = uint256(stor1.field_0)
    idx = 352
    s = 0
    while stor1.length + 352 > idx + 32:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 352] = stor2.length
    mem[stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 384] = uint256(stor2.field_0)
    idx = stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 384
    s = 0
    while stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + 384 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 416] = uint256(stor3.field_0)
    idx = stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 416
    s = 0
    while stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + 416 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 416] = stor4.length
    mem[stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 448] = uint256(stor4.field_0)
    idx = stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 448
    s = 0
    while stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + stor4.length + 448 > idx + 32:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0), 
           Array(len=stor1.length, data=mem[352 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 32], stor3.length, mem[stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 416 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32) + 32]),
           stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 256,
           stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 288,
           stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 320,
           stor5,
           stor6
}



}
