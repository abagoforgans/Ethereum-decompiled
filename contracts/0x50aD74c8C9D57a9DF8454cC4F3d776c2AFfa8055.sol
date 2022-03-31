contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 1208]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    emit logDeposit(msg.sender, msg.value);
}

function flush() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sendCoins(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function newAddress() {
    if stor0 != msg.sender:
        return 0
    create contract with 0 wei
                    code: code.data[716 len 492]
    require create.new_address
    return address(create.new_address)
}



}
