contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1114]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 log;

function log() {
    return log[0 len log.length]
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function store(string arg1) {
    require msg.sender == owner
    log[] = Array(len=arg1.length, data=arg1[all])
}



}
