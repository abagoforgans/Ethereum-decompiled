contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1169]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if unknown_0x12514bba(?????) == uint32(call.func_hash):
        require not msg.value
        if msg.sender == stor0:
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
    if unknown_0x13af4035(?????) == uint32(call.func_hash):
        require not msg.value
        if msg.sender == stor0:
            stor0 = address(arg1)
    if unknown_0x41c0e1b5(?????) == uint32(call.func_hash):
        require not msg.value
        if stor0 != msg.sender:
        selfdestruct(msg.sender)
    if unknown_0xa9059cbb(?????) == uint32(call.func_hash):
        require not msg.value
        if msg.sender == stor0:
            call address(arg1) with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    require unknown_0xed815d83(?????) == uint32(call.func_hash)
    require not msg.value
    emit Incoming(sha3(block.number, block.timestamp, arg1[all], msg.sender), msg.sender, Array(len=arg1.length, data=arg1[all]));
    return sha3(block.number, block.timestamp, arg1[all], msg.sender)
}

function setOwner(address arg1) {
    if msg.sender == stor0:
        stor0 = arg1
}

function transfer(uint256 arg1) {
    if msg.sender == stor0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender == stor0:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
}

function query(bytes arg1) {
    emit Incoming(sha3(block.number, block.timestamp, arg1[all], msg.sender), msg.sender, Array(len=arg1.length, data=arg1[all]));
    return sha3(block.number, block.timestamp, arg1[all], msg.sender)
}



}
