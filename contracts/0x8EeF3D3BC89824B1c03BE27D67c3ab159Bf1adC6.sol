contract main {




// =====================  Runtime code  =====================


#
#  - triggerRecovery(uint256 arg1, address arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, uint256 arg6)
#
array of struct stor0;
mapping of uint256 stor1;
uint256 nextEIN;
uint256 maxAssociatedAddresses;
uint256 signatureTimeout;
mapping of struct stor5;
mapping of struct stor6;
uint256 recoveryTimeout;

function recoveryTimeout() {
    return recoveryTimeout
}

function signatureTimeout() {
    return signatureTimeout
}

function nextEIN() {
    return nextEIN
}

function maxAssociatedAddresses() {
    return maxAssociatedAddresses
}

function _fallback() payable {
    revert
}

function identityExists(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= nextEIN:
        return (arg1 < nextEIN)
    return (0 < arg1)
}

function hasIdentity(address arg1) {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)] >= nextEIN:
        return (stor1[address(arg1)] < nextEIN)
    return (0 < stor1[address(arg1)])
}

function isProviderFor(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x3412d5f2 with:
         gas gas_remaining wei
        args sha3(arg1, 0) + 3, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function isResolverFor(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x3412d5f2 with:
         gas gas_remaining wei
        args sha3(arg1, 0) + 5, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function isAssociatedAddressFor(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x3412d5f2 with:
         gas gas_remaining wei
        args sha3(arg1, 0) + 1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    signer = erecover(arg2, arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2), arg3 << 248, arg4, arg5) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}

function getEIN(address arg1) {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)] >= nextEIN:
        if stor1[address(arg1)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    else:
        if 0 < stor1[address(arg1)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    return stor1[address(arg1)]
}

function triggerRecoveryAddressChangeFor(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x3412d5f2 with:
         gas gas_remaining wei
        args sha3(arg1, 0) + 3, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eThe identity has not set the passed provider.'
    if block.timestamp <= stor5[arg1].field_0 + recoveryTimeout:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot trigger a change in recovery address yet.'
    stor5[arg1].field_0 = block.timestamp
    stor5[arg1].field_256 = stor0[arg1].field_0
    emit RecoveryAddressChangeTriggered(stor0[arg1].field_0, address(arg2), 1, msg.sender, arg1);
    stor0[arg1].field_0 = arg2
}

function removeAssociatedAddress() {
    if stor1[address(msg.sender)] >= nextEIN:
        if stor1[address(msg.sender)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    else:
        if 0 < stor1[address(msg.sender)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x8c9d1e41 with:
         gas gas_remaining wei
        args sha3(stor1[address(msg.sender)], 0) + 1, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(msg.sender)] = 0
    emit AssociatedAddressRemoved(msg.sender, 0, msg.sender, stor1[address(msg.sender)]);
}

function triggerRecoveryAddressChange(address arg1) {
    require calldata.size - 4 >= 32
    if stor1[address(msg.sender)] >= nextEIN:
        if stor1[address(msg.sender)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    else:
        if 0 < stor1[address(msg.sender)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    if block.timestamp <= stor5[stor1[address(msg.sender)]].field_0 + recoveryTimeout:
        revert with 0, 'Cannot trigger a change in recovery address yet.'
    stor5[stor1[address(msg.sender)]].field_0 = block.timestamp
    stor5[stor1[address(msg.sender)]].field_256 = stor0[stor1[address(msg.sender)]].field_0
    emit RecoveryAddressChangeTriggered(stor0[stor1[address(msg.sender)]].field_0, address(arg1), 0, msg.sender, stor1[address(msg.sender)]);
    stor0[stor1[address(msg.sender)]].field_0 = arg1
}

function addResolversFor(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x3412d5f2 with:
         gas gas_remaining wei
        args sha3(arg1, 0) + 3, msg.sender
    mem[(32 * arg2.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'eThe identity has not set the passed provider.'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _25 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = 0x989779e900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = sha3(arg1, 0) + 5
        mem[(32 * arg2.length) + 164] = address(_25)
        require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
        delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
             gas gas_remaining wei
            args sha3(arg1, 0) + 5, address(_25)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 160] = 1
        emit ResolverAdded(mem[(32 * arg2.length) + 128], 1, msg.sender, arg1);
        idx = idx + 1
        continue 
}

function addProvidersFor(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x3412d5f2 with:
         gas gas_remaining wei
        args sha3(arg1, 0) + 3, msg.sender
    mem[(32 * arg2.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'eThe identity has not set the passed provider.'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _25 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = 0x989779e900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = sha3(arg1, 0) + 3
        mem[(32 * arg2.length) + 164] = address(_25)
        require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
        delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
             gas gas_remaining wei
            args sha3(arg1, 0) + 3, address(_25)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 160] = 1
        emit ProviderAdded(mem[(32 * arg2.length) + 128], 1, msg.sender, arg1);
        idx = idx + 1
        continue 
}

function removeProvidersFor(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x3412d5f2 with:
         gas gas_remaining wei
        args sha3(arg1, 0) + 3, msg.sender
    mem[(32 * arg2.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'eThe identity has not set the passed provider.'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _25 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = 0x8c9d1e4100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = sha3(arg1, 0) + 3
        mem[(32 * arg2.length) + 164] = address(_25)
        require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
        delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x8c9d1e41 with:
             gas gas_remaining wei
            args sha3(arg1, 0) + 3, address(_25)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 160] = 1
        emit ProviderRemoved(mem[(32 * arg2.length) + 128], 1, msg.sender, arg1);
        idx = idx + 1
        continue 
}

function removeResolversFor(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x3412d5f2 with:
         gas gas_remaining wei
        args sha3(arg1, 0) + 3, msg.sender
    mem[(32 * arg2.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'eThe identity has not set the passed provider.'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _25 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = 0x8c9d1e4100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = sha3(arg1, 0) + 5
        mem[(32 * arg2.length) + 164] = address(_25)
        require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
        delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x8c9d1e41 with:
             gas gas_remaining wei
            args sha3(arg1, 0) + 5, address(_25)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 160] = 1
        emit ResolverRemoved(mem[(32 * arg2.length) + 128], 1, msg.sender, arg1);
        idx = idx + 1
        continue 
}

function removeAssociatedAddressDelegated(address arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if block.timestamp < arg5:
        revert with 0, 'iTimestamp is not valid.'
    if block.timestamp >= arg5 + signatureTimeout:
        revert with 0, 'iTimestamp is not valid.'
    if stor1[address(arg1)] >= nextEIN:
        if stor1[address(arg1)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    else:
        if 0 < stor1[address(arg1)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    signer = erecover(sha3(0, 0, this.address, 'I authorize removing this addres', 's from my Identity.', stor1[address(arg1)], arg1, arg5), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, 'I authorize removing this addres', 's from my Identity.', stor1[address(arg1)], arg1, arg5)), arg2 << 248, arg3, arg4) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != arg1:
            revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x8c9d1e41 with:
         gas gas_remaining wei
        args sha3(stor1[address(arg1)], 0) + 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(arg1)] = 0
    emit AssociatedAddressRemoved(address(arg1), 1, msg.sender, stor1[address(arg1)]);
}

function triggerDestruction(uint256 arg1, address[] arg2, address[] arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg1 >= nextEIN:
        revert with 0, 'The identity does not exist.'
    if 0 >= arg1:
        revert with 0, 'The identity does not exist.'
    if block.timestamp > stor6[arg1].field_0 + recoveryTimeout:
        revert with 0, 'Recovery has not recently been triggered.'
    mem[(32 * arg2.length) + (32 * arg3.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg3.length) + 256] = msg.sender
    mem[(64 * arg2.length) + (32 * arg3.length) + 288 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    if sha3(mem[(32 * arg2.length) + (32 * arg3.length) + 256 len (96 * arg3.length) + (96 * arg2.length) + 32]) != stor6[arg1].field_256:
        mem[(64 * arg3.length) + (64 * arg2.length) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg3.length) + (64 * arg2.length) + 292] = 32
        mem[(64 * arg3.length) + (64 * arg2.length) + 324] = 95
        mem[(64 * arg3.length) + (64 * arg2.length) + 356] = 'Cannot destroy an EIN from an ad'
        mem[(64 * arg3.length) + (64 * arg2.length) + 388] = 'dress that was not recently remo'
        mem[(64 * arg3.length) + (64 * arg2.length) + 420] = 'ved from said EIN via recovery.'
        revert with memory
          from (64 * arg3.length) + (64 * arg2.length) + 288
           len (127 * arg2.length) + 164
    mem[(64 * arg3.length) + (64 * arg2.length) + 288] = stor0[arg1].field_0
    mem[(64 * arg3.length) + (64 * arg2.length) + 320] = arg4
    emit IdentityDestroyed(address arg1, uint256 arg2, address arg3, bool arg4):
                           mem[(64 * arg3.length) + (64 * arg2.length) + 288 len (127 * arg2.length) + 64],
                           msg.sender,
                           arg1,
    idx = 0
    while idx < stor0[arg1].field_256:
        mem[0] = stor0[arg1][idx + 1].field_0
        mem[32] = 1
        stor1[stor0[arg1][idx + 1].field_0] = 0
        idx = idx + 1
        continue 
    stor0[arg1].field_256 = 0
    idx = 0
    while stor0[arg1].field_256 > idx:
        stor0[arg1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    stor0[arg1].field_768 = 0
    idx = 0
    while stor0[arg1].field_768 > idx:
        stor0[arg1][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    if arg4:
        stor0[arg1].field_1280 = 0
        idx = 0
        while stor0[arg1].field_1280 > idx:
            stor0[arg1][idx + 5].field_0 = 0
            idx = idx + 1
            continue 
    stor0[arg1].field_0 = 0
}

function addProviders(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 56
    if stor1[address(msg.sender)] >= nextEIN:
        if stor1[address(msg.sender)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _55 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 224] = 0x989779e900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 228] = sha3(stor1[address(msg.sender)], 0) + 3
            mem[(32 * arg1.length) + 260] = address(_55)
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                 gas gas_remaining wei
                args sha3(stor1[address(msg.sender)], 0) + 3, address(_55)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg1.length
            mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 256] = 0
            emit ProviderAdded(mem[(32 * arg1.length) + 224], 0, msg.sender, stor1[address(msg.sender)]);
            idx = idx + 1
            continue 
    else:
        if 0 < stor1[address(msg.sender)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _60 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 224] = 0x989779e900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 228] = sha3(stor1[address(msg.sender)], 0) + 3
            mem[(32 * arg1.length) + 260] = address(_60)
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                 gas gas_remaining wei
                args sha3(stor1[address(msg.sender)], 0) + 3, address(_60)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg1.length
            mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 256] = 0
            emit ProviderAdded(mem[(32 * arg1.length) + 224], 0, msg.sender, stor1[address(msg.sender)]);
            idx = idx + 1
            continue 
}

function addResolvers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 56
    if stor1[address(msg.sender)] >= nextEIN:
        if stor1[address(msg.sender)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _55 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 224] = 0x989779e900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 228] = sha3(stor1[address(msg.sender)], 0) + 5
            mem[(32 * arg1.length) + 260] = address(_55)
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                 gas gas_remaining wei
                args sha3(stor1[address(msg.sender)], 0) + 5, address(_55)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg1.length
            mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 256] = 0
            emit ResolverAdded(mem[(32 * arg1.length) + 224], 0, msg.sender, stor1[address(msg.sender)]);
            idx = idx + 1
            continue 
    else:
        if 0 < stor1[address(msg.sender)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _60 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 224] = 0x989779e900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 228] = sha3(stor1[address(msg.sender)], 0) + 5
            mem[(32 * arg1.length) + 260] = address(_60)
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                 gas gas_remaining wei
                args sha3(stor1[address(msg.sender)], 0) + 5, address(_60)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg1.length
            mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 256] = 0
            emit ResolverAdded(mem[(32 * arg1.length) + 224], 0, msg.sender, stor1[address(msg.sender)]);
            idx = idx + 1
            continue 
}

