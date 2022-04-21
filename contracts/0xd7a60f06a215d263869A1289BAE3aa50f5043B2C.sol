contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = 0x805ab9a407ea2b3da0fdf97154d29b09537f599e
    stor1 = 0x73fed809e2c6d7b83a725c5e24877750e9a62c73
    stor2 = 0x671282d61fa058f601ba77c23c0e94352c6d1c6c
    stor3 = 88
    stor4 = 6
    stor5 = 6
    require not msg.value
    return code.data[299 len 391]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    call stor0 with:
       value msg.value * stor3 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor1 with:
       value msg.value * stor4 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor2 with:
       value msg.value * stor5 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
