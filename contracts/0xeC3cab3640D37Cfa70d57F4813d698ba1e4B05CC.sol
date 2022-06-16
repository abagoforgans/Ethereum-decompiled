contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address sub_e083619aAddress;
address sub_d9bccbf7Address;
uint256 revision;
address stor5;
mapping of uint256 stor6;
mapping of uint8 stor7;
uint256 stor8;

function getRevision() {
    return revision
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function sub_d9bccbf7(?) {
    return sub_d9bccbf7Address
}

function sub_e083619a(?) {
    return sub_e083619aAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function supportsInterface(bytes4 arg1) {
    if 0xffffffff00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return 0
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return 0
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setSuccessor(address arg1) {
    require ext_code.size(stor5)
    call stor5.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(msg.sender, Mask(96, 160, '.has.auth.for.zerocache') >> 160, Mask(88, 72, '.has.auth.for.zerocache') >> 72)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    sub_d9bccbf7Address = arg1
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if arg3 > stor6[address(arg2)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Oops! You DO NOT have enough tokens.'
    require arg3 <= stor6[address(arg2)][address(msg.sender)]
    stor6[address(arg2)][address(msg.sender)] -= arg3
    require arg3 + stor6[address(arg2)][arg1] >= stor6[address(arg2)][arg1]
    stor6[address(arg2)][address(arg1)] = arg3 + stor6[address(arg2)][arg1]
    emit Transfer(msg.sender, address(arg1), arg3, arg2);
    return 1
}

function withdraw(address arg1, uint256 arg2) {
    if arg2 > stor6[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Oops! You DO NOT have enough tokens.'
    require arg2 <= stor6[address(arg1)][address(msg.sender)]
    stor6[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(msg.sender, arg2, arg1);
    return 1
}

function wrap() payable {
    require ext_code.size(stor5)
    call stor5.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('aname.WETH')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = 0, mem[132 len 28]
    mem[132] = mem[160 len 4]
    call address(ext_call.return_data[0]).mem[132 len 4] with:
       value msg.value wei
         gas 200000 wei
        args mem[136 len 28]
    if not ext_call.success:
        revert with 0, 'An error occurred while wrapping your ETH.'
    require msg.value + stor6[address(ext_call.return_data[0])][address(msg.sender)] >= stor6[address(ext_call.return_data[0])][address(msg.sender)]
    stor6[address(ext_call.return_data[0])][address(msg.sender)] += msg.value
    emit Deposit(msg.sender, msg.value, Array(len=4, data=Mask(32, 32, msg.sender) >> 32), address(ext_call.return_data[0]));
    return bool(ext_call.success)
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(stor5)
    call stor5.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(msg.sender, Mask(96, 160, '.has.auth.for.zerocache') >> 160, Mask(88, 72, '.has.auth.for.zerocache') >> 72)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    if arg3 > stor6[address(arg2)][address(arg1)]:
        revert with 0, 'Oops! You DO NOT have enough tokens.'
    require arg3 <= stor6[address(arg2)][address(arg1)]
    stor6[address(arg2)][address(arg1)] -= arg3
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(address(arg1), arg3, arg2);
    return 1
}

function wrap(address arg1) payable {
    require ext_code.size(stor5)
    call stor5.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('aname.WETH')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = 0, mem[132 len 28]
    mem[132] = mem[160 len 4]
    call address(ext_call.return_data[0]).mem[132 len 4] with:
       value msg.value wei
         gas 200000 wei
        args mem[136 len 28]
    if not ext_call.success:
        revert with 0, 'An error occurred while wrapping your ETH.'
    require msg.value + stor6[address(ext_call.return_data[0])][address(arg1)] >= stor6[address(ext_call.return_data[0])][address(arg1)]
    stor6[address(ext_call.return_data[0])][address(arg1)] += msg.value
    emit Deposit(address arg1, address arg2, uint256 arg3, bytes arg4):
                 address(arg1),
                 msg.value,
                 96,
                 4,
                 0,
                 address(ext_call.return_data[0]),
    return bool(ext_call.success)
}

function unwrap(uint256 arg1) {
    require ext_code.size(stor5)
    call stor5.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('aname.WETH')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > stor6[ext_call.return_data[12 len 20]][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Oops! You DO NOT have enough WETH.'
    require arg1 <= stor6[address(ext_call.return_data[0])][address(msg.sender)]
    stor6[address(ext_call.return_data[0])][address(msg.sender)] -= arg1
    mem[164 len 64] = unknown_0x2e1a7d4d(?????), arg1, mem[164 len 28]
    mem[196] = mem[224 len 4]
    call address(ext_call.return_data[0]).mem[164 len 4] with:
         gas 200000 wei
        args mem[168 len 60]
    if not ext_call.success:
        revert with 0, 'An error occurred while unwrapping your ETH.'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(msg.sender, arg1, address(ext_call.return_data[0]));
    return bool(ext_call.success)
}

function sub_348b1b98(?) {
    _53 = sha3(this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7, Mask(224, 32, arg8) >> 32, mem[580 len 4])
    if stor7[Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32][_53]:
        revert with 0, 'Oops! This cancel request is NOT valid.'
    stor7[Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32][_53] = 1
    if arg7 < block.number:
        revert with 0, 'Oops! This cancel request is NOT valid.'
    require ext_code.size(stor5)
    call stor5.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('aname.ecrecovery')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _53), Array(len=arg9.length, data=arg9[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != arg2:
        revert with 0, 'Oops! This cancel request is NOT valid.'
    return 1
}

function deposit(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 132] = arg2
    mem[ceil32(arg4.length) + 164] = this.address
    mem[ceil32(arg4.length) + 196] = arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), this.address, arg3
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4.length != 20:
        require arg3 + stor6[address(arg1)][address(arg2)] >= stor6[address(arg1)][address(arg2)]
        stor6[address(arg1)][address(arg2)] += arg3
        emit Deposit(address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), arg1);
    else:
        idx = 0
        s = 0
        s = 0
        while uint8(idx) < 20:
            require uint8(idx) < arg4.length
            idx = idx + 1
            s = mem[uint8(idx) + 128 len 1]
            s = mem[uint8(idx) + 128 len 1] + (256 * s)
            continue 
        require arg3 + stor6[address(arg1)][address(Mask(8, 248, _27) >> 248 * None)] >= stor6[address(arg1)][address(Mask(8, 248, _27) >> 248 * None)]
        stor6[address(arg1)][address(Mask(8, 248, _27) >> 248 * None)] += arg3
        emit Deposit(address(Mask(8, 248, _27) >> 248 * None), arg3, Array(len=arg4.length, data=arg4[all]), arg1);
    return 1
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = this.address
    mem[ceil32(arg4.length) + 196] = arg2
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4.length != 20:
        require arg2 + stor6[address(arg3)][address(arg1)] >= stor6[address(arg3)][address(arg1)]
        stor6[address(arg3)][address(arg1)] += arg2
        emit Deposit(address(arg1), arg2, Array(len=arg4.length, data=arg4[all]), arg3);
    else:
        idx = 0
        s = 0
        s = 0
        while uint8(idx) < 20:
            require uint8(idx) < arg4.length
            idx = idx + 1
            s = mem[uint8(idx) + 128 len 1]
            s = mem[uint8(idx) + 128 len 1] + (256 * s)
            continue 
        require arg2 + stor6[address(arg3)][address(Mask(8, 248, _27) >> 248 * None)] >= stor6[address(arg3)][address(Mask(8, 248, _27) >> 248 * None)]
        stor6[address(arg3)][address(Mask(8, 248, _27) >> 248 * None)] += arg2
        emit Deposit(address(Mask(8, 248, _27) >> 248 * None), arg2, Array(len=arg4.length, data=arg4[all]), arg3);
    return 1
}

function balanceOf(address arg1, address arg2) {
    if not sub_e083619aAddress:
        return stor6[address(arg1)][address(arg2)]
    s = 0
    idx = 0
    s = 0
    t = sub_e083619aAddress
    while idx < stor8:
        mem[100] = arg1
        mem[132] = arg2
        require ext_code.size(address(t))
        call address(t).0xf7888aec with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _20 = ext_call.return_data[0]
        require ext_call.return_data[0] + s >= s
        require ext_code.size(address(t))
        call address(t).0xe083619a with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]):
            s = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0] + s
            t = ext_call.return_data[0]
            continue 
        require ext_call.return_data[0] + s + stor6[address(arg1)][address(arg2)] >= stor6[address(arg1)][address(arg2)]
        return (ext_call.return_data[0] + s + stor6[address(arg1)][address(arg2)])
    require (_20 * stor8) + stor6[address(arg1)][address(arg2)] >= stor6[address(arg1)][address(arg2)]
    return ((_20 * stor8) + stor6[address(arg1)][address(arg2)])
}

function balanceOf(address arg1, address arg2, uint256 arg3) {
    if not sub_e083619aAddress:
        return stor6[address(arg1)][address(arg2)]
    s = 0
    idx = 0
    s = 0
    t = sub_e083619aAddress
    while idx < arg3:
        mem[100] = arg1
        mem[132] = arg2
        require ext_code.size(address(t))
        call address(t).0xf7888aec with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _20 = ext_call.return_data[0]
        require ext_call.return_data[0] + s >= s
        require ext_code.size(address(t))
        call address(t).0xe083619a with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]):
            s = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0] + s
            t = ext_call.return_data[0]
            continue 
        require ext_call.return_data[0] + s + stor6[address(arg1)][address(arg2)] >= stor6[address(arg1)][address(arg2)]
        return (ext_call.return_data[0] + s + stor6[address(arg1)][address(arg2)])
    require (_20 * arg3) + stor6[address(arg1)][address(arg2)] >= stor6[address(arg1)][address(arg2)]
    return ((_20 * arg3) + stor6[address(arg1)][address(arg2)])
}