function removeProviders(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 56
    if stor1[address(msg.sender)] >= nextEIN:
        if stor1[address(msg.sender)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _55 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 224] = 0x8c9d1e4100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 228] = sha3(stor1[address(msg.sender)], 0) + 3
            mem[(32 * arg1.length) + 260] = address(_55)
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x8c9d1e41 with:
                 gas gas_remaining wei
                args sha3(stor1[address(msg.sender)], 0) + 3, address(_55)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg1.length
            mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 256] = 0
            emit ProviderRemoved(mem[(32 * arg1.length) + 224], 0, msg.sender, stor1[address(msg.sender)]);
            idx = idx + 1
            continue 
    else:
        if 0 < stor1[address(msg.sender)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _60 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 224] = 0x8c9d1e4100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 228] = sha3(stor1[address(msg.sender)], 0) + 3
            mem[(32 * arg1.length) + 260] = address(_60)
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x8c9d1e41 with:
                 gas gas_remaining wei
                args sha3(stor1[address(msg.sender)], 0) + 3, address(_60)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg1.length
            mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 256] = 0
            emit ProviderRemoved(mem[(32 * arg1.length) + 224], 0, msg.sender, stor1[address(msg.sender)]);
            idx = idx + 1
            continue 
}

function removeResolvers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 56
    if stor1[address(msg.sender)] >= nextEIN:
        if stor1[address(msg.sender)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _55 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 224] = 0x8c9d1e4100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 228] = sha3(stor1[address(msg.sender)], 0) + 5
            mem[(32 * arg1.length) + 260] = address(_55)
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x8c9d1e41 with:
                 gas gas_remaining wei
                args sha3(stor1[address(msg.sender)], 0) + 5, address(_55)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg1.length
            mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 256] = 1
            emit ResolverRemoved(mem[(32 * arg1.length) + 224], 1, msg.sender, stor1[address(msg.sender)]);
            idx = idx + 1
            continue 
    else:
        if 0 < stor1[address(msg.sender)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _60 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 224] = 0x8c9d1e4100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 228] = sha3(stor1[address(msg.sender)], 0) + 5
            mem[(32 * arg1.length) + 260] = address(_60)
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x8c9d1e41 with:
                 gas gas_remaining wei
                args sha3(stor1[address(msg.sender)], 0) + 5, address(_60)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg1.length
            mem[(32 * arg1.length) + 224] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 256] = 1
            emit ResolverRemoved(mem[(32 * arg1.length) + 224], 1, msg.sender, stor1[address(msg.sender)]);
            idx = idx + 1
            continue 
}

