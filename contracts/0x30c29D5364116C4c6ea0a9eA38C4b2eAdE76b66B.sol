contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = tx.origin
    stor3 = block.gasprice
    bool(stor2.length) = 0
    stor2.length.field_1 = 11
    stor2.length.field_8 = 'hello world' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[300 len 1025]
}



// =====================  Runtime code  =====================


address creatorAddress;
address lastCallerAddress;
array of uint256 message;
uint256 totalGas;

function getCreator() {
    return creatorAddress
}

function getTotalGas() {
    return totalGas
}

function getLastCaller() {
    return lastCallerAddress
}

function getMessage() {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function setMessage(string arg1) {
    message[] = Array(len=arg1.length, data=arg1[all])
    lastCallerAddress = tx.origin
    totalGas += block.gasprice
}



}
