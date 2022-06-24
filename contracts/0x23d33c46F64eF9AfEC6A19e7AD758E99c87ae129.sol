contract main {




// =====================  Runtime code  =====================


#
#  - broadcastSignedRequestAsPayerAction(bytes arg1, address[] arg2, uint256[] arg3, uint256[] arg4, uint256 arg5, bytes arg6)
#  - createRequestAsPayeeAction(address[] arg1, address[] arg2, int256[] arg3, address arg4, address arg5, string arg6)
#  - createRequestAsPayerAction(address[] arg1, int256[] arg2, address arg3, uint256[] arg4, uint256[] arg5, string arg6)
#  - refundAction(bytes32 arg1, uint256 arg2)
#
uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint256 rateFeesNumerator;
uint256 rateFeesDenominator;
uint256 maxFees;
address requestBurnerContractAddress;
address requestCoreAddress;
array of address payeesPayment;
mapping of address payerRefund;
address erc20TokenAddress;

function rateFeesNumerator() {
    return rateFeesNumerator
}

function paused() {
    return bool(paused)
}

function requestCore() {
    return requestCoreAddress
}

function rateFeesDenominator() {
    return rateFeesDenominator
}

function erc20Token() {
    return erc20TokenAddress
}

function owner() {
    return owner
}

function payerRefundAddress(bytes32 arg1) {
    return payerRefund[arg1]
}

function payeesPaymentAddress(bytes32 arg1, uint256 arg2) {
    require arg2 < 256
    return payeesPayment[arg1][arg2]
}

function requestBurnerContract() {
    return requestBurnerContractAddress
}

function maxFees() {
    return maxFees
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require paused
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    stor0 = 1
    emit Pause()
}

function setRequestBurnerContract(address arg1) {
    require msg.sender == owner
    requestBurnerContractAddress = arg1
}

function setMaxCollectable(uint256 arg1) {
    require msg.sender == owner
    maxFees = arg1
    emit UpdateMaxFees(maxFees);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRateFees(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    rateFeesNumerator = arg1
    rateFeesDenominator = arg2
    emit UpdateRateFees(rateFeesNumerator, rateFeesDenominator);
}

function collectEstimation(int256 arg1) {
    if arg1 < 0:
        return 0
    if arg1:
        require arg1
        require arg1 * rateFeesNumerator / arg1 == rateFeesNumerator
    if not rateFeesDenominator:
        if arg1 * rateFeesNumerator < maxFees:
            return (arg1 * rateFeesNumerator)
    else:
        require rateFeesDenominator
        if arg1 * rateFeesNumerator / rateFeesDenominator < maxFees:
            return (arg1 * rateFeesNumerator / rateFeesDenominator)
    return maxFees
}

function acceptAction(bytes32 arg1) {
    require not paused
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.0xa12cad70 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the payer should do this action'
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.getState(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0]:
        revert with 0, 'request should be created'
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.0xe4725ba1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function additionalAction(bytes32 arg1, uint256[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not paused
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.0xa12cad70 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only the payer should do this action'
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.getState(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] == 2:
        revert with 0, 'request should not be canceled'
    mem[(32 * arg2.length) + 132] = arg1
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.0xcaef5dec with:
         gas gas_remaining wei
        args arg1
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint8(ext_call.return_data[31 len 1] + 1) >= ext_call.return_data[31 len 1]
    if arg2.length > uint8(ext_call.return_data[31 len 1] + 1):
        revert with 0, 'number of amounts should be <= number of payees'
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        if not mem[(32 * uint8(idx)) + 128]:
            if uint8(uint8(idx) + 1) >= uint8(idx):
                idx = uint8(idx) + 1
                continue 
        else:
            if uint8(idx) < arg2.length:
                _32 = mem[(32 * uint8(idx)) + 128]
                if mem[(32 * uint8(idx)) + 128] >= 0:
                    mem[(32 * arg2.length) + 128] = 0xce16589400000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = arg1
                    mem[(32 * arg2.length) + 164] = uint8(idx)
                    mem[(32 * arg2.length) + 196] = _32
                    require ext_code.size(requestCoreAddress)
                    call requestCoreAddress.0xce165894 with:
                         gas gas_remaining wei
                        args arg1, idx << 248, _32
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(uint8(idx) + 1) >= uint8(idx):
                        idx = uint8(idx) + 1
                        continue 
        revert
}

function subtractAction(bytes32 arg1, uint256[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not paused
    mem[(32 * arg2.length) + 164] = 0
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.0x92fd1f01 with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only the payee should do this action'
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.getState(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] == 2:
        revert with 0, 'request should not be canceled'
    mem[(32 * arg2.length) + 132] = arg1
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.0xcaef5dec with:
         gas gas_remaining wei
        args arg1
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint8(ext_call.return_data[31 len 1] + 1) >= ext_call.return_data[31 len 1]
    if arg2.length > uint8(ext_call.return_data[31 len 1] + 1):
        revert with 0, 'number of amounts should be <= number of payees'
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        if not mem[(32 * uint8(idx)) + 128]:
            if uint8(uint8(idx) + 1) >= uint8(idx):
                idx = uint8(idx) + 1
                continue 
        else:
            if uint8(idx) < arg2.length:
                _40 = mem[(32 * uint8(idx)) + 128]
                if mem[(32 * uint8(idx)) + 128] >= 0:
                    mem[(32 * arg2.length) + 132] = arg1
                    mem[(32 * arg2.length) + 164] = uint8(idx)
                    require ext_code.size(requestCoreAddress)
                    call requestCoreAddress.0x2ad8d875 with:
                         gas gas_remaining wei
                        args arg1, uint8(idx)
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _40:
                        revert with 0, 'subtract should equal or be lower than amount expected'
                    if uint8(idx) < arg2.length:
                        _48 = mem[(32 * uint8(idx)) + 128]
                        if mem[(32 * uint8(idx)) + 128] >= 0:
                            mem[(32 * arg2.length) + 128] = 0xce16589400000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg2.length) + 132] = arg1
                            mem[(32 * arg2.length) + 164] = uint8(idx)
                            mem[(32 * arg2.length) + 196] = -_48
                            require ext_code.size(requestCoreAddress)
                            call requestCoreAddress.0xce165894 with:
                                 gas gas_remaining wei
                                args arg1, idx << 248, -_48
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(uint8(idx) + 1) >= uint8(idx):
                                idx = uint8(idx) + 1
                                continue 
        revert
}

function cancelAction(bytes32 arg1) {
    require not paused
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.0xa12cad70 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(requestCoreAddress)
    if ext_call.return_data[12 len 20] != msg.sender:
        call requestCoreAddress.0x92fd1f01 with:
             gas gas_remaining wei
            args arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'payer should cancel a newly created request, or payee should cancel a not cancel request'
        require ext_code.size(requestCoreAddress)
        call requestCoreAddress.getState(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 2
        if ext_call.return_data[0] == 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'payer should cancel a newly created request, or payee should cancel a not cancel request'
    else:
        call requestCoreAddress.getState(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 2
        if ext_call.return_data[0]:
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.0x92fd1f01 with:
                 gas gas_remaining wei
                args arg1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'payer should cancel a newly created request, or payee should cancel a not cancel request'
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.getState(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 2
            if ext_call.return_data[0] == 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'payer should cancel a newly created request, or payee should cancel a not cancel request'
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.areAllBalanceNull(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'all balanaces should be = 0 to cancel'
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.0xc4d252f5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function paymentAction(bytes32 arg1, uint256[] arg2, uint256[] arg3) {
    require not paused
    mem[100] = arg1
    require ext_code.size(requestCoreAddress)
    call requestCoreAddress.getState(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0]:
        if not arg3.length:
            mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.getState(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 2
            if ext_call.return_data[0] == 2:
                revert with 0, 'request should not be canceled'
            mem[(32 * arg2.length) + 132] = arg1
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.0xcaef5dec with:
                 gas gas_remaining wei
                args arg1
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(ext_call.return_data[31 len 1] + 1) >= ext_call.return_data[31 len 1]
            if arg2.length > uint8(ext_call.return_data[31 len 1] + 1):
                revert with 0, 'number of amounts should be <= number of payees'
            s = 0
            idx = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                if not mem[(32 * uint8(idx)) + 128]:
                    if uint8(uint8(idx) + 1) >= uint8(idx):
                        s = s
                        idx = uint8(idx) + 1
                        continue 
                else:
                    if uint8(idx) < arg2.length:
                        _389 = mem[(32 * uint8(idx)) + 128]
                        if mem[(32 * uint8(idx)) + 128] >= 0:
                            mem[(32 * arg2.length) + 128] = 0xb073f52b00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg2.length) + 132] = arg1
                            mem[(32 * arg2.length) + 164] = uint8(idx)
                            mem[(32 * arg2.length) + 196] = _389
                            require ext_code.size(requestCoreAddress)
                            call requestCoreAddress.0xb073f52b with:
                                 gas gas_remaining wei
                                args arg1, idx << 248, _389
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = arg1
                            mem[32] = 6
                            if uint8(idx) < 256:
                                if payeesPayment[arg1][uint8(idx)]:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if uint8(idx) < 256:
                                        if uint8(idx) < arg2.length:
                                            _455 = mem[(32 * uint8(idx)) + 128]
                                            mem[(32 * arg2.length) + 132] = msg.sender
                                            mem[(32 * arg2.length) + 164] = payeesPayment[arg1][uint8(idx)]
                                            mem[(32 * arg2.length) + 196] = _455
                                            require ext_code.size(erc20TokenAddress)
                                            call erc20TokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, payeesPayment[arg1][uint8(idx)], _455
                                            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'erc20 transfer should succeed'
                                            if uint8(uint8(idx) + 1) >= uint8(idx):
                                                s = payeesPayment[arg1][uint8(idx)]
                                                idx = uint8(idx) + 1
                                                continue 
                                else:
                                    mem[(32 * arg2.length) + 132] = arg1
                                    mem[(32 * arg2.length) + 164] = uint8(idx)
                                    require ext_code.size(requestCoreAddress)
                                    call requestCoreAddress.0x92fd1f01 with:
                                         gas gas_remaining wei
                                        args arg1, uint8(idx)
                                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if uint8(idx) < arg2.length:
                                        _470 = mem[(32 * uint8(idx)) + 128]
                                        mem[(32 * arg2.length) + 132] = msg.sender
                                        mem[(32 * arg2.length) + 164] = address(ext_call.return_data[0])
                                        mem[(32 * arg2.length) + 196] = _470
                                        require ext_code.size(erc20TokenAddress)
                                        call erc20TokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), _470
                                        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'erc20 transfer should succeed'
                                        if uint8(uint8(idx) + 1) >= uint8(idx):
                                            s = ext_call.return_data[0]
                                            idx = uint8(idx) + 1
                                            continue 
                revert
        else:
            mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            require not paused
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.0xa12cad70 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'only the payer should do this action'
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.getState(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 2
            if ext_call.return_data[0] == 2:
                revert with 0, 'request should not be canceled'
            mem[(32 * arg3.length) + 132] = arg1
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.0xcaef5dec with:
                 gas gas_remaining wei
                args arg1
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(ext_call.return_data[31 len 1] + 1) >= ext_call.return_data[31 len 1]
            if arg3.length > uint8(ext_call.return_data[31 len 1] + 1):
                revert with 0, 'number of amounts should be <= number of payees'
            idx = 0
            while uint8(idx) < arg3.length:
                require uint8(idx) < arg3.length
                if not mem[(32 * uint8(idx)) + 128]:
                    if uint8(uint8(idx) + 1) >= uint8(idx):
                        idx = uint8(idx) + 1
                        continue 
                else:
                    if uint8(idx) < arg3.length:
                        _390 = mem[(32 * uint8(idx)) + 128]
                        if mem[(32 * uint8(idx)) + 128] >= 0:
                            mem[(32 * arg3.length) + 128] = 0xce16589400000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + 132] = arg1
                            mem[(32 * arg3.length) + 164] = uint8(idx)
                            mem[(32 * arg3.length) + 196] = _390
                            require ext_code.size(requestCoreAddress)
                            call requestCoreAddress.0xce165894 with:
                                 gas gas_remaining wei
                                args arg1, idx << 248, _390
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(uint8(idx) + 1) >= uint8(idx):
                                idx = uint8(idx) + 1
                                continue 
                revert
            mem[(32 * arg3.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.getState(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 2
            if ext_call.return_data[0] == 2:
                revert with 0, 'request should not be canceled'
            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.0xcaef5dec with:
                 gas gas_remaining wei
                args arg1
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(uint8(ext_call.return_data[0]) + 1) >= uint8(ext_call.return_data[0])
            if arg2.length > uint8(ext_call.return_data[31 len 1] + 1):
                revert with 0, 'number of amounts should be <= number of payees'
            s = 0
            idx = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                if not mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]:
                    if uint8(uint8(idx) + 1) >= uint8(idx):
                        s = s
                        idx = uint8(idx) + 1
                        continue 
                else:
                    if uint8(idx) < arg2.length:
                        _611 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
                        if mem[(32 * uint8(idx)) + (32 * arg3.length) + 160] >= 0:
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0xb073f52b00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = uint8(idx)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _611
                            require ext_code.size(requestCoreAddress)
                            call requestCoreAddress.0xb073f52b with:
                                 gas gas_remaining wei
                                args arg1, idx << 248, _611
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = arg1
                            mem[32] = 6
                            if uint8(idx) < 256:
                                if payeesPayment[arg1][uint8(idx)]:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if uint8(idx) < 256:
                                        if uint8(idx) < arg2.length:
                                            _638 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = payeesPayment[arg1][uint8(idx)]
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _638
                                            require ext_code.size(erc20TokenAddress)
                                            call erc20TokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, payeesPayment[arg1][uint8(idx)], _638
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'erc20 transfer should succeed'
                                            if uint8(uint8(idx) + 1) >= uint8(idx):
                                                s = payeesPayment[arg1][uint8(idx)]
                                                idx = uint8(idx) + 1
                                                continue 
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = uint8(idx)
                                    require ext_code.size(requestCoreAddress)
                                    call requestCoreAddress.0x92fd1f01 with:
                                         gas gas_remaining wei
                                        args arg1, uint8(idx)
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if uint8(idx) < arg2.length:
                                        _653 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(ext_call.return_data[0])
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _653
                                        require ext_code.size(erc20TokenAddress)
                                        call erc20TokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), _653
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'erc20 transfer should succeed'
                                        if uint8(uint8(idx) + 1) >= uint8(idx):
                                            s = ext_call.return_data[0]
                                            idx = uint8(idx) + 1
                                            continue 
                revert
    else:
        mem[100] = arg1
        require ext_code.size(requestCoreAddress)
        call requestCoreAddress.0xa12cad70 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            if not arg3.length:
                mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.getState(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] == 2:
                    revert with 0, 'request should not be canceled'
                mem[(32 * arg2.length) + 132] = arg1
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.0xcaef5dec with:
                     gas gas_remaining wei
                    args arg1
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(ext_call.return_data[31 len 1] + 1) >= ext_call.return_data[31 len 1]
                if arg2.length > uint8(ext_call.return_data[31 len 1] + 1):
                    revert with 0, 'number of amounts should be <= number of payees'
                s = 0
                idx = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    if not mem[(32 * uint8(idx)) + 128]:
                        if uint8(uint8(idx) + 1) >= uint8(idx):
                            s = s
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        if uint8(idx) < arg2.length:
                            _391 = mem[(32 * uint8(idx)) + 128]
                            if mem[(32 * uint8(idx)) + 128] >= 0:
                                mem[(32 * arg2.length) + 128] = 0xb073f52b00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg2.length) + 132] = arg1
                                mem[(32 * arg2.length) + 164] = uint8(idx)
                                mem[(32 * arg2.length) + 196] = _391
                                require ext_code.size(requestCoreAddress)
                                call requestCoreAddress.0xb073f52b with:
                                     gas gas_remaining wei
                                    args arg1, idx << 248, _391
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = arg1
                                mem[32] = 6
                                if uint8(idx) < 256:
                                    if payeesPayment[arg1][uint8(idx)]:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if uint8(idx) < 256:
                                            if uint8(idx) < arg2.length:
                                                _457 = mem[(32 * uint8(idx)) + 128]
                                                mem[(32 * arg2.length) + 132] = msg.sender
                                                mem[(32 * arg2.length) + 164] = payeesPayment[arg1][uint8(idx)]
                                                mem[(32 * arg2.length) + 196] = _457
                                                require ext_code.size(erc20TokenAddress)
                                                call erc20TokenAddress.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, payeesPayment[arg1][uint8(idx)], _457
                                                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'erc20 transfer should succeed'
                                                if uint8(uint8(idx) + 1) >= uint8(idx):
                                                    s = payeesPayment[arg1][uint8(idx)]
                                                    idx = uint8(idx) + 1
                                                    continue 
                                    else:
                                        mem[(32 * arg2.length) + 132] = arg1
                                        mem[(32 * arg2.length) + 164] = uint8(idx)
                                        require ext_code.size(requestCoreAddress)
                                        call requestCoreAddress.0x92fd1f01 with:
                                             gas gas_remaining wei
                                            args arg1, uint8(idx)
                                        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if uint8(idx) < arg2.length:
                                            _472 = mem[(32 * uint8(idx)) + 128]
                                            mem[(32 * arg2.length) + 132] = msg.sender
                                            mem[(32 * arg2.length) + 164] = address(ext_call.return_data[0])
                                            mem[(32 * arg2.length) + 196] = _472
                                            require ext_code.size(erc20TokenAddress)
                                            call erc20TokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), _472
                                            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'erc20 transfer should succeed'
                                            if uint8(uint8(idx) + 1) >= uint8(idx):
                                                s = ext_call.return_data[0]
                                                idx = uint8(idx) + 1
                                                continue 
                    revert
            else:
                mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                require not paused
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.0xa12cad70 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, 'only the payer should do this action'
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.getState(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] == 2:
                    revert with 0, 'request should not be canceled'
                mem[(32 * arg3.length) + 132] = arg1
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.0xcaef5dec with:
                     gas gas_remaining wei
                    args arg1
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(ext_call.return_data[31 len 1] + 1) >= ext_call.return_data[31 len 1]
                if arg3.length > uint8(ext_call.return_data[31 len 1] + 1):
                    revert with 0, 'number of amounts should be <= number of payees'
                idx = 0
                while uint8(idx) < arg3.length:
                    require uint8(idx) < arg3.length
                    if not mem[(32 * uint8(idx)) + 128]:
                        if uint8(uint8(idx) + 1) >= uint8(idx):
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        if uint8(idx) < arg3.length:
                            _392 = mem[(32 * uint8(idx)) + 128]
                            if mem[(32 * uint8(idx)) + 128] >= 0:
                                mem[(32 * arg3.length) + 128] = 0xce16589400000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = arg1
                                mem[(32 * arg3.length) + 164] = uint8(idx)
                                mem[(32 * arg3.length) + 196] = _392
                                require ext_code.size(requestCoreAddress)
                                call requestCoreAddress.0xce165894 with:
                                     gas gas_remaining wei
                                    args arg1, idx << 248, _392
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if uint8(uint8(idx) + 1) >= uint8(idx):
                                    idx = uint8(idx) + 1
                                    continue 
                    revert
                mem[(32 * arg3.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.getState(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] == 2:
                    revert with 0, 'request should not be canceled'
                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.0xcaef5dec with:
                     gas gas_remaining wei
                    args arg1
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(uint8(ext_call.return_data[0]) + 1) >= uint8(ext_call.return_data[0])
                if arg2.length > uint8(ext_call.return_data[31 len 1] + 1):
                    revert with 0, 'number of amounts should be <= number of payees'
                s = 0
                idx = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    if not mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]:
                        if uint8(uint8(idx) + 1) >= uint8(idx):
                            s = s
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        if uint8(idx) < arg2.length:
                            _612 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
                            if mem[(32 * uint8(idx)) + (32 * arg3.length) + 160] >= 0:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0xb073f52b00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
                                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = uint8(idx)
                                mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _612
                                require ext_code.size(requestCoreAddress)
                                call requestCoreAddress.0xb073f52b with:
                                     gas gas_remaining wei
                                    args arg1, idx << 248, _612
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = arg1
                                mem[32] = 6
                                if uint8(idx) < 256:
                                    if payeesPayment[arg1][uint8(idx)]:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if uint8(idx) < 256:
                                            if uint8(idx) < arg2.length:
                                                _640 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = payeesPayment[arg1][uint8(idx)]
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _640
                                                require ext_code.size(erc20TokenAddress)
                                                call erc20TokenAddress.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, payeesPayment[arg1][uint8(idx)], _640
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'erc20 transfer should succeed'
                                                if uint8(uint8(idx) + 1) >= uint8(idx):
                                                    s = payeesPayment[arg1][uint8(idx)]
                                                    idx = uint8(idx) + 1
                                                    continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = uint8(idx)
                                        require ext_code.size(requestCoreAddress)
                                        call requestCoreAddress.0x92fd1f01 with:
                                             gas gas_remaining wei
                                            args arg1, uint8(idx)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if uint8(idx) < arg2.length:
                                            _654 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(ext_call.return_data[0])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _654
                                            require ext_code.size(erc20TokenAddress)
                                            call erc20TokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), _654
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'erc20 transfer should succeed'
                                            if uint8(uint8(idx) + 1) >= uint8(idx):
                                                s = ext_call.return_data[0]
                                                idx = uint8(idx) + 1
                                                continue 
                    revert
        else:
            require not paused
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.0xa12cad70 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the payer should do this action'
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.getState(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 2
            if ext_call.return_data[0]:
                revert with 0, 'request should be created'
            mem[100] = arg1
            require ext_code.size(requestCoreAddress)
            call requestCoreAddress.0xe4725ba1 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg3.length:
                mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.getState(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] == 2:
                    revert with 0, 'request should not be canceled'
                mem[(32 * arg2.length) + 132] = arg1
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.0xcaef5dec with:
                     gas gas_remaining wei
                    args arg1
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(ext_call.return_data[31 len 1] + 1) >= ext_call.return_data[31 len 1]
                if arg2.length > uint8(ext_call.return_data[31 len 1] + 1):
                    revert with 0, 'number of amounts should be <= number of payees'
                s = 0
                idx = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    if not mem[(32 * uint8(idx)) + 128]:
                        if uint8(uint8(idx) + 1) >= uint8(idx):
                            s = s
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        if uint8(idx) < arg2.length:
                            _393 = mem[(32 * uint8(idx)) + 128]
                            if mem[(32 * uint8(idx)) + 128] >= 0:
                                mem[(32 * arg2.length) + 128] = 0xb073f52b00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg2.length) + 132] = arg1
                                mem[(32 * arg2.length) + 164] = uint8(idx)
                                mem[(32 * arg2.length) + 196] = _393
                                require ext_code.size(requestCoreAddress)
                                call requestCoreAddress.0xb073f52b with:
                                     gas gas_remaining wei
                                    args arg1, idx << 248, _393
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = arg1
                                mem[32] = 6
                                if uint8(idx) < 256:
                                    if payeesPayment[arg1][uint8(idx)]:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if uint8(idx) < 256:
                                            if uint8(idx) < arg2.length:
                                                _459 = mem[(32 * uint8(idx)) + 128]
                                                mem[(32 * arg2.length) + 132] = msg.sender
                                                mem[(32 * arg2.length) + 164] = payeesPayment[arg1][uint8(idx)]
                                                mem[(32 * arg2.length) + 196] = _459
                                                require ext_code.size(erc20TokenAddress)
                                                call erc20TokenAddress.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, payeesPayment[arg1][uint8(idx)], _459
                                                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'erc20 transfer should succeed'
                                                if uint8(uint8(idx) + 1) >= uint8(idx):
                                                    s = payeesPayment[arg1][uint8(idx)]
                                                    idx = uint8(idx) + 1
                                                    continue 
                                    else:
                                        mem[(32 * arg2.length) + 132] = arg1
                                        mem[(32 * arg2.length) + 164] = uint8(idx)
                                        require ext_code.size(requestCoreAddress)
                                        call requestCoreAddress.0x92fd1f01 with:
                                             gas gas_remaining wei
                                            args arg1, uint8(idx)
                                        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if uint8(idx) < arg2.length:
                                            _474 = mem[(32 * uint8(idx)) + 128]
                                            mem[(32 * arg2.length) + 132] = msg.sender
                                            mem[(32 * arg2.length) + 164] = address(ext_call.return_data[0])
                                            mem[(32 * arg2.length) + 196] = _474
                                            require ext_code.size(erc20TokenAddress)
                                            call erc20TokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), _474
                                            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'erc20 transfer should succeed'
                                            if uint8(uint8(idx) + 1) >= uint8(idx):
                                                s = ext_call.return_data[0]
                                                idx = uint8(idx) + 1
                                                continue 
                    revert
            else:
                mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                require not paused
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.0xa12cad70 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, 'only the payer should do this action'
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.getState(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] == 2:
                    revert with 0, 'request should not be canceled'
                mem[(32 * arg3.length) + 132] = arg1
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.0xcaef5dec with:
                     gas gas_remaining wei
                    args arg1
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(ext_call.return_data[31 len 1] + 1) >= ext_call.return_data[31 len 1]
                if arg3.length > uint8(ext_call.return_data[31 len 1] + 1):
                    revert with 0, 'number of amounts should be <= number of payees'
                idx = 0
                while uint8(idx) < arg3.length:
                    require uint8(idx) < arg3.length
                    if not mem[(32 * uint8(idx)) + 128]:
                        if uint8(uint8(idx) + 1) >= uint8(idx):
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        if uint8(idx) < arg3.length:
                            _394 = mem[(32 * uint8(idx)) + 128]
                            if mem[(32 * uint8(idx)) + 128] >= 0:
                                mem[(32 * arg3.length) + 128] = 0xce16589400000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + 132] = arg1
                                mem[(32 * arg3.length) + 164] = uint8(idx)
                                mem[(32 * arg3.length) + 196] = _394
                                require ext_code.size(requestCoreAddress)
                                call requestCoreAddress.0xce165894 with:
                                     gas gas_remaining wei
                                    args arg1, idx << 248, _394
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if uint8(uint8(idx) + 1) >= uint8(idx):
                                    idx = uint8(idx) + 1
                                    continue 
                    revert
                mem[(32 * arg3.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.getState(bytes32 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 2
                if ext_call.return_data[0] == 2:
                    revert with 0, 'request should not be canceled'
                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
                require ext_code.size(requestCoreAddress)
                call requestCoreAddress.0xcaef5dec with:
                     gas gas_remaining wei
                    args arg1
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(uint8(ext_call.return_data[0]) + 1) >= uint8(ext_call.return_data[0])
                if arg2.length > uint8(ext_call.return_data[31 len 1] + 1):
                    revert with 0, 'number of amounts should be <= number of payees'
                s = 0
                idx = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    if not mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]:
                        if uint8(uint8(idx) + 1) >= uint8(idx):
                            s = s
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        if uint8(idx) < arg2.length:
                            _613 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
                            if mem[(32 * uint8(idx)) + (32 * arg3.length) + 160] >= 0:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0xb073f52b00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
                                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = uint8(idx)
                                mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _613
                                require ext_code.size(requestCoreAddress)
                                call requestCoreAddress.0xb073f52b with:
                                     gas gas_remaining wei
                                    args arg1, idx << 248, _613
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = arg1
                                mem[32] = 6
                                if uint8(idx) < 256:
                                    if payeesPayment[arg1][uint8(idx)]:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if uint8(idx) < 256:
                                            if uint8(idx) < arg2.length:
                                                _642 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = payeesPayment[arg1][uint8(idx)]
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _642
                                                require ext_code.size(erc20TokenAddress)
                                                call erc20TokenAddress.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, payeesPayment[arg1][uint8(idx)], _642
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'erc20 transfer should succeed'
                                                if uint8(uint8(idx) + 1) >= uint8(idx):
                                                    s = payeesPayment[arg1][uint8(idx)]
                                                    idx = uint8(idx) + 1
                                                    continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = uint8(idx)
                                        require ext_code.size(requestCoreAddress)
                                        call requestCoreAddress.0x92fd1f01 with:
                                             gas gas_remaining wei
                                            args arg1, uint8(idx)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if uint8(idx) < arg2.length:
                                            _655 = mem[(32 * uint8(idx)) + (32 * arg3.length) + 160]
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(ext_call.return_data[0])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _655
                                            require ext_code.size(erc20TokenAddress)
                                            call erc20TokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), _655
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'erc20 transfer should succeed'
                                            if uint8(uint8(idx) + 1) >= uint8(idx):
                                                s = ext_call.return_data[0]
                                                idx = uint8(idx) + 1
                                                continue 
                    revert
}



}
