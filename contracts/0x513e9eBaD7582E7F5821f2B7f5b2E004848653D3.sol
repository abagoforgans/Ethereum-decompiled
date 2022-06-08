contract main {




// =====================  Runtime code  =====================


#
#  - executeSubscription(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8)
#
address authorAddress;
address requiredToAddress;
address requiredTokenAddress;
uint256 requiredTokenAmount;
uint256 requiredPeriodSeconds;
uint256 requiredGasPrice;
mapping of uint256 nextValidTimestamp;
mapping of uint256 extraNonce;

function requiredGasPrice() {
    return requiredGasPrice
}

function requiredTokenAmount() {
    return requiredTokenAmount
}

function requiredToAddress() {
    return requiredToAddress
}

function requiredPeriodSeconds() {
    return requiredPeriodSeconds
}

function requiredTokenAddress() {
    return requiredTokenAddress
}

function extraNonce(address arg1) {
    return extraNonce[arg1]
}

function author() {
    return authorAddress
}

function nextValidTimestamp(bytes32 arg1) {
    return nextValidTimestamp[arg1]
}

function endContract() {
    require msg.sender == authorAddress
    selfdestruct(authorAddress)
}

function _fallback() payable {
    revert
}

function getSubscriptionHash(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    return sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
}

function isSubscriptionActive(bytes32 arg1, uint256 arg2) {
    if -1 == nextValidTimestamp[arg1]:
        return 0
    require arg2 + nextValidTimestamp[arg1] >= nextValidTimestamp[arg1]
    return block.timestamp <= arg2 + nextValidTimestamp[arg1]
}

function getSubscriptionSigner(bytes32 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 160] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg2.length) + 188] = arg1
    mem[ceil32(arg2.length) + 128] = 60
    mem[ceil32(arg2.length) + 220] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1)
    if arg2.length != 65:
        return 0
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            return 0
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), Mask(224, 0, arg1)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function cancelSubscription(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    mem[338 len 192] = 0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, Mask(112, 144, arg7) >> 144
    mem[370 len arg8.length] = arg8[all]
    mem[ceil32(arg8.length) + 402] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg8.length) + 430] = sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    mem[ceil32(arg8.length) + 370] = 60
    mem[ceil32(arg8.length) + 462] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, Mask(32, 224, sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)) >> 224
    if arg8.length != 65:
        if arg1:
            revert with 0, 'Invalid Signature for subscription cancellation'
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) - 256) + 27 << 248, mem[370], mem[402]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 != address(signer):
                revert with 0, 'Invalid Signature for subscription cancellation'
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) - 256) + 27) != 28:
                if arg1:
                    revert with 0, 'Invalid Signature for subscription cancellation'
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) - 256) + 27 << 248, mem[370], mem[402]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != address(signer):
                    revert with 0, 'Invalid Signature for subscription cancellation'
    if arg1 != msg.sender:
        revert with 0, 'msg.sender is not the subscriber'
    nextValidTimestamp[0][0][this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7] = -1
    return 1
}

function isSubscriptionReady(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    mem[338 len 192] = 0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, Mask(112, 144, arg7) >> 144
    mem[370 len arg8.length] = arg8[all]
    mem[ceil32(arg8.length) + 402] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg8.length) + 430] = sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    mem[ceil32(arg8.length) + 370] = 60
    mem[ceil32(arg8.length) + 462] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, Mask(32, 224, sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)) >> 224
    if arg8.length != 65:
        require ext_code.size(arg3)
        call arg3.0xdd62ed3e with:
             gas gas_remaining wei
            args address(arg1), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if requiredToAddress:
            if requiredToAddress != arg2:
                return (requiredToAddress == arg2)
        if requiredTokenAddress:
            if requiredTokenAddress != arg3:
                return (requiredTokenAddress == arg3)
        if requiredTokenAmount:
            if arg4 != requiredTokenAmount:
                return (arg4 == requiredTokenAmount)
        if requiredPeriodSeconds:
            if arg5 != requiredPeriodSeconds:
                return (arg5 == requiredPeriodSeconds)
        if requiredGasPrice:
            if arg6 != requiredGasPrice:
                return (arg6 == requiredGasPrice)
        if arg1 != 0:
            return (0 == arg1)
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) - 256) + 27 << 248, mem[370], mem[402]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg3)
            call arg3.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(arg1), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg3)
            call arg3.0x70a08231 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if requiredToAddress:
                if requiredToAddress != arg2:
                    return (requiredToAddress == arg2)
            if requiredTokenAddress:
                if requiredTokenAddress != arg3:
                    return (requiredTokenAddress == arg3)
            if requiredTokenAmount:
                if arg4 != requiredTokenAmount:
                    return (arg4 == requiredTokenAmount)
            if requiredPeriodSeconds:
                if arg5 != requiredPeriodSeconds:
                    return (arg5 == requiredPeriodSeconds)
            if requiredGasPrice:
                if arg6 != requiredGasPrice:
                    return (arg6 == requiredGasPrice)
            if address(signer) != arg1:
                return (address(signer) == arg1)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) - 256) + 27) != 28:
                require ext_code.size(arg3)
                call arg3.0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(arg1), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                call arg3.0x70a08231 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if requiredToAddress:
                    if requiredToAddress != arg2:
                        return (requiredToAddress == arg2)
                if requiredTokenAddress:
                    if requiredTokenAddress != arg3:
                        return (requiredTokenAddress == arg3)
                if requiredTokenAmount:
                    if arg4 != requiredTokenAmount:
                        return (arg4 == requiredTokenAmount)
                if requiredPeriodSeconds:
                    if arg5 != requiredPeriodSeconds:
                        return (arg5 == requiredPeriodSeconds)
                if requiredGasPrice:
                    if arg6 != requiredGasPrice:
                        return (arg6 == requiredGasPrice)
                if arg1 != 0:
                    return (0 == arg1)
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 434, 32))), 0) - 256) + 27 << 248, mem[370], mem[402]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg3)
                call arg3.0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(arg1), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                call arg3.0x70a08231 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if requiredToAddress:
                    if requiredToAddress != arg2:
                        return (requiredToAddress == arg2)
                if requiredTokenAddress:
                    if requiredTokenAddress != arg3:
                        return (requiredTokenAddress == arg3)
                if requiredTokenAmount:
                    if arg4 != requiredTokenAmount:
                        return (arg4 == requiredTokenAmount)
                if requiredPeriodSeconds:
                    if arg5 != requiredPeriodSeconds:
                        return (arg5 == requiredPeriodSeconds)
                if requiredGasPrice:
                    if arg6 != requiredGasPrice:
                        return (arg6 == requiredGasPrice)
                if address(signer) != arg1:
                    return (address(signer) == arg1)
    if arg1 == arg2:
        return arg1 != arg2
    if block.timestamp < nextValidTimestamp[0][0][this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7]:
        return block.timestamp >= nextValidTimestamp[0][0][this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7]
    require arg6 + arg4 >= arg4
    if ext_call.return_data[0] >= arg6 + arg4:
        require arg6 + arg4 >= arg4
    return ext_call.return_data[0] >= arg6 + arg4
}



}