function unwrap(address arg1, uint256 arg2) {
    require ext_code.size(stor5)
    call stor5.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(msg.sender, Mask(96, 160, '.has.auth.for.zerocache') >> 160, Mask(88, 72, '.has.auth.for.zerocache') >> 72)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(stor5)
    call stor5.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('aname.WETH')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > stor6[address(ext_call.return_data[0])][address(arg1)]:
        revert with 0, 'Oops! You DO NOT have enough WETH.'
    require arg2 <= stor6[address(ext_call.return_data[0])][address(arg1)]
    stor6[address(ext_call.return_data[0])][address(arg1)] -= arg2
    mem[239 len 64] = 0, arg2, mem[239 len 28]
    mem[271] = mem[299 len 4]
    call address(ext_call.return_data[0]).mem[239 len 4] with:
         gas 200000 wei
        args mem[243 len 60]
    if not ext_call.success:
        revert with 0, 'An error occurred while unwrapping your ETH.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(address(arg1), arg2, address(ext_call.return_data[0]));
    return bool(ext_call.success)
}

function _fallback() payable {
    mem[96] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
    mem[128] = 0xc778417e063141139fce010982780140aa0cd5ab
    mem[160] = 0xd0a1e359811322d97991e03f863a0c30c2cf029c
    mem[192] = 0xc778417e063141139fce010982780140aa0cd5ab
    idx = 0
    s = 0
    while idx < 4:
        if mem[(32 * idx) + 108 len 20] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        require ext_code.size(stor5)
        call stor5.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('aname.WETH')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[260] = 0, mem[260 len 28]
        mem[260] = mem[288 len 4]
        call address(ext_call.return_data[0]).mem[260 len 4] with:
           value msg.value wei
             gas 200000 wei
            args mem[264 len 28]
        if not ext_call.success:
            revert with 0, 'An error occurred while wrapping your ETH.'
        require msg.value + stor6[address(ext_call.return_data[0])][address(msg.sender)] >= stor6[address(ext_call.return_data[0])][address(msg.sender)]
        stor6[address(ext_call.return_data[0])][address(msg.sender)] += msg.value
        mem[388 len 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756ce0] = 0xc778417e063141139fce010982780140aa0cd5ab, 0xd0a1e359811322d97991e03f863a0c30c2cf029c, 0xc778417e063141139fce010982780140aa0cd5ab, 4, 0, msg.sender, msg.value, 96, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, mem[388 len 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756bdc]
        mem[0xc02aaa39b223fe8d0a0e5c4f27ead9083c756e44] = mem[0xc02aaa39b223fe8d0a0e5c4f27ead9083c756e62 len 2]
        emit Deposit(msg.sender, msg.value, Array(len=0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, data=mem[388 len 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756ce0]), address(ext_call.return_data[0]));
}

