contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = msg.value
    return code.data[160 len 758]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function get() {
    return stor2, stor1
}

function _fallback() payable {
    revert
}

function put() payable {
    require stor1 != msg.sender
    require msg.value >= 2 * stor2
    call stor1 with:
       value 9 * stor2 / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor1 = msg.sender
    stor2 = msg.value
}



}
