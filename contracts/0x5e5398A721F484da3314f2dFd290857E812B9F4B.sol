contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 366]




// =====================  Runtime code  =====================


mapping of uint256 payments;

function payments(address arg1) {
    return payments[arg1]
}

function _fallback() payable {
    revert
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit RefundETH(msg.sender, payments[address(msg.sender)]);
}



}