function multiTransfer(address[] arg1, address[] arg2, uint256[] arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        _30 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _34 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < mem[96]
        _36 = mem[(32 * idx) + 128]
        if ext_code.size(mem[(32 * idx) + 128]) > 0:
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = address(_36)
            mem[mem[64] + 64] = address(_30)
            mem[mem[64] + 96] = _34
            emit 0xbe51a99a: msg.sender, address(_36), address(_30), _34
        else:
            if mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] > stor6[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]][address(msg.sender)]:
                revert with 0, 'Oops! You DO NOT have enough tokens.'
            require mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] <= stor6[address(mem[(32 * idx) + (32 * arg1.length) + 160])][address(msg.sender)]
            stor6[address(mem[(32 * idx) + (32 * arg1.length) + 160])][address(msg.sender)] -= mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            require mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] + stor6[address(mem[(32 * idx) + (32 * arg1.length) + 160])][mem[(32 * idx) + 140 len 20]] >= stor6[address(mem[(32 * idx) + (32 * arg1.length) + 160])][mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(mem[(32 * idx) + (32 * arg1.length) + 160]), 6)
            stor6[address(mem[(32 * idx) + (32 * arg1.length) + 160])][address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] + stor6[address(mem[(32 * idx) + (32 * arg1.length) + 160])][mem[(32 * idx) + 140 len 20]]
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = address(_36)
            mem[mem[64] + 64] = _34
            emit Transfer(msg.sender, address(_36), _34, address(_30));
        s = _36
        s = _34
        s = _30
        idx = idx + 1
        continue 
    return 1
}

