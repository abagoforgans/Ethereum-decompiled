contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 338]




// =====================  Runtime code  =====================


uint256 bet;

function bet() {
    return bet
}

function _fallback() payable {
    bet = msg.value
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit received(Array(len=12, data='bet received'));
}



}
