contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 7
    require not msg.value
    stor0 = msg.sender
    return code.data[69 len 1045]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
uint256 slackUsersCap;

function slackUsersCap() {
    return slackUsersCap
}

function owner() {
    return owner
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
    if stor1[address(arg1)] != 1:
        return stor1[address(arg1)]
    return slackUsersCap
}

function listAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    stor1[address(arg1)] = arg2
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
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64]] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 32] = _17
        mem[mem[64] + 64] = block.timestamp
        emit ListAddress(mem[mem[64]], _17, block.timestamp);
        idx = idx + 1
        continue 
}



}
