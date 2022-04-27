contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -691] = code.data[1007 len -691]
    mem[64] = -595
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[316 len 691]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 message;

function owner() {
    return owner
}

function message() {
    return message[0 len message.length]
}

function destroy() {
    if owner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}



}
