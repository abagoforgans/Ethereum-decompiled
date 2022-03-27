contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 419]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() {
    if msg.value > 0:
        emit DepositMade(msg.sender, msg.value);
}

function withdraw(uint256 arg1, address arg2) {
    require owner == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit WithdrawalMade(msg.sender, msg.value);
}



}
