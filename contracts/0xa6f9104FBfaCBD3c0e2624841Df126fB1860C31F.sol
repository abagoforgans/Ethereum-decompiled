contract main {




// =====================  Runtime code  =====================


address stor0;

function sub_3394fbd9(?) {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_52e3f92b(?) {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_4d338d64(?) {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.Setmyadress(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.CashOut() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_4e9c7ca2(?) {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.SetPwd(bytes32 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.PwdHasBeenSet(bytes32 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
