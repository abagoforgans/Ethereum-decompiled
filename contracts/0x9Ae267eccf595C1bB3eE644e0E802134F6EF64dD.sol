contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1188]
}



// =====================  Runtime code  =====================


address stor0;
address queryAddress;
address responseAddress;

function getQueryAddress() {
    return queryAddress
}

function getResponseAddress() {
    return responseAddress
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if msg.sender == stor0:
        stor0 = arg1
}

function setQueryAddress(address arg1) {
    if msg.sender == stor0:
        queryAddress = arg1
}

function setResponseAddress(address arg1) {
    if msg.sender == stor0:
        responseAddress = arg1
}



}
