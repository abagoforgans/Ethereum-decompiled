contract main {




// =====================  Runtime code  =====================


address owner;
address resolverAddress;
address walletAddress;
uint256 stor2;
address lottoAddress;
uint256 stor3;
mapping of uint256 stor4;
mapping of address stor5;
mapping of address inviterAddr;
mapping of uint256 earning;
mapping of uint8 stor8;
uint256 rootNumber;

function resolver() {
    return resolverAddress
}

function getInviterAddr() {
    return inviterAddr[address(msg.sender)]
}

function getEarning() {
    return earning[address(msg.sender)]
}

function isRoot() {
    return bool(stor8[address(msg.sender)])
}

function wallet() {
    return address(walletAddress)
}

function isRoot(address arg1) {
    return bool(stor8[address(arg1)])
}

function owner() {
    return owner
}

function lotto() {
    return address(lottoAddress)
}

function rootNumber() {
    return rootNumber
}

function hasInviter() {
    if not inviterAddr[address(msg.sender)]:
        return 0
    return 1
}

function setOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function hasInviter(address arg1) {
    if not inviterAddr[address(arg1)]:
        return 0
    return 1
}

function addRoot(address arg1) {
    require msg.sender == owner
    require not inviterAddr[address(arg1)]
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    rootNumber++
    emit OnAddRoot(arg1);
}

function setInviterXAddr(address arg1) {
    require not inviterAddr[address(msg.sender)]
    require not stor8[address(msg.sender)]
    require arg1
    require arg1 != msg.sender
    require stor4[address(arg1)]
    inviterAddr[address(msg.sender)] = arg1
    emit OnSetInviter(msg.sender, arg1);
}

function aliasExist(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if arg1.length > 32:
        if stor5[0]:
            return 1
    else:
        if arg1.length:
            if stor5[mem[128]]:
                return 1
        else:
            if stor5[0]:
                return 1
    return 0
}

function withdraw() {
    if earning[address(msg.sender)] > 0:
        earning[address(msg.sender)] = 0
        call msg.sender with:
           value earning[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit OnWithdraw(msg.sender, earning[address(msg.sender)]);
}

function setInviter(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require not inviterAddr[address(msg.sender)]
    require not stor8[address(msg.sender)]
    if arg1.length > 32:
        require stor5[0]
        require stor5[0] != msg.sender
        inviterAddr[address(msg.sender)] = stor5[0]
        emit OnSetInviter(msg.sender, stor5[0]);
    else:
        if arg1.length:
            require stor5[mem[128]]
            require stor5[mem[128]] != msg.sender
            inviterAddr[address(msg.sender)] = stor5[mem[128]]
            emit OnSetInviter(msg.sender, stor5[mem[128]]);
        else:
            require stor5[0]
            require stor5[0] != msg.sender
            inviterAddr[address(msg.sender)] = stor5[0]
            emit OnSetInviter(msg.sender, stor5[0]);
}

function getAlias() {
    mem[0] = msg.sender
    mem[32] = 4
    mem[96] = 32
    mem[64] = 160
    mem[128 len 1024] = code.data[22684 len 1024]
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, stor4[address(msg.sender)] * 2^(8 * idx)):
            s = stor4[address(msg.sender)] * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < mem[96]
        mem[s + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4))), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4))), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = stor4[address(msg.sender)] * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _4 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_4]
            mem[_4 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
            t = t + 1
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_4]
        _34 = mem[_4]
        mem[mem[64] + 64 len ceil32(mem[_4])] = mem[_4 + 32 len ceil32(mem[_4])]
        if not _34 % 32:
            return 32, mem[mem[64] + 32 len _34 + 32]
        mem[floor32(_34) + mem[64] + 64] = mem[floor32(_34) + mem[64] + -(_34 % 32) + 96 len _34 % 32]
        return memory
          from mem[64]
           len floor32(_34) + _32 + -mem[64] + 96
    mem[_4 + 32 len 32 * s] = code.data[22684 len 32 * s]
    t = 0
    while t < s:
        require t < mem[96]
        require t < mem[_4]
        mem[_4 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    _35 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_4]
    _37 = mem[_4]
    mem[mem[64] + 64 len ceil32(mem[_4])] = mem[_4 + 32 len ceil32(mem[_4])]
    if not _37 % 32:
        return 32, mem[mem[64] + 32 len _37 + 32]
    mem[floor32(_37) + mem[64] + 64] = mem[floor32(_37) + mem[64] + -(_37 % 32) + 96 len _37 % 32]
    return memory
      from mem[64]
       len floor32(_37) + _35 + -mem[64] + 96
}

