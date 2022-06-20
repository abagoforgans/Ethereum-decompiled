contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 deposits;
mapping of uint256 resolverAllowances;
address identityRegistryAddress;
address stor4;
address hydroTokenAddress;
address stor6;
address clientRaindropAddress;
address stor8;
uint256 signatureTimeout;
mapping of uint256 signatureNonce;

function signatureNonce(uint256 arg1) {
    require calldata.size - 4 >= 32
    return signatureNonce[arg1]
}

function clientRaindropAddress() {
    return clientRaindropAddress
}

function signatureTimeout() {
    return signatureTimeout
}

function hydroTokenAddress() {
    return hydroTokenAddress
}

function owner() {
    return owner
}

function identityRegistryAddress() {
    return identityRegistryAddress
}

function deposits(uint256 arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function resolverAllowances(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return uint256(resolverAllowances[arg1][arg2])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setClientRaindropAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    clientRaindropAddress = arg1
    stor8 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAddresses(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    identityRegistryAddress = arg1
    stor4 = arg1
    hydroTokenAddress = arg2
    stor6 = arg2
}

function transferSnowflakeBalance(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.identityExists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'The EIN does not exist.'
    if arg2 > deposits[ext_call.return_data[0]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot withdraw more than the current deposit balance.'
    require arg2 <= deposits[ext_call.return_data[0]]
    deposits[ext_call.return_data[0]] -= arg2
    require arg2 + deposits[arg1] >= deposits[arg1]
    deposits[arg1] += arg2
    emit 0xfc1e758c: arg2, ext_call.return_data[0], arg1
}

function withdrawSnowflakeBalance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot transfer to the Snowflake smart contract itself.'
    if arg2 > deposits[ext_call.return_data[0]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot withdraw more than the current deposit balance.'
    require arg2 <= deposits[ext_call.return_data[0]]
    deposits[ext_call.return_data[0]] -= arg2
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was unsuccessful'
    emit 0xaaa7de35: arg2, ext_call.return_data[0], arg1
}

function triggerRecoveryAddressChangeFor(address arg1, address arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    signatureNonce[ext_call.return_data[0]]++
    require ext_code.size(stor4)
    staticcall stor4.isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) with:
            gas gas_remaining wei
           args address(arg1), sha3(0, 0, this.address, 'I authorize this change of Recov', 'ery Address.', ext_call.return_data[0], arg2, signatureNonce[ext_call.return_data[0]]), arg3 << 248, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
    require ext_code.size(stor4)
    call stor4.triggerRecoveryAddressChangeFor(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferSnowflakeBalanceFrom(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Resolver has not been set by from tokenholder.'
    if arg3 > uint256(resolverAllowances[arg1][msg.sender]):
        emit 0xe8197a21: uint256(resolverAllowances[arg1][msg.sender]), arg3, arg1, msg.sender
        revert with 0, 'Insufficient Allowance'
    require arg3 <= uint256(resolverAllowances[arg1][msg.sender])
    uint256(resolverAllowances[arg1][msg.sender]) -= arg3
    require ext_code.size(stor4)
    staticcall stor4.identityExists(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'The EIN does not exist.'
    if arg3 > deposits[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot withdraw more than the current deposit balance.'
    require arg3 <= deposits[arg1]
    deposits[arg1] -= arg3
    require arg3 + deposits[arg2] >= deposits[arg2]
    deposits[arg2] += arg3
    emit 0xfc1e758c: arg3, arg1, arg2
    emit 0x3bd0280d: msg.sender
}

function withdrawSnowflakeBalanceFrom(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Resolver has not been set by from tokenholder.'
    if arg3 > uint256(resolverAllowances[arg1][msg.sender]):
        emit 0xe8197a21: uint256(resolverAllowances[arg1][msg.sender]), arg3, arg1, msg.sender
        revert with 0, 'Insufficient Allowance'
    require arg3 <= uint256(resolverAllowances[arg1][msg.sender])
    uint256(resolverAllowances[arg1][msg.sender]) -= arg3
    if this.address == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot transfer to the Snowflake smart contract itself.'
    if arg3 > deposits[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot withdraw more than the current deposit balance.'
    require arg3 <= deposits[arg1]
    deposits[arg1] -= arg3
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was unsuccessful'
    emit 0xaaa7de35: arg3, arg1, arg2
    emit 0x8262975d: msg.sender
}

function transferSnowflakeBalanceFromVia(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Resolver has not been set by from tokenholder.'
    if arg4 > uint256(resolverAllowances[arg1][msg.sender]):
        emit 0xe8197a21: 0, Mask(224, 0, resolverAllowances[arg1][msg.sender]), arg4, arg1, msg.sender
        revert with 0, 'Insufficient Allowance'
    require arg4 <= uint256(resolverAllowances[arg1][msg.sender])
    uint256(resolverAllowances[arg1][msg.sender]) -= arg4
    if this.address == arg2:
        revert with 0, 'Cannot transfer to the Snowflake smart contract itself.'
    if arg4 > deposits[arg1]:
        revert with 0, 'Cannot withdraw more than the current deposit balance.'
    require arg4 <= deposits[arg1]
    deposits[arg1] -= arg4
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was unsuccessful'
    emit 0xaaa7de35: 0, Mask(224, 0, arg4), arg1, arg2
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg3, arg4, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1dd3c359: msg.sender, arg3
}

function withdrawSnowflakeBalanceFromVia(uint256 arg1, address arg2, address arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Resolver has not been set by from tokenholder.'
    if arg4 > uint256(resolverAllowances[arg1][msg.sender]):
        emit 0xe8197a21: 0, Mask(224, 0, resolverAllowances[arg1][msg.sender]), arg4, arg1, msg.sender
        revert with 0, 'Insufficient Allowance'
    require arg4 <= uint256(resolverAllowances[arg1][msg.sender])
    uint256(resolverAllowances[arg1][msg.sender]) -= arg4
    if this.address == arg2:
        revert with 0, 'Cannot transfer to the Snowflake smart contract itself.'
    if arg4 > deposits[arg1]:
        revert with 0, 'Cannot withdraw more than the current deposit balance.'
    require arg4 <= deposits[arg1]
    deposits[arg1] -= arg4
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was unsuccessful'
    emit 0xaaa7de35: 0, Mask(224, 0, arg4), arg1, arg2
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args msg.sender, arg1, address(arg3), arg4, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4bf14599: msg.sender, arg3
}

function removeResolver(address arg1, bool arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Identity has not yet set this resolver.'
    uint256(resolverAllowances[ext_call.return_data[0]][address(arg1)]) = 0
    if arg2:
        require ext_code.size(arg1)
        staticcall arg1.callOnRemoval() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Removal failure.'
        emit 0xd1b5265e: ext_call.return_data[0], arg1
    require 0 < 0, 1
    mem[ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg3.length) + 292 len floor32(0, 1)] = mem[ceil32(arg3.length) + 160 len floor32(0, 1)]
    require ext_code.size(stor4)
    call stor4.removeResolversFor(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 196 len (32 * 0, 1) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addResolver(address arg1, bool arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Identity has already set this resolver.'
    require 0 < 0, 1
    mem[ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg4.length) + 292 len floor32(0, 1)] = mem[ceil32(arg4.length) + 160 len floor32(0, 1)]
    require ext_code.size(stor4)
    call stor4.addResolversFor(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + 196 len (32 * 0, 1) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        uint256(resolverAllowances[ext_call.return_data[0]][address(arg1)]) = arg3
        require ext_code.size(arg1)
        staticcall arg1.callOnAddition() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.onAddition(uint256 arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Sign up failure.'
        emit 0xa5a2dcb8: arg3, ext_call.return_data[0], arg1
}

function addResolverAsProvider(uint256 arg1, address arg2, bool arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(stor4)
    staticcall stor4.isProviderFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The msg.sender is not a Provider for the passed EIN'
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Identity has already set this resolver.'
    require 0 < 0, 1
    mem[ceil32(arg5.length) + 160] = arg2
    mem[ceil32(arg5.length) + 292 len floor32(0, 1)] = mem[ceil32(arg5.length) + 160 len floor32(0, 1)]
    require ext_code.size(stor4)
    call stor4.addResolversFor(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args mem[ceil32(arg5.length) + 196 len (32 * 0, 1) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3:
        uint256(resolverAllowances[arg1][address(arg2)]) = arg4
        require ext_code.size(arg2)
        staticcall arg2.callOnAddition() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg2)
            call arg2.onAddition(uint256 arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args arg1, arg4, Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Sign up failure.'
        emit 0xa5a2dcb8: arg4, arg1, arg2
}

function changeResolverAllowances(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1.length != arg2.length:
        revert with 0, 'Malformed inputs.'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _34 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_34)
        require ext_code.size(stor4)
        staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(_34)
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Identity has not set this resolver.'
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(ext_call.return_data[0], 2)
        uint256(resolverAllowances[ext_call.return_data[0]][mem[(32 * idx) + 140 len 20]]) = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _48 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit 0xfb55528a: mem[(32 * arg1.length) + (32 * arg2.length) + 160], ext_call.return_data[0], address(_48)
        idx = idx + 1
        continue 
}

function addProvidersFor(address arg1, address[] arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if block.timestamp < arg6:
        revert with 0, 'Timestamp is not valid.'
    if block.timestamp >= arg6 + signatureTimeout:
        revert with 0, 'Timestamp is not valid.'
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + 271 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + 271] = arg6
    mem[(64 * arg2.length) + 307] = arg1
    mem[(64 * arg2.length) + 339] = sha3(0, 0, this.address, 'I authorize that these Providers', ' be added to my Identity.', ext_call.return_data[0], call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 271 len (32 * arg2.length) + -floor32(arg2.length) + 32])
    mem[(64 * arg2.length) + 371] = arg3
    mem[(64 * arg2.length) + 403] = arg4
    mem[(64 * arg2.length) + 435] = arg5
    require ext_code.size(stor4)
    staticcall stor4.isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) with:
            gas gas_remaining wei
           args mem[(64 * arg2.length) + 307 len (127 * arg2.length) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(64 * arg2.length) + 303] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 307] = 32
        mem[(64 * arg2.length) + 339] = 18
        mem[(64 * arg2.length) + 371] = 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
        revert with memory
          from (64 * arg2.length) + 303
           len (127 * arg2.length) + 100
    mem[(64 * arg2.length) + 307] = ext_call.return_data[0]
    mem[(64 * arg2.length) + 339] = 64
    mem[(64 * arg2.length) + 371] = arg2.length
    mem[(64 * arg2.length) + 403 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor4)
    call stor4.addProvidersFor(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args mem[(64 * arg2.length) + 307 len (160 * arg2.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function allowAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg3.length) + 132] = ext_call.return_data[0]
    mem[ceil32(arg3.length) + 164] = arg1
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg1
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Destination has not been set by from tokenholder.'
    if arg2:
        require arg2 + uint256(resolverAllowances[ext_call.return_data[0]][address(arg1)]) >= uint256(resolverAllowances[ext_call.return_data[0]][address(arg1)])
        uint256(resolverAllowances[ext_call.return_data[0]][address(arg1)]) += arg2
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    call arg1 with:
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'Call was not successful.'
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        return 0, 
               32,
               arg3.length,
               Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    mem[floor32(arg3.length) + ceil32(arg3.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    return 0, 
           32,
           arg3.length,
           Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
           mem[(2 * ceil32(arg3.length)) + 192 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
}

function removeProvidersFor(address arg1, address[] arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if block.timestamp < arg6:
        revert with 0, 'Timestamp is not valid.'
    if block.timestamp >= arg6 + signatureTimeout:
        revert with 0, 'Timestamp is not valid.'
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + 160] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 161] = 0
    mem[(32 * arg2.length) + 162] = address(this.address)
    mem[(32 * arg2.length) + 182] = 'I authorize that these Providers'
    mem[(32 * arg2.length) + 214] = ' be removed from my Identity.'
    mem[(32 * arg2.length) + 243] = ext_call.return_data[0]
    mem[(32 * arg2.length) + 275 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + 275] = arg6
    mem[(32 * arg2.length) + 128] = (32 * arg2.length) + 147
    mem[(64 * arg2.length) + 311] = arg1
    mem[(64 * arg2.length) + 343] = sha3(0, 0, this.address, 'I authorize that these Providers', ' be removed from my Identity.', ext_call.return_data[0], call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 275 len (32 * arg2.length) + -floor32(arg2.length) + 32])
    mem[(64 * arg2.length) + 375] = arg3
    mem[(64 * arg2.length) + 407] = arg4
    mem[(64 * arg2.length) + 439] = arg5
    require ext_code.size(stor4)
    staticcall stor4.isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) with:
            gas gas_remaining wei
           args mem[(64 * arg2.length) + 311 len (127 * arg2.length) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(64 * arg2.length) + 307] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 311] = 32
        mem[(64 * arg2.length) + 343] = 18
        mem[(64 * arg2.length) + 375] = 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
        revert with memory
          from (64 * arg2.length) + 307
           len (127 * arg2.length) + 100
    mem[(64 * arg2.length) + 307] = 0x6c93c3600000000000000000000000000000000000000000000000000000000
    mem[(64 * arg2.length) + 311] = ext_call.return_data[0]
    mem[(64 * arg2.length) + 343] = 64
    mem[(64 * arg2.length) + 375] = arg2.length
    if 0 < 32 * arg2.length:
        mem[(64 * arg2.length) + 407] = mem[128]
        mem[(64 * arg2.length) + 439 len floor32((32 * arg2.length) - 1)] = mem[160 len floor32((32 * arg2.length) - 1)]
    require ext_code.size(stor4)
    call stor4.removeProvidersFor(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args mem[(64 * arg2.length) + 311 len (160 * arg2.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function allowAndCallDelegated(address arg1, uint256 arg2, bytes arg3, address arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args arg4
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    signatureNonce[ext_call.return_data[0]]++
    mem[ceil32(arg3.length) + 160] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 161] = 0
    mem[ceil32(arg3.length) + 162] = address(this.address)
    mem[ceil32(arg3.length) + 182] = 'I authorize this allow and call.'
    mem[ceil32(arg3.length) + 214] = ext_call.return_data[0]
    mem[ceil32(arg3.length) + 246] = address(arg1)
    mem[ceil32(arg3.length) + 266] = arg2
    mem[ceil32(arg3.length) + 298 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 330 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + 298] = signatureNonce[ext_call.return_data[0]]
    mem[ceil32(arg3.length) + 128] = arg3.length + 170
    _87 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    mem[arg3.length + ceil32(arg3.length) + 398] = arg5
    mem[arg3.length + ceil32(arg3.length) + 430] = arg6
    mem[arg3.length + ceil32(arg3.length) + 462] = arg7
    require ext_code.size(stor4)
    staticcall stor4.isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) with:
            gas gas_remaining wei
           args address(arg4), _87, arg5 << 248, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
    mem[arg3.length + ceil32(arg3.length) + 334] = ext_call.return_data[0]
    mem[arg3.length + ceil32(arg3.length) + 366] = arg1
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg1
    mem[arg3.length + ceil32(arg3.length) + 330] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Destination has not been set by from tokenholder.'
    if arg2:
        require arg2 + uint256(resolverAllowances[ext_call.return_data[0]][address(arg1)]) >= uint256(resolverAllowances[ext_call.return_data[0]][address(arg1)])
        uint256(resolverAllowances[ext_call.return_data[0]][address(arg1)]) += arg2
    mem[arg3.length + ceil32(arg3.length) + 330 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(2 * floor32(arg3.length)) + ceil32(arg3.length) + 362 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    call arg1.mem[arg3.length + ceil32(arg3.length) + 330 len 4] with:
         gas gas_remaining wei
        args mem[arg3.length + ceil32(arg3.length) + 334 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'Call was not successful.'
    if not return_data.size:
        return Array(len=arg3.length, data=arg3[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function removeResolverFor(address arg1, address arg2, bool arg3, bytes arg4, uint8 arg5, bytes32 arg6, bytes32 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if block.timestamp < arg8:
        revert with 0, 'Timestamp is not valid.'
    if block.timestamp >= arg8 + signatureTimeout:
        revert with 0, 'Timestamp is not valid.'
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg4.length) + 160] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 161] = 0
    mem[ceil32(arg4.length) + 162] = address(this.address)
    mem[ceil32(arg4.length) + 182] = 'I authorize that these Resolvers'
    mem[ceil32(arg4.length) + 214] = ' be removed from my Identity.'
    mem[ceil32(arg4.length) + 243] = ext_call.return_data[0]
    mem[ceil32(arg4.length) + 275] = address(arg2)
    mem[ceil32(arg4.length) + 295] = arg3 << 248
    mem[ceil32(arg4.length) + 296 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 328 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[arg4.length + ceil32(arg4.length) + 296] = arg8
    mem[ceil32(arg4.length) + 128] = arg4.length + 168
    _92 = sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])
    require ext_code.size(stor4)
    staticcall stor4.isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) with:
            gas gas_remaining wei
           args address(arg1), _92, arg5 << 248, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Identity has not yet set this resolver.'
    uint256(resolverAllowances[ext_call.return_data[0]][address(arg2)]) = 0
    if arg3:
        require ext_code.size(arg2)
        staticcall arg2.callOnRemoval() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[arg4.length + ceil32(arg4.length) + 428 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            require ext_code.size(arg2)
            call arg2.onRemoval(uint256 arg1, bytes arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Removal failure.'
        emit 0xd1b5265e: ext_call.return_data[0], arg2
    mem[arg4.length + ceil32(arg4.length) + 492 len 0] = None
    require ext_code.size(stor4)
    call stor4.removeResolversFor(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], Array(len=1, data=mem[arg4.length + ceil32(arg4.length) + 492])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addResolverFor(address arg1, address arg2, bool arg3, uint256 arg4, bytes arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) {
    require calldata.size - 4 >= 288
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < arg9:
        revert with 0, 'Timestamp is not valid.'
    if block.timestamp >= arg9 + signatureTimeout:
        revert with 0, 'Timestamp is not valid.'
    mem[ceil32(arg5.length) + 160] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg5.length) + 161] = 0
    mem[ceil32(arg5.length) + 162] = address(this.address)
    mem[ceil32(arg5.length) + 182] = 'I authorize that this resolver b'
    mem[ceil32(arg5.length) + 214] = 'e added to my Identity.'
    mem[ceil32(arg5.length) + 237] = ext_call.return_data[0]
    mem[ceil32(arg5.length) + 269] = address(arg2)
    mem[ceil32(arg5.length) + 289] = arg3 << 248
    mem[ceil32(arg5.length) + 290] = arg4
    mem[ceil32(arg5.length) + 322 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 354 len arg5.length % 32] = mem[floor32(arg5.length) + -(arg5.length % 32) + 160 len arg5.length % 32]
    mem[arg5.length + ceil32(arg5.length) + 322] = arg9
    mem[ceil32(arg5.length) + 128] = arg5.length + 194
    require ext_code.size(stor4)
    staticcall stor4.isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) with:
            gas gas_remaining wei
           args address(arg1), sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]]), arg6 << 248, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Identity has already set this resolver.'
    mem[arg5.length + ceil32(arg5.length) + 518 len 0] = None
    require ext_code.size(stor4)
    call stor4.addResolversFor(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], Array(len=1, data=mem[arg5.length + ceil32(arg5.length) + 518])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3:
        uint256(resolverAllowances[ext_call.return_data[0]][address(arg2)]) = arg4
        require ext_code.size(arg2)
        staticcall arg2.callOnAddition() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[arg5.length + ceil32(arg5.length) + 550 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                require ext_code.size(arg2)
                call arg2.onAddition(uint256 arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg4, 96, 0, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
            else:
                mem[floor32(arg5.length) + arg5.length + ceil32(arg5.length) + 550] = mem[(2 * floor32(arg5.length)) + ceil32(arg5.length) + 582 len arg5.length % 32]
                require ext_code.size(arg2)
                call arg2.onAddition(uint256 arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg4, 96, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[arg5.length + (2 * ceil32(arg5.length)) + 550 len floor32(arg5.length) + -ceil32(arg5.length) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Sign up failure.'
        emit 0xa5a2dcb8: arg4, ext_call.return_data[0], arg2
}

function changeResolverAllowancesDelegated(address arg1, address[] arg2, uint256[] arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    signatureNonce[ext_call.return_data[0]]++
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + 193] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + 194] = address(this.address)
    mem[(32 * arg2.length) + (32 * arg3.length) + 214] = 'I authorize this change in Resol'
    mem[(32 * arg2.length) + (32 * arg3.length) + 246] = 'ver allowances.'
    mem[(32 * arg2.length) + (32 * arg3.length) + 261] = ext_call.return_data[0]
    mem[(32 * arg2.length) + (32 * arg3.length) + 293 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg3.length) + 293 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (64 * arg2.length) + 293] = signatureNonce[ext_call.return_data[0]]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = (32 * arg3.length) + (32 * arg2.length) + 133
    mem[(64 * arg3.length) + (64 * arg2.length) + 329] = arg1
    mem[(64 * arg3.length) + (64 * arg2.length) + 361] = sha3(0, 0, this.address, 'I authorize this change in Resol', 'ver allowances.', ext_call.return_data[0], call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 293 len (32 * arg2.length) + (32 * arg3.length) + -floor32(arg2.length) + 32])
    mem[(64 * arg3.length) + (64 * arg2.length) + 393] = arg4
    mem[(64 * arg3.length) + (64 * arg2.length) + 425] = arg5
    mem[(64 * arg3.length) + (64 * arg2.length) + 457] = arg6
    require ext_code.size(stor4)
    staticcall stor4.isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) with:
            gas gas_remaining wei
           args mem[(64 * arg3.length) + (64 * arg2.length) + 329 len (127 * arg2.length) + 160]
    mem[(64 * arg3.length) + (64 * arg2.length) + 325] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(64 * arg3.length) + (64 * arg2.length) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg3.length) + (64 * arg2.length) + 329] = 32
        mem[(64 * arg3.length) + (64 * arg2.length) + 361] = 18
        mem[(64 * arg3.length) + (64 * arg2.length) + 393] = 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
    else:
        if arg2.length == arg3.length:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                _127 = mem[(32 * idx) + 128]
                mem[(64 * arg3.length) + (64 * arg2.length) + 329] = ext_call.return_data[0]
                mem[(64 * arg3.length) + (64 * arg2.length) + 361] = address(_127)
                require ext_code.size(stor4)
                staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], address(_127)
                mem[(64 * arg3.length) + (64 * arg2.length) + 325] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Identity has not set this resolver.'
                require idx < mem[(32 * arg2.length) + 128]
                require idx < arg2.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(ext_call.return_data[0], 2)
                uint256(resolverAllowances[ext_call.return_data[0]][mem[(32 * idx) + 140 len 20]]) = mem[(32 * idx) + (32 * arg2.length) + 160]
                require idx < arg2.length
                _141 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg2.length) + 128]
                mem[(64 * arg3.length) + (64 * arg2.length) + 325] = mem[(32 * idx) + (32 * arg2.length) + 160]
                emit 0xfb55528a: mem[(64 * arg3.length) + (64 * arg2.length) + 325], ext_call.return_data[0], address(_141)
                idx = idx + 1
                continue 
        mem[(64 * arg3.length) + (64 * arg2.length) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg3.length) + (64 * arg2.length) + 329] = 32
        mem[(64 * arg3.length) + (64 * arg2.length) + 361] = 17
        mem[(64 * arg3.length) + (64 * arg2.length) + 393] = 'Malformed inputs.'
    revert with memory
      from (64 * arg3.length) + (64 * arg2.length) + 325
       len (127 * arg2.length) + 100
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg3 != msg.sender:
        revert with 0, 'Malformed inputs.'
    if hydroTokenAddress != arg3:
        revert with 0, 'Sender is not the HYDRO token smart contract.'
    if 32 >= arg4.length:
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), this.address, arg2
        mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Unable to transfer token ownership.'
        if arg4.length < 32:
            require ext_code.size(stor4)
            staticcall stor4.getEIN(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 + deposits[ext_call.return_data[0]] >= deposits[ext_call.return_data[0]]
            deposits[ext_call.return_data[0]] += arg2
            emit 0xc03bd734: 0, Mask(224, 0, arg2), arg1, ext_call.return_data[0]
        else:
            require arg4.length >= 32
            require ext_code.size(stor4)
            staticcall stor4.identityExists(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'The recipient EIN does not exist.'
            require arg2 + deposits[mem[128]] >= deposits[mem[128]]
            deposits[mem[128]] += arg2
            emit 0xc03bd734: 0, Mask(224, 0, arg2), arg1, mem[128]
    else:
        require arg4.length >= 160
        _11 = mem[160]
        _12 = mem[192]
        _13 = mem[224]
        _14 = mem[256]
        require mem[256] <= 4294967296
        require mem[256] + 64 <= arg4.length + 32
        require arg4.length + 32 >= mem[mem[256] + 128] + mem[256] + 64 and mem[mem[256] + 128] <= 4294967296
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(mem[192]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Unable to transfer token ownership.'
        if not mem[128]:
            mem[ceil32(arg4.length) + 128] = 0xe5a1309200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 132] = address(_11)
            mem[ceil32(arg4.length) + 164] = address(_13)
            mem[ceil32(arg4.length) + 196] = arg2
            mem[ceil32(arg4.length) + 228] = 128
            mem[ceil32(arg4.length) + 260] = mem[_14 + 128]
            _38 = mem[_14 + 128]
            mem[ceil32(arg4.length) + 292 len ceil32(mem[_14 + 128])] = mem[_14 + 160 len ceil32(mem[_14 + 128])]
            if not _38 % 32:
                require ext_code.size(address(_12))
                call address(_12) with:
                     gas gas_remaining wei
                    args address(_11), address(_13), arg2, 128, mem[ceil32(arg4.length) + 260 len _38 + 32]
            else:
                mem[floor32(_38) + ceil32(arg4.length) + 292] = mem[floor32(_38) + ceil32(arg4.length) + -(_38 % 32) + 324 len _38 % 32]
                require ext_code.size(address(_12))
                call address(_12) with:
                     gas gas_remaining wei
                    args address(_11), address(_13), arg2, 128, mem[ceil32(arg4.length) + 260 len floor32(_38) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xc00f14ca: 0, Mask(224, 0, arg2), address(_11), address(_12), address(_13)
        else:
            mem[ceil32(arg4.length) + 128] = 0x3c72e43900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 132] = address(_11)
            mem[ceil32(arg4.length) + 164] = _13
            mem[ceil32(arg4.length) + 196] = arg2
            mem[ceil32(arg4.length) + 228] = 128
            mem[ceil32(arg4.length) + 260] = mem[_14 + 128]
            _41 = mem[_14 + 128]
            mem[ceil32(arg4.length) + 292 len ceil32(mem[_14 + 128])] = mem[_14 + 160 len ceil32(mem[_14 + 128])]
            if not _41 % 32:
                require ext_code.size(address(_12))
                call address(_12) with:
                     gas gas_remaining wei
                    args address(_11), _13, arg2, 128, mem[ceil32(arg4.length) + 260 len _41 + 32]
            else:
                mem[floor32(_41) + ceil32(arg4.length) + 292] = mem[floor32(_41) + ceil32(arg4.length) + -(_41 % 32) + 324 len _41 % 32]
                require ext_code.size(address(_12))
                call address(_12) with:
                     gas gas_remaining wei
                    args address(_11), _13, arg2, 128, mem[ceil32(arg4.length) + 260 len floor32(_41) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xedb6770c: 0, Mask(224, 0, arg2), address(_11), address(_12), _13
}

function upgradeProvidersFor(address arg1, address[] arg2, address[] arg3, uint8[2] arg4, bytes32[2] arg5, bytes32[2] arg6, uint256[2] arg7) {
    require calldata.size - 4 >= 352
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 64] = call.data[100 len 64]
    mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 64] = call.data[164 len 64]
    mem[(32 * arg2.length) + (32 * arg3.length) + 288 len 64] = call.data[228 len 64]
    mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 64] = call.data[292 len 64]
    if block.timestamp < call.data[292]:
        revert with 0, 'Timestamp is not valid.'
    if block.timestamp >= call.data[292] + signatureTimeout:
        revert with 0, 'Timestamp is not valid.'
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + (32 * arg3.length) + 448] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + 449] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + 450] = address(this.address)
    mem[(32 * arg2.length) + (32 * arg3.length) + 470] = 'I authorize that these Providers'
    mem[(32 * arg2.length) + (32 * arg3.length) + 502] = ' be added to my Identity.'
    mem[(32 * arg2.length) + (32 * arg3.length) + 527] = ext_call.return_data[0]
    mem[(32 * arg2.length) + (32 * arg3.length) + 559 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg3.length) + 559] = call.data[292]
    mem[(32 * arg2.length) + (32 * arg3.length) + 416] = (32 * arg2.length) + 143
    mem[(64 * arg2.length) + (32 * arg3.length) + 595] = arg1
    mem[(64 * arg2.length) + (32 * arg3.length) + 627] = sha3(0, 0, this.address, 'I authorize that these Providers', ' be added to my Identity.', ext_call.return_data[0], call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 559 len (32 * arg2.length) + -floor32(arg2.length) + 32])
    mem[(64 * arg2.length) + (32 * arg3.length) + 659] = uint8(call.data[100])
    mem[(64 * arg2.length) + (32 * arg3.length) + 691] = call.data[164]
    mem[(64 * arg2.length) + (32 * arg3.length) + 723] = call.data[228]
    require ext_code.size(stor4)
    staticcall stor4.isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) with:
            gas gas_remaining wei
           args mem[(64 * arg2.length) + (32 * arg3.length) + 595 len (127 * arg2.length) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(64 * arg2.length) + (32 * arg3.length) + 591] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + (32 * arg3.length) + 595] = 32
        mem[(64 * arg2.length) + (32 * arg3.length) + 627] = 18
        mem[(64 * arg2.length) + (32 * arg3.length) + 659] = 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
        revert with memory
          from (64 * arg2.length) + (32 * arg3.length) + 591
           len (127 * arg2.length) + 100
    mem[(64 * arg2.length) + (32 * arg3.length) + 595] = ext_call.return_data[0]
    mem[(64 * arg2.length) + (32 * arg3.length) + 627] = 64
    mem[(64 * arg2.length) + (32 * arg3.length) + 659] = arg2.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 691 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor4)
    call stor4.addProvidersFor(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args mem[(64 * arg2.length) + (32 * arg3.length) + 595 len (160 * arg2.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp < call.data[324]:
        mem[(64 * arg2.length) + (32 * arg3.length) + 591] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + (32 * arg3.length) + 595] = 32
        mem[(64 * arg2.length) + (32 * arg3.length) + 627] = 23
        mem[(64 * arg2.length) + (32 * arg3.length) + 659] = 0x54696d657374616d70206973206e6f742076616c69642e0000000000000000
        revert with memory
          from (64 * arg2.length) + (32 * arg3.length) + 591
           len (127 * arg2.length) + 100
    if block.timestamp >= call.data[324] + signatureTimeout:
        mem[(64 * arg2.length) + (32 * arg3.length) + 591] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + (32 * arg3.length) + 595] = 32
        mem[(64 * arg2.length) + (32 * arg3.length) + 627] = 23
        mem[(64 * arg2.length) + (32 * arg3.length) + 659] = 0x54696d657374616d70206973206e6f742076616c69642e0000000000000000
        revert with memory
          from (64 * arg2.length) + (32 * arg3.length) + 591
           len (127 * arg2.length) + 100
    mem[(64 * arg2.length) + (32 * arg3.length) + 595] = arg1
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args mem[(64 * arg2.length) + (32 * arg3.length) + 595 len (127 * arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(64 * arg2.length) + (32 * arg3.length) + 623] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(64 * arg2.length) + (32 * arg3.length) + 624] = 0
    mem[(64 * arg2.length) + (32 * arg3.length) + 625] = address(this.address)
    mem[(64 * arg2.length) + (32 * arg3.length) + 645] = 'I authorize that these Providers'
    mem[(64 * arg2.length) + (32 * arg3.length) + 677] = ' be removed from my Identity.'
    mem[(64 * arg2.length) + (32 * arg3.length) + 706] = ext_call.return_data[0]
    mem[(64 * arg2.length) + (32 * arg3.length) + 738 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (64 * arg2.length) + 738] = call.data[324]
    mem[(64 * arg2.length) + (32 * arg3.length) + 591] = (32 * arg3.length) + (127 * arg2.length) + 147
    _246 = sha3(mem[(64 * arg2.length) + (32 * arg3.length) + 623 len (32 * arg3.length) + (127 * arg2.length) + 147])
    mem[(64 * arg3.length) + (64 * arg2.length) + 870] = call.data[196]
    mem[(64 * arg3.length) + (64 * arg2.length) + 902] = call.data[260]
    require ext_code.size(stor4)
    staticcall stor4.isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) with:
            gas gas_remaining wei
           args address(arg1), _246, call.data[163 len 1], call.data[196], call.data[260]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
    mem[(64 * arg3.length) + (64 * arg2.length) + 770] = 0x6c93c3600000000000000000000000000000000000000000000000000000000
    mem[(64 * arg3.length) + (64 * arg2.length) + 774] = ext_call.return_data[0]
    mem[(64 * arg3.length) + (64 * arg2.length) + 806] = 64
    mem[(64 * arg3.length) + (64 * arg2.length) + 838] = arg3.length
    if 0 >= 32 * arg3.length:
        require ext_code.size(stor4)
        call stor4.removeProvidersFor(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(64 * arg3.length) + (64 * arg2.length) + 774 len (32 * arg3.length) + 96]
    else:
        mem[(64 * arg3.length) + (64 * arg2.length) + 870] = mem[(32 * arg2.length) + 160]
        mem[(64 * arg3.length) + (64 * arg2.length) + 902 len floor32((32 * arg3.length) - 1)] = mem[(32 * arg2.length) + 192 len floor32((32 * arg3.length) - 1)]
        require ext_code.size(stor4)
        call stor4.removeProvidersFor(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=arg3.length, data=mem[(64 * arg3.length) + (64 * arg2.length) + 870 len 32 * arg3.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    staticcall stor4.getEIN(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(64 * arg3.length) + (64 * arg2.length) + 834] = arg1
    mem[(64 * arg3.length) + (64 * arg2.length) + 770] = 96
    mem[(64 * arg3.length) + (64 * arg2.length) + 866] = arg2.length
    mem[(64 * arg3.length) + (64 * arg2.length) + 898 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg3.length) + (64 * arg2.length) + 802] = (32 * arg2.length) + 128
    mem[(98 * arg2.length) + (64 * arg3.length) + 898] = arg3.length
    mem[(98 * arg2.length) + (64 * arg3.length) + 930 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit 0x93959864: mem[(64 * arg3.length) + (64 * arg2.length) + 770 len (32 * arg3.length) + (32 * arg2.length) + 160], ext_call.return_data[0]
}

function createIdentityDelegated(address arg1, address arg2, address[] arg3, string arg4, uint8 arg5, bytes32 arg6, bytes32 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len arg4.length] = arg4[all]
    mem[(32 * arg3.length) + arg4.length + 160] = 0
    mem[(32 * arg3.length) + ceil32(arg4.length) + 160] = arg3.length + 1
    if arg3.length + 1:
        mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * arg3.length + 1] = code.data[22473 len 32 * arg3.length + 1]
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
    mem[(32 * arg3.length) + ceil32(arg4.length) + 192] = this.address
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require idx + 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * idx + 1) + 192] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 224] = 0x14fb564600000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 228] = arg1
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 260] = arg2
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 356] = arg5
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 388] = arg6
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 420] = arg7
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 452] = arg8
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 292] = 256
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 516 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 324] = (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 288
    mem[(32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 516] = mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 192]
    mem[(32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 548 len floor32(mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 192])] = mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 224 len floor32(mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 192])]
    require ext_code.size(stor4)
    call stor4.createIdentityDelegated(address arg1, address arg2, address[] arg3, address[] arg4, uint8 arg5, bytes32 arg6, bytes32 arg7, uint256 arg8) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), 256, (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 288, arg5 << 248, arg6, arg7, arg8, mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 484 len (32 * mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 192]) + (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 256] = arg2
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 288] = 64
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 320] = arg4.length
    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 352 len ceil32(arg4.length)] = arg4[all], mem[(32 * arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    require ext_code.size(stor4)
    staticcall stor4.isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], clientRaindropAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Identity has already set this resolver.'
    if not arg4.length % 32:
        mem[arg4.length + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 516 len 0] = None
        require ext_code.size(stor4)
        call stor4.addResolversFor(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=1, data=mem[arg4.length + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 516])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(resolverAllowances[ext_call.return_data[0]][stor7]) = 0
        require ext_code.size(clientRaindropAddress)
        staticcall clientRaindropAddress.callOnAddition() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not arg4.length + 96 % 32:
                require ext_code.size(clientRaindropAddress)
                call clientRaindropAddress.onAddition(uint256 arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 96, 0, arg4.length + 96, mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 256 len ceil32(arg4.length) + 3], mem[arg4.length + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + ceil32(arg4.length) + 551 len arg4.length + -ceil32(arg4.length) + 93]
            else:
                mem[floor32(arg4.length + 96) + arg4.length + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 548] = mem[floor32(arg4.length + 96) + arg4.length + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + -(arg4.length + 96 % 32) + 580 len arg4.length + 96 % 32]
                require ext_code.size(clientRaindropAddress)
                call clientRaindropAddress.onAddition(uint256 arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 96, 0, arg4.length + 96, mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 256 len ceil32(arg4.length) + 3], mem[arg4.length + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + ceil32(arg4.length) + 551 len floor32(arg4.length + 96) + -ceil32(arg4.length) + 29]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Sign up failure.'
    else:
        mem[floor32(arg4.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 548 len 0] = None
        require ext_code.size(stor4)
        call stor4.addResolversFor(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=1, data=mem[floor32(arg4.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 548])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(resolverAllowances[ext_call.return_data[0]][stor7]) = 0
        require ext_code.size(clientRaindropAddress)
        staticcall clientRaindropAddress.callOnAddition() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not floor32(arg4.length) + 128 % 32:
                require ext_code.size(clientRaindropAddress)
                call clientRaindropAddress.onAddition(uint256 arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 96, 0, floor32(arg4.length) + 128, mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 256 len ceil32(floor32(arg4.length)) + 4], mem[floor32(arg4.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + ceil32(floor32(arg4.length)) + 584 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 124]
            else:
                mem[floor32(floor32(arg4.length) + 128) + floor32(arg4.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 580] = mem[floor32(floor32(arg4.length) + 128) + floor32(arg4.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + -(floor32(arg4.length) + 128 % 32) + 612 len floor32(arg4.length) + 128 % 32]
                require ext_code.size(clientRaindropAddress)
                call clientRaindropAddress.onAddition(uint256 arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 96, 0, floor32(arg4.length) + 128, mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + 256 len ceil32(floor32(arg4.length)) + 4], mem[floor32(arg4.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * arg3.length + 1) + ceil32(floor32(arg4.length)) + 584 len floor32(floor32(arg4.length) + 128) + -ceil32(floor32(arg4.length)) + 28]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Sign up failure.'
    emit 0xa5a2dcb8: 0, ext_call.return_data[0], clientRaindropAddress
    return ext_call.return_data[0]
}



}
