contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 760]




// =====================  Runtime code  =====================


mapping of uint256 token;

function getToken() {
    return token[address(msg.sender)]
}

function _fallback() payable {
    revert 
}

function depositToken(uint256 arg1) {
    if arg1:
        token[address(msg.sender)] += arg1
        emit 0x65dce515: token[address(msg.sender)], msg.sender
    return 1
}

function withdrawToken(uint256 arg1) {
    if token[address(msg.sender)] - arg1 >= 0:
        token[address(msg.sender)] -= arg1
    else:
        token[address(msg.sender)] = 0
    emit 0x65dce515: token[address(msg.sender)], msg.sender
    return 1
}



}
