contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function setCompany(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'only owner can continue'
    stor2 = arg1
}

function sendFee() {
    if stor0 != msg.sender:
        revert with 0, 'only owner can continue'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_edc809fe(?) payable {
    require calldata.size - 4 >= 224
    if stor0 != msg.sender:
        revert with 0, 'only owner can continue'
    if ext_code.size(arg6) <= 0:
        revert with 0, 'contract_1 is not contract'
    if ext_code.size(arg1) > 0:
        revert with 0, 'said is contract'
    if arg7:
        if ext_code.size(arg7) <= 0:
            revert with 0, 'contract_2 is not contract'
    if arg2 < 1:
        revert with 0, 'price must >= 1'
    if arg3 <= 0:
        revert with 0, 'amount must > 0'
    if arg4 < 90:
        revert with 0, 'b_fee must >= 90'
    if arg4 > 100:
        revert with 0, 'b_fee must <= 100'
    if arg5 < 90:
        revert with 0, 's_fee must >= 90'
    if arg5 > 100:
        revert with 0, 's_fee must <= 100'
    if arg3:
        require arg3
        require arg3 * arg2 / arg3 == arg2
    if arg3 * arg2 < 100:
        revert with 0, 'amount * price must >= 100'
    require ext_code.size(arg6)
    staticcall arg6.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'token balance must >= amount'
    require ext_code.size(arg6)
    staticcall arg6.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'allowance token balance must >= amount'
    require ext_code.size(arg6)
    call arg6.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'systerm error'
    if arg3 * arg2:
        require arg3 * arg2
        require 100 * arg3 * arg2 / arg3 * arg2 == 100
    require arg4 > 0
    require arg4
    if not arg7:
        if msg.value < 100 * arg3 * arg2 / arg4:
            revert with 0, 'wei balance must >= send vaule'
        if arg3 * arg2:
            require arg3 * arg2
            require arg3 * arg2 * arg5 / arg3 * arg2 == arg5
        call arg1 with:
           value arg3 * arg2 * arg5 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg7)
        staticcall arg7.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 100 * arg3 * arg2 / arg4:
            revert with 0, 'token balance must >= send vaule'
        if arg3 * arg2:
            require arg3 * arg2
            require arg3 * arg2 * arg5 / arg3 * arg2 == arg5
        require ext_code.size(arg7)
        call arg7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3 * arg2 * arg5 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'request error'
        if arg3 * arg2:
            require arg3 * arg2
            require arg3 * arg2 * arg5 / arg3 * arg2 == arg5
        if arg3 * arg2:
            require arg3 * arg2
            require 100 * arg3 * arg2 / arg3 * arg2 == 100
        require arg4 > 0
        require arg4
        if (100 * arg3 * arg2 / arg4) - (arg3 * arg2 * arg5 / 100) < 0:
            revert with 0, 'fee must >= 0'
        require ext_code.size(arg7)
        call arg7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor2, (100 * arg3 * arg2 / arg4) - (arg3 * arg2 * arg5 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'request error'
    emit 0x11c8cdbb: msg.sender, arg1, 1
    return 1
}



}
