contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
address owner;
array of struct sub_1c490091;
mapping of uint256 sub_46274950;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor9;
mapping of struct sub_44225d7f;
address sub_cb0c515aAddress;
uint256 sub_d05df8ae;
uint256 sub_24d7252c;
mapping of uint256 sub_de482239;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_1c490091(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_1c490091[arg1].field_0
    return sub_1c490091[arg1][arg2].field_0, sub_1c490091[arg1][arg2].field_256
}

function sub_24d7252c(?) payable {
    return sub_24d7252c
}

function decimals() payable {
    return decimals
}

function sub_44225d7f(?) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(sub_44225d7f[arg1].field_0)), address(sub_44225d7f[arg1].field_0), sub_44225d7f[arg1].field_256
}

function sub_46274950(?) payable {
    require calldata.size - 4 >= 32
    return sub_46274950[arg1]
}

function sub_50b01bda(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= sub_44225d7f[arg1].field_512:
        revert with 0, 'out of range'
    require arg2 < sub_44225d7f[arg1].field_512
    return address(stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_44225d7f', 10))) + arg2].field_0)
}

function paused() payable {
    return bool(stor3)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_79e0ea50(?) payable {
    require calldata.size - 4 >= 32
    return sub_44225d7f[arg1].field_512
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_cb0c515a(?) payable {
    return sub_cb0c515aAddress
}

function sub_d05df8ae(?) payable {
    return sub_d05df8ae
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_de482239(?) payable {
    require calldata.size - 4 >= 32
    return sub_de482239[arg1]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
}

function sub_6b9e8026(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    sub_d05df8ae = arg1
}

function sub_295f5442(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    sub_cb0c515aAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit 0xfeddf252: arg1, msg.sender, 0
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    require -allowance[msg.sender][address(arg1)] - 1 >= arg2
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit 0xfeddf252: arg2, arg1, 0
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_d4761b0b(?) payable {
    require calldata.size - 4 >= 64
    if not address(sub_44225d7f[arg1].field_8):
        revert with 0, 'trxSeq not exist'
    idx = 0
    while idx < sub_44225d7f[arg1].field_512:
        require idx < sub_44225d7f[arg1].field_512
        if address(sub_44225d7f[arg1][idx + 2].field_0) == arg2:
            return 1
        mem[0] = arg1
        mem[32] = 10
        idx = idx + 1
        continue 
    return 0
}

function setSigners(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit 0x5fcbb78b: arg2, address(_19)
        idx = idx + 1
        continue 
}

function sub_925834ef(?) payable {
    require calldata.size - 4 >= 32
    require not stor3
    if address(sub_44225d7f[stor13].field_8):
        revert with 0, 'trxSeq already exist'
    require arg1 <= balanceOf[msg.sender]
    uint8(sub_44225d7f[stor13].field_0) = 0
    Mask(248, 0, sub_44225d7f[stor13].field_8) = Mask(248, 0, msg.sender)
    sub_44225d7f[stor13].field_256 = arg1
    require -sub_24d7252c - 1 >= 1
    sub_24d7252c++
    require -balanceOf[this.address] - 1 >= arg1
    balanceOf[this.address] += arg1
    require arg1 <= balanceOf[address(stor10[stor13].field_0)]
    balanceOf[address(stor10[stor13].field_0)] -= arg1
    require -sub_de482239[address(stor10[stor13].field_0)] - 1 >= arg1
    sub_de482239[address(stor10[stor13].field_0)] += arg1
    emit 0xd6395d68: sub_44225d7f[stor13].field_256, sub_24d7252c, address(sub_44225d7f[stor13].field_8)
    emit 0xfeddf252: arg1, msg.sender, this.address
    return sub_24d7252c
}

function sub_f519a144(?) payable {
    require calldata.size - 4 >= 32
    require stor9[msg.sender]
    if not address(sub_44225d7f[arg1].field_8):
        revert with 0, '_trxSeq not exist'
    if sub_44225d7f[arg1].field_512 >= sub_d05df8ae:
        revert with 0, 'trx already has enough signers'
    if uint8(sub_44225d7f[arg1].field_0):
        revert with 0, 'trx already executed'
    if not address(sub_44225d7f[arg1].field_8):
        revert with 0, 'trxSeq not exist'
    idx = 0
    while idx < sub_44225d7f[arg1].field_512:
        require idx < sub_44225d7f[arg1].field_512
        if address(sub_44225d7f[arg1][idx + 2].field_0) == msg.sender:
            revert with 0, 'signer already confirmed'
        mem[0] = arg1
        mem[32] = 10
        idx = idx + 1
        continue 
    sub_44225d7f[arg1].field_512++
    stor[sub_44225d7f[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_44225d7f', 10)))].field_0 = msg.sender or Mask(96, 160, stor[sub_44225d7f[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_44225d7f', 10)))].field_0)
    emit 0x8c6087d7: msg.sender, arg1
}

function sub_c4684e9d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not sub_1c490091[address(arg1)].field_0:
        return 0
    idx = 0
    s = 0
    while idx < sub_1c490091[address(arg1)].field_0:
        _14 = mem[64]
        mem[64] = mem[64] + 64
        mem[_14] = 0
        mem[_14 + 32] = 0
        mem[32] = 4
        require idx < sub_1c490091[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 4)
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = sub_1c490091[address(arg1)][idx].field_0
        mem[_17 + 32] = sub_1c490091[address(arg1)][idx].field_256
        if not sub_1c490091[address(arg1)][idx].field_256:
            require -idx - 1 >= 1
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < sub_1c490091[address(arg1)][idx].field_256:
            require -idx - 1 >= 1
            idx = idx + 1
            s = s
            continue 
        require -s - 1 >= sub_1c490091[address(arg1)][idx].field_0
        require -idx - 1 >= 1
        idx = idx + 1
        s = sub_1c490091[address(arg1)][idx].field_0 + s
        continue 
    return s
}

function sub_d169dc6b(?) payable {
    require calldata.size - 4 >= 32
    if not address(sub_44225d7f[arg1].field_8):
        revert with 0, '_trxSeq not exist'
    if uint8(sub_44225d7f[arg1].field_0):
        revert with 0, 'trx already executed'
    if not stor9[msg.sender]:
        require msg.sender == address(sub_44225d7f[arg1].field_8)
    require sub_44225d7f[arg1].field_256 <= balanceOf[this.address]
    balanceOf[this.address] -= sub_44225d7f[arg1].field_256
    require -balanceOf[address(stor10[arg1].field_0)] - 1 >= sub_44225d7f[arg1].field_256
    balanceOf[address(stor10[arg1].field_0)] += sub_44225d7f[arg1].field_256
    require sub_44225d7f[arg1].field_256 <= sub_de482239[address(stor10[arg1].field_0)]
    sub_de482239[address(stor10[arg1].field_0)] -= sub_44225d7f[arg1].field_256
    Mask(168, 0, sub_44225d7f[arg1].field_0) = 0
    sub_44225d7f[arg1].field_256 = 0
    sub_44225d7f[arg1].field_512 = 0
    idx = 0
    while sub_44225d7f[arg1].field_512 > idx:
        sub_44225d7f[arg1][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x36dae67a: msg.sender, arg1
    emit 0xfeddf252: sub_44225d7f[arg1].field_256, this.address, address(sub_44225d7f[arg1].field_8)
}

function sub_dd781954(?) payable {
    require calldata.size - 4 >= 32
    require not stor3
    if not address(sub_44225d7f[arg1].field_8):
        revert with 0, 'trxSeq not exist'
    if uint8(sub_44225d7f[arg1].field_0):
        revert with 0, 'trxSeq has executed'
    require sub_44225d7f[arg1].field_512 >= sub_d05df8ae
    if address(sub_44225d7f[arg1].field_8) != msg.sender:
        require stor9[msg.sender]
    require sub_44225d7f[arg1].field_256 <= balanceOf[this.address]
    require this.address
    require sub_44225d7f[arg1].field_256 <= totalSupply
    totalSupply -= sub_44225d7f[arg1].field_256
    require sub_44225d7f[arg1].field_256 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= sub_44225d7f[arg1].field_256
    emit 0xfeddf252: sub_44225d7f[arg1].field_256, this.address, 0
    require sub_44225d7f[arg1].field_256 <= sub_de482239[address(stor10[arg1].field_0)]
    sub_de482239[address(stor10[arg1].field_0)] -= sub_44225d7f[arg1].field_256
    uint8(sub_44225d7f[arg1].field_0) = 1
    require ext_code.size(sub_cb0c515aAddress)
    call sub_cb0c515aAddress.0xc0ee0b8a with:
         gas gas_remaining wei
        args address(sub_44225d7f[arg1].field_0), sub_44225d7f[arg1].field_256, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7d379976: sub_44225d7f[arg1].field_256, 0, address(sub_44225d7f[arg1].field_8)
}

function sub_f0e97390(?) payable {
    require calldata.size - 4 >= 32
    require stor9[msg.sender]
    if not address(sub_44225d7f[arg1].field_8):
        revert with 0, '_trxSeq not exist'
    if not address(sub_44225d7f[arg1].field_8):
        revert with 0, 'trxSeq not exist'
    mem[0] = arg1
    idx = 0
    while idx < sub_44225d7f[arg1].field_512:
        require idx < sub_44225d7f[arg1].field_512
        if address(sub_44225d7f[arg1][idx + 2].field_0) != msg.sender:
            mem[0] = arg1
            mem[32] = 10
            idx = idx + 1
            continue 
        if uint8(sub_44225d7f[arg1].field_0):
            revert with 0, 'trx already executed'
        mem[0] = arg1
        idx = 0
        while idx < sub_44225d7f[arg1].field_512:
            require idx < sub_44225d7f[arg1].field_512
            if address(sub_44225d7f[arg1][idx + 2].field_0) != msg.sender:
                mem[0] = arg1
                mem[32] = 10
                idx = idx + 1
                continue 
            require 1 <= sub_44225d7f[arg1].field_512
            require sub_44225d7f[arg1].field_512 - 1 < sub_44225d7f[arg1].field_512
            require idx < sub_44225d7f[arg1].field_512
            address(sub_44225d7f[arg1][idx + 2].field_0) = address(stor[sub_44225d7f[arg1].field_512 + ('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_44225d7f', 10)))].field_0)
            sub_44225d7f[arg1].field_512--
            if sub_44225d7f[arg1].field_512 > sub_44225d7f[arg1].field_512 - 1:
                mem[0] = sha3(arg1, 10) + 2
                idx = sub_44225d7f[arg1].field_512 + sha3(mem[0]) - 1
                while sha3(sha3(arg1, 10) + 2) + sub_44225d7f[arg1].field_512 > idx:
                    stor[idx] = 0
                    mem[0] = arg1
                    mem[32] = 10
                    idx = idx + 1
                    continue 
            emit 0xdc2bfd08: msg.sender, arg1
        emit 0xdc2bfd08: msg.sender, arg1
    revert with 0, 'Signer didn't confirm'
}

