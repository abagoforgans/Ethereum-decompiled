contract main {




// =====================  Runtime code  =====================


const MAX_UINT = -1


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function getBlackListStatus(address arg1) {
    return bool(stor4[address(arg1)])
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function isBlackListed(address arg1) {
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function addBlackList(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
    emit AddedBlackList(arg1);
}

function removeBlackList(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
    emit RemovedBlackList(arg1);
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function redeem(uint256 arg1) {
    require msg.sender == owner
    require _totalSupply >= arg1
    require balances[address(stor0.field_0)] >= arg1
    _totalSupply -= arg1
    balances[address(stor0.field_0)] -= arg1
    emit Redeem(arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function destroyBlackFunds(address arg1) {
    require msg.sender == owner
    require stor4[address(arg1)]
    balances[address(arg1)] = 0
    _totalSupply -= balances[address(arg1)]
    emit DestroyedBlackFunds(address(arg1), balances[address(arg1)]);
}

function issue(uint256 arg1) {
    require msg.sender == owner
    require _totalSupply + arg1 > _totalSupply
    require balances[address(stor0.field_0)] + arg1 > balances[address(stor0.field_0)]
    balances[address(stor0.field_0)] += arg1
    _totalSupply += arg1
    emit Issue(arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require not stor4[address(msg.sender)]
    require calldata.size >= 68
    require balances[address(msg.sender)] >= arg2
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require not stor4[address(arg1)]
    require calldata.size >= 100
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require balances[address(arg1)] >= arg3
    if allowed[address(arg1)][address(msg.sender)] < -1:
        require arg3 <= allowed[address(arg1)][address(msg.sender)]
        allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function batchTransfer(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not uint8(stor0.field_160)
    require msg.sender == owner
    require calldata.size >= 68
    if not arg2:
        require arg1.length > 0
        require arg1.length <= 100
        require arg2 > 0
        require balances[address(msg.sender)] >= arg2 * arg1.length
        require arg2 * arg1.length <= balances[address(msg.sender)]
        balances[address(msg.sender)] += -1 * arg2 * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require balances[mem[(32 * idx) + 140 len 20]] + arg2 >= balances[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            balances[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _51 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_51));
            idx = idx + 1
            continue 
    else:
        require arg2
        require arg2 * arg1.length / arg2 == arg1.length
        require arg1.length > 0
        require arg1.length <= 100
        require arg2 > 0
        require balances[address(msg.sender)] >= arg2 * arg1.length
        require arg2 * arg1.length <= balances[address(msg.sender)]
        balances[address(msg.sender)] += -1 * arg2 * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require balances[mem[(32 * idx) + 140 len 20]] + arg2 >= balances[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            balances[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _54 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_54));
            idx = idx + 1
            continue 
    return 1
}



}
