contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 917]
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
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function store(string arg1) {
    require owner == msg.sender
    log[] = Array(len=arg1.length, data=arg1[all])
}



}
