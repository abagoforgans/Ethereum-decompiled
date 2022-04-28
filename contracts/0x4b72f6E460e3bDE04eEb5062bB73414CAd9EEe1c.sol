contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
address stor2; offset 8
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;

function _fallback() payable {
    uint8(stor2.field_0) = 0
    Mask(152, 0, stor2.field_8) = 0x6d12113a745c0234648d30446ba8774557d45a
    stor3 = 10^18
    stor5 = 0x730465f2c0d5ec237d56ca8b7656a827d032d241
    stor6 = 1
    require not msg.value
    stor0 = msg.sender
    stor1 = 1
    if stor4 < 4 * 10^10:
        stor3 = 16666666666
    else:
        if stor4 < 8 * 10^10:
            stor3 = 25 * 10^9
        else:
            if stor4 >= 10^11:
                stor3 = 10000 * 10^18
            else:
                stor3 = 38461538461
    stor4 = 2 * 10^10
    return code.data[516 len 2602]
}



// =====================  Runtime code  =====================


address stor0;
uint256 transferFee;
address stor2;
uint256 price;
uint256 tokenSold;
address stor5;
uint256 exrate;

function tokenSold() {
    return tokenSold
}

function price() {
    return price
}

function exrate() {
    return exrate
}

function transferFee() {
    return transferFee
}

function setTransferFee(uint256 arg1) {
    require msg.sender == stor0
    transferFee = arg1
}

function sub_4fc5b6f6(?) {
    require msg.sender == stor0
    require arg1 >= 0
    exrate = arg1
}

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    require eth.balance(this.address) < arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_7c3fdc02(?) payable {
    require arg1
    call arg1 with:
       value msg.value - (msg.value / 1000 * transferFee) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(msg.value, arg2, msg.sender, arg1);
}

function exchange(uint256 arg1) {
    require arg1 > 0
    require exrate > 0
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, arg1
    require ext_call.success
    require exrate
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor0, msg.sender, arg1 / exrate
    require ext_call.success
}

function buy(address arg1, uint256 arg2) payable {
    require msg.value > 0
    require arg1
    call arg1 with:
       value msg.value - (msg.value / 1000 * transferFee) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require price
    tokenSold += msg.value / price
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor0, msg.sender, msg.value / price
    require ext_call.success
    if tokenSold < 4 * 10^10:
        price = 16666666666
    else:
        if tokenSold < 8 * 10^10:
            price = 25 * 10^9
        else:
            if tokenSold >= 10^11:
                price = 10000 * 10^18
            else:
                price = 38461538461
    emit Transfer(msg.value, arg2, msg.sender, arg1);
}



}