function addAssociatedAddress(address arg1, address arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if block.timestamp < arg6:
        revert with 0, 'iTimestamp is not valid.'
    if block.timestamp >= arg6 + signatureTimeout:
        revert with 0, 'iTimestamp is not valid.'
    if arg1 != msg.sender:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'One or both of the passed addresses are malformed.'
    if stor1[address(arg1)] >= nextEIN:
        if stor1[address(arg1)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    else:
        if 0 < stor1[address(arg1)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    if arg1 == msg.sender:
        signer = erecover(sha3(0, 0, this.address, 'I authorize being added to this ', mem[374 len 9], stor1[address(arg1)], arg2, arg6), arg3 << 248, arg4, arg5) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != arg2:
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, 'I authorize being added to this ', mem[374 len 9], stor1[address(arg1)], arg2, arg6)), arg3 << 248, arg4, arg5) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) != arg2:
                revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
    else:
        signer = erecover(sha3(0, 0, this.address, 'I authorize adding this address ', mem[374 len 15], stor1[address(arg1)], arg2, arg6), arg3 << 248, arg4, arg5) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != arg1:
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, 'I authorize adding this address ', mem[374 len 15], stor1[address(arg1)], arg2, arg6)), arg3 << 248, arg4, arg5) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) != arg1:
                revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
    if stor1[address(arg2)] >= nextEIN:
        if stor1[address(arg2)] < nextEIN:
            revert with 0, 'The passed address has an ident not.'
    else:
        if 0 < stor1[address(arg2)]:
            revert with 0, 'The passed address has an ident not.'
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
         gas gas_remaining wei
        args (sha3(stor1[address(arg1)], 0) + 1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] >= maxAssociatedAddresses:
        revert with 0, 'Too many addresses.'
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
         gas gas_remaining wei
        args sha3(stor1[address(arg1)], 0) + 1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(arg2)] = stor1[address(arg1)]
    emit AssociatedAddressAdded(address(arg1), address(arg2), 0, msg.sender, stor1[address(arg1)]);
}

function addAssociatedAddressDelegated(address arg1, address arg2, uint8[2] arg3, bytes32[2] arg4, bytes32[2] arg5, uint256[2] arg6) {
    require calldata.size - 4 >= 320
    if call.data[260] > block.timestamp:
        revert with 0, 'iTimestamp is not valid.'
    if block.timestamp >= call.data[260] + signatureTimeout:
        revert with 0, 'iTimestamp is not valid.'
    if call.data[292] > block.timestamp:
        revert with 0, 'iTimestamp is not valid.'
    if block.timestamp >= call.data[292] + signatureTimeout:
        revert with 0, 'iTimestamp is not valid.'
    if stor1[address(arg1)] >= nextEIN:
        if stor1[address(arg1)] < nextEIN != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    else:
        if 0 < stor1[address(arg1)] != 1:
            revert with 0, 
                        'The passed address does not hav an identity but should.',
                        Mask(192, -256, 0x54686520706173736564206164647265737320646f6573206e6f7420686176, 0x20616e206964656e74697479206275742073686f756c642e00000000000000) << 256
    signer = erecover(sha3(0, 0, this.address, 'I authorize adding this address ', 'to my Identity.', stor1[address(arg1)], arg2, call.data[260]), call.data[68] << 248, call.data[132], call.data[196]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, 'I authorize adding this address ', 'to my Identity.', stor1[address(arg1)], arg2, call.data[260])), call.data[68] << 248, call.data[132], call.data[196]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != arg1:
            revert with 0, 'Permission denied from approving address.'
    signer = erecover(sha3(0, 0, this.address, 'I authorize being added to this ', 'Identity.', stor1[address(arg1)], arg2, call.data[292]), call.data[100] << 248, call.data[164], call.data[228]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg2:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, 'I authorize being added to this ', 'Identity.', stor1[address(arg1)], arg2, call.data[292])), call.data[100] << 248, call.data[164], call.data[228]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != arg2:
            revert with 0, 'Permission denied from address to add.'
    if stor1[address(arg2)] >= nextEIN:
        if stor1[address(arg2)] < nextEIN:
            revert with 0, 'The passed address has an ident not.'
    else:
        if 0 < stor1[address(arg2)]:
            revert with 0, 'The passed address has an ident not.'
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
         gas gas_remaining wei
        args (sha3(stor1[address(arg1)], 0) + 1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] >= maxAssociatedAddresses:
        revert with 0, 'Too many addresses.'
    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
         gas gas_remaining wei
        args sha3(stor1[address(arg1)], 0) + 1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(arg2)] = stor1[address(arg1)]
    emit AssociatedAddressAdded(address(arg1), address(arg2), 1, msg.sender, stor1[address(arg1)]);
}

