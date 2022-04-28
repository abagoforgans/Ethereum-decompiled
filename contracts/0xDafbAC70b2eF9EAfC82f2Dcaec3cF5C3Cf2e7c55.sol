contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1000]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function sub_89acfb27(?) {
    require msg.sender == stor0
    stor1 = arg1
    stor2 = arg2
}

function sub_0763162d(?) {
    require ext_code.size(stor1)
    call stor1.cashOutTank(uint32 rg1) with:
         gas gas_remaining - 710 wei
        args 5151
    require ext_call.success
}

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if eth.balance(stor1) > msg.value:
        require ext_code.size(stor1)
        call stor1.cashOutTank(uint32 rg1) with:
             gas gas_remaining - 710 wei
            args 5151
        require ext_call.success
}



}
