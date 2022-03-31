contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 1310]
}



// =====================  Runtime code  =====================


address stor0;
address sub_c043fde8Address;
uint256 stor1;

function sub_c043fde8(?) {
    return address(sub_c043fde8Address)
}

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
    if msg.sender == stor0:
        create contract with 0 wei
                        code: code.data[818 len 492]
        require create.new_address
        uint256(stor1) = create.new_address or Mask(96, 160, uint256(stor1))
}



}
