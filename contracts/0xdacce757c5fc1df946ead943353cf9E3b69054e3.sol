contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 etherBalances;
address providerAddress;

function provider() {
    return providerAddress
}

function sub_3bba9cff(?) {
    require calldata.size - 4 >= 64
    return bool(stor0[arg1][arg2])
}

function etherBalances(address arg1) {
    require calldata.size - 4 >= 32
    return etherBalances[arg1]
}

function _fallback() payable {
    revert
}

function deposit() payable {
    etherBalances[address(msg.sender)] += msg.value
    emit Deposit(msg.sender, msg.value);
}

function sub_796f69aa(?) {
    require calldata.size - 4 >= 32
    require msg.sender == providerAddress
    providerAddress = arg1
}

function sub_13de1974(?) {
    require calldata.size - 4 >= 96
    if not arg2:
        if arg3 <= etherBalances[address(msg.sender)]:
            call msg.sender with:
               value arg3 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require etherBalances[address(msg.sender)] - arg3 <= etherBalances[address(msg.sender)]
            etherBalances[address(msg.sender)] -= arg3
    else:
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, msg.sender, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if arg3 <= etherBalances[address(msg.sender)]:
                call msg.sender with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require etherBalances[address(msg.sender)] - arg3 <= etherBalances[address(msg.sender)]
                etherBalances[address(msg.sender)] -= arg3
    stor0[address(msg.sender)][arg1] = 1
}

function sub_6ca9f747(?) {
    require calldata.size - 4 >= 352
    signer = erecover(arg9, arg1 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    signer = erecover(sha3(0xe1bbfad785ac8d2324588f07f2a4a48242cd89a998f7ca0fbac5fae9e30ba2e7, sha3(address(signer), arg7, arg8, arg10, arg11)), arg4 << 248, arg5, arg6) 
    require not stor0[address(signer)][('map', 102102522579401244618701345835884497409030356824678029903137575345097422906087, ('sha3', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('param', 'arg7'), ('param', 'arg8'), ('param', 'arg10'), ('param', 'arg11')))]
    require block.timestamp < arg7
    stor0[address(signer)][('map', 102102522579401244618701345835884497409030356824678029903137575345097422906087, ('sha3', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('param', 'arg7'), ('param', 'arg8'), ('param', 'arg10'), ('param', 'arg11')))] = 1
    if not arg8:
        require arg10 + arg11 <= etherBalances[address(signer)]
        call address(arg9) with:
           value arg10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call providerAddress with:
           value arg11 wei
             gas 2300 * is_zero(value) wei
        require etherBalances[address(signer)] - arg10 - arg11 <= etherBalances[address(signer)]
        etherBalances[address(signer)] = etherBalances[address(signer)] - arg10 - arg11
    else:
        require ext_code.size(arg8)
        call arg8.0x23b872dd with:
             gas gas_remaining wei
            args address(signer), address(arg9), arg10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg8)
        call arg8.0x23b872dd with:
             gas gas_remaining wei
            args address(signer), providerAddress, arg11
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