function getIdentity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= nextEIN:
        revert with 0, 'The identity does not exist.'
    if 0 >= arg1:
        revert with 0, 'The identity does not exist.'
    if not stor0[arg1].field_256:
        if not stor0[arg1].field_768:
            if stor0[arg1].field_1280:
                mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192] = stor0[arg1][5].field_0
                idx = (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192
                s = 0
                while (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 160 > idx:
                    mem[idx + 32] = stor0[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 352 len floor32(stor0[arg1].field_256)] = mem[128 len floor32(stor0[arg1].field_256)]
            mem[(64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 352] = stor0[arg1].field_768
            mem[(64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 384 len floor32(stor0[arg1].field_768)] = mem[(32 * stor0[arg1].field_256) + 160 len floor32(stor0[arg1].field_768)]
            mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 384] = stor0[arg1].field_1280
            mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 416 len floor32(stor0[arg1].field_1280)] = mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192 len floor32(stor0[arg1].field_1280)]
            return stor0[arg1].field_0, 
                   Array(len=stor0[arg1].field_256, data=mem[128 len floor32(stor0[arg1].field_256)], mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + floor32(stor0[arg1].field_256) + 352 len (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + -floor32(stor0[arg1].field_256) + 64]),
                   (32 * stor0[arg1].field_256) + 160,
                   (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_256) + 192
        mem[(32 * stor0[arg1].field_256) + 160] = stor0[arg1][3].field_0
        idx = (32 * stor0[arg1].field_256) + 160
        s = 0
        while (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 128 > idx:
            mem[idx + 32] = stor0[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        mem[128] = stor0[arg1][1].field_0
        idx = 128
        s = 0
        while (32 * stor0[arg1].field_256) + 96 > idx:
            mem[idx + 32] = stor0[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor0[arg1].field_768:
            mem[(32 * stor0[arg1].field_256) + 160] = stor0[arg1][3].field_0
            idx = (32 * stor0[arg1].field_256) + 160
            s = 0
            while (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 128 > idx:
                mem[idx + 32] = stor0[arg1][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
    if not stor0[arg1].field_1280:
        mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 352 len floor32(stor0[arg1].field_256)] = mem[128 len floor32(stor0[arg1].field_256)]
        mem[(64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 352] = stor0[arg1].field_768
        mem[(64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 384 len floor32(stor0[arg1].field_768)] = mem[(32 * stor0[arg1].field_256) + 160 len floor32(stor0[arg1].field_768)]
        mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 384] = stor0[arg1].field_1280
        mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 416 len floor32(stor0[arg1].field_1280)] = mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192 len floor32(stor0[arg1].field_1280)]
        return stor0[arg1].field_0, 
               Array(len=stor0[arg1].field_256, data=mem[128 len floor32(stor0[arg1].field_256)], mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + floor32(stor0[arg1].field_256) + 352 len (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + -floor32(stor0[arg1].field_256) + 64]),
               (32 * stor0[arg1].field_256) + 160,
               (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_256) + 192
    mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192] = stor0[arg1][5].field_0
    idx = (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192
    s = 0
    while (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 160 > idx:
        mem[idx + 32] = stor0[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 352 len floor32(stor0[arg1].field_256)] = mem[128 len floor32(stor0[arg1].field_256)]
    mem[(64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 352] = stor0[arg1].field_768
    mem[(64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + 384 len floor32(stor0[arg1].field_768)] = mem[(32 * stor0[arg1].field_256) + 160 len floor32(stor0[arg1].field_768)]
    mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 416 len floor32(stor0[arg1].field_1280)] = mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192 len floor32(stor0[arg1].field_1280)]
    return stor0[arg1].field_0, 
           Array(len=stor0[arg1].field_256, data=mem[128 len floor32(stor0[arg1].field_256)], mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + floor32(stor0[arg1].field_256) + 352 len (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + -floor32(stor0[arg1].field_256) + 32], stor0[arg1].field_1280, mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192 len floor32(stor0[arg1].field_1280)], mem[(64 * stor0[arg1].field_256) + (64 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + floor32(stor0[arg1].field_1280) + 416 len (32 * stor0[arg1].field_1280) - floor32(stor0[arg1].field_1280)]),
           (32 * stor0[arg1].field_256) + 160,
           (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_256) + 192
}

function createIdentity(address arg1, address[] arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 50
    if stor1[address(msg.sender)] >= nextEIN:
        if stor1[address(msg.sender)] < nextEIN:
            revert with 0, 'The passed address has an ident not.'
        nextEIN++
        stor0[stor2].field_0 = arg1
        if stor1[address(msg.sender)] >= nextEIN:
            if stor1[address(msg.sender)] < nextEIN:
                revert with 0, 'The passed address has an ident not.'
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                 gas gas_remaining wei
                args (sha3(nextEIN, 0) + 1)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if delegate.return_data[0] >= maxAssociatedAddresses:
                revert with 0, 'Too many addresses.'
            mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 1
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                 gas gas_remaining wei
                args sha3(nextEIN, 0) + 1, msg.sender
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            stor1[address(msg.sender)] = nextEIN
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                _282 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 3
                mem[(32 * arg2.length) + (32 * arg3.length) + 388] = address(_282)
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 3, address(_282)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg2.length
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
                emit ProviderAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                _419 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 5
                mem[(32 * arg2.length) + (32 * arg3.length) + 388] = address(_419)
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 5, address(_419)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg3.length
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
                mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
                emit ResolverAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
                idx = idx + 1
                continue 
        else:
            if 0 < stor1[address(msg.sender)]:
                revert with 0, 'The passed address has an ident not.'
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                 gas gas_remaining wei
                args (sha3(nextEIN, 0) + 1)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if delegate.return_data[0] >= maxAssociatedAddresses:
                revert with 0, 'Too many addresses.'
            mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 1
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                 gas gas_remaining wei
                args sha3(nextEIN, 0) + 1, msg.sender
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            stor1[address(msg.sender)] = nextEIN
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                _287 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 3
                mem[(32 * arg2.length) + (32 * arg3.length) + 388] = address(_287)
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 3, address(_287)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg2.length
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
                emit ProviderAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                _425 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 5
                mem[(32 * arg2.length) + (32 * arg3.length) + 388] = address(_425)
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 5, address(_425)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg3.length
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
                mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
                emit ResolverAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
                idx = idx + 1
                continue 
    else:
        if 0 < stor1[address(msg.sender)]:
            revert with 0, 'The passed address has an ident not.'
        nextEIN++
        stor0[stor2].field_0 = arg1
        if stor1[address(msg.sender)] >= nextEIN:
            if stor1[address(msg.sender)] < nextEIN:
                revert with 0, 'The passed address has an ident not.'
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                 gas gas_remaining wei
                args (sha3(nextEIN, 0) + 1)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if delegate.return_data[0] >= maxAssociatedAddresses:
                revert with 0, 'Too many addresses.'
            mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 1
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                 gas gas_remaining wei
                args sha3(nextEIN, 0) + 1, msg.sender
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            stor1[address(msg.sender)] = nextEIN
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                _294 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 3
                mem[(32 * arg2.length) + (32 * arg3.length) + 388] = address(_294)
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 3, address(_294)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg2.length
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
                emit ProviderAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                _431 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 5
                mem[(32 * arg2.length) + (32 * arg3.length) + 388] = address(_431)
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 5, address(_431)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg3.length
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
                mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
                emit ResolverAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
                idx = idx + 1
                continue 
        else:
            if 0 < stor1[address(msg.sender)]:
                revert with 0, 'The passed address has an ident not.'
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                 gas gas_remaining wei
                args (sha3(nextEIN, 0) + 1)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if delegate.return_data[0] >= maxAssociatedAddresses:
                revert with 0, 'Too many addresses.'
            mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 1
            require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
            delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                 gas gas_remaining wei
                args sha3(nextEIN, 0) + 1, msg.sender
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            stor1[address(msg.sender)] = nextEIN
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                _299 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 3
                mem[(32 * arg2.length) + (32 * arg3.length) + 388] = address(_299)
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 3, address(_299)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg2.length
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
                emit ProviderAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                _437 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 356] = sha3(nextEIN, 0) + 5
                mem[(32 * arg2.length) + (32 * arg3.length) + 388] = address(_437)
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 5, address(_437)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg3.length
                mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
                mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
                emit ResolverAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
                idx = idx + 1
                continue 
    s = 0
    while arg3.length < 32 * arg2.length:
        mem[(34 * arg3.length) + (32 * arg2.length) + 544] = mem[arg3.length + 128]
        s = arg3.length + 32
        continue 
    mem[(64 * arg2.length) + (32 * arg3.length) + 544] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit IdentityCreated(address arg1, uint256 arg2, address arg3, address arg4, address[] arg5, address[] arg6, bool arg7):
                         address(arg1),
                         msg.sender,
                         160,
                         (32 * arg2.length) + 192,
                         0,
                         arg2.length,
                         mem[(32 * arg2.length) + (32 * arg3.length) + 544 len (32 * arg2.length) + (32 * arg3.length) + 32],
                         msg.sender,
                         nextEIN,
    return nextEIN
}

function createIdentityDelegated(address arg1, address arg2, address[] arg3, address[] arg4, uint8 arg5, bytes32 arg6, bytes32 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if block.timestamp < arg8:
        revert with 0, 'iTimestamp is not valid.'
    if block.timestamp >= arg8 + signatureTimeout:
        revert with 0, 'iTimestamp is not valid.'
    mem[(32 * arg3.length) + (32 * arg4.length) + 192] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + (32 * arg4.length) + 193] = 0
    mem[(32 * arg3.length) + (32 * arg4.length) + 194] = address(this.address)
    mem[(32 * arg3.length) + (32 * arg4.length) + 214] = 'I authorize the creation of an I'
    mem[(32 * arg3.length) + (32 * arg4.length) + 246] = 'dentity on my behalf.'
    mem[(32 * arg3.length) + (32 * arg4.length) + 267] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + 287] = address(arg2)
    mem[(32 * arg3.length) + (32 * arg4.length) + 307 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (32 * arg4.length) + 307 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(64 * arg4.length) + (64 * arg3.length) + 307] = arg8
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = (32 * arg4.length) + (32 * arg3.length) + 147
    mem[(64 * arg4.length) + (64 * arg3.length) + 339] = 0
    mem[(64 * arg4.length) + (64 * arg3.length) + 371] = sha3(0, 0, this.address, 'I authorize the creation of an I', 'dentity on my behalf.', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 307 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32])
    mem[(64 * arg4.length) + (64 * arg3.length) + 403] = arg5
    mem[(64 * arg4.length) + (64 * arg3.length) + 435] = arg6
    mem[(64 * arg4.length) + (64 * arg3.length) + 467] = arg7
    signer = erecover(sha3(0, 0, this.address, 'I authorize the creation of an I', 'dentity on my behalf.', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 307 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32]), arg5 << 248, arg6, arg7) 
    mem[(64 * arg4.length) + (64 * arg3.length) + 339] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) == arg2:
        mem[(64 * arg4.length) + (64 * arg3.length) + 371] = 50
        mem[(64 * arg4.length) + (64 * arg3.length) + 403] = 0x5468652070617373656420616464726573732068617320616e206964656e74
        mem[(64 * arg4.length) + (64 * arg3.length) + 435] = 0x7479206275742073686f756c64206e6f742e00000000000000000000000000
        if stor1[address(arg2)] >= nextEIN:
            if stor1[address(arg2)] < nextEIN:
                revert with 0, 'The passed address has an ident not.'
            nextEIN++
            stor0[stor2].field_0 = arg1
            mem[64] = (64 * arg4.length) + (64 * arg3.length) + 563
            mem[(64 * arg4.length) + (64 * arg3.length) + 467] = 50
            mem[(64 * arg4.length) + (64 * arg3.length) + 499] = 0x5468652070617373656420616464726573732068617320616e206964656e74
            mem[(64 * arg4.length) + (64 * arg3.length) + 531] = 0x7479206275742073686f756c64206e6f742e00000000000000000000000000
            if stor1[address(arg2)] >= nextEIN:
                if stor1[address(arg2)] < nextEIN:
                    revert with 0, 'The passed address has an ident not.'
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                     gas gas_remaining wei
                    args (sha3(nextEIN, 0) + 1)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] >= maxAssociatedAddresses:
                    revert with 0, 'Too many addresses.'
                mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 599] = arg2
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 1, arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[address(arg2)] = nextEIN
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _1710 = mem[(32 * idx) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 3
                    mem[(64 * arg4.length) + (64 * arg3.length) + 599] = address(_1710)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 3, address(_1710)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < arg3.length
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 595] = 1
                    emit ProviderAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 563], 1, msg.sender, nextEIN);
                    idx = idx + 1
                    continue 
                mem[0] = nextEIN
                mem[32] = 0
                _1962 = mem[(32 * arg3.length) + 128]
                idx = 0
                while idx < _1962:
                    require idx < mem[(32 * arg3.length) + 128]
                    _1981 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 5
                    mem[(64 * arg4.length) + (64 * arg3.length) + 599] = address(_1981)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 5, address(_1981)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = mem[(32 * arg3.length) + (32 * idx) + 172 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 595] = 1
                    emit ResolverAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 563], 1, msg.sender, nextEIN);
                    _1962 = mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    continue 
                mem[(64 * arg4.length) + (64 * arg3.length) + 563] = arg1
                mem[(64 * arg4.length) + (64 * arg3.length) + 595] = arg2
                mem[(64 * arg4.length) + (64 * arg3.length) + 691] = 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 627] = 160
                mem[(64 * arg4.length) + (64 * arg3.length) + 723] = arg3.length
                s = 0
                while _1962 < 32 * arg3.length:
                    mem[_1962 + (64 * arg4.length) + (64 * arg3.length) + 755] = mem[_1962 + 128]
                    s = _1962 + 32
                    continue 
            else:
                if 0 < stor1[address(arg2)]:
                    revert with 0, 'The passed address has an ident not.'
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                     gas gas_remaining wei
                    args (sha3(nextEIN, 0) + 1)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] >= maxAssociatedAddresses:
                    revert with 0, 'Too many addresses.'
                mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 599] = arg2
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 1, arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[address(arg2)] = nextEIN
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _1715 = mem[(32 * idx) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 3
                    mem[(64 * arg4.length) + (64 * arg3.length) + 599] = address(_1715)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 3, address(_1715)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < arg3.length
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 595] = 1
                    emit ProviderAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 563], 1, msg.sender, nextEIN);
                    idx = idx + 1
                    continue 
                mem[0] = nextEIN
                mem[32] = 0
                _1963 = mem[(32 * arg3.length) + 128]
                idx = 0
                while idx < _1963:
                    require idx < mem[(32 * arg3.length) + 128]
                    _1987 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 5
                    mem[(64 * arg4.length) + (64 * arg3.length) + 599] = address(_1987)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 5, address(_1987)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = mem[(32 * arg3.length) + (32 * idx) + 172 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 595] = 1
                    emit ResolverAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 563], 1, msg.sender, nextEIN);
                    _1963 = mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    continue 
                mem[(64 * arg4.length) + (64 * arg3.length) + 563] = arg1
                mem[(64 * arg4.length) + (64 * arg3.length) + 595] = arg2
                mem[(64 * arg4.length) + (64 * arg3.length) + 691] = 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 627] = 160
                mem[(64 * arg4.length) + (64 * arg3.length) + 723] = arg3.length
                s = 0
                while _1963 < 32 * arg3.length:
                    mem[_1963 + (64 * arg4.length) + (64 * arg3.length) + 755] = mem[_1963 + 128]
                    s = _1963 + 32
                    continue 
        else:
            if 0 < stor1[address(arg2)]:
                revert with 0, 'The passed address has an ident not.'
            nextEIN++
            stor0[stor2].field_0 = arg1
            mem[64] = (64 * arg4.length) + (64 * arg3.length) + 563
            mem[(64 * arg4.length) + (64 * arg3.length) + 467] = 50
            mem[(64 * arg4.length) + (64 * arg3.length) + 499] = 0x5468652070617373656420616464726573732068617320616e206964656e74
            mem[(64 * arg4.length) + (64 * arg3.length) + 531] = 0x7479206275742073686f756c64206e6f742e00000000000000000000000000
            if stor1[address(arg2)] >= nextEIN:
                if stor1[address(arg2)] < nextEIN:
                    revert with 0, 'The passed address has an ident not.'
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                     gas gas_remaining wei
                    args (sha3(nextEIN, 0) + 1)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] >= maxAssociatedAddresses:
                    revert with 0, 'Too many addresses.'
                mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 599] = arg2
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 1, arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[address(arg2)] = nextEIN
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _1722 = mem[(32 * idx) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 3
                    mem[(64 * arg4.length) + (64 * arg3.length) + 599] = address(_1722)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 3, address(_1722)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < arg3.length
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 595] = 1
                    emit ProviderAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 563], 1, msg.sender, nextEIN);
                    idx = idx + 1
                    continue 
                mem[0] = nextEIN
                mem[32] = 0
                _1964 = mem[(32 * arg3.length) + 128]
                idx = 0
                while idx < _1964:
                    require idx < mem[(32 * arg3.length) + 128]
                    _1993 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 5
                    mem[(64 * arg4.length) + (64 * arg3.length) + 599] = address(_1993)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 5, address(_1993)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = mem[(32 * arg3.length) + (32 * idx) + 172 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 595] = 1
                    emit ResolverAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 563], 1, msg.sender, nextEIN);
                    _1964 = mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    continue 
                mem[(64 * arg4.length) + (64 * arg3.length) + 563] = arg1
                mem[(64 * arg4.length) + (64 * arg3.length) + 595] = arg2
                mem[(64 * arg4.length) + (64 * arg3.length) + 691] = 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 627] = 160
                mem[(64 * arg4.length) + (64 * arg3.length) + 723] = arg3.length
                s = 0
                while _1964 < 32 * arg3.length:
                    mem[_1964 + (64 * arg4.length) + (64 * arg3.length) + 755] = mem[_1964 + 128]
                    s = _1964 + 32
                    continue 
            else:
                if 0 < stor1[address(arg2)]:
                    revert with 0, 'The passed address has an ident not.'
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                     gas gas_remaining wei
                    args (sha3(nextEIN, 0) + 1)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] >= maxAssociatedAddresses:
                    revert with 0, 'Too many addresses.'
                mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 599] = arg2
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 1, arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[address(arg2)] = nextEIN
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _1727 = mem[(32 * idx) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 3
                    mem[(64 * arg4.length) + (64 * arg3.length) + 599] = address(_1727)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 3, address(_1727)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < arg3.length
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 595] = 1
                    emit ProviderAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 563], 1, msg.sender, nextEIN);
                    idx = idx + 1
                    continue 
                mem[0] = nextEIN
                mem[32] = 0
                _1965 = mem[(32 * arg3.length) + 128]
                idx = 0
                while idx < _1965:
                    require idx < mem[(32 * arg3.length) + 128]
                    _1999 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 567] = sha3(nextEIN, 0) + 5
                    mem[(64 * arg4.length) + (64 * arg3.length) + 599] = address(_1999)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 5, address(_1999)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 563] = mem[(32 * arg3.length) + (32 * idx) + 172 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 595] = 1
                    emit ResolverAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 563], 1, msg.sender, nextEIN);
                    _1965 = mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    continue 
                mem[(64 * arg4.length) + (64 * arg3.length) + 563] = arg1
                mem[(64 * arg4.length) + (64 * arg3.length) + 595] = arg2
                mem[(64 * arg4.length) + (64 * arg3.length) + 691] = 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 627] = 160
                mem[(64 * arg4.length) + (64 * arg3.length) + 723] = arg3.length
                s = 0
                while _1965 < 32 * arg3.length:
                    mem[_1965 + (64 * arg4.length) + (64 * arg3.length) + 755] = mem[_1965 + 128]
                    s = _1965 + 32
                    continue 
        mem[(64 * arg4.length) + (64 * arg3.length) + 659] = (32 * arg3.length) + 192
        mem[(98 * arg3.length) + (64 * arg4.length) + 755] = mem[(32 * arg3.length) + 128]
        mem[(98 * arg3.length) + (64 * arg4.length) + 787 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit IdentityCreated(address arg1, uint256 arg2, address arg3, address arg4, address[] arg5, address[] arg6, bool arg7):
                             mem[(64 * arg4.length) + (64 * arg3.length) + 563 len (32 * mem[(32 * arg3.length) + 128]) + (32 * arg3.length) + 224],
                             msg.sender,
                             nextEIN,
    else:
        mem[(64 * arg4.length) + (64 * arg3.length) + 371] = 28
        mem[(64 * arg4.length) + (64 * arg3.length) + 403] = '\x19Ethereum Signed Message:\n32'
        mem[(64 * arg4.length) + (64 * arg3.length) + 467 len 28] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32
        mem[(64 * arg4.length) + (64 * arg3.length) + 495] = sha3(0, 0, this.address, 'I authorize the creation of an I', 'dentity on my behalf.', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 307 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32])
        mem[(64 * arg4.length) + (64 * arg3.length) + 435] = 60
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, 'I authorize the creation of an I', 'dentity on my behalf.', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 307 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32])), arg5 << 248, arg6, arg7) 
        mem[(64 * arg4.length) + (64 * arg3.length) + 527] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != arg2:
            revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
        mem[(64 * arg4.length) + (64 * arg3.length) + 559] = 50
        mem[(64 * arg4.length) + (64 * arg3.length) + 591] = 0x5468652070617373656420616464726573732068617320616e206964656e74
        mem[(64 * arg4.length) + (64 * arg3.length) + 623] = 0x7479206275742073686f756c64206e6f742e00000000000000000000000000
        if stor1[address(arg2)] >= nextEIN:
            if stor1[address(arg2)] < nextEIN:
                revert with 0, 'The passed address has an ident not.'
            nextEIN++
            stor0[stor2].field_0 = arg1
            mem[64] = (64 * arg4.length) + (64 * arg3.length) + 751
            mem[(64 * arg4.length) + (64 * arg3.length) + 655] = 50
            mem[(64 * arg4.length) + (64 * arg3.length) + 687] = 0x5468652070617373656420616464726573732068617320616e206964656e74
            mem[(64 * arg4.length) + (64 * arg3.length) + 719] = 0x7479206275742073686f756c64206e6f742e00000000000000000000000000
            if stor1[address(arg2)] >= nextEIN:
                if stor1[address(arg2)] < nextEIN:
                    revert with 0, 'The passed address has an ident not.'
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                     gas gas_remaining wei
                    args (sha3(nextEIN, 0) + 1)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] >= maxAssociatedAddresses:
                    revert with 0, 'Too many addresses.'
                mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 787] = arg2
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 1, arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[address(arg2)] = nextEIN
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _1734 = mem[(32 * idx) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 3
                    mem[(64 * arg4.length) + (64 * arg3.length) + 787] = address(_1734)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 3, address(_1734)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < arg3.length
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 783] = 1
                    emit ProviderAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 751], 1, msg.sender, nextEIN);
                    idx = idx + 1
                    continue 
                mem[0] = nextEIN
                mem[32] = 0
                _1966 = mem[(32 * arg3.length) + 128]
                idx = 0
                while idx < _1966:
                    require idx < mem[(32 * arg3.length) + 128]
                    _2005 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 5
                    mem[(64 * arg4.length) + (64 * arg3.length) + 787] = address(_2005)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 5, address(_2005)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = mem[(32 * arg3.length) + (32 * idx) + 172 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 783] = 1
                    emit ResolverAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 751], 1, msg.sender, nextEIN);
                    _1966 = mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    continue 
                mem[(64 * arg4.length) + (64 * arg3.length) + 751] = arg1
                mem[(64 * arg4.length) + (64 * arg3.length) + 783] = arg2
                mem[(64 * arg4.length) + (64 * arg3.length) + 879] = 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 815] = 160
                mem[(64 * arg4.length) + (64 * arg3.length) + 911] = arg3.length
                s = 0
                while _1966 < 32 * arg3.length:
                    mem[_1966 + (64 * arg4.length) + (64 * arg3.length) + 943] = mem[_1966 + 128]
                    s = _1966 + 32
                    continue 
            else:
                if 0 < stor1[address(arg2)]:
                    revert with 0, 'The passed address has an ident not.'
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                     gas gas_remaining wei
                    args (sha3(nextEIN, 0) + 1)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] >= maxAssociatedAddresses:
                    revert with 0, 'Too many addresses.'
                mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 787] = arg2
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 1, arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[address(arg2)] = nextEIN
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _1739 = mem[(32 * idx) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 3
                    mem[(64 * arg4.length) + (64 * arg3.length) + 787] = address(_1739)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 3, address(_1739)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < arg3.length
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 783] = 1
                    emit ProviderAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 751], 1, msg.sender, nextEIN);
                    idx = idx + 1
                    continue 
                mem[0] = nextEIN
                mem[32] = 0
                _1967 = mem[(32 * arg3.length) + 128]
                idx = 0
                while idx < _1967:
                    require idx < mem[(32 * arg3.length) + 128]
                    _2011 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 5
                    mem[(64 * arg4.length) + (64 * arg3.length) + 787] = address(_2011)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 5, address(_2011)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = mem[(32 * arg3.length) + (32 * idx) + 172 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 783] = 1
                    emit ResolverAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 751], 1, msg.sender, nextEIN);
                    _1967 = mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    continue 
                mem[(64 * arg4.length) + (64 * arg3.length) + 751] = arg1
                mem[(64 * arg4.length) + (64 * arg3.length) + 783] = arg2
                mem[(64 * arg4.length) + (64 * arg3.length) + 879] = 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 815] = 160
                mem[(64 * arg4.length) + (64 * arg3.length) + 911] = arg3.length
                s = 0
                while _1967 < 32 * arg3.length:
                    mem[_1967 + (64 * arg4.length) + (64 * arg3.length) + 943] = mem[_1967 + 128]
                    s = _1967 + 32
                    continue 
        else:
            if 0 < stor1[address(arg2)]:
                revert with 0, 'The passed address has an ident not.'
            nextEIN++
            stor0[stor2].field_0 = arg1
            mem[64] = (64 * arg4.length) + (64 * arg3.length) + 751
            mem[(64 * arg4.length) + (64 * arg3.length) + 655] = 50
            mem[(64 * arg4.length) + (64 * arg3.length) + 687] = 0x5468652070617373656420616464726573732068617320616e206964656e74
            mem[(64 * arg4.length) + (64 * arg3.length) + 719] = 0x7479206275742073686f756c64206e6f742e00000000000000000000000000
            if stor1[address(arg2)] >= nextEIN:
                if stor1[address(arg2)] < nextEIN:
                    revert with 0, 'The passed address has an ident not.'
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                     gas gas_remaining wei
                    args (sha3(nextEIN, 0) + 1)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] >= maxAssociatedAddresses:
                    revert with 0, 'Too many addresses.'
                mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 787] = arg2
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 1, arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[address(arg2)] = nextEIN
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _1746 = mem[(32 * idx) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 3
                    mem[(64 * arg4.length) + (64 * arg3.length) + 787] = address(_1746)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 3, address(_1746)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < arg3.length
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 783] = 1
                    emit ProviderAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 751], 1, msg.sender, nextEIN);
                    idx = idx + 1
                    continue 
                mem[0] = nextEIN
                mem[32] = 0
                _1968 = mem[(32 * arg3.length) + 128]
                idx = 0
                while idx < _1968:
                    require idx < mem[(32 * arg3.length) + 128]
                    _2017 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 5
                    mem[(64 * arg4.length) + (64 * arg3.length) + 787] = address(_2017)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 5, address(_2017)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = mem[(32 * arg3.length) + (32 * idx) + 172 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 783] = 1
                    emit ResolverAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 751], 1, msg.sender, nextEIN);
                    _1968 = mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    continue 
                mem[(64 * arg4.length) + (64 * arg3.length) + 751] = arg1
                mem[(64 * arg4.length) + (64 * arg3.length) + 783] = arg2
                mem[(64 * arg4.length) + (64 * arg3.length) + 879] = 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 815] = 160
                mem[(64 * arg4.length) + (64 * arg3.length) + 911] = arg3.length
                s = 0
                while _1968 < 32 * arg3.length:
                    mem[_1968 + (64 * arg4.length) + (64 * arg3.length) + 943] = mem[_1968 + 128]
                    s = _1968 + 32
                    continue 
            else:
                if 0 < stor1[address(arg2)]:
                    revert with 0, 'The passed address has an ident not.'
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0xc6756c73 with:
                     gas gas_remaining wei
                    args (sha3(nextEIN, 0) + 1)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] >= maxAssociatedAddresses:
                    revert with 0, 'Too many addresses.'
                mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 787] = arg2
                require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                     gas gas_remaining wei
                    args sha3(nextEIN, 0) + 1, arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[address(arg2)] = nextEIN
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _1751 = mem[(32 * idx) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 3
                    mem[(64 * arg4.length) + (64 * arg3.length) + 787] = address(_1751)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 3, address(_1751)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < arg3.length
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 783] = 1
                    emit ProviderAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 751], 1, msg.sender, nextEIN);
                    idx = idx + 1
                    continue 
                mem[0] = nextEIN
                mem[32] = 0
                _1969 = mem[(32 * arg3.length) + 128]
                idx = 0
                while idx < _1969:
                    require idx < mem[(32 * arg3.length) + 128]
                    _2023 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = 0x989779e900000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg4.length) + (64 * arg3.length) + 755] = sha3(nextEIN, 0) + 5
                    mem[(64 * arg4.length) + (64 * arg3.length) + 787] = address(_2023)
                    require ext_code.size(0xa02c251efa2357ba090e9da0a5f61232800fbe50)
                    delegate 0xa02c251efa2357ba090e9da0a5f61232800fbe50.0x989779e9 with:
                         gas gas_remaining wei
                        args sha3(nextEIN, 0) + 5, address(_2023)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 751] = mem[(32 * arg3.length) + (32 * idx) + 172 len 20]
                    mem[(64 * arg4.length) + (64 * arg3.length) + 783] = 1
                    emit ResolverAdded(mem[(64 * arg4.length) + (64 * arg3.length) + 751], 1, msg.sender, nextEIN);
                    _1969 = mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    continue 
                mem[(64 * arg4.length) + (64 * arg3.length) + 751] = arg1
                mem[(64 * arg4.length) + (64 * arg3.length) + 783] = arg2
                mem[(64 * arg4.length) + (64 * arg3.length) + 879] = 1
                mem[(64 * arg4.length) + (64 * arg3.length) + 815] = 160
                mem[(64 * arg4.length) + (64 * arg3.length) + 911] = arg3.length
                s = 0
                while _1969 < 32 * arg3.length:
                    mem[_1969 + (64 * arg4.length) + (64 * arg3.length) + 943] = mem[_1969 + 128]
                    s = _1969 + 32
                    continue 
        mem[(64 * arg4.length) + (64 * arg3.length) + 847] = (32 * arg3.length) + 192
        mem[(98 * arg3.length) + (64 * arg4.length) + 943] = mem[(32 * arg3.length) + 128]
        mem[(98 * arg3.length) + (64 * arg4.length) + 975 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit IdentityCreated(address arg1, uint256 arg2, address arg3, address arg4, address[] arg5, address[] arg6, bool arg7):
                             mem[(64 * arg4.length) + (64 * arg3.length) + 751 len (32 * mem[(32 * arg3.length) + 128]) + (32 * arg3.length) + 224],
                             msg.sender,
                             nextEIN,
    return nextEIN
}



}
