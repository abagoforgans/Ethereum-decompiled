contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 532]




// =====================  Runtime code  =====================


uint8 bet;
address owner; offset 8

function bet() {
    return bet
}

function owner() {
    return owner
}

function _fallback() payable {
    bet = 1
    owner = msg.sender
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    bet = 2
}



}
