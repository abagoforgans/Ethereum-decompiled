contract main {




// =====================  Runtime code  =====================


#
#  - beginPwn()
#
address stor2;

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor2
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
