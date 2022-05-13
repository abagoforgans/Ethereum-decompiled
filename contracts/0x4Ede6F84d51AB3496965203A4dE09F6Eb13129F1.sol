contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor9;
uint8 stor12;
uint256 stor13;
uint256 stor15;
uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint256 stor19;

function _fallback() {
    stor0 = msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 6
    stor1.length.field_208 = 253508782175389
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'SOOLE' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 4
    stor4 = 2 * 10^9 * 10^4
    stor5 = 2 * 10^14 / 10^4
    stor6 = 1
    stor7 = 88 * 10^stor3
    stor9 = 2 * 10^6 * 10^stor3
    stor12 = 2
    stor15 = 1000
    stor16 = 1
    if address(code.data[6054 len 32]):
        stor0 = address(code.data[6054 len 32])
    stor17[stor0] = 1
    if stor18[stor0]:
        stor19[stor0] += stor4
    else:
        stor18[stor0] = 1
        stor19[stor0] = stor4
        stor13++
    emit Transfer(stor4, 0, stor0);
    return code.data[854 len 5200]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 buyPrice;
uint8 stor6;
uint256 airDrop;
uint256 currentDrop;
uint256 totalDrop;
uint256 dropStart;
uint256 dropEnd;
uint8 powers;
uint256 users;
uint256 minToken;
uint256 count;
uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint256 balances;
mapping of uint256 frozens;
mapping of uint256 frozenNum;
mapping of uint256 frozenEnd;
mapping of uint8 stor23;
mapping of uint8 stor24;

function count() {
    return count
}

function name() {
    return name[0 len name.length]
}

function currentDrop() {
    return currentDrop
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

function monthPower(uint256 arg1, address arg2) {
    return bool(stor23[arg1][arg2])
}

function frozenEnd(address arg1) {
    return frozenEnd[arg1]
}

function dropEnd() {
    return dropEnd
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function powers() {
    return powers
}

function dropStart() {
    return dropStart
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function minToken() {
    return minToken
}

function frozens(address arg1) {
    return frozens[arg1]
}

function airDrop() {
    return airDrop
}

function initialized(address arg1) {
    return bool(stor17[arg1])
}

function monthOpen(uint256 arg1) {
    return bool(stor24[arg1])
}

function frozenNum(address arg1) {
    return frozenNum[arg1]
}

function totalDrop() {
    return totalDrop
}

function users() {
    return users
}

function existing(address arg1) {
    return bool(stor18[arg1])
}

function drop() {
    return bool(stor6)
}

function lock() {
    return bool(stor16)
}

function giveEther() payable {
  stop
}

function setDrop(bool arg1) {
    require owner == msg.sender
    stor6 = uint8(arg1)
}

function setLock(bool arg1) {
    require owner == msg.sender
    stor16 = uint8(arg1)
}

function setExchange(uint256 arg1) {
    require owner == msg.sender
    buyPrice = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setMonthClose(uint256 arg1, bool arg2) {
    require owner == msg.sender
    stor24[arg1] = uint8(arg2)
}

function sub_1e109fe2(?) {
    require owner == msg.sender
    stor24[arg1] = 1
    minToken = arg3
    count = arg4
    if arg2 > 0:
        powers = arg2
}

function lockAccount(address arg1, uint256 arg2) {
    require owner == msg.sender
    frozens[address(arg1)] = arg2
    emit FrozenFunds(address(arg1), arg2);
}

function setName(string arg1, string arg2) {
    require owner == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
}

function freezeMyFunds(uint256 arg1, uint256 arg2) {
    frozenNum[address(msg.sender)] = arg1
    frozenEnd[address(msg.sender)] = arg2
    emit FrozenMyFunds(msg.sender, arg1, arg2);
}

function takeEther(uint256 arg1) payable {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setAirDrop(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    dropStart = arg1
    dropEnd = arg2
    airDrop = arg3
    totalDrop = arg4
}

function freezeUserFunds(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    frozenNum[address(arg1)] = arg2
    frozenEnd[address(arg1)] = arg3
    emit FrozenMyFunds(address(arg1), arg2, arg3);
}

function burn(uint256 arg1) {
    require not stor16
    require block.timestamp > frozens[address(msg.sender)]
    if block.timestamp > frozenEnd[address(msg.sender)]:
        require balances[address(msg.sender)] >= arg1
    else:
        require balances[address(msg.sender)] - frozenNum[address(msg.sender)] >= arg1
    if stor18[address(msg.sender)]:
        balances[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require not stor16
    require block.timestamp > frozens[address(msg.sender)]
    require block.timestamp > frozens[address(arg1)]
    if block.timestamp > frozenEnd[address(msg.sender)]:
        require balances[address(msg.sender)] >= arg2
    else:
        require balances[address(msg.sender)] - frozenNum[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    if stor18[address(msg.sender)]:
        balances[address(msg.sender)] -= arg2
        if stor18[address(arg1)]:
            balances[address(arg1)] += arg2
        else:
            stor18[address(arg1)] = 1
            balances[address(arg1)] = arg2
            users++
        emit Transfer(arg2, msg.sender, arg1);
}

function getMonth(uint256 arg1) {
    require count > 0
    require block.timestamp > frozens[address(msg.sender)]
    require balances[address(msg.sender)] >= minToken
    require stor24[arg1]
    require not stor23[arg1][address(msg.sender)]
    require users
    require balances[stor0] >= powers * totalSupply / 100 / users
    stor23[arg1][address(msg.sender)] = 1
    if owner != owner:
        require not stor16
    require block.timestamp > frozens[stor0]
    require block.timestamp > frozens[address(msg.sender)]
    if block.timestamp > frozenEnd[stor0]:
        require balances[stor0] >= powers * totalSupply / 100 / users
    else:
        require balances[stor0] - frozenNum[stor0] >= powers * totalSupply / 100 / users
    require balances[address(msg.sender)] + (powers * totalSupply / 100 / users) > balances[address(msg.sender)]
    if stor18[stor0]:
        balances[stor0] -= powers * totalSupply / 100 / users
        if stor18[address(msg.sender)]:
            balances[address(msg.sender)] += powers * totalSupply / 100 / users
        else:
            stor18[address(msg.sender)] = 1
            balances[address(msg.sender)] = powers * totalSupply / 100 / users
            users++
        emit Transfer((powers * totalSupply / 100 / users), owner, msg.sender);
    count--
    return (powers * totalSupply / 100 / users)
}

function _fallback() payable {
    if msg.value:
        require not stor16
        require msg.value > 0
        require buyPrice
        if owner != owner:
            require not stor16
        require block.timestamp > frozens[stor0]
        require block.timestamp > frozens[address(msg.sender)]
        if block.timestamp > frozenEnd[stor0]:
            require balances[stor0] >= msg.value / buyPrice
        else:
            require balances[stor0] - frozenNum[stor0] >= msg.value / buyPrice
        require balances[address(msg.sender)] + (msg.value / buyPrice) > balances[address(msg.sender)]
        if stor18[stor0]:
            balances[stor0] -= msg.value / buyPrice
            if stor18[address(msg.sender)]:
                balances[address(msg.sender)] += msg.value / buyPrice
            else:
                stor18[address(msg.sender)] = 1
                balances[address(msg.sender)] = msg.value / buyPrice
                users++
            emit Transfer((msg.value / buyPrice), owner, msg.sender);
    else:
        require stor6
        require block.timestamp > frozens[address(msg.sender)]
        if dropStart != dropEnd:
            if dropEnd > 0:
                require block.timestamp >= dropStart
                require block.timestamp <= dropEnd
            else:
                if dropStart != dropEnd:
                    if not dropEnd:
                        require block.timestamp >= dropStart
        require balances[stor0] >= airDrop
        if currentDrop + airDrop <= totalDrop:
            if not stor17[address(msg.sender)]:
                stor17[address(msg.sender)] = 1
                if stor18[stor0]:
                    balances[stor0] -= airDrop
                    if stor18[address(msg.sender)]:
                        balances[address(msg.sender)] += airDrop
                    else:
                        stor18[address(msg.sender)] = 1
                        balances[address(msg.sender)] = airDrop
                        users++
                    currentDrop += airDrop
                    emit Transfer(airDrop, owner, msg.sender);
}



}
