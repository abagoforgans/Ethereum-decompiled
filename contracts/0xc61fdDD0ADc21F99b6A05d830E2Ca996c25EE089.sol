contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor0;
mapping of uint8 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint256 stor2; offset 8
array of uint256 name;
array of uint256 symbol;
array of uint256 currency;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(paused)
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

function currency() {
    return currency[0 len currency.length]
}

function isBlacklisted(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function pause() {
    require msg.sender == owner
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    require msg.sender == owner
    paused = 0
    emit Unpaused(msg.sender);
}

function renounceOwnership() {
    require msg.sender == owner
    owner = 0
    emit OwnershipTransferred(msg.sender, 0);
}

function blacklist(address arg1) {
    require msg.sender == owner
    require not paused
    stor1[address(arg1)] = 1
    emit Blacklisted(arg1);
}

function unblacklist(address arg1) {
    require msg.sender == owner
    require not paused
    stor1[address(arg1)] = 0
    emit Unblacklisted(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function approve(address arg1, uint256 arg2) {
    require not paused
    require not stor1[msg.sender]
    require not stor1[address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not paused
    require not stor1[msg.sender]
    require not stor1[address(arg1)]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not paused
    require not stor1[msg.sender]
    require not stor1[address(arg1)]
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not paused
    require not stor1[msg.sender]
    require not stor1[address(arg1)]
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require not paused
    require msg.sender == owner
    if not arg1:
        require 0 <= totalSupply
        require 0 <= balanceOf[msg.sender]
        emit Transfer(0, msg.sender, 0);
    else:
        require uint8(10^decimals) * arg1 / arg1 == uint8(10^decimals)
        require uint8(10^decimals) * arg1 <= totalSupply
        totalSupply += -1 * uint8(10^decimals) * arg1
        require uint8(10^decimals) * arg1 <= balanceOf[msg.sender]
        balanceOf[msg.sender] += -1 * uint8(10^decimals) * arg1
        emit Transfer((uint8(10^decimals) * arg1), msg.sender, 0);
}

function initialize(string arg1, string arg2, string arg3, uint8 arg4) {
    if not uint8(stor2.field_8):
        if ext_code.size(this.address):
            if uint8(stor2.field_0):
                revert with 0, 'Contract instance has already been initialized'
    uint8(stor2.field_0) = 1
    uint8(stor2.field_8) = 1
    Mask(248, 0, stor2.field_8) = 0
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    currency[] = Array(len=arg3.length, data=arg3[all])
    decimals = arg4
    Mask(248, 0, stor2.field_8) = Mask(248, 0, bool(uint8(stor2.field_8)))
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require not stor1[msg.sender]
    require not stor1[address(arg1)]
    require not stor1[address(arg2)]
    require arg2
    require arg3 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require not paused
    require not stor1[address(arg1)]
    require msg.sender == owner
    require arg1
    if not arg2:
        require totalSupply >= totalSupply
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Transfer(0, 0, arg1);
    else:
        require uint8(10^decimals) * arg2 / arg2 == uint8(10^decimals)
        require (uint8(10^decimals) * arg2) + totalSupply >= totalSupply
        totalSupply += uint8(10^decimals) * arg2
        require (uint8(10^decimals) * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += uint8(10^decimals) * arg2
        emit Transfer((uint8(10^decimals) * arg2), 0, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require not paused
    require not stor1[address(arg1)]
    require msg.sender == owner
    require arg1
    if not arg2:
        require 0 <= totalSupply
        require 0 <= balanceOf[address(arg1)]
        emit Transfer(0, arg1, 0);
        require 0 <= allowance[address(arg1)][msg.sender]
        require msg.sender
        require arg1
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
        emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    else:
        require uint8(10^decimals) * arg2 / arg2 == uint8(10^decimals)
        require uint8(10^decimals) * arg2 <= totalSupply
        totalSupply += -1 * uint8(10^decimals) * arg2
        require uint8(10^decimals) * arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += -1 * uint8(10^decimals) * arg2
        emit Transfer((uint8(10^decimals) * arg2), arg1, 0);
        require uint8(10^decimals) * arg2 <= allowance[address(arg1)][msg.sender]
        require msg.sender
        require arg1
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (uint8(10^decimals) * arg2)
        emit Approval((allowance[address(arg1)][msg.sender] - (uint8(10^decimals) * arg2)), arg1, msg.sender);
}



}