function sub_ded79eb8(?) {
    _189 = sha3(this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7, Mask(224, 32, arg8) >> 32, mem[580 len 4])
    if stor7[Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32][_189]:
        revert with 0, 'Oops! This relay request is NOT valid.'
    stor7[Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32][_189] = 1
    if arg7 < block.number:
        revert with 0, 'Oops! This relay request is NOT valid.'
    require ext_code.size(stor5)
    call stor5.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('aname.ecrecovery')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _189), Array(len=arg9.length, data=arg9[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != arg2:
        revert with 0, 'Oops! This relay request is NOT valid.'
    if arg5:
        if arg6 > 0:
            require ext_code.size(stor5)
            call stor5.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('aname.0GOLD')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg6 > stor6[address(ext_call.return_data[0])][address(arg2)]:
                revert with 0, 'Oops! You DO NOT have enough ZeroGold to staek.'
            require arg6 <= stor6[address(ext_call.return_data[0])][address(arg2)]
            stor6[address(ext_call.return_data[0])][address(arg2)] -= arg6
            require ext_code.size(stor5)
            call stor5.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('aname.0GOLD')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg5), arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x5977734d: address(arg2), address(arg5), arg6
    if arg4 > stor6[address(arg1)][address(arg2)]:
        revert with 0, 'Oops! You DO NOT have enough tokens.'
    require arg4 <= stor6[address(arg1)][address(arg2)]
    stor6[address(arg1)][address(arg2)] -= arg4
    require arg4 + stor6[address(arg1)][arg3] >= stor6[address(arg1)][arg3]
    stor6[address(arg1)][address(arg3)] = arg4 + stor6[address(arg1)][arg3]
    emit Transfer(address(arg2), address(arg3), arg4, arg1);
    return 1
}

