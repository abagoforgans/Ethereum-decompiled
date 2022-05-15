contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of struct name;
array of struct symbol;
uint8 decimals;
uint256 stor7;
uint256 cap;
uint8 stor9;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function canBuy() {
    return bool(stor9)
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function pauseBuy() {
    require msg.sender == owner
    stor9 = 0
    emit PauseBuy()
}

function unPauseBuy() {
    require msg.sender == owner
    stor9 = 1
    emit UnPauseBuy()
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function saleRatio() {
    if not cap:
        return 0
    if not totalSupply:
        if cap:
            return (0 / cap)
    else:
        if totalSupply:
            if 10000 * totalSupply / totalSupply == 10000:
                if cap:
                    return (10000 * totalSupply / cap)
    revert
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function increaseCap(int256 arg1) {
    require msg.sender == owner
    require arg1
    if arg1 > 0:
        if not stor7:
            require cap >= cap
        else:
            require stor7
            require stor7 * arg1 / stor7 == arg1
            require cap + (stor7 * arg1) >= cap
            cap += stor7 * arg1
    else:
        if not stor7:
            if 0 < cap - totalSupply:
                require 0 <= cap
            else:
                cap = totalSupply
        else:
            require stor7
            require -1 * stor7 * arg1 / stor7 == -arg1
            if -1 * stor7 * arg1 >= cap - totalSupply:
                cap = totalSupply
            else:
                require -1 * stor7 * arg1 <= cap
                cap += test266151307() * stor7 * arg1
    emit IncreaseCap(cap, arg1);
}

function buyTokens(address arg1) payable {
    require stor9
    require msg.value >= 10^13
    require arg1
    if not msg.value:
        require totalSupply >= totalSupply
        require totalSupply <= cap
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Mint(0, arg1);
        emit Transfer(0, 0, arg1);
    else:
        require msg.value
        require msg.value * stor7 / msg.value == stor7
        require totalSupply + (msg.value * stor7 / 10^18) >= totalSupply
        totalSupply += msg.value * stor7 / 10^18
        require totalSupply <= cap
        require balanceOf[address(arg1)] + (msg.value * stor7 / 10^18) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value * stor7 / 10^18
        emit Mint((msg.value * stor7 / 10^18), arg1);
        emit Transfer((msg.value * stor7 / 10^18), 0, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require stor9
    require msg.value >= 10^13
    require msg.sender
    if not msg.value:
        require totalSupply >= totalSupply
        require totalSupply <= cap
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Mint(0, msg.sender);
        emit Transfer(0, 0, msg.sender);
    else:
        require msg.value
        require msg.value * stor7 / msg.value == stor7
        require totalSupply + (msg.value * stor7 / 10^18) >= totalSupply
        totalSupply += msg.value * stor7 / 10^18
        require totalSupply <= cap
        require balanceOf[address(msg.sender)] + (msg.value * stor7 / 10^18) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * stor7 / 10^18
        emit Mint((msg.value * stor7 / 10^18), msg.sender);
        emit Transfer((msg.value * stor7 / 10^18), 0, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function newProject(string arg1, string arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 > 0
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    if not arg3:
        cap = 0
    else:
        require arg3
        require arg3 * stor7 / arg3 == stor7
        cap = arg3 * stor7
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = uint256(name.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + 288 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288] = symbol.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 320] = uint256(symbol.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 320
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + 320 > idx + 32:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit NewProject(Array(len=name.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 32]), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 128, cap);
}



}
