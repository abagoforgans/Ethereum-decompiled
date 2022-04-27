contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[398 len 32]
    stor1 = code.data[442 len 20]
    stor2 = code.data[474 len 20]
    return code.data[138 len 260]
}



// =====================  Runtime code  =====================


address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    call stor2 with:
       value msg.value - (msg.value * stor3 / 100) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor1 with:
       value stor3 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
}



}
