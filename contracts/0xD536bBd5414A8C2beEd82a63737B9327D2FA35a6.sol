contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
mapping of uint8 stor6;
uint8 stor9; offset 160
uint128 stor9; offset 160
address sub_9a24a7ecAddress;
uint256 stor10;
uint256 stor11;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function blackList(address arg1) {
    return bool(stor6[arg1])
}

function paused() {
    return bool(uint8(stor3.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function saleEnabled() {
    return bool(uint8(stor9.field_160))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9a24a7ec(?) {
    return sub_9a24a7ecAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setEthPrice(uint256 arg1) {
    require msg.sender == owner
    stor10 = arg1
}

function setAicPrice(uint256 arg1) {
    require msg.sender == owner
    stor11 = arg1
}

function addBlackListAddress(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function removeBlackListAddress(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
}

function sub_dd00bb63(?) {
    require msg.sender == owner
    Mask(96, 0, stor9.field_160) = Mask(96, 0, arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    stor10 = arg1
    stor11 = arg2
}

function resumeMinting() {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = 0
    emit MintResumed()
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_168)
    Mask(88, 0, stor3.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    Mask(88, 0, stor3.field_168) = 1
    emit Pause()
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

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function sub_c1bf01dd(?) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor3.field_168):
        require msg.sender == owner
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
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
    if owner != msg.sender:
        require not uint8(stor3.field_168)
        require not stor6[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 0
}

function bulkTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _41 = mem[(32 * idx) + 128]
        require idx < arg2.length
        if msg.sender == owner:
            require mem[(32 * idx) + 140 len 20]
            require balanceOf[address(msg.sender)] >= mem[(32 * idx) + (32 * arg1.length) + 160]
            if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * idx) + 128])]
                _51 = sha3(address(mem[(32 * idx) + 128]), 0)
                if balanceOf[address(msg.sender)] + balanceOf[address(mem[(32 * idx) + 128])] >= balanceOf[address(msg.sender)]:
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_41));
                            mem[0] = msg.sender
                            mem[32] = 0
                            if balanceOf[address(msg.sender)] + balanceOf[address(_41)] >= balanceOf[address(msg.sender)]:
                                if balanceOf[address(msg.sender)] + balanceOf[address(_41)] == balanceOf[address(msg.sender)] + stor[_51]:
                                    idx = idx + 1
                                    continue 
        else:
            require not uint8(stor3.field_168)
            require not stor6[address(msg.sender)]
            require mem[(32 * idx) + 140 len 20]
            require balanceOf[address(msg.sender)] >= mem[(32 * idx) + (32 * arg1.length) + 160]
            if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * idx) + 128])]
                _54 = sha3(address(mem[(32 * idx) + 128]), 0)
                if balanceOf[address(msg.sender)] + balanceOf[address(mem[(32 * idx) + 128])] >= balanceOf[address(msg.sender)]:
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        if balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]:
                            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_41));
                            mem[0] = msg.sender
                            mem[32] = 0
                            if balanceOf[address(msg.sender)] + balanceOf[address(_41)] >= balanceOf[address(msg.sender)]:
                                if balanceOf[address(msg.sender)] + balanceOf[address(_41)] == balanceOf[address(msg.sender)] + stor[_54]:
                                    idx = idx + 1
                                    continue 
        revert
    return 1
}

