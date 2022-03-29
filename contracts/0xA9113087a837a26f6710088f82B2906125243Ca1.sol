contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[528 len 20]
    return code.data[96 len 420]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert 
}

function sub_d0f58ccb(?) {
    if stor0 == msg.sender:
        stor1 = arg1
}

function transferMoney(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
}



}
