contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor7;
array of address stor8;
uint8 stor9;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.3' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'DRP Utility' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'DRPU' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 8
    stor5[address(msg.sender)] = 0
    stor4 = 0
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    address(stor8[stor8.length]) = msg.sender
    stor7[address(msg.sender)] = 0
    stor9 = 0
    return code.data[641 len 5500]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor7;
array of address ownerAt;
uint8 stor9;
mapping of uint256 stor10;
array of address observerAtIndex;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function getOwnerAt(uint256 arg1) {
    require arg1 < ownerAt.length
    return address(ownerAt[arg1])
}

function standard() {
    return standard[0 len standard.length]
}

function getObserverAtIndex(uint256 arg1) {
    require arg1 < observerAtIndex.length
    return address(observerAtIndex[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getObserverCount() {
    return observerAtIndex.length
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isLocked() {
    return bool(stor9)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getOwnerCount() {
    return ownerAt.length
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require 68 == calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function lock() {
    require stor7[address(msg.sender)] < ownerAt.length
    require stor7[address(msg.sender)] < ownerAt.length
    require msg.sender == address(ownerAt[stor7[address(msg.sender)]])
    stor9 = 1
    return 1
}

function unlock() {
    require stor7[address(msg.sender)] < ownerAt.length
    require stor7[address(msg.sender)] < ownerAt.length
    require msg.sender == address(ownerAt[stor7[address(msg.sender)]])
    stor9 = 0
    return 1
}

function isOwner(address arg1) {
    if stor7[address(arg1)] >= ownerAt.length:
        return (stor7[address(arg1)] < ownerAt.length)
    require stor7[address(arg1)] < ownerAt.length
    return (arg1 == address(ownerAt[stor7[address(arg1)]]))
}

function isObserver(address arg1) {
    if stor10[address(arg1)] >= observerAtIndex.length:
        return (stor10[address(arg1)] < observerAtIndex.length)
    require stor10[address(arg1)] < observerAtIndex.length
    return (arg1 == address(observerAtIndex[stor10[address(arg1)]]))
}

function burn(address arg1, uint256 arg2) {
    require stor7[address(msg.sender)] < ownerAt.length
    require stor7[address(msg.sender)] < ownerAt.length
    require msg.sender == address(ownerAt[stor7[address(msg.sender)]])
    require 68 == calldata.size
    require balanceOf[address(arg1)] >= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function issue(address arg1, uint256 arg2) {
    require stor7[address(msg.sender)] < ownerAt.length
    require stor7[address(msg.sender)] < ownerAt.length
    require msg.sender == address(ownerAt[stor7[address(msg.sender)]])
    require 68 == calldata.size
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function retrieveTokens(address arg1) {
    require stor7[address(msg.sender)] < ownerAt.length
    require stor7[address(msg.sender)] < ownerAt.length
    require msg.sender == address(ownerAt[stor7[address(msg.sender)]])
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require not stor9
    require 68 == calldata.size
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if stor10[address(arg1)] < observerAtIndex.length:
        require stor10[address(arg1)] < observerAtIndex.length
        if arg1 == address(observerAtIndex[stor10[address(arg1)]]):
            require ext_code.size(arg1)
            call arg1.notifyTokensReceived(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2
            require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor9
    require 100 == calldata.size
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if stor10[address(arg2)] < observerAtIndex.length:
        require stor10[address(arg2)] < observerAtIndex.length
        if arg2 == address(observerAtIndex[stor10[address(arg2)]]):
            require ext_code.size(arg2)
            call arg2.notifyTokensReceived(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg3
            require ext_call.success
    return 1
}

function removeOwner(address arg1) {
    require stor7[address(msg.sender)] < ownerAt.length
    require stor7[address(msg.sender)] < ownerAt.length
    require msg.sender == address(ownerAt[stor7[address(msg.sender)]])
    if stor7[address(arg1)] < ownerAt.length:
        require stor7[address(arg1)] < ownerAt.length
        if arg1 == address(ownerAt[stor7[address(arg1)]]):
            require ownerAt.length - 1 < ownerAt.length
            require stor7[address(arg1)] < ownerAt.length
            address(ownerAt[stor7[address(arg1)]]) = address(ownerAt[ownerAt.length])
            stor7[address(stor8[stor8.length])] = stor7[address(arg1)]
            ownerAt.length--
            if not ownerAt.length <= ownerAt.length - 1:
                idx = ownerAt.length - 1
                while ownerAt.length > idx:
                    uint256(ownerAt[idx]) = 0
                    idx = idx + 1
                    continue 
}

function unregisterObserver(address arg1) {
    if arg1 != msg.sender:
        require stor7[address(msg.sender)] < ownerAt.length
        require stor7[address(msg.sender)] < ownerAt.length
        require msg.sender == address(ownerAt[stor7[address(msg.sender)]])
    if stor10[address(arg1)] < observerAtIndex.length:
        require stor10[address(arg1)] < observerAtIndex.length
        if arg1 == address(observerAtIndex[stor10[address(arg1)]]):
            require observerAtIndex.length - 1 < observerAtIndex.length
            require stor10[address(arg1)] < observerAtIndex.length
            address(observerAtIndex[stor10[address(arg1)]]) = address(observerAtIndex[observerAtIndex.length])
            stor10[address(stor11[stor11.length])] = stor10[address(arg1)]
            observerAtIndex.length--
            if not observerAtIndex.length <= observerAtIndex.length - 1:
                idx = observerAtIndex.length - 1
                while observerAtIndex.length > idx:
                    uint256(observerAtIndex[idx]) = 0
                    idx = idx + 1
                    continue 
}

function addOwner(address arg1) {
    require stor7[address(msg.sender)] < ownerAt.length
    require stor7[address(msg.sender)] < ownerAt.length
    require msg.sender == address(ownerAt[stor7[address(msg.sender)]])
    if stor7[address(arg1)] >= ownerAt.length:
        ownerAt.length++
        if not ownerAt.length <= ownerAt.length + 1:
            idx = ownerAt.length + 1
            while ownerAt.length > idx:
                uint256(ownerAt[idx]) = 0
                idx = idx + 1
                continue 
        address(ownerAt[ownerAt.length]) = arg1
        stor7[address(arg1)] = ownerAt.length
    else:
        require stor7[address(arg1)] < ownerAt.length
        if arg1 != address(ownerAt[stor7[address(arg1)]]):
            ownerAt.length++
            if not ownerAt.length <= ownerAt.length + 1:
                idx = ownerAt.length + 1
                while ownerAt.length > idx:
                    uint256(ownerAt[idx]) = 0
                    idx = idx + 1
                    continue 
            address(ownerAt[ownerAt.length]) = arg1
            stor7[address(arg1)] = ownerAt.length
}

function registerObserver(address arg1) {
    require arg1 != this.address
    require stor7[address(msg.sender)] < ownerAt.length
    require stor7[address(msg.sender)] < ownerAt.length
    require msg.sender == address(ownerAt[stor7[address(msg.sender)]])
    if stor10[address(arg1)] >= observerAtIndex.length:
        observerAtIndex.length++
        if not observerAtIndex.length <= observerAtIndex.length + 1:
            idx = observerAtIndex.length + 1
            while observerAtIndex.length > idx:
                uint256(observerAtIndex[idx]) = 0
                idx = idx + 1
                continue 
        address(observerAtIndex[observerAtIndex.length]) = arg1
        stor10[address(arg1)] = observerAtIndex.length
    else:
        require stor10[address(arg1)] < observerAtIndex.length
        if arg1 != address(observerAtIndex[stor10[address(arg1)]]):
            observerAtIndex.length++
            if not observerAtIndex.length <= observerAtIndex.length + 1:
                idx = observerAtIndex.length + 1
                while observerAtIndex.length > idx:
                    uint256(observerAtIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            address(observerAtIndex[observerAtIndex.length]) = arg1
            stor10[address(arg1)] = observerAtIndex.length
}



}
