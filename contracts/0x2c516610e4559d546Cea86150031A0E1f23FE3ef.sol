contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    mem[96 len -1060] = code.data[1311 len -1060]
    mem[64] = -964
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[251 len 1060]
}



// =====================  Runtime code  =====================


array of uint256 message;

function displayMessage() {
    return message[0 len message.length]
}

function message() {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function updateMessage(string arg1) {
    message[] = Array(len=arg1.length, data=arg1[all])
}



}
