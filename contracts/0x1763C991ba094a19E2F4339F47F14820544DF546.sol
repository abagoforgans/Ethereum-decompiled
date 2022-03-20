contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor2 = 1
    stor3 = block.number
    stor4 = block.number + 1
    return code.data[53 len 782]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
  stop
}

function sub_79066e7f(?) payable {
    uint8(stor0.length) = 46
    Mask(248, 0, stor0.length.field_8) = 'Site is not compromised' / 256
    idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor1.length) = 38
    Mask(248, 0, stor1.length.field_8) = 'Site is compromised' / 256
    idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3 = block.number
    if block.number > stor4:
        mem[288] = uint256(stor1.field_0)
        idx = 288
        s = 0
        while stor1.length + 256 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor1.length, data=mem[288 len stor1.length])
    if stor3 > stor4:
        if msg.sender == stor5:
            stor4 += stor2
        return ''
    mem[288] = uint256(stor0.field_0)
    idx = 288
    s = 0
    while stor0.length + 256 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0.length, data=mem[288 len stor0.length])
}



}
