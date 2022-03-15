contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 439]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function message() payable {
    if stor0.length:
        mem[128] = uint256(stor0.field_0)
        idx = 128
        s = 0
        while stor0.length + 128 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0.length, data=mem[128 len stor0.length])
}

function set(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    stor0.length = arg1.length
    if not arg1.length:
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        idx = 128
        while arg1.length + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}



}
