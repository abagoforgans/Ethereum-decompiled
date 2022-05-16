contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8

function _fallback() payable {
    uint8(stor0.field_0) = 0
    require not msg.value
    address(stor0.field_8) = code.data[530 len 20]
    return code.data[90 len 428]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1

const isSane = 1


uint8 stor0;
address crowdsaleAddress; offset 8

function crowdsale() {
    return crowdsaleAddress
}

function reservedTokensAreDistributed() {
    return bool(stor0)
}

function finalizeCrowdsale() {
  stop
}

function _fallback() payable {
    revert
}

function distributeReservedTokens(uint256 arg1) {
  stop
}



}
