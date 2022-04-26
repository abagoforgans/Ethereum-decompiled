contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[519 len 32]
    stor1 = code.data[563 len 20]
    stor2 = code.data[595 len 20]
    return code.data[138 len 381]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function Kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    require msg.value
    stor4 = msg.value * stor3 / 100
    stor5 = msg.value - (msg.value * stor3 / 100)
    call stor1 with:
       value msg.value * stor3 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor2 with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
}

function sub_6ef90d45(?) payable {
    require msg.value
    stor4 = msg.value * stor3 / 100
    stor5 = msg.value - (msg.value * stor3 / 100)
    call stor1 with:
       value msg.value * stor3 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor2 with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
}



}
