contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint8 stor3; offset 176
uint128 stor3; offset 176
uint128 stor3; offset 168
address owner;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function plockFlag() {
    return bool(uint8(stor3.field_176))
}

function decimals() {
    return decimals
}

function transferEnabled() {
    return bool(uint8(stor3.field_168))
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function removeLock(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
    return 1
}

function setExclude(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 1
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function enableTransfer(bool arg1) {
    require msg.sender == owner
    Mask(88, 0, stor3.field_168) = Mask(88, 0, arg1)
}

function enableLockFlag(bool arg1) {
    require msg.sender == owner
    Mask(80, 0, stor3.field_176) = Mask(80, 0, arg1)
    return 1
}

function addLock(address arg1) {
    require msg.sender == owner
    require arg1 != msg.sender
    stor4[address(arg1)] = 1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function withdrawEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
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

function approve(address arg1, uint256 arg2) {
    if not stor5[msg.sender]:
        require uint8(stor3.field_168)
        if uint8(stor3.field_176):
            require not stor4[address(msg.sender)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor5[msg.sender]:
        require uint8(stor3.field_168)
        if uint8(stor3.field_176):
            require not stor4[address(msg.sender)]
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor5[msg.sender]:
        require uint8(stor3.field_168)
        if uint8(stor3.field_176):
            require not stor4[address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function allocateTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    if arg1.length != arg2.length:
        revert with 0, 'data length mismatch'
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _25 = mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * arg1.length) + (32 * idx) + 160] <= balanceOf[address(msg.sender)]
        require mem[(32 * arg1.length) + (32 * idx) + 160] + balanceOf[address(mem[(32 * idx) + 128])] >= balanceOf[address(mem[(32 * idx) + 128])]
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * arg1.length) + (32 * idx) + 160] <= balanceOf[msg.sender]
        mem[32] = 0
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] - mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[0] = msg.sender
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_23));
        s = _25
        s = _23
        idx = idx + 1
        continue 
}



}
