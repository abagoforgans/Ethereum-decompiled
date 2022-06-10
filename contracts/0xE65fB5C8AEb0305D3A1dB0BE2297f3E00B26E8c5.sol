contract main {




// =====================  Runtime code  =====================


#
#  - createIdentityDelegated(address arg1, address arg2, address[] arg3, address[] arg4, uint8 arg5, bytes32 arg6, bytes32 arg7, uint256 arg8)
#
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
    if 0 >= stor0[arg1][4][address(arg2)].field_0:
        return (0 < stor0[arg1][4][address(arg2)].field_0)
    if stor0[arg1].field_768 < stor0[arg1][4][address(arg2)].field_0:
        return stor0[arg1].field_768 >= stor0[arg1][4][address(arg2)].field_0
    require stor0[arg1][4][address(arg2)].field_0 - 1 < stor0[arg1].field_768
    return (stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][4][address(arg2)].field_0].field_0 == arg2)
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

function isResolverFor(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if 0 >= stor0[arg1][6][address(arg2)].field_0:
        return (0 < stor0[arg1][6][address(arg2)].field_0)
    if stor0[arg1].field_1280 < stor0[arg1][6][address(arg2)].field_0:
        return stor0[arg1].field_1280 >= stor0[arg1][6][address(arg2)].field_0
    require stor0[arg1][6][address(arg2)].field_0 - 1 < stor0[arg1].field_1280
    return (stor[('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][6][address(arg2)].field_0].field_0 == arg2)
}

function isAssociatedAddressFor(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if 0 >= stor0[arg1][2][address(arg2)].field_0:
        return (0 < stor0[arg1][2][address(arg2)].field_0)
    if stor0[arg1].field_256 < stor0[arg1][2][address(arg2)].field_0:
        return stor0[arg1].field_256 >= stor0[arg1][2][address(arg2)].field_0
    require stor0[arg1][2][address(arg2)].field_0 - 1 < stor0[arg1].field_256
    return (stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][2][address(arg2)].field_0].field_0 == arg2)
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
    if 0 >= stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eThe identity has not set the passed provider.'
    if stor0[arg1].field_768 < stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eThe identity has not set the passed provider.'
    require stor0[arg1][4][address(msg.sender)].field_0 - 1 < stor0[arg1].field_768
    if stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][4][address(msg.sender)].field_0].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eThe identity has not set the passed provider.'
    if block.timestamp <= stor5[arg1].field_0 + recoveryTimeout:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot trigger a change in recovery address yet.'
    stor5[arg1].field_0 = block.timestamp
    stor5[arg1].field_256 = stor0[arg1].field_0
    emit RecoveryAddressChangeTriggered(stor0[arg1].field_0, address(arg2), 1, msg.sender, arg1);
    stor0[arg1].field_0 = arg2
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

