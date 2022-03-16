contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    mem[96 len -634] = code.data[810 len -634]
    mem[64] = -538
    stor0 = mem[mem[96] + 96]
    mem[0] = 0
    if not mem[mem[96] + 96]:
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while (stor0 + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while (stor0 + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    return code.data[176 len 634]
}



// =====================  Runtime code  =====================


array of uint256 stor0;
array of struct stor1;
uint256 stor290D;

function _fallback() payable {
  stop
}

function sub_c8ebdb05(?) payable {
    if stor1[address(msg.sender)].field_256:
        mem[160] = stor1[address(msg.sender)][1].field_0
        idx = 160
        s = 0
        while stor1[address(msg.sender)].field_256 + 160 > idx + 32:
            mem[idx + 32] = stor1[address(msg.sender)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1[address(msg.sender)].field_256, data=mem[160 len stor1[address(msg.sender)].field_256])
}

function sub_d8d1ae31(?) payable {
    if stor0.length:
        mem[160] = stor0
        if stor0.length + 160 > 192:
            mem[192] = stor290D
            idx = 192
            s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564
            while stor0.length + 160 > idx + 32:
                mem[idx + 32] = stor1[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=stor0.length, data=mem[160 len stor0.length])
}

function sub_26a8a1e8(?) payable {
    mem[128 len arg1.length] = arg1[all]
    stor1[address(msg.sender)].field_256 = arg1.length
    if not arg1.length:
        idx = 0
        while stor1[address(msg.sender)].field_256 + 31 / 32 > idx:
            stor1[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor1[address(msg.sender)][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor1[address(msg.sender)].field_256 + 31 / 32 > idx:
            stor1[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
}



}
