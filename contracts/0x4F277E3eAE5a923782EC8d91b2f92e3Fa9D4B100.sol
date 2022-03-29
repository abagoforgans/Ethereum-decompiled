contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[54 len 1159]
}



// =====================  Runtime code  =====================


array of uint256 message;
address stor1;
address stor2;

function storedData() {
    return message[0 len message.length]
}

function getMessage() {
    return message[0 len message.length]
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
    revert 
}

function addParticipant(address arg1) {
    if stor1 == msg.sender:
        stor2 = arg1
}

function setMessage(string arg1) {
    if stor1 == msg.sender:
        message[] = Array(len=arg1.length, data=arg1[all])
    else:
        if stor2 == msg.sender:
            message[] = Array(len=arg1.length, data=arg1[all])
}



}