function migrate(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 132] = sha3('aname.zerocache')
    require ext_code.size(stor5)
    call stor5.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('aname.zerocache')
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    t = 0
    t = 0
    idx = 0
    t = 0
    while idx < arg1.length:
        require idx < mem[96]
        _141 = mem[(32 * idx) + 128]
        _145 = sha3(address(msg.sender), sha3(mem[(32 * idx) + 140 len 20], 6))
        if not sub_e083619aAddress:
            mem[0] = msg.sender
            mem[32] = sha3(address(mem[(32 * idx) + 128]), 6)
            stor6[address(mem[(32 * idx) + 128])][address(msg.sender)] = 0
            require ext_code.size(stor5)
            call stor5.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('aname.WETH')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(_141) != address(ext_call.return_data[0]):
                _154 = mem[64]
                mem[mem[64] + 32] = address(msg.sender)
                _155 = mem[64]
                mem[64] = mem[64] + 52
                mem[_154 + 52] = 0xcae9ca5100000000000000000000000000000000000000000000000000000000
                mem[_154 + 56] = address(ext_call.return_data[0])
                mem[_154 + 88] = stor[_145]
                mem[_154 + 120] = 96
                mem[_154 + 152] = mem[_155]
                _158 = mem[_155]
                t = 0
                while t < _158:
                    mem[t + _154 + 184] = mem[t + _155 + 32]
                    t = t + 32
                    continue 
                if not _158 % 32:
                    require ext_code.size(address(_141))
                    call address(_141).0xcae9ca51 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), stor[_145], 96, mem[_154 + 152 len _158 + 32]
                else:
                    mem[floor32(_158) + _154 + 184] = mem[floor32(_158) + _154 + -(_158 % 32) + 216 len _158 % 32]
                    require ext_code.size(address(_141))
                    call address(_141).0xcae9ca51 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), stor[_145], 96, mem[_154 + 152 len floor32(_158) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_154 + 52] = msg.sender
                mem[_154 + 84] = stor[_145]
                emit Migrate(msg.sender, stor[_145], address(_141));
                s = s
                t = stor[_145]
                t = _141
                idx = idx + 1
                t = 1
                continue 
            mem[mem[64] + 4] = sha3('aname.WETH')
            require ext_code.size(stor5)
            call stor5.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('aname.WETH')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _177 = mem[64]
            mem[mem[64] + 36] = stor[_145]
            _178 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_178 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_178 + 36 len 28]
            _181 = mem[_178]
            s = 0
            while s < _181:
                mem[s + _177 + 68] = mem[s + _178 + 32]
                s = s + 32
                continue 
            if not _181 % 32:
                call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                     gas 100000 wei
                    args mem[mem[64] + 4 len _181 + _177 + -mem[64] + 64]
                _277 = mem[64]
                mem[mem[64] + 36] = msg.sender
                _278 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_278 + 32] = mem[_278 + 36 len 28] or 0x23276f000000000000000000000000000000000000000000000000000000000
                _281 = mem[_278]
                s = 0
                while s < _281:
                    mem[s + _277 + 68] = mem[s + _278 + 32]
                    s = s + 32
                    continue 
                if not _281 % 32:
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                       value stor[_145] wei
                         gas 100000 wei
                        args mem[mem[64] + 4 len _281 + _277 + -mem[64] + 64]
                else:
                    mem[floor32(_281) + _277 + 68] = mem[floor32(_281) + _277 + -(_281 % 32) + 100 len _281 % 32]
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                       value stor[_145] wei
                         gas 100000 wei
                        args mem[mem[64] + 4 len floor32(_281) + _277 + -mem[64] + 96]
            else:
                mem[floor32(_181) + _177 + 68] = mem[floor32(_181) + _177 + -(_181 % 32) + 100 len _181 % 32]
                call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                     gas 100000 wei
                    args mem[mem[64] + 4 len floor32(_181) + _177 + -mem[64] + 96]
                _294 = mem[64]
                mem[mem[64] + 36] = msg.sender
                _295 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_295 + 32] = mem[_295 + 36 len 28] or 0x23276f000000000000000000000000000000000000000000000000000000000
                _298 = mem[_295]
                s = 0
                while s < _298:
                    mem[s + _294 + 68] = mem[s + _295 + 32]
                    s = s + 32
                    continue 
                if not _298 % 32:
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                       value stor[_145] wei
                         gas 100000 wei
                        args mem[mem[64] + 4 len _298 + _294 + -mem[64] + 64]
                else:
                    mem[floor32(_298) + _294 + 68] = mem[floor32(_298) + _294 + -(_298 % 32) + 100 len _298 % 32]
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                       value stor[_145] wei
                         gas 100000 wei
                        args mem[mem[64] + 4 len floor32(_298) + _294 + -mem[64] + 96]
        else:
            require stor6[mem[(32 * idx) + 140 len 20]][address(msg.sender)] >= stor6[mem[(32 * idx) + 140 len 20]][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(mem[(32 * idx) + 128]), 6)
            stor6[address(mem[(32 * idx) + 128])][address(msg.sender)] = 0
            require ext_code.size(stor5)
            call stor5.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('aname.WETH')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(_141) != address(ext_call.return_data[0]):
                _184 = mem[64]
                mem[mem[64] + 32] = address(msg.sender)
                _185 = mem[64]
                mem[64] = mem[64] + 52
                mem[_184 + 52] = 0xcae9ca5100000000000000000000000000000000000000000000000000000000
                mem[_184 + 56] = address(ext_call.return_data[0])
                mem[_184 + 88] = stor[_145]
                mem[_184 + 120] = 96
                mem[_184 + 152] = mem[_185]
                _188 = mem[_185]
                t = 0
                while t < _188:
                    mem[t + _184 + 184] = mem[t + _185 + 32]
                    t = t + 32
                    continue 
                if not _188 % 32:
                    require ext_code.size(address(_141))
                    call address(_141).0xcae9ca51 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), stor[_145], 96, mem[_184 + 152 len _188 + 32]
                else:
                    mem[floor32(_188) + _184 + 184] = mem[floor32(_188) + _184 + -(_188 % 32) + 216 len _188 % 32]
                    require ext_code.size(address(_141))
                    call address(_141).0xcae9ca51 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), stor[_145], 96, mem[_184 + 152 len floor32(_188) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_184 + 52] = msg.sender
                mem[_184 + 84] = stor[_145]
                emit Migrate(msg.sender, stor[_145], address(_141));
                s = s
                t = stor[_145]
                t = _141
                idx = idx + 1
                t = 1
                continue 
            mem[mem[64] + 4] = sha3('aname.WETH')
            require ext_code.size(stor5)
            call stor5.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('aname.WETH')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _219 = mem[64]
            mem[mem[64] + 36] = stor[_145]
            _220 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_220 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_220 + 36 len 28]
            _223 = mem[_220]
            s = 0
            while s < _223:
                mem[s + _219 + 68] = mem[s + _220 + 32]
                s = s + 32
                continue 
            if not _223 % 32:
                call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                     gas 100000 wei
                    args mem[mem[64] + 4 len _223 + _219 + -mem[64] + 64]
                _286 = mem[64]
                mem[mem[64] + 36] = msg.sender
                _287 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_287 + 32] = mem[_287 + 36 len 28] or 0x23276f000000000000000000000000000000000000000000000000000000000
                _290 = mem[_287]
                s = 0
                while s < _290:
                    mem[s + _286 + 68] = mem[s + _287 + 32]
                    s = s + 32
                    continue 
                if not _290 % 32:
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                       value stor[_145] wei
                         gas 100000 wei
                        args mem[mem[64] + 4 len _290 + _286 + -mem[64] + 64]
                else:
                    mem[floor32(_290) + _286 + 68] = mem[floor32(_290) + _286 + -(_290 % 32) + 100 len _290 % 32]
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                       value stor[_145] wei
                         gas 100000 wei
                        args mem[mem[64] + 4 len floor32(_290) + _286 + -mem[64] + 96]
            else:
                mem[floor32(_223) + _219 + 68] = mem[floor32(_223) + _219 + -(_223 % 32) + 100 len _223 % 32]
                call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                     gas 100000 wei
                    args mem[mem[64] + 4 len floor32(_223) + _219 + -mem[64] + 96]
                _301 = mem[64]
                mem[mem[64] + 36] = msg.sender
                _302 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_302 + 32] = mem[_302 + 36 len 28] or 0x23276f000000000000000000000000000000000000000000000000000000000
                _305 = mem[_302]
                s = 0
                while s < _305:
                    mem[s + _301 + 68] = mem[s + _302 + 32]
                    s = s + 32
                    continue 
                if not _305 % 32:
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                       value stor[_145] wei
                         gas 100000 wei
                        args mem[mem[64] + 4 len _305 + _301 + -mem[64] + 64]
                else:
                    mem[floor32(_305) + _301 + 68] = mem[floor32(_305) + _301 + -(_305 % 32) + 100 len _305 % 32]
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                       value stor[_145] wei
                         gas 100000 wei
                        args mem[mem[64] + 4 len floor32(_305) + _301 + -mem[64] + 96]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = stor[_145]
        emit Migrate(msg.sender, stor[_145], address(_141));
        s = ext_call.return_data[0]
        t = stor[_145]
        t = _141
        idx = idx + 1
        t = ext_call.success
        continue 
    return bool(t)
}



}
