contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
uint8 stor1; offset 168
address stor1;
address stor2;

function _fallback() {
    stor2 = msg.sender
    stor0 = code.data[1323 len 20]
    address(stor1.field_0) = code.data[1355 len 20]
    uint8(stor1.field_160) = code.data[1406 len 1]
    uint8(stor1.field_168) = uint8(-code.data[1375 len 32] + 100)
    return code.data[224 len 1087]
}



// =====================  Runtime code  =====================


address withdraw1Address;
uint8 percent1; offset 160
uint8 percent2; offset 168
uint128 stor1; offset 176
address withdraw2Address;
address stor2;

function withdraw1() {
    return withdraw1Address
}

function percent2() {
    return percent2
}

function percent1() {
    return percent1
}

function withdraw2() {
    return withdraw2Address
}

function killWallet() {
    if stor2 != msg.sender:
    selfdestruct(stor2)
}

function sub_369231de(?) {
    withdraw2Address = arg1
}

function sub_9e787870(?) {
    withdraw1Address = arg1
}

function sub_b31ef96a(?) {
    percent1 = arg1
    percent2 = uint8(-arg1 + 100)
    stor1 = 0
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
    call withdraw1Address with:
       value msg.value * percent1 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call withdraw2Address with:
       value msg.value * percent2 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
