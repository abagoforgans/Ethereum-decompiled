contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = msg.sender
    return code.data[83 len 1158]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 message;
address stor2;
address stor3;

function storedData() {
    return message[0 len message.length]
}

function getMessage() {
    return message[0 len message.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function addParticipant(address arg1) {
    if stor2 == msg.sender:
        stor3 = arg1
}

function setMessage(string arg1) {
    if stor2 == msg.sender:
        message[] = Array(len=arg1.length, data=arg1[all])
    else:
        if stor3 == msg.sender:
            message[] = Array(len=arg1.length, data=arg1[all])
}



}