function buyTokens(address arg1) payable {
    if not uint8(stor9.field_160):
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not stor11:
            require stor10
            require 0 / stor10
            if not msg.value / 0 / stor10:
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] < totalSupply:
                    require arg1
                    require balanceOf[address(stor3.field_0)] >= 0
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] > balanceOf[address(arg1)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] >= balanceOf[address(stor3.field_0)]
                    require 0 <= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit Transfer(0, owner, arg1);
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] >= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] == balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)]
                    call sub_9a24a7ecAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require msg.value / 0 / stor10
                require 10^18 * msg.value / 0 / stor10 / msg.value / 0 / stor10 == 10^18
                require balanceOf[address(arg1)] + (10^18 * msg.value / 0 / stor10) >= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] + (10^18 * msg.value / 0 / stor10) < totalSupply:
                    require arg1
                    require balanceOf[address(stor3.field_0)] >= 10^18 * msg.value / 0 / stor10
                    require balanceOf[address(arg1)] + (10^18 * msg.value / 0 / stor10) >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] + (10^18 * msg.value / 0 / stor10) > balanceOf[address(arg1)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] >= balanceOf[address(stor3.field_0)]
                    require 10^18 * msg.value / 0 / stor10 <= balanceOf[address(stor3.field_0)]
                    balanceOf[address(stor3.field_0)] += -1 * 10^18 * msg.value / 0 / stor10
                    require balanceOf[address(arg1)] + (10^18 * msg.value / 0 / stor10) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 10^18 * msg.value / 0 / stor10
                    emit Transfer((10^18 * msg.value / 0 / stor10), owner, arg1);
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] >= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] == balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)]
                    call sub_9a24a7ecAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require stor11
            require 10^17 * stor11 / stor11 == 10^17
            require stor10
            require 10^17 * stor11 / stor10
            if not msg.value / 10^17 * stor11 / stor10:
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] < totalSupply:
                    require arg1
                    require balanceOf[address(stor3.field_0)] >= 0
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] > balanceOf[address(arg1)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] >= balanceOf[address(stor3.field_0)]
                    require 0 <= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit Transfer(0, owner, arg1);
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] >= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] == balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)]
                    call sub_9a24a7ecAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require msg.value / 10^17 * stor11 / stor10
                require 10^18 * msg.value / 10^17 * stor11 / stor10 / msg.value / 10^17 * stor11 / stor10 == 10^18
                require balanceOf[address(arg1)] + (10^18 * msg.value / 10^17 * stor11 / stor10) >= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] + (10^18 * msg.value / 10^17 * stor11 / stor10) < totalSupply:
                    require arg1
                    require balanceOf[address(stor3.field_0)] >= 10^18 * msg.value / 10^17 * stor11 / stor10
                    require balanceOf[address(arg1)] + (10^18 * msg.value / 10^17 * stor11 / stor10) >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] + (10^18 * msg.value / 10^17 * stor11 / stor10) > balanceOf[address(arg1)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] >= balanceOf[address(stor3.field_0)]
                    require 10^18 * msg.value / 10^17 * stor11 / stor10 <= balanceOf[address(stor3.field_0)]
                    balanceOf[address(stor3.field_0)] += -1 * 10^18 * msg.value / 10^17 * stor11 / stor10
                    require balanceOf[address(arg1)] + (10^18 * msg.value / 10^17 * stor11 / stor10) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 10^18 * msg.value / 10^17 * stor11 / stor10
                    emit Transfer((10^18 * msg.value / 10^17 * stor11 / stor10), owner, arg1);
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] >= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)] == balanceOf[address(stor3.field_0)] + balanceOf[address(arg1)]
                    call sub_9a24a7ecAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not uint8(stor9.field_160):
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not stor11:
            require stor10
            require 0 / stor10
            if not msg.value / 0 / stor10:
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] < totalSupply:
                    require msg.sender
                    require balanceOf[address(stor3.field_0)] >= 0
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] >= balanceOf[address(stor3.field_0)]
                    require 0 <= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Transfer(0, owner, msg.sender);
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] >= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] == balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)]
                    call sub_9a24a7ecAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require msg.value / 0 / stor10
                require 10^18 * msg.value / 0 / stor10 / msg.value / 0 / stor10 == 10^18
                require balanceOf[address(msg.sender)] + (10^18 * msg.value / 0 / stor10) >= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] + (10^18 * msg.value / 0 / stor10) < totalSupply:
                    require msg.sender
                    require balanceOf[address(stor3.field_0)] >= 10^18 * msg.value / 0 / stor10
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 0 / stor10) >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 0 / stor10) > balanceOf[address(msg.sender)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] >= balanceOf[address(stor3.field_0)]
                    require 10^18 * msg.value / 0 / stor10 <= balanceOf[address(stor3.field_0)]
                    balanceOf[address(stor3.field_0)] += -1 * 10^18 * msg.value / 0 / stor10
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 0 / stor10) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 0 / stor10
                    emit Transfer((10^18 * msg.value / 0 / stor10), owner, msg.sender);
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] >= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] == balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)]
                    call sub_9a24a7ecAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require stor11
            require 10^17 * stor11 / stor11 == 10^17
            require stor10
            require 10^17 * stor11 / stor10
            if not msg.value / 10^17 * stor11 / stor10:
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] < totalSupply:
                    require msg.sender
                    require balanceOf[address(stor3.field_0)] >= 0
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] >= balanceOf[address(stor3.field_0)]
                    require 0 <= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Transfer(0, owner, msg.sender);
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] >= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] == balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)]
                    call sub_9a24a7ecAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require msg.value / 10^17 * stor11 / stor10
                require 10^18 * msg.value / 10^17 * stor11 / stor10 / msg.value / 10^17 * stor11 / stor10 == 10^18
                require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^17 * stor11 / stor10) >= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^17 * stor11 / stor10) < totalSupply:
                    require msg.sender
                    require balanceOf[address(stor3.field_0)] >= 10^18 * msg.value / 10^17 * stor11 / stor10
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^17 * stor11 / stor10) >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^17 * stor11 / stor10) > balanceOf[address(msg.sender)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] >= balanceOf[address(stor3.field_0)]
                    require 10^18 * msg.value / 10^17 * stor11 / stor10 <= balanceOf[address(stor3.field_0)]
                    balanceOf[address(stor3.field_0)] += -1 * 10^18 * msg.value / 10^17 * stor11 / stor10
                    require balanceOf[address(msg.sender)] + (10^18 * msg.value / 10^17 * stor11 / stor10) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 10^17 * stor11 / stor10
                    emit Transfer((10^18 * msg.value / 10^17 * stor11 / stor10), owner, msg.sender);
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] >= balanceOf[address(stor3.field_0)]
                    require balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)] == balanceOf[address(stor3.field_0)] + balanceOf[address(msg.sender)]
                    call sub_9a24a7ecAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
