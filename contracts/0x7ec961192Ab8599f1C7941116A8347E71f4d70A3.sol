contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 message;
uint256 maxLength;

function owner() {
    return owner
}

function maxLength() {
    return maxLength
}

function message() {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function setMaxLength(uint256 arg1) {
    require msg.sender == owner
    maxLength = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMessage(string arg1) {
    if arg1.length > maxLength:
        revert with 0, 'That message is too long.'
    message[] = Array(len=arg1.length, data=arg1[all])
}



}
