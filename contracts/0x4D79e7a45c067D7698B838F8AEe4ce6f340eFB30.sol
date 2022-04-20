contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[435 len 20]
    return code.data[83 len 340]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1

const isSane = 1


address crowdsaleAddress;

function crowdsale() {
    return crowdsaleAddress
}

function finalizeCrowdsale() {
  stop
}

function _fallback() payable {
    revert
}



}
