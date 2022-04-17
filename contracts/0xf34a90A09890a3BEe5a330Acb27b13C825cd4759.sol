contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
uint8 stor1; offset 168
address stor1;

function _fallback() {
    stor0 = code.data[832 len 20]
    address(stor1.field_0) = code.data[864 len 20]
    uint8(stor1.field_160) = code.data[915 len 1]
    uint8(stor1.field_168) = uint8(-code.data[884 len 32] + 100)
    return code.data[211 len 609]
}



// =====================  Runtime code  =====================


address withdraw1Address;
uint8 percent1; offset 160
uint8 percent2; offset 168
address withdraw2Address;

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

function _fallback() payable {
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
