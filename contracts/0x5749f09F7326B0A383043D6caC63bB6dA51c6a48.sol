contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 412]




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
  stop
}

function f(uint256[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    stor0 = arg1.length
    if not arg1.length:
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while stor0 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * arg1.length) + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while stor0 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    require 7 < stor0
    stor0 = 2
    if not stor0 > 2:
        stor0 = 0
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while stor0 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e565
        while stor0 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        stor0 = 0
}



}
