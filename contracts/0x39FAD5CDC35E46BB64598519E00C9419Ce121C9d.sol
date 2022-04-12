contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 0
    stor0.length.field_8 = mem[128 len 31]
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1 = msg.sender
    return code.data[258 len 819]
}



// =====================  Runtime code  =====================


array of uint256 message;
address owner;

function owner() {
    return owner
}

function message() {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function setMessage(string arg1) {
    require owner == msg.sender
    message[] = Array(len=arg1.length, data=arg1[all])
}



}
