contract main {


// =======================  Init code  ======================


uint8 stor0; offset 152
address stor0;
uint8 stor1; offset 152
address stor1;

function _fallback() payable {
    Mask(152, 0, stor0.field_0) = 0xcca4dcbaca9911f9a4a492c3b2ee8a8de75890
    uint8(stor0.field_152) = 0
    Mask(152, 0, stor1.field_0) = 0xa2e07f3e3ece5f490cba08979489db83002c4c
    uint8(stor1.field_152) = 0
    require not msg.value
    return code.data[196 len 573]
}



// =====================  Runtime code  =====================


const sub_357139ea(?) = ((100 * eth.balance(this.address) / 200) + 5 / 10)


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function percent(uint256 arg1, uint256 arg2) {
    require arg2
    return ((100 * arg1 / arg2) + 5 / 10)
}

function pay() {
    call stor0 with:
       value (100 * eth.balance(this.address) / 200) + 5 / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
