contract main {




// =====================  Runtime code  =====================


const get_balance = eth.balance(this.address)


address stor0;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_33db067d(?) payable {
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
