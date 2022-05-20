contract main {




// =====================  Runtime code  =====================


address owner;
uint256 lockedSupply;
mapping of struct releaseTimeOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address fundsWalletAddress;
uint256 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function fundsWallet() {
    return fundsWalletAddress
}

function releaseTimeOf(address arg1) {
    return releaseTimeOf[address(arg1)].field_1024
}

function decimals() {
    return decimals
}

function lockedBalanceOf(address arg1) {
    return releaseTimeOf[address(arg1)].field_256
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function lockedSupply() {
    return lockedSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    require not msg.sender
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeFundsWallet(address arg1) {
    require msg.sender == fundsWalletAddress
    require not stor8
    balanceOf[arg1] = balanceOf[stor7]
    balanceOf[stor7] = 0
    fundsWalletAddress = arg1
    stor8 = 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=1, data=code.data[5849 len 1])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function lockBalance(uint256 arg1, uint256 arg2) {
    require msg.sender
    require arg2 > 0
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require block.timestamp >= releaseTimeOf[address(msg.sender)].field_1024
    require not releaseTimeOf[address(msg.sender)].field_256
    releaseTimeOf[address(msg.sender)].field_512 = block.timestamp
    releaseTimeOf[address(msg.sender)].field_768 = arg1
    releaseTimeOf[address(msg.sender)].field_1024 = arg1 + block.timestamp
    releaseTimeOf[address(msg.sender)].field_256 = arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require releaseTimeOf[address(msg.sender)].field_256 + lockedSupply >= lockedSupply
    lockedSupply += releaseTimeOf[address(msg.sender)].field_256
    emit LockBalance(releaseTimeOf[address(msg.sender)].field_1024, arg2, msg.sender);
}

function releaseLockedBalance() {
    require msg.sender
    require releaseTimeOf[address(msg.sender)].field_256 > 0
    require releaseTimeOf[address(msg.sender)].field_1024 <= block.timestamp
    require releaseTimeOf[address(msg.sender)].field_256 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += releaseTimeOf[address(msg.sender)].field_256
    require releaseTimeOf[address(msg.sender)].field_256 <= lockedSupply
    lockedSupply -= releaseTimeOf[address(msg.sender)].field_256
    emit UnlockBalance(releaseTimeOf[address(msg.sender)].field_1024, releaseTimeOf[address(msg.sender)].field_256, msg.sender);
    releaseTimeOf[address(msg.sender)].field_0 = 0
    releaseTimeOf[address(msg.sender)].field_256 = 0
    releaseTimeOf[address(msg.sender)].field_512 = 0
    releaseTimeOf[address(msg.sender)].field_768 = 0
    releaseTimeOf[address(msg.sender)].field_1024 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    if fundsWalletAddress == arg1:
        require arg3 <= balanceOf[address(arg1)]
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg3, Array(len=1, data=code.data[5849 len 1])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender] - arg3
    allowance[address(arg1)][msg.sender] += -2 * arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    require arg2 > 0
    if ext_code.size(arg1) > 0:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
}

function transferMultiple(address[] arg1, uint256[] arg2, uint256 arg3) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    s = 96
    t = 0
    idx = 0
    u = 0
    while idx < arg3:
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20]
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 128]) <= 0
        require idx < mem[96]
        if ext_code.size(mem[(32 * idx) + 128]) <= 0:
            if idx < mem[(32 * arg1.length) + 128]:
                if mem[(32 * idx) + (32 * arg1.length) + 160] + u >= u:
                    s = s
                    t = t
                    idx = idx + 1
                    u = mem[(32 * idx) + (32 * arg1.length) + 160] + u
                    continue 
        else:
            if idx < mem[96]:
                _70 = mem[(32 * idx) + 128]
                _71 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                mem[_71 + 32] = code.data[5818 len 32]
                if idx < mem[(32 * arg1.length) + 128]:
                    _76 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[_71 + 64] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                    mem[_71 + 68] = msg.sender
                    mem[_71 + 100] = _76
                    mem[_71 + 132] = 96
                    mem[_71 + 164] = mem[_71]
                    s = 0
                    while s < mem[_71]:
                        mem[s + _71 + 196] = mem[s + _71 + 32]
                        s = s + 32
                        continue 
                    if not mem[_71] % 32:
                        require ext_code.size(address(_70))
                        call address(_70).0xc0ee0b8a with:
                             gas gas_remaining wei
                            args msg.sender, _76, 96, mem[_71 + 164 len mem[_71] + 32]
                    else:
                        mem[floor32(mem[_71]) + _71 + 196] = mem[floor32(mem[_71]) + _71 + -(mem[_71] % 32) + 228 len mem[_71] % 32]
                        require ext_code.size(address(_70))
                        call address(_70).0xc0ee0b8a with:
                             gas gas_remaining wei
                            args msg.sender, _76, Array(len=mem[_71], data=mem[_71 + 196 len floor32(mem[_71]) + 32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx < mem[(32 * arg1.length) + 128]:
                        if mem[(32 * idx) + (32 * arg1.length) + 160] + u >= u:
                            s = _71
                            t = _70
                            idx = idx + 1
                            u = mem[(32 * idx) + (32 * arg1.length) + 160] + u
                            continue 
        revert
    mem[0] = msg.sender
    require u <= balanceOf[msg.sender]
    idx = 0
    while idx < arg3:
        require idx < mem[(32 * arg1.length) + 128]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        _116 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[mem[64]], msg.sender, address(_116));
        idx = idx + 1
        continue 
    return 1
}



}
