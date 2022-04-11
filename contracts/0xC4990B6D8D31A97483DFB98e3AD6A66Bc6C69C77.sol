contract main {


// =======================  Init code  ======================


address stor6;

function _fallback() payable {
    stor6 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    return code.data[116 len 1442]
}



// =====================  Runtime code  =====================


uint256 price;
uint256 number;
uint256 sub_3f79938e;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint8 stor3; offset 176
uint128 stor3; offset 176
uint128 stor3; offset 168
uint128 stor3; offset 160
address owner;
mapping of uint256 balances;
address stor5;
address stor6;

function a1() {
    return bool(uint8(stor3.field_160))
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
    return bool(uint8(stor3.field_176))
}

function a2() {
    return bool(uint8(stor3.field_168))
}

function price() {
    return price
}

function BuyToken() {
    number = 112 * 10^6
    stor5 = stor6
    owner = msg.sender
    sub_3f79938e = 10^18
    price = sub_3f79938e / 1000
}

function _fallback() payable {
    if msg.value < price:
        Mask(96, 0, stor3.field_160) = Mask(96, 0, msg.value < price)
    else:
        Mask(96, 0, stor3.field_160) = Mask(96, 0, not number)
    require sub_3f79938e
    Mask(88, 0, stor3.field_168) = Mask(88, 0, number < 14000 * msg.value / sub_3f79938e)
    number -= 14000 * msg.value / sub_3f79938e
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 14000 * msg.value / sub_3f79938e
    require ext_call.success
    Mask(80, 0, stor3.field_176) = Mask(80, 0, bool(ext_call.return_data[0]))
    balances[address(msg.sender)] += 14000 * msg.value / sub_3f79938e
}



}
