contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of address stor2;
array of address stor5;
address stor6;
uint256 stor7;
mapping of uint256 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 18
    stor0.length.field_8 = 'Etheraffle FreeLOT' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 7
    stor1.length.field_8 = 'FreeLOT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = address(code.data[5727 len 32])
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = address(code.data[5727 len 32])
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    address(stor5[stor5.length]) = address(code.data[5727 len 32])
    stor7 = code.data[5759 len 32]
    stor8[address(code.data[5727 len 32])] = code.data[5759 len 32]
    stor9[address(code.data[5727 len 32])] = 1
    stor10[address(code.data[5727 len 32])] = 1
    return code.data[660 len 5067]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
array of address minters;
uint256 redeemed;
uint8 decimals;
array of address sub_c4c59b53;
address etheraffleAddress;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint8 stor9;
mapping of uint8 stor10;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function sub_50b4c607(?) {
    return bool(stor10[arg1])
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function minters(uint256 arg1) {
    require arg1 < minters.length
    return address(minters[arg1])
}

function etheraffle() {
    return etheraffleAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    return bool(stor9[arg1])
}

function sub_c4c59b53(?) {
    require arg1 < sub_c4c59b53.length
    return address(sub_c4c59b53[arg1])
}

function redeemed() {
    return redeemed
}

function selfDestruct() {
    require etheraffleAddress == msg.sender
    selfdestruct(etheraffleAddress)
}

function _fallback() payable {
    revert
}

function howMany() {
    return minters.length, sub_c4c59b53.length
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function setEtheraffle(address arg1) {
    require etheraffleAddress == msg.sender
    emit LogEtheraffleChange(etheraffleAddress, address(arg1), block.timestamp);
    etheraffleAddress = arg1
}

function destroy(address arg1, uint256 arg2) {
    require stor10[address(msg.sender)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    redeemed++
    emit LogDestruction(arg2, block.timestamp, arg1);
}

function mint(address arg1, uint256 arg2) {
    require stor9[address(msg.sender)]
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit LogMinting(arg2, block.timestamp, arg1);
}

function addMinter(address arg1) {
    require etheraffleAddress == msg.sender
    minters.length++
    if not minters.length <= minters.length + 1:
        idx = minters.length + 1
        while minters.length > idx:
            uint256(minters[idx]) = 0
            idx = idx + 1
            continue 
    address(minters[minters.length]) = arg1
    stor9[address(arg1)] = 1
    emit LogMinterAddition(address(arg1), block.timestamp);
}

function addDestroyer(address arg1) {
    require etheraffleAddress == msg.sender
    sub_c4c59b53.length++
    if not sub_c4c59b53.length <= sub_c4c59b53.length + 1:
        idx = sub_c4c59b53.length + 1
        while sub_c4c59b53.length > idx:
            uint256(sub_c4c59b53[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_c4c59b53[sub_c4c59b53.length]) = arg1
    stor10[address(arg1)] = 1
    emit LogDestroyerAddition(address(arg1), block.timestamp);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit LogTransfer(arg2, msg.sender, arg1, sha3(None));
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all]
        require ext_call.success
    emit LogTransfer(arg2, msg.sender, arg1, sha3(arg3[all]));
}

function removeMinter(address arg1) {
    require etheraffleAddress == msg.sender
    require stor9[address(arg1)]
    stor9[address(arg1)] = 0
    idx = 0
    while idx < minters.length - 1:
        require idx < minters.length
        mem[0] = 2
        if address(minters[idx]) != arg1:
            idx = idx + 1
            continue 
        require minters.length - 1 < minters.length
        require idx < minters.length
        address(minters[idx]) = address(minters[minters.length])
        minters.length--
        if not minters.length <= minters.length - 1:
            idx = minters.length + sha3(2) - 1
            while sha3(2) + minters.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit LogMinterRemoval(address(arg1), block.timestamp);
    minters.length--
    if not minters.length <= minters.length - 1:
        idx = minters.length - 1
        while minters.length > idx:
            uint256(minters[idx]) = 0
            idx = idx + 1
            continue 
    emit LogMinterRemoval(address(arg1), block.timestamp);
}

function removeDestroyer(address arg1) {
    require etheraffleAddress == msg.sender
    require stor10[address(arg1)]
    stor10[address(arg1)] = 0
    idx = 0
    while idx < sub_c4c59b53.length - 1:
        require idx < sub_c4c59b53.length
        mem[0] = 5
        if address(sub_c4c59b53[idx]) != arg1:
            idx = idx + 1
            continue 
        require sub_c4c59b53.length - 1 < sub_c4c59b53.length
        require idx < sub_c4c59b53.length
        address(sub_c4c59b53[idx]) = address(sub_c4c59b53[sub_c4c59b53.length])
        sub_c4c59b53.length--
        if not sub_c4c59b53.length <= sub_c4c59b53.length - 1:
            idx = sub_c4c59b53.length + sha3(5) - 1
            while sha3(5) + sub_c4c59b53.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit LogDestroyerRemoval(address(arg1), block.timestamp);
    sub_c4c59b53.length--
    if not sub_c4c59b53.length <= sub_c4c59b53.length - 1:
        idx = sub_c4c59b53.length - 1
        while sub_c4c59b53.length > idx:
            uint256(sub_c4c59b53[idx]) = 0
            idx = idx + 1
            continue 
    emit LogDestroyerRemoval(address(arg1), block.timestamp);
}



}
