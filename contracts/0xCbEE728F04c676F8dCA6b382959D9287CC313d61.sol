contract main {




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
