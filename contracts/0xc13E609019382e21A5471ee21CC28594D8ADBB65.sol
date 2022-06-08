contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
uint128 stor2; offset 160
address stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function transferEnabled() {
    return bool(uint8(stor2.field_160))
}

function exclude(address arg1) {
    return bool(stor4[arg1])
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

function locked(address arg1) {
    return bool(stor3[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function lockFlag() {
    return bool(uint8(stor2.field_168))
}

function _fallback() payable {
    revert
}

function removeLock(address arg1) {
    require msg.sender == owner
    stor3[address(arg1)] = 0
    return 1
}

function setExclude(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
    return 1
}

function enableTransfer(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require owner != arg1
    address(stor2.field_0) = arg1
}

function disableLock(bool arg1) {
    require msg.sender == owner
    Mask(88, 0, stor2.field_168) = Mask(88, 0, arg1)
    return 1
}

function addLock(address arg1) {
    require msg.sender == owner
    require arg1 != msg.sender
    stor3[address(arg1)] = 1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function acceptOwnership() {
    require msg.sender == address(stor2.field_0)
    emit OwnerUpdate(owner, address(stor2.field_0));
    owner = address(stor2.field_0)
    address(stor2.field_0) = 0
}

function transfer(address arg1, uint256 arg2) {
    if not stor4[msg.sender]:
        require uint8(stor2.field_160)
        if uint8(stor2.field_168):
            require not stor3[address(msg.sender)]
    require arg1
    require msg.sender
    require arg2 > 0
    if arg2 > balanceOf[msg.sender]:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor4[msg.sender]:
        require uint8(stor2.field_160)
        if uint8(stor2.field_168):
            require not stor3[address(msg.sender)]
    require arg2
    require msg.sender
    require arg3 > 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
