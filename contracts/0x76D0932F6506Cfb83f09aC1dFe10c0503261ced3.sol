contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
address stor7;
address stor7; offset 8
address stor8;
mapping of uint256 stor9;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 20
    stor2.length.field_8 = 'WorldReligionNetwork' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'WRN' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    stor5 = 3 * 10^18
    stor6 = 0
    uint8(stor7.field_0) = 0
    address(stor7.field_8) = 0x94ba9a1a0d37f2245504a99b477a0ce9a69c64fb
    stor8 = 0x666c5af729121325cddeef0e41049f3fdc2a5b60
    stor1 = msg.sender
    stor1 = stor8
    if not stor5:
        stor9[address(stor7.field_0)] = 0
    else:
        require stor5
        require 60 * stor5 / stor5 == 60
        stor9[address(stor7.field_0)] = 60 * stor5 / 100
    if not stor5:
        stor9[stor8] = 0
    else:
        require stor5
        require 40 * stor5 / stor5 == 40
        stor9[stor8] = 40 * stor5 / 100
    return code.data[1202 len 16914]
}



// =====================  Runtime code  =====================


const AAcontributors = 'WRN'


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 distributeAmount;
uint8 mintingFinished;
address founderAddress; offset 8
address activityFundsAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of uint256 unlockUnixTime;

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function founder() {
    return founderAddress
}

function distributeAmount() {
    return distributeAmount
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function activityFunds() {
    return activityFundsAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function unlockUnixTime(address arg1) {
    return unlockUnixTime[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setDistributeAmount(uint256 arg1) {
    require msg.sender == owner
    distributeAmount = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not mintingFinished
    mintingFinished = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not mintingFinished
    require arg2 > 0
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function freezeAccounts(address[] arg1, bool arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit FrozenFunds(arg2, address(_20));
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require distributeAmount > 0
    require balanceOf[stor8] >= distributeAmount
    require not stor11[address(msg.sender)]
    require block.timestamp > unlockUnixTime[address(msg.sender)]
    if msg.value > 0:
        call activityFundsAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require distributeAmount <= balanceOf[stor8]
    balanceOf[stor8] -= distributeAmount
    require balanceOf[address(msg.sender)] + distributeAmount >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += distributeAmount
    emit Transfer(distributeAmount, activityFundsAddress, msg.sender);
}

function autoDistribute() payable {
    require distributeAmount > 0
    require balanceOf[stor8] >= distributeAmount
    require not stor11[address(msg.sender)]
    require block.timestamp > unlockUnixTime[address(msg.sender)]
    if msg.value > 0:
        call activityFundsAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require distributeAmount <= balanceOf[stor8]
    balanceOf[stor8] -= distributeAmount
    require balanceOf[address(msg.sender)] + distributeAmount >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += distributeAmount
    emit Transfer(distributeAmount, activityFundsAddress, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
    require block.timestamp > unlockUnixTime[address(arg1)]
    require block.timestamp > unlockUnixTime[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    require block.timestamp > unlockUnixTime[address(msg.sender)]
    require block.timestamp > unlockUnixTime[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1, sha3(None));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function lockupAccounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require unlockUnixTime[mem[(32 * idx) + 140 len 20]] < mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        unlockUnixTime[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _35 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit LockedFunds(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_35));
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg2 > 0
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    require block.timestamp > unlockUnixTime[address(msg.sender)]
    require block.timestamp > unlockUnixTime[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function distributeAirdrop(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require arg1.length == arg2.length
    require not stor11[address(msg.sender)]
    require block.timestamp > unlockUnixTime[address(msg.sender)]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        require not stor11[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        require block.timestamp > unlockUnixTime[mem[(32 * idx) + 140 len 20]]
        require idx < arg2.length
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            if idx < arg2.length:
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                if idx < arg2.length:
                    if s >= s:
                        idx = idx + 1
                        s = s
                        continue 
        else:
            if mem[(32 * idx) + (32 * arg1.length) + 160]:
                if 100 * 10^6 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 100 * 10^6:
                    if idx < arg2.length:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 100 * 10^6 * mem[(32 * idx) + (32 * arg1.length) + 160]
                        if idx < arg2.length:
                            if s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s:
                                idx = idx + 1
                                s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
        revert
    require balanceOf[address(msg.sender)] >= s
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _100 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_100));
        idx = idx + 1
        continue 
    require s <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= s
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require arg2 > 0
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    require block.timestamp > unlockUnixTime[address(msg.sender)]
    require block.timestamp > unlockUnixTime[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[ceil32(arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 160 len arg4.length % 32]))
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = msg.sender
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            call arg1.mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 4] with:
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            call arg1.mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 4] with:
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
        require ext_call.success
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function collectTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        require not stor11[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        require block.timestamp > unlockUnixTime[mem[(32 * idx) + 140 len 20]]
        require idx < arg2.length
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            require idx < arg2.length
            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
            require idx < arg2.length
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] >= 0
            require idx < arg2.length
            require idx < arg1.length
            require 0 <= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 9
            require idx < arg2.length
            require s >= s
            require idx < arg1.length
            _117 = mem[(32 * idx) + 128]
            require idx < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
            emit Transfer(0, address(_117), msg.sender);
            idx = idx + 1
            s = s
            continue 
        require mem[(32 * idx) + (32 * arg1.length) + 160]
        require 100 * 10^6 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 100 * 10^6
        require idx < arg2.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = 100 * 10^6 * mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        balanceOf[mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        _115 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        require idx < arg1.length
        _123 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_123), msg.sender);
        idx = idx + 1
        s = s + _115
        continue 
    require balanceOf[address(msg.sender)] + s >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += s
    return 1
}

function distributeAirdrop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 > 0
    require arg1.length > 0
    require not stor11[address(msg.sender)]
    require block.timestamp > unlockUnixTime[address(msg.sender)]
    if not arg2:
        require balanceOf[address(msg.sender)] >= 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            require not stor11[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            require block.timestamp > unlockUnixTime[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 9
            require idx < arg1.length
            _145 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = 0
            emit Transfer(0, msg.sender, address(_145));
            idx = idx + 1
            continue 
        if 0 <= balanceOf[address(msg.sender)]:
            return 1
        revert
    require arg2
    require 100 * 10^6 * arg2 / arg2 == 100 * 10^6
    if not 100 * 10^6 * arg2:
        require balanceOf[address(msg.sender)] >= 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            require not stor11[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            require block.timestamp > unlockUnixTime[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] + (100 * 10^6 * arg2) >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 9
            balanceOf[mem[(32 * idx) + 140 len 20]] += 100 * 10^6 * arg2
            require idx < arg1.length
            _142 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = 100 * 10^6 * arg2
            emit Transfer((100 * 10^6 * arg2), msg.sender, address(_142));
            idx = idx + 1
            continue 
        if 0 <= balanceOf[address(msg.sender)]:
            return 1
        revert
    require 100 * 10^6 * arg2
    require 100 * 10^6 * arg2 * arg1.length / 100 * 10^6 * arg2 == arg1.length
    require balanceOf[address(msg.sender)] >= 100 * 10^6 * arg2 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        require not stor11[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        require block.timestamp > unlockUnixTime[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + (100 * 10^6 * arg2) >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        balanceOf[mem[(32 * idx) + 140 len 20]] += 100 * 10^6 * arg2
        require idx < arg1.length
        _139 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 100 * 10^6 * arg2
        emit Transfer((100 * 10^6 * arg2), msg.sender, address(_139));
        idx = idx + 1
        continue 
    require 100 * 10^6 * arg2 * arg1.length <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -100 * 10^6 * arg2 * arg1.length
    return 1
}



}
