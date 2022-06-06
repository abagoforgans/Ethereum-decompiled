contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const getCurrentBalance = eth.balance(this.address)


address stor0;
uint256 period;
address stor4;
uint16 sub_1de02e27;
array of uint256 sub_aa15efc8;

function sub_1de02e27(?) {
    return sub_1de02e27
}

function getPeriod() {
    return period
}

function sub_aa15efc8(?) {
    return sub_aa15efc8[0 len sub_aa15efc8.length]
}

function kill() payable {
    if stor4 != msg.sender:
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(stor4)
}



}
