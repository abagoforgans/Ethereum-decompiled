contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint8 stor3;
address stor3; offset 16
uint256 stor3; offset 8
address stor4;

function _fallback() payable {
    uint8(stor3.field_0) = 0
    Mask(248, 0, stor3.field_8) = 1
    require not msg.value
    address(stor3.field_16) = 0x4d5c907a460b0844cc99b95003819c2aa2b2b77a
    stor4 = 0x3c7d48f9710ae7c706e2e8f95f293fe39e928c4
    stor2 = 400000
    stor0 = stor4
    return code.data[362 len 2922]
}



// =====================  Runtime code  =====================


address adminAddress;
uint256 raisedWei;
uint256 rate;
uint8 stor3;
uint8 stor3; offset 8
address tokenAddress; offset 16
uint256 stor3; offset 8
address stor4;

function rate() {
    return rate
}

function haltSale() {
    return bool(uint8(stor3.field_0))
}

function raisedWei() {
    return raisedWei
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function seIcoAddress(address arg1) {
    require msg.sender == adminAddress
    stor4 = arg1
}

function setHaltSale(bool arg1) {
    require msg.sender == adminAddress
    uint8(stor3.field_0) = uint8(arg1)
}

function seEnableTransfer(bool arg1) {
    require msg.sender == adminAddress
    Mask(248, 0, stor3.field_8) = Mask(248, 0, arg1)
}

function sendTo(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function drain(uint256 arg1) {
    require msg.sender == adminAddress
    if not arg1:
        call adminAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args adminAddress, arg1
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor3.field_0)
    require msg.value > 0
    require raisedWei + msg.value >= raisedWei
    raisedWei += msg.value
    if raisedWei > 185000 * 10^18:
        rate = 40000
    else:
        if raisedWei > 145000 * 10^18:
            rate = 50000
        else:
            if raisedWei > 75000 * 10^18:
                rate = 80000
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    require ext_call.return_data[0]
    emit Buy(msg.sender, msg.value * rate, msg.value);
    if uint8(stor3.field_8):
        call stor4 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buy(address arg1) payable {
    require not uint8(stor3.field_0)
    require msg.value > 0
    require raisedWei + msg.value >= raisedWei
    raisedWei += msg.value
    if raisedWei > 185000 * 10^18:
        rate = 40000
    else:
        if raisedWei > 145000 * 10^18:
            rate = 50000
        else:
            if raisedWei > 75000 * 10^18:
                rate = 80000
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    require ext_call.return_data[0]
    emit Buy(address(arg1), msg.value * rate, msg.value);
    if uint8(stor3.field_8):
        call stor4 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    return msg.value
}



}
