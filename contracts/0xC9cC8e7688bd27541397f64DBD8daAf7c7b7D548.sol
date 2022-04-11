contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor4;
address stor6;
address stor7;

function _fallback() payable {
    stor7 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    stor4 = msg.sender
    stor6 = stor7
    stor1 = 112 * 10^6
    stor2 = 10^18
    stor0 = stor2 / 1000
    return code.data[330 len 1359]
}



// =====================  Runtime code  =====================


uint256 price;
uint256 number;
uint256 sub_3f79938e;
uint256 send;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint8 stor4; offset 176
uint128 stor4; offset 176
uint128 stor4; offset 168
uint128 stor4; offset 160
address owner;
mapping of uint256 balances;
address stor6;

function a1() {
    return bool(uint8(stor4.field_160))
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_3f79938e(?) {
    return sub_3f79938e
}

function number() {
    return number
}

function owner() {
    return owner
}

function a3() {
    return bool(uint8(stor4.field_176))
}

function a2() {
    return bool(uint8(stor4.field_168))
}

function price() {
    return price
}

function send() {
    return send
}

function _fallback() payable {
    send = msg.value
    if msg.value < price:
        Mask(96, 0, stor4.field_160) = Mask(96, 0, msg.value < price)
    else:
        Mask(96, 0, stor4.field_160) = Mask(96, 0, not number)
    require sub_3f79938e
    Mask(88, 0, stor4.field_168) = Mask(88, 0, number < 14000 * msg.value / sub_3f79938e)
    number -= 14000 * msg.value / sub_3f79938e
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 14000 * msg.value / sub_3f79938e
    require ext_call.success
    Mask(80, 0, stor4.field_176) = Mask(80, 0, bool(ext_call.return_data[0]))
    balances[address(msg.sender)] += 14000 * msg.value / sub_3f79938e
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