function getInviter() {
    if not inviterAddr[address(msg.sender)]:
        return ''
    mem[0] = inviterAddr[address(msg.sender)]
    mem[32] = 4
    mem[96] = 32
    mem[64] = 160
    mem[128 len 1024] = code.data[22684 len 1024]
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, stor4[stor6[address(msg.sender)]] * 2^(8 * idx)):
            s = stor4[stor6[address(msg.sender)]] * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < mem[96]
        mem[s + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6))), ('name', 'stor4', 4))), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6))), ('name', 'stor4', 4))), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = stor4[stor6[address(msg.sender)]] * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _15 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_15]
            mem[_15 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_15]
        _48 = mem[_15]
        mem[mem[64] + 64 len ceil32(mem[_15])] = mem[_15 + 32 len ceil32(mem[_15])]
        if not _48 % 32:
            return 32, mem[mem[64] + 32 len _48 + 32]
        mem[floor32(_48) + mem[64] + 64] = mem[floor32(_48) + mem[64] + -(_48 % 32) + 96 len _48 % 32]
        return 32, mem[mem[64] + 32 len floor32(_48) + 64]
    mem[_15 + 32 len 32 * s] = code.data[22684 len 32 * s]
    t = 0
    while t < s:
        require t < mem[96]
        require t < mem[_15]
        mem[_15 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_15]
    _51 = mem[_15]
    mem[mem[64] + 64 len ceil32(mem[_15])] = mem[_15 + 32 len ceil32(mem[_15])]
    if not _51 % 32:
        return 32, mem[mem[64] + 32 len _51 + 32]
    mem[floor32(_51) + mem[64] + 64] = mem[floor32(_51) + mem[64] + -(_51 % 32) + 96 len _51 % 32]
    return 32, mem[mem[64] + 32 len floor32(_51) + 64]
}

function setInviterXAddr(address arg1, address arg2) {
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(resolverAddress)
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
        else:
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if address(walletAddress) != ext_call.return_data[12 len 20]:
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(lottoAddress) != ext_call.return_data[12 len 20]:
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require msg.sender == address(lottoAddress)
    require not inviterAddr[address(arg1)]
    require not stor8[address(arg1)]
    require arg2
    require arg2 != arg1
    require stor4[address(arg2)]
    inviterAddr[address(arg1)] = arg2
    emit OnSetInviter(address(arg1), arg2);
}

function setInviter(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(resolverAddress)
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
        else:
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if address(walletAddress) != ext_call.return_data[12 len 20]:
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(lottoAddress) != ext_call.return_data[12 len 20]:
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require msg.sender == address(lottoAddress)
    require not inviterAddr[address(arg1)]
    require not stor8[address(arg1)]
    if arg2.length > 32:
        require stor5[0]
        require stor5[0] != arg1
        inviterAddr[address(arg1)] = stor5[0]
        emit OnSetInviter(address(arg1), stor5[0]);
    else:
        if arg2.length:
            require stor5[mem[128]]
            require stor5[mem[128]] != arg1
            inviterAddr[address(arg1)] = stor5[mem[128]]
            emit OnSetInviter(address(arg1), stor5[mem[128]]);
        else:
            require stor5[0]
            require stor5[0] != arg1
            inviterAddr[address(arg1)] = stor5[0]
            emit OnSetInviter(address(arg1), stor5[0]);
}

function _fallback() payable {
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(resolverAddress)
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
        else:
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if address(walletAddress) != ext_call.return_data[12 len 20]:
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(lottoAddress) != ext_call.return_data[12 len 20]:
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    s = 0
    s = msg.value
    t = msg.sender
    while inviterAddr[address(msg.sender)]:
        require ext_code.size(0x6c07ab4ebd934db55028f549786f2dda4b75143d)
        delegate 0x6c07ab4ebd934db55028f549786f2dda4b75143d.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args s, 2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x6c07ab4ebd934db55028f549786f2dda4b75143d)
        delegate 0x6c07ab4ebd934db55028f549786f2dda4b75143d.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args s, delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = earning[stor6[address(t)]]
        mem[132] = delegate.return_data[0]
        require ext_code.size(0x6c07ab4ebd934db55028f549786f2dda4b75143d)
        delegate 0x6c07ab4ebd934db55028f549786f2dda4b75143d.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args earning[stor6[address(t)]], delegate.return_data[0]
        mem[96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        earning[stor6[address(t)]] = delegate.return_data[0]
        mem[0] = inviterAddr[address(t)]
        mem[32] = 6
        s = delegate.return_data[0]
        s = delegate.return_data[0]
        t = inviterAddr[address(t)]
        continue 
    call address(walletAddress) with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OnPay(msg.sender, msg.value);
}