function addProvidersFor(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if 0 >= stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0, 'eThe identity has not set the passed provider.'
    if stor0[arg1].field_768 < stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0, 'eThe identity has not set the passed provider.'
    require stor0[arg1][4][address(msg.sender)].field_0 - 1 < stor0[arg1].field_768
    if stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][4][address(msg.sender)].field_0].field_0 != msg.sender:
        revert with 0, 'eThe identity has not set the passed provider.'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if 0 >= stor0[arg1][4][mem[(32 * idx) + 140 len 20]].field_0:
            stor0[arg1].field_768++
            stor[stor0[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg1, 0) + 4
            stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0 = stor0[arg1].field_768 + 1
        else:
            if stor0[arg1].field_768 < stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0:
                stor0[arg1].field_768++
                stor[stor0[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(arg1, 0) + 4
                stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0 = stor0[arg1].field_768 + 1
            else:
                mem[32] = sha3(arg1, 0) + 4
                require stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[arg1].field_768
                mem[0] = sha3(arg1, 0) + 3
                if stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0].field_0 != mem[(32 * idx) + 140 len 20]:
                    stor0[arg1].field_768++
                    stor[stor0[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = sha3(arg1, 0) + 4
                    stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0 = stor0[arg1].field_768 + 1
        require idx < arg2.length
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 160] = 1
        emit ProviderAdded(mem[(32 * arg2.length) + 128], 1, msg.sender, arg1);
        idx = idx + 1
        continue 
}

function addResolversFor(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if 0 >= stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0, 'eThe identity has not set the passed provider.'
    if stor0[arg1].field_768 < stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0, 'eThe identity has not set the passed provider.'
    require stor0[arg1][4][address(msg.sender)].field_0 - 1 < stor0[arg1].field_768
    if stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][4][address(msg.sender)].field_0].field_0 != msg.sender:
        revert with 0, 'eThe identity has not set the passed provider.'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if 0 >= stor0[arg1][6][mem[(32 * idx) + 140 len 20]].field_0:
            stor0[arg1].field_1280++
            stor[stor0[arg1].field_1280 + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg1, 0) + 6
            stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0 = stor0[arg1].field_1280 + 1
        else:
            if stor0[arg1].field_1280 < stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0:
                stor0[arg1].field_1280++
                stor[stor0[arg1].field_1280 + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(arg1, 0) + 6
                stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0 = stor0[arg1].field_1280 + 1
            else:
                mem[32] = sha3(arg1, 0) + 6
                require stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[arg1].field_1280
                mem[0] = sha3(arg1, 0) + 5
                if stor[('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0].field_0 != mem[(32 * idx) + 140 len 20]:
                    stor0[arg1].field_1280++
                    stor[stor0[arg1].field_1280 + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = sha3(arg1, 0) + 6
                    stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0 = stor0[arg1].field_1280 + 1
        require idx < arg2.length
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 160] = 1
        emit ResolverAdded(mem[(32 * arg2.length) + 128], 1, msg.sender, arg1);
        idx = idx + 1
        continue 
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
    if 0 < stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0:
        if stor0[stor1[address(msg.sender)]].field_256 >= stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0:
            require stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_256
            if stor[('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0].field_0 == msg.sender:
                require stor0[stor1[address(msg.sender)]].field_256 - 1 < stor0[stor1[address(msg.sender)]].field_256
                require stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_256
                stor[('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0].field_0 = stor[stor0[stor1[address(msg.sender)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0
                require stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_256
                stor0[stor1[address(msg.sender)]][2][stor[stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0].field_0 = stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0
                stor0[stor1[address(msg.sender)]][2][address(msg.sender)].field_0 = 0
                require stor0[stor1[address(msg.sender)]].field_256
                stor[stor0[stor1[address(msg.sender)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = 0
                stor0[stor1[address(msg.sender)]].field_256--
    stor1[address(msg.sender)] = 0
    emit AssociatedAddressRemoved(msg.sender, 0, msg.sender, stor1[address(msg.sender)]);
}

function removeProvidersFor(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if 0 >= stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0, 'eThe identity has not set the passed provider.'
    if stor0[arg1].field_768 < stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0, 'eThe identity has not set the passed provider.'
    require stor0[arg1][4][address(msg.sender)].field_0 - 1 < stor0[arg1].field_768
    if stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][4][address(msg.sender)].field_0].field_0 != msg.sender:
        revert with 0, 'eThe identity has not set the passed provider.'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 0) + 4
        if 0 < stor0[arg1][4][mem[(32 * idx) + 140 len 20]].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg1, 0) + 4
            if stor0[arg1].field_768 >= stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0:
                mem[32] = sha3(arg1, 0) + 4
                require stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[arg1].field_768
                mem[0] = sha3(arg1, 0) + 3
                if stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0].field_0 == mem[(32 * idx) + 140 len 20]:
                    require stor0[arg1].field_768 - 1 < stor0[arg1].field_768
                    require stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[arg1].field_768
                    stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0].field_0 = stor[stor0[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0
                    require stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[arg1].field_768
                    stor0[arg1][4][stor[stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0].field_0 = stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0
                    mem[32] = sha3(arg1, 0) + 4
                    stor0[arg1][4][address(mem[(32 * idx) + 128])].field_0 = 0
                    require stor0[arg1].field_768
                    mem[0] = sha3(arg1, 0) + 3
                    stor[stor0[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = 0
                    stor0[arg1].field_768--
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
    mem[(32 * arg2.length) + 128] = 0
    if 0 >= stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0, 'eThe identity has not set the passed provider.'
    if stor0[arg1].field_768 < stor0[arg1][4][address(msg.sender)].field_0:
        revert with 0, 'eThe identity has not set the passed provider.'
    require stor0[arg1][4][address(msg.sender)].field_0 - 1 < stor0[arg1].field_768
    if stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][4][address(msg.sender)].field_0].field_0 != msg.sender:
        revert with 0, 'eThe identity has not set the passed provider.'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 0) + 6
        if 0 < stor0[arg1][6][mem[(32 * idx) + 140 len 20]].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg1, 0) + 6
            if stor0[arg1].field_1280 >= stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0:
                mem[32] = sha3(arg1, 0) + 6
                require stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[arg1].field_1280
                mem[0] = sha3(arg1, 0) + 5
                if stor[('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0].field_0 == mem[(32 * idx) + 140 len 20]:
                    require stor0[arg1].field_1280 - 1 < stor0[arg1].field_1280
                    require stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[arg1].field_1280
                    stor[('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0].field_0 = stor[stor0[arg1].field_1280 + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0
                    require stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[arg1].field_1280
                    stor0[arg1][6][stor[stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0 + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0].field_0 = stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0
                    mem[32] = sha3(arg1, 0) + 6
                    stor0[arg1][6][address(mem[(32 * idx) + 128])].field_0 = 0
                    require stor0[arg1].field_1280
                    mem[0] = sha3(arg1, 0) + 5
                    stor[stor0[arg1].field_1280 + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = 0
                    stor0[arg1].field_1280--
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
    if 0 < stor0[stor1[address(arg1)]][2][address(arg1)].field_0:
        if stor0[stor1[address(arg1)]].field_256 >= stor0[stor1[address(arg1)]][2][address(arg1)].field_0:
            require stor0[stor1[address(arg1)]][2][address(arg1)].field_0 - 1 < stor0[stor1[address(arg1)]].field_256
            if stor[('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(arg1)]][2][address(arg1)].field_0].field_0 == arg1:
                require stor0[stor1[address(arg1)]].field_256 - 1 < stor0[stor1[address(arg1)]].field_256
                require stor0[stor1[address(arg1)]][2][address(arg1)].field_0 - 1 < stor0[stor1[address(arg1)]].field_256
                stor[('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(arg1)]][2][address(arg1)].field_0].field_0 = stor[stor0[stor1[address(arg1)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0
                require stor0[stor1[address(arg1)]][2][address(arg1)].field_0 - 1 < stor0[stor1[address(arg1)]].field_256
                stor0[stor1[address(arg1)]][2][stor[stor0[stor1[address(arg1)]][2][address(arg1)].field_0 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0].field_0 = stor0[stor1[address(arg1)]][2][address(arg1)].field_0
                stor0[stor1[address(arg1)]][2][address(arg1)].field_0 = 0
                require stor0[stor1[address(arg1)]].field_256
                stor[stor0[stor1[address(arg1)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = 0
                stor0[stor1[address(arg1)]].field_256--
    stor1[address(arg1)] = 0
    emit AssociatedAddressRemoved(address(arg1), 1, msg.sender, stor1[address(arg1)]);
}

function addProviders(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 56
    mem[(32 * arg1.length) + 160] = 0x54686520706173736564206164647265737320646f6573206e6f7420686176
    mem[(32 * arg1.length) + 192] = 0x20616e206964656e74697479206275742073686f756c642e00000000000000
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
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if 0 >= stor0[stor1[address(msg.sender)]][4][mem[(32 * idx) + 140 len 20]].field_0:
            stor0[stor1[address(msg.sender)]].field_768++
            stor[stor0[stor1[address(msg.sender)]].field_768 + ('array', 3, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(stor1[address(msg.sender)], 0) + 4
            stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0 = stor0[stor1[address(msg.sender)]].field_768 + 1
        else:
            if stor0[stor1[address(msg.sender)]].field_768 < stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0:
                stor0[stor1[address(msg.sender)]].field_768++
                stor[stor0[stor1[address(msg.sender)]].field_768 + ('array', 3, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(stor1[address(msg.sender)], 0) + 4
                stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0 = stor0[stor1[address(msg.sender)]].field_768 + 1
            else:
                mem[32] = sha3(stor1[address(msg.sender)], 0) + 4
                require stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_768
                mem[0] = sha3(stor1[address(msg.sender)], 0) + 3
                if stor[('array', 3, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0].field_0 != mem[(32 * idx) + 140 len 20]:
                    stor0[stor1[address(msg.sender)]].field_768++
                    stor[stor0[stor1[address(msg.sender)]].field_768 + ('array', 3, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = sha3(stor1[address(msg.sender)], 0) + 4
                    stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0 = stor0[stor1[address(msg.sender)]].field_768 + 1
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
    mem[(32 * arg1.length) + 160] = 0x54686520706173736564206164647265737320646f6573206e6f7420686176
    mem[(32 * arg1.length) + 192] = 0x20616e206964656e74697479206275742073686f756c642e00000000000000
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
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if 0 >= stor0[stor1[address(msg.sender)]][6][mem[(32 * idx) + 140 len 20]].field_0:
            stor0[stor1[address(msg.sender)]].field_1280++
            stor[stor0[stor1[address(msg.sender)]].field_1280 + ('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(stor1[address(msg.sender)], 0) + 6
            stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0 = stor0[stor1[address(msg.sender)]].field_1280 + 1
        else:
            if stor0[stor1[address(msg.sender)]].field_1280 < stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0:
                stor0[stor1[address(msg.sender)]].field_1280++
                stor[stor0[stor1[address(msg.sender)]].field_1280 + ('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(stor1[address(msg.sender)], 0) + 6
                stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0 = stor0[stor1[address(msg.sender)]].field_1280 + 1
            else:
                mem[32] = sha3(stor1[address(msg.sender)], 0) + 6
                require stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_1280
                mem[0] = sha3(stor1[address(msg.sender)], 0) + 5
                if stor[('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0].field_0 != mem[(32 * idx) + 140 len 20]:
                    stor0[stor1[address(msg.sender)]].field_1280++
                    stor[stor0[stor1[address(msg.sender)]].field_1280 + ('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = sha3(stor1[address(msg.sender)], 0) + 6
                    stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0 = stor0[stor1[address(msg.sender)]].field_1280 + 1
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
    mem[(32 * arg1.length) + 160] = 0x54686520706173736564206164647265737320646f6573206e6f7420686176
    mem[(32 * arg1.length) + 192] = 0x20616e206964656e74697479206275742073686f756c642e00000000000000
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
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(stor1[address(msg.sender)], 0) + 4
        if 0 < stor0[stor1[address(msg.sender)]][4][mem[(32 * idx) + 140 len 20]].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(stor1[address(msg.sender)], 0) + 4
            if stor0[stor1[address(msg.sender)]].field_768 >= stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0:
                mem[32] = sha3(stor1[address(msg.sender)], 0) + 4
                require stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_768
                mem[0] = sha3(stor1[address(msg.sender)], 0) + 3
                if stor[('array', 3, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0].field_0 == mem[(32 * idx) + 140 len 20]:
                    require stor0[stor1[address(msg.sender)]].field_768 - 1 < stor0[stor1[address(msg.sender)]].field_768
                    require stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_768
                    stor[('array', 3, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0].field_0 = stor[stor0[stor1[address(msg.sender)]].field_768 + ('array', 3, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0
                    require stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_768
                    stor0[stor1[address(msg.sender)]][4][stor[stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0 + ('array', 3, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0].field_0 = stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0
                    mem[32] = sha3(stor1[address(msg.sender)], 0) + 4
                    stor0[stor1[address(msg.sender)]][4][address(mem[(32 * idx) + 128])].field_0 = 0
                    require stor0[stor1[address(msg.sender)]].field_768
                    mem[0] = sha3(stor1[address(msg.sender)], 0) + 3
                    stor[stor0[stor1[address(msg.sender)]].field_768 + ('array', 3, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = 0
                    stor0[stor1[address(msg.sender)]].field_768--
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
    mem[(32 * arg1.length) + 160] = 0x54686520706173736564206164647265737320646f6573206e6f7420686176
    mem[(32 * arg1.length) + 192] = 0x20616e206964656e74697479206275742073686f756c642e00000000000000
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
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(stor1[address(msg.sender)], 0) + 6
        if 0 < stor0[stor1[address(msg.sender)]][6][mem[(32 * idx) + 140 len 20]].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(stor1[address(msg.sender)], 0) + 6
            if stor0[stor1[address(msg.sender)]].field_1280 >= stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0:
                mem[32] = sha3(stor1[address(msg.sender)], 0) + 6
                require stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_1280
                mem[0] = sha3(stor1[address(msg.sender)], 0) + 5
                if stor[('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0].field_0 == mem[(32 * idx) + 140 len 20]:
                    require stor0[stor1[address(msg.sender)]].field_1280 - 1 < stor0[stor1[address(msg.sender)]].field_1280
                    require stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_1280
                    stor[('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0].field_0 = stor[stor0[stor1[address(msg.sender)]].field_1280 + ('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0
                    require stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[stor1[address(msg.sender)]].field_1280
                    stor0[stor1[address(msg.sender)]][6][stor[stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0 + ('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0].field_0 = stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0
                    mem[32] = sha3(stor1[address(msg.sender)], 0) + 6
                    stor0[stor1[address(msg.sender)]][6][address(mem[(32 * idx) + 128])].field_0 = 0
                    require stor0[stor1[address(msg.sender)]].field_1280
                    mem[0] = sha3(stor1[address(msg.sender)], 0) + 5
                    stor[stor0[stor1[address(msg.sender)]].field_1280 + ('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = 0
                    stor0[stor1[address(msg.sender)]].field_1280--
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
    if stor0[stor1[address(arg1)]].field_256 >= maxAssociatedAddresses:
        revert with 0, 'Too many addresses.'
    if 0 >= stor0[stor1[address(arg1)]][2][address(arg2)].field_0:
        stor0[stor1[address(arg1)]].field_256++
        stor[stor0[stor1[address(arg1)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = arg2
        stor0[stor1[address(arg1)]][2][address(arg2)].field_0 = stor0[stor1[address(arg1)]].field_256 + 1
    else:
        if stor0[stor1[address(arg1)]].field_256 < stor0[stor1[address(arg1)]][2][address(arg2)].field_0:
            stor0[stor1[address(arg1)]].field_256++
            stor[stor0[stor1[address(arg1)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = arg2
            stor0[stor1[address(arg1)]][2][address(arg2)].field_0 = stor0[stor1[address(arg1)]].field_256 + 1
        else:
            require stor0[stor1[address(arg1)]][2][address(arg2)].field_0 - 1 < stor0[stor1[address(arg1)]].field_256
            if stor[('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(arg1)]][2][address(arg2)].field_0].field_0 != arg2:
                stor0[stor1[address(arg1)]].field_256++
                stor[stor0[stor1[address(arg1)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = arg2
                stor0[stor1[address(arg1)]][2][address(arg2)].field_0 = stor0[stor1[address(arg1)]].field_256 + 1
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
    if stor0[stor1[address(arg1)]].field_256 >= maxAssociatedAddresses:
        revert with 0, 'Too many addresses.'
    if 0 >= stor0[stor1[address(arg1)]][2][address(arg2)].field_0:
        stor0[stor1[address(arg1)]].field_256++
        stor[stor0[stor1[address(arg1)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = arg2
        stor0[stor1[address(arg1)]][2][address(arg2)].field_0 = stor0[stor1[address(arg1)]].field_256 + 1
    else:
        if stor0[stor1[address(arg1)]].field_256 < stor0[stor1[address(arg1)]][2][address(arg2)].field_0:
            stor0[stor1[address(arg1)]].field_256++
            stor[stor0[stor1[address(arg1)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = arg2
            stor0[stor1[address(arg1)]][2][address(arg2)].field_0 = stor0[stor1[address(arg1)]].field_256 + 1
        else:
            require stor0[stor1[address(arg1)]][2][address(arg2)].field_0 - 1 < stor0[stor1[address(arg1)]].field_256
            if stor[('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0))) + stor0[stor1[address(arg1)]][2][address(arg2)].field_0].field_0 != arg2:
                stor0[stor1[address(arg1)]].field_256++
                stor[stor0[stor1[address(arg1)]].field_256 + ('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), ('name', 'stor0', 0)))].field_0 = arg2
                stor0[stor1[address(arg1)]][2][address(arg2)].field_0 = stor0[stor1[address(arg1)]].field_256 + 1
    stor1[address(arg2)] = stor1[address(arg1)]
    emit AssociatedAddressAdded(address(arg1), address(arg2), 1, msg.sender, stor1[address(arg1)]);
}

function triggerRecovery(uint256 arg1, address arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if arg1 >= nextEIN:
        revert with 0, 'The identity does not exist.'
    if 0 >= arg1:
        revert with 0, 'The identity does not exist.'
    if stor1[address(arg2)] >= nextEIN:
        if stor1[address(arg2)] < nextEIN:
            revert with 0, 'The passed address has an ident not.'
    else:
        if 0 < stor1[address(arg2)]:
            revert with 0, 'The passed address has an ident not.'
    if block.timestamp < arg6:
        revert with 0, 'iTimestamp is not valid.'
    if block.timestamp >= arg6 + signatureTimeout:
        revert with 0, 'iTimestamp is not valid.'
    if block.timestamp <= stor6[arg1].field_0 + recoveryTimeout:
        revert with 0, 'Cannot trigger recovery yet.'
    if block.timestamp <= stor5[arg1].field_0 + recoveryTimeout:
        if stor5[arg1].field_256 != msg.sender:
            revert with 0, 'Only the recently removed recovery address can trigger recovery.'
    else:
        if stor0[arg1].field_0 != msg.sender:
            revert with 0, 'Only the current recovery address can trigger recovery.'
    signer = erecover(sha3(0, 0, this.address, 'I authorize being added to this ', 'Identity via recovery.', arg1, arg2, arg6), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) == arg2:
        if not stor0[arg1].field_256:
            stor6[arg1].field_0 = block.timestamp
            stor6[arg1].field_256 = sha3(None)
            emit RecoveryTriggered(address arg1, uint256 arg2, address[] arg3, address arg4):
                                   64,
                                   address(arg2),
                                   stor0[arg1].field_256,
                                   msg.sender,
                                   arg1,
        else:
            mem[512] = stor0[arg1][1].field_0
            idx = 512
            s = 0
            while (32 * stor0[arg1].field_256) + 480 > idx:
                mem[idx + 32] = stor0[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            stor6[arg1].field_0 = block.timestamp
            stor6[arg1].field_256 = sha3(mem[512 len 32 * stor0[arg1].field_256])
            if not stor0[arg1].field_256:
                emit RecoveryTriggered(address arg1, uint256 arg2, address[] arg3, address arg4):
                                       64,
                                       address(arg2),
                                       stor0[arg1].field_256,
                                       msg.sender,
                                       arg1,
            else:
                mem[(32 * stor0[arg1].field_256) + 608] = stor0[arg1][1].field_0
                idx = (32 * stor0[arg1].field_256) + 608
                s = 0
                while (64 * stor0[arg1].field_256) + 608 > idx + 32:
                    mem[idx + 32] = stor0[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit RecoveryTriggered(Array(len=stor0[arg1].field_256, data=mem[(32 * stor0[arg1].field_256) + 608 len 32 * stor0[arg1].field_256]), address(arg2), msg.sender, arg1);
    else:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, this.address, 'I authorize being added to this ', 'Identity via recovery.', arg1, arg2, arg6)), arg3 << 248, arg4, arg5) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != arg2:
            revert with 0, 32, 18, 0xfe5065726d697373696f6e2064656e6965642e00000000000000000000000000
        if not stor0[arg1].field_256:
            stor6[arg1].field_0 = block.timestamp
            stor6[arg1].field_256 = sha3(None)
            emit RecoveryTriggered(address arg1, uint256 arg2, address[] arg3, address arg4):
                                   64,
                                   address(arg2),
                                   stor0[arg1].field_256,
                                   msg.sender,
                                   arg1,
        else:
            mem[700] = stor0[arg1][1].field_0
            idx = 700
            s = 0
            while (32 * stor0[arg1].field_256) + 668 > idx:
                mem[idx + 32] = stor0[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            stor6[arg1].field_0 = block.timestamp
            stor6[arg1].field_256 = sha3(mem[700 len 32 * stor0[arg1].field_256])
            if not stor0[arg1].field_256:
                emit RecoveryTriggered(address arg1, uint256 arg2, address[] arg3, address arg4):
                                       64,
                                       address(arg2),
                                       stor0[arg1].field_256,
                                       msg.sender,
                                       arg1,
            else:
                mem[(32 * stor0[arg1].field_256) + 796] = stor0[arg1][1].field_0
                idx = (32 * stor0[arg1].field_256) + 796
                s = 0
                while (64 * stor0[arg1].field_256) + 796 > idx + 32:
                    mem[idx + 32] = stor0[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit RecoveryTriggered(Array(len=stor0[arg1].field_256, data=mem[(32 * stor0[arg1].field_256) + 796 len 32 * stor0[arg1].field_256]), address(arg2), msg.sender, arg1);
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
    stor0[arg1].field_0 = msg.sender
    if stor1[address(arg2)] >= nextEIN:
        if stor1[address(arg2)] < nextEIN:
            revert with 0, 'The passed address has an ident not.'
    else:
        if 0 < stor1[address(arg2)]:
            revert with 0, 'The passed address has an ident not.'
    if stor0[arg1].field_256 >= maxAssociatedAddresses:
        revert with 0, 'Too many addresses.'
    if 0 >= stor0[arg1][2][address(arg2)].field_0:
        stor0[arg1].field_256++
        stor[stor0[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = arg2
        stor0[arg1][2][address(arg2)].field_0 = stor0[arg1].field_256 + 1
    else:
        if stor0[arg1].field_256 < stor0[arg1][2][address(arg2)].field_0:
            stor0[arg1].field_256++
            stor[stor0[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = arg2
            stor0[arg1][2][address(arg2)].field_0 = stor0[arg1].field_256 + 1
        else:
            require stor0[arg1][2][address(arg2)].field_0 - 1 < stor0[arg1].field_256
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + stor0[arg1][2][address(arg2)].field_0].field_0 != arg2:
                stor0[arg1].field_256++
                stor[stor0[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = arg2
                stor0[arg1][2][address(arg2)].field_0 = stor0[arg1].field_256 + 1
    stor1[address(arg2)] = arg1
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
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 0x5468652070617373656420616464726573732068617320616e206964656e74
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = 0x7479206275742073686f756c64206e6f742e00000000000000000000000000
    if stor1[address(msg.sender)] >= nextEIN:
        if stor1[address(msg.sender)] < nextEIN:
            revert with 0, 'The passed address has an ident not.'
    else:
        if 0 < stor1[address(msg.sender)]:
            revert with 0, 'The passed address has an ident not.'
    nextEIN++
    stor0[stor2].field_0 = arg1
    mem[(32 * arg2.length) + (32 * arg3.length) + 256] = 50
    mem[(32 * arg2.length) + (32 * arg3.length) + 288] = 0x5468652070617373656420616464726573732068617320616e206964656e74
    mem[(32 * arg2.length) + (32 * arg3.length) + 320] = 0x7479206275742073686f756c64206e6f742e00000000000000000000000000
    if stor1[address(msg.sender)] >= nextEIN:
        if stor1[address(msg.sender)] < nextEIN:
            revert with 0, 'The passed address has an ident not.'
    else:
        if 0 < stor1[address(msg.sender)]:
            revert with 0, 'The passed address has an ident not.'
    if stor0[stor2].field_256 >= maxAssociatedAddresses:
        revert with 0, 'Too many addresses.'
    if 0 >= stor0[stor2][2][address(msg.sender)].field_0:
        stor0[stor2].field_256++
        stor[stor0[stor2].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0)))].field_0 = msg.sender
        stor0[stor2][2][address(msg.sender)].field_0 = stor0[stor2].field_256 + 1
    else:
        if stor0[stor2].field_256 < stor0[stor2][2][address(msg.sender)].field_0:
            stor0[stor2].field_256++
            stor[stor0[stor2].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0)))].field_0 = msg.sender
            stor0[stor2][2][address(msg.sender)].field_0 = stor0[stor2].field_256 + 1
        else:
            require stor0[stor2][2][address(msg.sender)].field_0 - 1 < stor0[stor2].field_256
            if stor[('array', 1, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0))) + stor0[stor2][2][address(msg.sender)].field_0].field_0 != msg.sender:
                stor0[stor2].field_256++
                stor[stor0[stor2].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0)))].field_0 = msg.sender
                stor0[stor2][2][address(msg.sender)].field_0 = stor0[stor2].field_256 + 1
    stor1[address(msg.sender)] = nextEIN
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if 0 >= stor0[stor2][4][mem[(32 * idx) + 140 len 20]].field_0:
            stor0[stor2].field_768++
            stor[stor0[stor2].field_768 + ('array', 3, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(nextEIN, 0) + 4
            stor0[stor2][4][address(mem[(32 * idx) + 128])].field_0 = stor0[stor2].field_768 + 1
        else:
            if stor0[stor2].field_768 < stor0[stor2][4][address(mem[(32 * idx) + 128])].field_0:
                stor0[stor2].field_768++
                stor[stor0[stor2].field_768 + ('array', 3, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(nextEIN, 0) + 4
                stor0[stor2][4][address(mem[(32 * idx) + 128])].field_0 = stor0[stor2].field_768 + 1
            else:
                mem[32] = sha3(nextEIN, 0) + 4
                require stor0[stor2][4][address(mem[(32 * idx) + 128])].field_0 - 1 < stor0[stor2].field_768
                mem[0] = sha3(nextEIN, 0) + 3
                if stor[('array', 3, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0))) + stor0[stor2][4][address(mem[(32 * idx) + 128])].field_0].field_0 != mem[(32 * idx) + 140 len 20]:
                    stor0[stor2].field_768++
                    stor[stor0[stor2].field_768 + ('array', 3, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0)))].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = sha3(nextEIN, 0) + 4
                    stor0[stor2][4][address(mem[(32 * idx) + 128])].field_0 = stor0[stor2].field_768 + 1
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
        emit ProviderAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        if 0 >= stor0[stor2][6][mem[(32 * arg2.length) + (32 * idx) + 172 len 20]].field_0:
            stor0[stor2].field_1280++
            stor[stor0[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0)))].field_0 = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
            mem[0] = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
            mem[32] = sha3(nextEIN, 0) + 6
            stor0[stor2][6][address(mem[(32 * arg2.length) + (32 * idx) + 160])].field_0 = stor0[stor2].field_1280 + 1
        else:
            if stor0[stor2].field_1280 < stor0[stor2][6][address(mem[(32 * arg2.length) + (32 * idx) + 160])].field_0:
                stor0[stor2].field_1280++
                stor[stor0[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0)))].field_0 = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
                mem[0] = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
                mem[32] = sha3(nextEIN, 0) + 6
                stor0[stor2][6][address(mem[(32 * arg2.length) + (32 * idx) + 160])].field_0 = stor0[stor2].field_1280 + 1
            else:
                mem[32] = sha3(nextEIN, 0) + 6
                require stor0[stor2][6][address(mem[(32 * arg2.length) + (32 * idx) + 160])].field_0 - 1 < stor0[stor2].field_1280
                mem[0] = sha3(nextEIN, 0) + 5
                if stor[('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0))) + stor0[stor2][6][address(mem[(32 * arg2.length) + (32 * idx) + 160])].field_0].field_0 != mem[(32 * arg2.length) + (32 * idx) + 172 len 20]:
                    stor0[stor2].field_1280++
                    stor[stor0[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor0', 0)))].field_0 = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
                    mem[0] = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
                    mem[32] = sha3(nextEIN, 0) + 6
                    stor0[stor2][6][address(mem[(32 * arg2.length) + (32 * idx) + 160])].field_0 = stor0[stor2].field_1280 + 1
        require idx < arg3.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 352] = mem[(32 * arg2.length) + (32 * idx) + 172 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 384] = 0
        emit ResolverAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 352], 0, msg.sender, nextEIN);
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + 544 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg3.length) + 544] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit IdentityCreated(address arg1, uint256 arg2, address arg3, address arg4, address[] arg5, address[] arg6, bool arg7):
                         address(arg1),
                         msg.sender,
                         160,
                         (32 * arg2.length) + 192,
                         0,
                         arg2.length,
                         call.data[arg2 + 36 len floor32(arg2.length)],
                         mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 544 len (32 * arg2.length) + (32 * arg3.length) + -floor32(arg2.length) + 32],
                         msg.sender,
                         nextEIN,
    return nextEIN
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
        mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 384] = stor0[arg1].field_1280
        mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 416 len floor32(stor0[arg1].field_1280)] = mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192 len floor32(stor0[arg1].field_1280)]
        return stor0[arg1].field_0, 
               Array(len=stor0[arg1].field_256, data=mem[128 len floor32(stor0[arg1].field_256)], mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + floor32(stor0[arg1].field_256) + 352 len (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + -floor32(stor0[arg1].field_256) + 64], mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192 len floor32(stor0[arg1].field_1280)], mem[(64 * stor0[arg1].field_256) + (64 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + floor32(stor0[arg1].field_1280) + 416 len (32 * stor0[arg1].field_1280) - floor32(stor0[arg1].field_1280)]),
               (32 * stor0[arg1].field_256) + 160,
               (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_256) + 192
    mem[128] = stor0[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * stor0[arg1].field_256) + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor0[arg1].field_768:
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
        mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 384] = stor0[arg1].field_1280
        mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 416 len floor32(stor0[arg1].field_1280)] = mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192 len floor32(stor0[arg1].field_1280)]
        return stor0[arg1].field_0, 
               Array(len=stor0[arg1].field_256, data=mem[128 len floor32(stor0[arg1].field_256)], mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + floor32(stor0[arg1].field_256) + 352 len (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + -floor32(stor0[arg1].field_256) + 64], mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192 len floor32(stor0[arg1].field_1280)], mem[(64 * stor0[arg1].field_256) + (64 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + floor32(stor0[arg1].field_1280) + 416 len (32 * stor0[arg1].field_1280) - floor32(stor0[arg1].field_1280)]),
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
    mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 384] = stor0[arg1].field_1280
    mem[(64 * stor0[arg1].field_768) + (64 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + 416 len floor32(stor0[arg1].field_1280)] = mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + 192 len floor32(stor0[arg1].field_1280)]
    return stor0[arg1].field_0, 
           Array(len=stor0[arg1].field_256, data=mem[128 len floor32(stor0[arg1].field_256)], mem[(32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_1280) + floor32(stor0[arg1].field_256) + 352 len (32 * stor0[arg1].field_256) + (32 * stor0[arg1].field_1280) + (32 * stor0[arg1].field_768) + -floor32(stor0[arg1].field_256) + 64]),
           (32 * stor0[arg1].field_256) + 160,
           (32 * stor0[arg1].field_768) + (32 * stor0[arg1].field_256) + 192
}



}