function release(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require not stor3
    if sub_1c490091[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < sub_1c490091[address(arg1)].field_0:
            _11 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11] = 0
            mem[_11 + 32] = 0
            mem[32] = 4
            require idx < sub_1c490091[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            _14 = mem[64]
            mem[64] = mem[64] + 64
            mem[_14] = sub_1c490091[address(arg1)][idx].field_0
            mem[_14 + 32] = sub_1c490091[address(arg1)][idx].field_256
            if not sub_1c490091[address(arg1)][idx].field_256:
                require -idx - 1 >= 1
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < sub_1c490091[address(arg1)][idx].field_256:
                require -idx - 1 >= 1
                idx = idx + 1
                s = s
                continue 
            require -s - 1 >= sub_1c490091[address(arg1)][idx].field_0
            mem[32] = 4
            require idx < sub_1c490091[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            sub_1c490091[address(arg1)][idx].field_0 = 0
            sub_1c490091[address(arg1)][idx].field_256 = 0
            require -idx - 1 >= 1
            idx = idx + 1
            s = sub_1c490091[address(arg1)][idx].field_0 + s
            continue 
        if s:
            require -balanceOf[address(arg1)] - 1 >= s
            balanceOf[address(arg1)] += s
            require s <= sub_46274950[address(arg1)]
            sub_46274950[address(arg1)] -= s
            if not sub_46274950[address(arg1)] - s:
                sub_1c490091[address(arg1)].field_0 = 0
                idx = 0
                while 2 * sub_1c490091[address(arg1)].field_0 > idx:
                    sub_1c490091[address(arg1)][idx].field_0 = 0
                    sub_1c490091[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            emit ReleaseToken(s, arg1);
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == sub_cb0c515aAddress
    require arg1
    require arg2 > 0
    require ext_code.size(sub_cb0c515aAddress)
    staticcall sub_cb0c515aAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require 10^ext_call.return_data[31 len 1]
        require -balanceOf[address(arg1)] - 1 >= 0 / 10^uint8(ext_call.return_data[0])
        balanceOf[address(arg1)] += 0 / 10^uint8(ext_call.return_data[0])
        require -totalSupply - 1 >= 0 / 10^uint8(ext_call.return_data[0])
        totalSupply += 0 / 10^uint8(ext_call.return_data[0])
        mem[ceil32(arg3.length) + 128] = 0 / 10^uint8(ext_call.return_data[0])
        emit Mint(address arg1, uint256 arg2):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  arg1,
        mem[ceil32(arg3.length) + 128] = 0 / 10^uint8(ext_call.return_data[0])
    else:
        require -1 / arg2 >= 10^decimals
        require 10^ext_call.return_data[31 len 1]
        require -balanceOf[address(arg1)] - 1 >= 10^decimals * arg2 / 10^uint8(ext_call.return_data[0])
        balanceOf[address(arg1)] += 10^decimals * arg2 / 10^uint8(ext_call.return_data[0])
        require -totalSupply - 1 >= 10^decimals * arg2 / 10^uint8(ext_call.return_data[0])
        totalSupply += 10^decimals * arg2 / 10^uint8(ext_call.return_data[0])
        mem[ceil32(arg3.length) + 128] = 10^decimals * arg2 / 10^uint8(ext_call.return_data[0])
        emit Mint(address arg1, uint256 arg2):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  arg1,
        mem[ceil32(arg3.length) + 128] = 10^decimals * arg2 / 10^uint8(ext_call.return_data[0])
    emit 0xfeddf252: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], 0, arg1
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 160] = 1
    emit 0x7d379976: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length) + 32], arg1
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if sub_cb0c515aAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xef63616e2774207472616e7366657220746f20416263546f6b656e2061646472657373206469726563746c,
                    mem[207 len 21]
    require not stor3
    if sub_1c490091[address(msg.sender)].field_0:
        idx = 0
        s = 0
        while idx < sub_1c490091[address(msg.sender)].field_0:
            _35 = mem[64]
            mem[64] = mem[64] + 64
            mem[_35] = 0
            mem[_35 + 32] = 0
            mem[32] = 4
            require idx < sub_1c490091[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 4)
            _38 = mem[64]
            mem[64] = mem[64] + 64
            mem[_38] = sub_1c490091[address(msg.sender)][idx].field_0
            mem[_38 + 32] = sub_1c490091[address(msg.sender)][idx].field_256
            if not sub_1c490091[address(msg.sender)][idx].field_256:
                require -idx - 1 >= 1
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < sub_1c490091[address(msg.sender)][idx].field_256:
                require -idx - 1 >= 1
                idx = idx + 1
                s = s
                continue 
            require -s - 1 >= sub_1c490091[address(msg.sender)][idx].field_0
            mem[32] = 4
            require idx < sub_1c490091[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 4)
            sub_1c490091[address(msg.sender)][idx].field_0 = 0
            sub_1c490091[address(msg.sender)][idx].field_256 = 0
            require -idx - 1 >= 1
            idx = idx + 1
            s = sub_1c490091[address(msg.sender)][idx].field_0 + s
            continue 
        if s:
            require -balanceOf[address(msg.sender)] - 1 >= s
            balanceOf[address(msg.sender)] += s
            require s <= sub_46274950[address(msg.sender)]
            sub_46274950[address(msg.sender)] -= s
            if not sub_46274950[address(msg.sender)] - s:
                sub_1c490091[address(msg.sender)].field_0 = 0
                idx = 0
                while 2 * sub_1c490091[address(msg.sender)].field_0 > idx:
                    sub_1c490091[address(msg.sender)][idx].field_0 = 0
                    sub_1c490091[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            emit ReleaseToken(s, msg.sender);
    require not stor3
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require -balanceOf[arg1] - 1 >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if sub_cb0c515aAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xef63616e2774207472616e7366657220746f20416263546f6b656e2061646472657373206469726563746c,
                    mem[207 len 21]
    require not stor3
    if sub_1c490091[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < sub_1c490091[address(arg1)].field_0:
            _47 = mem[64]
            mem[64] = mem[64] + 64
            mem[_47] = 0
            mem[_47 + 32] = 0
            mem[32] = 4
            require idx < sub_1c490091[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            _50 = mem[64]
            mem[64] = mem[64] + 64
            mem[_50] = sub_1c490091[address(arg1)][idx].field_0
            mem[_50 + 32] = sub_1c490091[address(arg1)][idx].field_256
            if not sub_1c490091[address(arg1)][idx].field_256:
                require -idx - 1 >= 1
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < sub_1c490091[address(arg1)][idx].field_256:
                require -idx - 1 >= 1
                idx = idx + 1
                s = s
                continue 
            require -s - 1 >= sub_1c490091[address(arg1)][idx].field_0
            mem[32] = 4
            require idx < sub_1c490091[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            sub_1c490091[address(arg1)][idx].field_0 = 0
            sub_1c490091[address(arg1)][idx].field_256 = 0
            require -idx - 1 >= 1
            idx = idx + 1
            s = sub_1c490091[address(arg1)][idx].field_0 + s
            continue 
        if s:
            require -balanceOf[address(arg1)] - 1 >= s
            balanceOf[address(arg1)] += s
            require s <= sub_46274950[address(arg1)]
            sub_46274950[address(arg1)] -= s
            if not sub_46274950[address(arg1)] - s:
                sub_1c490091[address(arg1)].field_0 = 0
                idx = 0
                while 2 * sub_1c490091[address(arg1)].field_0 > idx:
                    sub_1c490091[address(arg1)][idx].field_0 = 0
                    sub_1c490091[address(arg1)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            emit ReleaseToken(s, arg1);
    require not stor3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require -balanceOf[arg2] - 1 >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xfeddf252: arg3, arg1, arg2
    return 1
}

function transferAndLock(address arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if sub_cb0c515aAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xef63616e2774207472616e7366657220746f20416263546f6b656e2061646472657373206469726563746c,
                    mem[207 len 21]
    require not stor3
    if sub_1c490091[address(msg.sender)].field_0:
        idx = 0
        s = 0
        while idx < sub_1c490091[address(msg.sender)].field_0:
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = 0
            mem[_81 + 32] = 0
            mem[32] = 4
            require idx < sub_1c490091[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 4)
            _84 = mem[64]
            mem[64] = mem[64] + 64
            mem[_84] = sub_1c490091[address(msg.sender)][idx].field_0
            mem[_84 + 32] = sub_1c490091[address(msg.sender)][idx].field_256
            if not sub_1c490091[address(msg.sender)][idx].field_256:
                require -idx - 1 >= 1
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < sub_1c490091[address(msg.sender)][idx].field_256:
                require -idx - 1 >= 1
                idx = idx + 1
                s = s
                continue 
            require -s - 1 >= sub_1c490091[address(msg.sender)][idx].field_0
            mem[32] = 4
            require idx < sub_1c490091[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 4)
            sub_1c490091[address(msg.sender)][idx].field_0 = 0
            sub_1c490091[address(msg.sender)][idx].field_256 = 0
            require -idx - 1 >= 1
            idx = idx + 1
            s = sub_1c490091[address(msg.sender)][idx].field_0 + s
            continue 
        if s:
            require -balanceOf[address(msg.sender)] - 1 >= s
            balanceOf[address(msg.sender)] += s
            require s <= sub_46274950[address(msg.sender)]
            sub_46274950[address(msg.sender)] -= s
            if not sub_46274950[address(msg.sender)] - s:
                sub_1c490091[address(msg.sender)].field_0 = 0
                idx = 0
                while 2 * sub_1c490091[address(msg.sender)].field_0 > idx:
                    sub_1c490091[address(msg.sender)][idx].field_0 = 0
                    sub_1c490091[address(msg.sender)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            emit ReleaseToken(s, msg.sender);
    require arg1
    require arg2
    require arg3
    if not arg3:
        require -block.timestamp - 1 >= 0
        sub_1c490091[address(arg1)].field_0++
        sub_1c490091[address(arg1)][sub_1c490091[address(arg1)].field_0].field_0 = arg2
        sub_1c490091[address(arg1)][sub_1c490091[address(arg1)].field_0].field_256 = block.timestamp
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require -sub_46274950[address(arg1)] - 1 >= arg2
        sub_46274950[address(arg1)] += arg2
        emit 0xfeddf252: arg2, msg.sender, arg1
        emit LockToken(arg2, block.timestamp, arg1);
    else:
        require -1 / arg3 >= 24 * 3600
        require -block.timestamp - 1 >= 24 * 3600 * arg3
        sub_1c490091[address(arg1)].field_0++
        sub_1c490091[address(arg1)][sub_1c490091[address(arg1)].field_0].field_0 = arg2
        sub_1c490091[address(arg1)][sub_1c490091[address(arg1)].field_0].field_256 = (24 * 3600 * arg3) + block.timestamp
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require -sub_46274950[address(arg1)] - 1 >= arg2
        sub_46274950[address(arg1)] += arg2
        emit 0xfeddf252: arg2, msg.sender, arg1
        emit LockToken(arg2, (24 * 3600 * arg3) + block.timestamp, arg1);
    return 1
}



}