function pay(address arg1) payable {
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(resolverAddress)
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
        else:
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if address(walletAddress) != ext_call.return_data[12 len 20]:
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(lottoAddress) != ext_call.return_data[12 len 20]:
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require msg.sender == address(lottoAddress)
    s = 0
    s = msg.value
    t = arg1
    while inviterAddr[address(arg1)]:
        require ext_code.size(0x6c07ab4ebd934db55028f549786f2dda4b75143d)
        delegate 0x6c07ab4ebd934db55028f549786f2dda4b75143d.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args s, 2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x6c07ab4ebd934db55028f549786f2dda4b75143d)
        delegate 0x6c07ab4ebd934db55028f549786f2dda4b75143d.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args s, delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = earning[stor6[address(t)]]
        mem[132] = delegate.return_data[0]
        require ext_code.size(0x6c07ab4ebd934db55028f549786f2dda4b75143d)
        delegate 0x6c07ab4ebd934db55028f549786f2dda4b75143d.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args earning[stor6[address(t)]], delegate.return_data[0]
        mem[96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        earning[stor6[address(t)]] = delegate.return_data[0]
        mem[0] = inviterAddr[address(t)]
        mem[32] = 6
        s = delegate.return_data[0]
        s = delegate.return_data[0]
        t = inviterAddr[address(t)]
        continue 
    call address(walletAddress) with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OnPay(address(arg1), msg.value);
}

function registerAlias(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(resolverAddress)
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
        else:
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if address(walletAddress) != ext_call.return_data[12 len 20]:
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(lottoAddress) != ext_call.return_data[12 len 20]:
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require msg.value >= 10^16
    require arg1.length <= 32
    require arg1.length > 0
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x3000000000000000000000000000000000000000000000000000000000000000:
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x7800000000000000000000000000000000000000000000000000000000000000
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x5800000000000000000000000000000000000000000000000000000000000000
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                require Mask(8, 248, mem[idx + 128]) > 0x2f00000000000000000000000000000000000000000000000000000000000000
                require idx < arg1.length
                require Mask(8, 248, mem[idx + 128]) < 0x3a00000000000000000000000000000000000000000000000000000000000000
            else:
                if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    require Mask(8, 248, mem[idx + 128]) > 0x2f00000000000000000000000000000000000000000000000000000000000000
                    require idx < arg1.length
                    require Mask(8, 248, mem[idx + 128]) < 0x3a00000000000000000000000000000000000000000000000000000000000000
        else:
            if Mask(8, 248, mem[idx + 128]) >= 0x5b00000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                    require Mask(8, 248, mem[idx + 128]) > 0x2f00000000000000000000000000000000000000000000000000000000000000
                    require idx < arg1.length
                    require Mask(8, 248, mem[idx + 128]) < 0x3a00000000000000000000000000000000000000000000000000000000000000
                else:
                    if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) > 0x2f00000000000000000000000000000000000000000000000000000000000000
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < 0x3a00000000000000000000000000000000000000000000000000000000000000
        if s:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= 0x3a00000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require not stor5[mem[128]]
    if stor4[address(msg.sender)]:
        stor5[stor4[address(msg.sender)]] = 0
    stor4[address(msg.sender)] = mem[128]
    stor5[mem[128]] = msg.sender
    call address(walletAddress) with:
       value 10^16 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 10^16:
        require ext_code.size(0x6c07ab4ebd934db55028f549786f2dda4b75143d)
        delegate 0x6c07ab4ebd934db55028f549786f2dda4b75143d.sub(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.value, 10^16
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call msg.sender with:
           value delegate.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit OnRegisterAlias(msg.sender, mem[128]);
}



}
