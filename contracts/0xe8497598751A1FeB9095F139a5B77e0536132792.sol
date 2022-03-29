contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;

function _fallback() {
    uint8(stor0.length) = 0
    Mask(248, 0, stor0.length.field_8) = mem[128 len 31]
    idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1 = msg.sender
    return code.data[240 len 776]
}



// =====================  Runtime code  =====================


array of uint256 hint;
address owner;

function owner() {
    return owner
}

function hint() {
    return hint[0 len hint.length]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function setHint(string arg1) {
    if owner == msg.sender:
        hint[] = Array(len=arg1.length, data=arg1[all])
}



}
