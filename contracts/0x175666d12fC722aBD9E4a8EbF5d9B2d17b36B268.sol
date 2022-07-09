contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor4;
uint8 stor5;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor9;
uint256 cap;
array of address stor12;
mapping of uint8 stor13;

function name() {
    return name[0 len name.length]
}

function getAccountsLength() {
    require msg.sender == owner
    return stor12.length
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

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor4[address(arg1)])
}

function paused() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor9[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function isOwner() {
    return (msg.sender == owner)
}

function _fallback() payable {
    revert with 0, 'Invalid ether transfer'
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor4[address(msg.sender)]
    require stor5
    stor5 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor4[address(msg.sender)]
    require not stor5
    stor5 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor4[address(msg.sender)]
    stor4[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor9[address(msg.sender)]
    stor9[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor5
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor4[address(msg.sender)]
    require arg1
    require not stor4[address(arg1)]
    stor4[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor9[address(msg.sender)]
    require arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor5
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor5
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor9[address(msg.sender)]
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= cap
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor5
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if stor13[address(msg.sender)]:
        if not stor13[address(arg1)]:
            if balanceOf[address(arg1)] > 0:
                stor12.length++
                stor12[stor12.length] = arg1
                stor13[address(arg1)] = 1
    else:
        if balanceOf[address(msg.sender)] > 0:
            stor12.length++
            stor12[stor12.length] = msg.sender
            stor13[address(msg.sender)] = 1
        if not stor13[address(arg1)]:
            if balanceOf[address(arg1)] > 0:
                stor12.length++
                stor12[stor12.length] = arg1
                stor13[address(arg1)] = 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor5
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    if stor13[address(arg1)]:
        if not stor13[address(arg2)]:
            if balanceOf[address(arg2)] > 0:
                stor12.length++
                stor12[stor12.length] = arg2
                stor13[address(arg2)] = 1
    else:
        if balanceOf[address(arg1)] > 0:
            stor12.length++
            stor12[stor12.length] = arg1
            stor13[address(arg1)] = 1
        if not stor13[address(arg2)]:
            if balanceOf[address(arg2)] > 0:
                stor12.length++
                stor12[stor12.length] = arg2
                stor13[address(arg2)] = 1
    return 1
}

function getAccounts(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 > arg2:
        revert with 0, 'Array index out of bounds'
    if arg2 >= stor12.length:
        revert with 0, 'Array index out of bounds'
    require arg1 <= arg2
    mem[96] = arg2 + -arg1 + 1
    if not arg2 + -arg1 + 1:
        mem[(32 * arg2 + -arg1 + 1) + 128] = arg2 + -arg1 + 1
        idx = arg1
        while idx <= arg2:
            require idx < stor12.length
            mem[0] = stor12[idx]
            mem[32] = 1
            if balanceOf[stor12[idx]] > 0:
                require idx < mem[(32 * arg2 + -arg1 + 1) + 128]
                mem[(32 * arg2 + -arg1 + 1) + (32 * idx) + 160] = balanceOf[stor12[idx]]
                require idx < arg2 + -arg1 + 1
                mem[(32 * idx) + 128] = stor12[idx]
            idx = idx + 1
            continue 
        mem[(64 * arg2 + -arg1 + 1) + 160] = 64
        mem[(64 * arg2 + -arg1 + 1) + 224] = arg2 + -arg1 + 1
        mem[(64 * arg2 + -arg1 + 1) + 256 len floor32(arg2 + -arg1 + 1)] = mem[128 len floor32(arg2 + -arg1 + 1)]
        mem[(64 * arg2 + -arg1 + 1) + 192] = (32 * arg2 + -arg1 + 1) + 96
        mem[(98 * arg2) + (-98 * arg1) + 354] = mem[(32 * arg2 + -arg1 + 1) + 128]
        _57 = mem[(32 * arg2 + -arg1 + 1) + 128]
        mem[(98 * arg2) + (-98 * arg1) + 386 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])] = mem[(32 * arg2 + -arg1 + 1) + 160 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])]
        return memory
          from (64 * arg2 + -arg1 + 1) + 160
           len (32 * _57) + (161 * arg2) + (-161 * arg1) + 289
    mem[128 len 32 * arg2 + -arg1 + 1] = code.data[5630 len 32 * arg2 + -arg1 + 1]
    mem[(32 * arg2 + -arg1 + 1) + 128] = arg2 + -arg1 + 1
    mem[(32 * arg2 + -arg1 + 1) + 160 len 32 * arg2 + -arg1 + 1] = code.data[5630 len 32 * arg2 + -arg1 + 1]
    idx = arg1
    while idx <= arg2:
        require idx < stor12.length
        mem[0] = stor12[idx]
        mem[32] = 1
        if balanceOf[stor12[idx]] > 0:
            require idx < mem[(32 * arg2 + -arg1 + 1) + 128]
            mem[(32 * arg2 + -arg1 + 1) + (32 * idx) + 160] = balanceOf[stor12[idx]]
            require idx < arg2 + -arg1 + 1
            mem[(32 * idx) + 128] = stor12[idx]
        idx = idx + 1
        continue 
    mem[(64 * arg2 + -arg1 + 1) + 160] = 64
    mem[(64 * arg2 + -arg1 + 1) + 224] = arg2 + -arg1 + 1
    mem[(64 * arg2 + -arg1 + 1) + 256 len floor32(arg2 + -arg1 + 1)] = mem[128 len floor32(arg2 + -arg1 + 1)]
    mem[(64 * arg2 + -arg1 + 1) + 192] = (32 * arg2 + -arg1 + 1) + 96
    mem[(98 * arg2) + (-98 * arg1) + 354] = mem[(32 * arg2 + -arg1 + 1) + 128]
    _60 = mem[(32 * arg2 + -arg1 + 1) + 128]
    mem[(98 * arg2) + (-98 * arg1) + 386 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])] = mem[(32 * arg2 + -arg1 + 1) + 160 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])]
    return memory
      from (64 * arg2 + -arg1 + 1) + 160
       len (32 * _60) + (161 * arg2) + (-161 * arg1) + 289
}



}
