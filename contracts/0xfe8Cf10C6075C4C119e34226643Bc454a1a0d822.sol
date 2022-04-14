contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 7
    require not msg.value
    stor0 = msg.sender
    return code.data[67 len 1179]
}



// =====================  Runtime code  =====================


address owner;
uint256 slackUsersCap;
mapping of uint256 addressCap;

function slackUsersCap() {
    return slackUsersCap
}

function owner() {
    return owner
}

function addressCap(address arg1) {
    return addressCap[arg1]
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function setSlackUsersCap(uint256 arg1) {
    require owner == msg.sender
    slackUsersCap = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function getCap(address arg1) {
    if addressCap[address(arg1)] != 1:
        return addressCap[address(arg1)]
    return slackUsersCap
}

function listAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    addressCap[address(arg1)] = arg2
    emit ListAddress(address(arg1), arg2, block.timestamp);
}

function listAddresses(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        _17 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require owner == msg.sender
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        addressCap[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64]] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 32] = _17
        mem[mem[64] + 64] = block.timestamp
        emit ListAddress(mem[mem[64]], _17, block.timestamp);
        idx = idx + 1
        continue 
}



}
