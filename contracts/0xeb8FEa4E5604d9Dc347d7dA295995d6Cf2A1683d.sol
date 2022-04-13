contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint16 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    stor2 = 0
    return code.data[135 len 1578]
}



// =====================  Runtime code  =====================


address stor0;
uint256 minAmount;
uint16 fee;

function minAmount() {
    return minAmount
}

function fee() {
    return fee
}

function _fallback() payable {
    emit LogDepositReceived(msg.value, msg.sender);
}

function setMinAmount(uint256 arg1) {
    require msg.sender == stor0
    minAmount = arg1
}

function setFee(uint16 arg1) {
    require msg.sender == stor0
    require arg1 <= 9999
    fee = arg1
}

function withdraw() {
    require msg.sender == stor0
    if eth.balance(this.address) > 0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_d3ab9455(?) {
    require msg.sender == stor0
    require arg1 <= eth.balance(this.address)
    if arg1 > 0:
        call stor0 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function donate(address arg1) payable {
    require msg.value >= minAmount
    require arg1
    call arg1 with:
       value msg.value - (msg.value * fee / 10000) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x31565400: msg.value, msg.sender, arg1
}



}
