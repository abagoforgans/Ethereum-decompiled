contract main {




// =====================  Runtime code  =====================


#
#  - executeSubscription(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8)
#
uint8 contractVersion; offset 160
address authorAddress;
address toAddress;
address tokenAddress;
uint256 tokenAmount;
uint256 sub_f4514fa3;
uint256 gasPrice;
mapping of uint256 nextValidTimestamp;
mapping of uint256 extraNonce;

function toAddress() {
    return toAddress
}

function tokenAddress() {
    return tokenAddress
}

function contractVersion() {
    return contractVersion
}

function extraNonce(address arg1) {
    return extraNonce[arg1]
}

function author() {
    return authorAddress
}

function tokenAmount() {
    return tokenAmount
}

function sub_f4514fa3(?) {
    return sub_f4514fa3
}

function gasPrice() {
    return gasPrice
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

function isSubscriptionActive(bytes32 arg1, uint256 arg2) {
    if -1 == nextValidTimestamp[arg1]:
        return 0
    require arg2 + nextValidTimestamp[arg1] >= nextValidTimestamp[arg1]
    return block.timestamp <= arg2 + nextValidTimestamp[arg1]
}

function getSubscriptionHash(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    if toAddress:
        if toAddress != arg2:
            revert with 0, 'toAddress Failure'
    if tokenAddress:
        if tokenAddress != arg3:
            revert with 0, 'tokenAddress Failure'
    if tokenAmount:
        if arg4 != tokenAmount:
            revert with 0, 'tokenAmount Failure'
    if sub_f4514fa3:
        if arg5 != sub_f4514fa3:
            revert with 0, 'periodSeconds Failure'
    if gasPrice:
        if arg6 != gasPrice:
            revert with 0, 'gasPrice Failure'
    return sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
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

function isSubscriptionReady(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    mem[128 len arg8.length] = arg8[all]
    if toAddress:
        if toAddress != arg2:
            revert with 0, 'toAddress Failure'
    if tokenAddress:
        if tokenAddress != arg3:
            revert with 0, 'tokenAddress Failure'
    if tokenAmount:
        if arg4 != tokenAmount:
            revert with 0, 'tokenAmount Failure'
    if sub_f4514fa3:
        if arg5 != sub_f4514fa3:
            revert with 0, 'periodSeconds Failure'
    if gasPrice:
        if arg6 != gasPrice:
            revert with 0, 'gasPrice Failure'
    mem[ceil32(arg8.length) + 160] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg8.length) + 161] = 0
    mem[ceil32(arg8.length) + 162] = address(this.address)
    mem[ceil32(arg8.length) + 182] = address(arg1)
    mem[ceil32(arg8.length) + 202] = address(arg2)
    mem[ceil32(arg8.length) + 222] = address(arg3)
    mem[ceil32(arg8.length) + 128] = 210
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
        if arg1:
            return not arg1
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
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
            if arg1 != address(signer):
                return (arg1 == address(signer))
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
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
                if arg1:
                    return not arg1
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
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
                if arg1 != address(signer):
                    return (arg1 == address(signer))
    if arg1 == arg2:
        return arg1 != arg2
    if block.timestamp < nextValidTimestamp[0][0][this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7]:
        return block.timestamp >= nextValidTimestamp[0][0][this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7]
    require arg6 + tokenAmount >= tokenAmount
    if ext_call.return_data[0] >= arg6 + tokenAmount:
        require arg6 + tokenAmount >= tokenAmount
    return ext_call.return_data[0] >= arg6 + tokenAmount
}



}
