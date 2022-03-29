contract main {


// =======================  Init code  ======================


uint16 stor0; offset 160
address stor0;

function _fallback() {
    address(stor0.field_0) = msg.sender
    uint16(stor0.field_160) = 0
    return code.data[65 len 12278]
}



// =====================  Runtime code  =====================


#
#  - generateWinMatrix(uint16 arg1)
#
uint16 betsProcessed; offset 160
address stor0;
mapping of uint8 coeff;

function getCoeff(uint16 arg1) {
    return coeff[arg1 << 240]
}

function getBetsProcessed() {
    return betsProcessed
}

function deleteContract() {
    require stor0 == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() {
    revert 
}

function isReady() {
    return (157 == betsProcessed)
}



}
