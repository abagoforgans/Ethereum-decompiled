contract main {




// =====================  Runtime code  =====================


address brokerAddress;
mapping of uint8 stor1;
mapping of uint8 stor2;

function broker() {
    return brokerAddress
}

function usedHashes(bytes32 arg1) {
    return bool(stor2[arg1])
}

function swaps(bytes32 arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_90a6ba88(?) {
    require ext_code.size(brokerAddress)
    call brokerAddress.approveSpender(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0977873b(?) {
    if bool(stor1['swap'][arg1][arg2][arg3][arg4][arg5][arg6][arg7][arg8]) != 1:
        revert with 0, 'Swap is inactive'
    hash = sha256hash(arg9[all]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = sha256hash(hash) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if hash != arg5:
        revert with 0, 'Invalid preimage'
    stor1['swap'][arg1][arg2][arg3][arg4][arg5][arg6][arg7][arg8] = 0
    require ext_code.size(brokerAddress)
    if arg3 != arg7:
        call brokerAddress.0x66acab4c with:
             gas gas_remaining wei
            args this.address, address(arg2), arg4, address(arg3), 52, 53
    else:
        call brokerAddress.0x66acab4c with:
             gas gas_remaining wei
            args this.address, address(arg2), arg4 - arg8, address(arg3), 52, 53
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg8 > 0:
        require ext_code.size(brokerAddress)
        call brokerAddress.operator() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(brokerAddress)
        call brokerAddress.0x66acab4c with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0]), arg8, address(arg7), 54, 55
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xb8f777c2: arg5
}

function sub_571e76f7(?) {
    require ext_code.size(brokerAddress)
    call brokerAddress.coordinator() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Invalid sender'
    if arg4 <= 0:
        revert with 0, 'Invalid amount'
    if arg6 <= block.timestamp:
        revert with 0, 'Invalid expiry time'
    if 1 == bool(stor2[arg5]):
        revert with 0, 'hash already used'
    stor2[arg5] = 1
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3('swap', arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)), arg9 << 248, arg10, arg11) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        revert with 0, 'Invalid signature'
    if arg7 == arg3:
        if arg8 >= arg4:
            revert with 0, 'Fee amount exceeds amount'
    require ext_code.size(brokerAddress)
    call brokerAddress.0x66acab4c with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg4, address(arg3), 48, 49
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 != arg7:
        require ext_code.size(brokerAddress)
        call brokerAddress.0x66acab4c with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg8, address(arg7), 50, 51
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor1['swap'][arg1][arg2][arg3][arg4][arg5][arg6][arg7][arg8] = 1
    emit 0x8fdd4312: address(arg3), arg4, arg6, address(arg7), arg8, arg1, arg2, arg5
}

function sub_27eabac3(?) {
    if arg6 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cancellation time not yet reached'
    if bool(stor1['swap'][arg1][arg2][arg3][arg4][arg5][arg6][arg7][arg8]) != 1:
        revert with 0, 'Swap is inactive'
    require ext_code.size(brokerAddress)
    call brokerAddress.coordinator() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        if arg8 > arg8:
            revert with 0, 'Cancel fee must be less than swap fee'
        stor1['swap'][arg1][arg2][arg3][arg4][arg5][arg6][arg7][arg8] = 0
        require ext_code.size(brokerAddress)
        if arg3 != arg7:
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), arg4, address(arg3), 57, 56
        else:
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), arg4 - arg8, address(arg3), 57, 56
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg8 > 0:
            require ext_code.size(brokerAddress)
            call brokerAddress.operator() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(brokerAddress)
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0]), arg8, address(arg7), 58, 59
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg9 > arg8:
            revert with 0, 'Cancel fee must be less than swap fee'
        stor1['swap'][arg1][arg2][arg3][arg4][arg5][arg6][arg7][arg8] = 0
        require ext_code.size(brokerAddress)
        if arg3 != arg7:
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), arg4, address(arg3), 57, 56
        else:
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), arg4 - arg9, address(arg3), 57, 56
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg9 > 0:
            require ext_code.size(brokerAddress)
            call brokerAddress.operator() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(brokerAddress)
            call brokerAddress.0x66acab4c with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0]), arg9, address(arg7), 58, 59
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg3 != arg7:
            if arg8 - arg9 > 0:
                require ext_code.size(brokerAddress)
                call brokerAddress.0x66acab4c with:
                     gas gas_remaining wei
                    args address(this.address), address(arg1), arg8 - arg9, address(arg7), 60, 61
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit 0xad8f5783: arg5
}



}
