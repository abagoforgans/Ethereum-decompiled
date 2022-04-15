contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - balanceAt(address arg1, uint256 arg2)
#
uint256 totalSupply;
uint256 lockExpiration;
address owner;
address pendingOwner;
array of address account;
uint8 stor6;
mapping of uint8 stor7;
uint8 stor8;
mapping of uint8 stor10;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function accountsListLength() {
    return account.length
}

function version() {
    return version[0 len version.length]
}

function burnAllowed() {
    return bool(stor8)
}

function lockExpiration() {
    return lockExpiration
}

function maintenance() {
    return bool(stor6)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function isSet(address arg1) {
    return bool(balanceOf[address(arg1)].field_768)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function accountsList(uint256 arg1) {
    require arg1 < account.length
    return address(account[arg1])
}

function getAccountAddress(uint256 arg1) {
    require arg1 < account.length
    return address(account[arg1])
}

function allowance(address arg1, address arg2) {
    return balanceOf[address(arg1)][2][address(arg2)].field_0
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function setMaintenance(bool arg1) {
    require owner == msg.sender
    stor6 = uint8(arg1)
    return 1
}

function burnFeatureDeactivation() {
    require owner == msg.sender
    require stor8
    stor8 = 0
    return 1
}

function isBurner(address arg1) {
    if stor8:
        return bool(stor7[address(arg1)])
    else:
        return 0
}

function isLocked(address arg1) {
    if block.timestamp >= lockExpiration:
        return 0
    return bool(stor10[address(arg1)])
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function setBurner(address arg1, bool arg2) {
    require owner == msg.sender
    require stor8
    require arg1
    require ext_code.size(arg1) > 0
    stor7[address(arg1)] = uint8(arg2)
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not balanceOf[address(msg.sender)][2][address(arg1)].field_0
    balanceOf[address(msg.sender)][2][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + balanceOf[address(msg.sender)][2][address(arg1)].field_0 >= balanceOf[address(msg.sender)][2][address(arg1)].field_0
    balanceOf[address(msg.sender)][2][address(arg1)].field_0 += arg2
    emit Approval((arg2 + balanceOf[address(msg.sender)][2][address(arg1)].field_0), msg.sender, arg1);
    return 1
}

function maintenanceDeactivateUser(address arg1) {
    require owner == msg.sender
    require not stor6
    balanceOf[address(arg1)].field_768 = 0
    balanceOf[address(arg1)].field_256 = 0
    idx = 0
    while 2 * balanceOf[address(arg1)].field_256 > idx:
        balanceOf[address(arg1)][idx + 1].field_0 = 0
        balanceOf[address(arg1)][idx + 1].field_256 = 0
        idx = idx + 2
        continue 
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(msg.sender)][2][address(arg1)].field_0:
        balanceOf[address(msg.sender)][2][address(arg1)].field_0 = 0
        emit Approval(0, msg.sender, arg1);
    else:
        balanceOf[address(msg.sender)][2][address(arg1)].field_0 -= arg2
        emit Approval((balanceOf[address(msg.sender)][2][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function maintenanceSetAccountsList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require not stor6
    account.length = arg1.length
    if not arg1.length:
        idx = 0
        while account.length > idx:
            address(account[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(account[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while account.length > idx:
            address(account[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}

function burn(address arg1, uint256 arg2) {
    require stor8
    require stor7[address(msg.sender)]
    require not stor6
    require stor8
    require arg2 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg2
    balanceOf[address(arg1)].field_256++
    if not balanceOf[address(arg1)].field_256 <= balanceOf[address(arg1)].field_256 + 1:
        idx = 2 * balanceOf[address(arg1)].field_256 + 1
        while 2 * balanceOf[address(arg1)].field_256 > idx:
            balanceOf[address(arg1)][idx + 1].field_0 = 0
            balanceOf[address(arg1)][idx + 1].field_256 = 0
            idx = idx + 2
            continue 
    stor[(2 * balanceOf[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 5)))].field_0 = block.number
    stor[(2 * balanceOf[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 5)))].field_256 = balanceOf[address(arg1)].field_0
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(address(arg1), arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp < lockExpiration:
        require not stor10[address(msg.sender)]
    require not stor6
    if not balanceOf[address(arg1)].field_768:
        balanceOf[address(arg1)].field_768 = 1
        account.length++
        if not account.length <= account.length + 1:
            idx = account.length + 1
            while account.length > idx:
                uint256(account[idx]) = 0
                idx = idx + 1
                continue 
        address(account[account.length]) = arg1
    require arg2 <= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 -= arg2
    require arg2 + balanceOf[address(arg1)].field_0 >= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 += arg2
    balanceOf[address(msg.sender)].field_256++
    if not balanceOf[address(msg.sender)].field_256 <= balanceOf[address(msg.sender)].field_256 + 1:
        idx = 2 * balanceOf[address(msg.sender)].field_256 + 1
        while 2 * balanceOf[address(msg.sender)].field_256 > idx:
            balanceOf[address(msg.sender)][idx + 1].field_0 = 0
            balanceOf[address(msg.sender)][idx + 1].field_256 = 0
            idx = idx + 2
            continue 
    stor[(2 * balanceOf[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 5)))].field_0 = block.number
    stor[(2 * balanceOf[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 5)))].field_256 = balanceOf[address(msg.sender)].field_0
    balanceOf[address(arg1)].field_256++
    if not balanceOf[address(arg1)].field_256 <= balanceOf[address(arg1)].field_256 + 1:
        idx = 2 * balanceOf[address(arg1)].field_256 + 1
        while 2 * balanceOf[address(arg1)].field_256 > idx:
            balanceOf[address(arg1)][idx + 1].field_0 = 0
            balanceOf[address(arg1)][idx + 1].field_256 = 0
            idx = idx + 2
            continue 
    stor[(2 * balanceOf[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 5)))].field_0 = block.number
    stor[(2 * balanceOf[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 5)))].field_256 = balanceOf[address(arg1)].field_0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp < lockExpiration:
        require not stor10[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)][2][address(msg.sender)].field_0
    balanceOf[address(arg1)][2][address(msg.sender)].field_0 -= arg3
    require not stor6
    if not balanceOf[address(arg2)].field_768:
        balanceOf[address(arg2)].field_768 = 1
        account.length++
        if not account.length <= account.length + 1:
            idx = account.length + 1
            while account.length > idx:
                uint256(account[idx]) = 0
                idx = idx + 1
                continue 
        address(account[account.length]) = arg2
    require arg3 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg3
    require arg3 + balanceOf[address(arg2)].field_0 >= balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)].field_0 += arg3
    balanceOf[address(arg1)].field_256++
    if not balanceOf[address(arg1)].field_256 <= balanceOf[address(arg1)].field_256 + 1:
        idx = 2 * balanceOf[address(arg1)].field_256 + 1
        while 2 * balanceOf[address(arg1)].field_256 > idx:
            balanceOf[address(arg1)][idx + 1].field_0 = 0
            balanceOf[address(arg1)][idx + 1].field_256 = 0
            idx = idx + 2
            continue 
    stor[(2 * balanceOf[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 5)))].field_0 = block.number
    stor[(2 * balanceOf[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 5)))].field_256 = balanceOf[address(arg1)].field_0
    balanceOf[address(arg2)].field_256++
    if not balanceOf[address(arg2)].field_256 <= balanceOf[address(arg2)].field_256 + 1:
        idx = 2 * balanceOf[address(arg2)].field_256 + 1
        while 2 * balanceOf[address(arg2)].field_256 > idx:
            balanceOf[address(arg2)][idx + 1].field_0 = 0
            balanceOf[address(arg2)][idx + 1].field_256 = 0
            idx = idx + 2
            continue 
    stor[(2 * balanceOf[address(arg2)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balanceOf', 5)))].field_0 = block.number
    stor[(2 * balanceOf[address(arg2)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balanceOf', 5)))].field_256 = balanceOf[address(arg2)].field_0
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
