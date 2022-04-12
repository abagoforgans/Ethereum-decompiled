contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 initialSupply;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address multiSigWalletAddress;
uint256 amountRaised;
uint256 dividendPayment;
uint256 numberOfRecordEntries;
uint256 numberOfTokenHolders;
uint256 startTime;
uint256 remainingTime;
uint256 hardcap;
uint256 price;
array of struct recordHolder;
array of struct tokenHolder;
uint8 stor20;
mapping of uint256 recordBalance;
mapping of uint256 stor22;
mapping of uint256 stor23;
uint256 stor27;

function stopTime() {
    return remainingTime
}

function name() {
    return name[0 len name.length]
}

function numberOfTokenHolders() {
    return numberOfTokenHolders
}

function totalSupply() {
    return totalSupply
}

function getRecordHolder(uint256 arg1) {
    require arg1 + 1 >= arg1
    require arg1 + 1 < recordHolder.length
    return address(recordHolder[arg1].field_256)
}

function getRecordBalance(address arg1) {
    return recordBalance[address(arg1)]
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function multiSigWallet() {
    return multiSigWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function numberOfRecordEntries() {
    return numberOfRecordEntries
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getPrice() {
    return price
}

function price() {
    return price
}

function dividendPayment() {
    return dividendPayment
}

function hardcap() {
    return hardcap
}

function getTokenHolder(uint256 arg1) {
    require arg1 + 1 >= arg1
    require arg1 + 1 < tokenHolder.length
    return address(tokenHolder[arg1].field_256)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getRemainingTime() {
    return remainingTime
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function stopSale() {
    require msg.sender == owner
    remainingTime = block.timestamp
    stor20 = 1
    return 1
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    price = arg1
    return price
}

function setMultiSigWallet(address arg1) {
    require msg.sender == owner
    multiSigWalletAddress = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function startSale(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > block.timestamp
    startTime = arg1
    remainingTime = arg2
    stor20 = 0
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function addTokenHolder(address arg1) {
    if not balanceOf[address(arg1)]:
        return 0
    stor23[address(arg1)] = tokenHolder.length
    tokenHolder.length++
    if not tokenHolder.length <= tokenHolder.length + 1:
        idx = tokenHolder.length + 1
        while tokenHolder.length > idx:
            tokenHolder[idx].field_0 = 0
            idx = idx + 1
            continue 
    require 1 <= tokenHolder.length
    require tokenHolder.length - 1 < tokenHolder.length
    address(tokenHolder[tokenHolder.length].field_0) = arg1
    numberOfTokenHolders++
    return 1
}

function _fallback() payable {
    require not stor20
    require block.timestamp < remainingTime
    if msg.value:
        require msg.value
        require msg.value * price / msg.value == price
    if msg.value * price:
        require msg.value * price
        require msg.value * price * stor27 / msg.value * price == stor27
    require totalSupply + (msg.value * price * stor27 / 10^18) >= totalSupply
    require totalSupply + (msg.value * price * stor27 / 10^18) <= hardcap
    require amountRaised + (msg.value / 10^18) >= amountRaised
    amountRaised += msg.value / 10^18
    if msg.value:
        require msg.value
        require msg.value * price / msg.value == price
    if msg.value * price:
        require msg.value * price
        require msg.value * price * stor27 / msg.value * price == stor27
    require totalSupply + (msg.value * price * stor27 / 10^18) >= totalSupply
    totalSupply += msg.value * price * stor27 / 10^18
    require balanceOf[address(msg.sender)] + (msg.value * price * stor27 / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * price * stor27 / 10^18
    call multiSigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((msg.value * price * stor27 / 10^18), 0, msg.sender);
    if not stor23[address(msg.sender)]:
        if balanceOf[address(msg.sender)]:
            stor23[address(msg.sender)] = tokenHolder.length
            tokenHolder.length++
            if not tokenHolder.length <= tokenHolder.length + 1:
                idx = tokenHolder.length + 1
                while tokenHolder.length > idx:
                    tokenHolder[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require 1 <= tokenHolder.length
            require tokenHolder.length - 1 < tokenHolder.length
            address(tokenHolder[tokenHolder.length].field_0) = msg.sender
            numberOfTokenHolders++
}

function payOutDividend() {
    require msg.sender == owner
    require 1 <= tokenHolder.length
    s = var47004
    s = var47005
    idx = var47006
    while idx < tokenHolder.length - 1:
        require idx + 1 >= idx
        require idx + 1 < tokenHolder.length
        if stor22[address(stor19[idx].field_256)]:
            mem[0] = address(tokenHolder[idx].field_256)
            mem[32] = 21
            recordBalance[address(stor19[idx].field_256)] = balanceOf[address(stor19[idx].field_256)]
            if 1 <= tokenHolder.length:
                s = balanceOf[address(stor19[idx].field_256)]
                s = address(tokenHolder[idx].field_256)
                idx = idx + 1
                continue 
        else:
            stor22[address(stor19[idx].field_256)] = recordHolder.length
            recordHolder.length++
            if not recordHolder.length <= recordHolder.length + 1:
                s = sha3(18) + recordHolder.length + 1
                while sha3(18) + recordHolder.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            if 1 <= recordHolder.length:
                if recordHolder.length - 1 < recordHolder.length:
                    address(recordHolder[recordHolder.length].field_0) = address(tokenHolder[idx].field_256)
                    numberOfRecordEntries++
                    mem[0] = address(tokenHolder[idx].field_256)
                    mem[32] = 21
                    recordBalance[address(stor19[idx].field_256)] = balanceOf[address(stor19[idx].field_256)]
                    if 1 <= tokenHolder.length:
                        s = balanceOf[address(stor19[idx].field_256)]
                        s = address(tokenHolder[idx].field_256)
                        idx = idx + 1
                        continue 
        revert
    require 1 <= tokenHolder.length
    s = var65004
    s = var65005
    s = var65006
    idx = var65007
    while idx < tokenHolder.length - 1:
        require idx + 1 >= idx
        require idx + 1 < tokenHolder.length
        require stor27
        require dividendPayment / stor27
        require totalSupply / dividendPayment / stor27
        if not balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27:
            if balanceOf[address(stor19[idx].field_256)] + (balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27) >= balanceOf[address(stor19[idx].field_256)]:
                mem[0] = address(tokenHolder[idx].field_256)
                mem[32] = 7
                balanceOf[address(stor19[idx].field_256)] += balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27
                if totalSupply + (balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27) >= totalSupply:
                    totalSupply += balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27
                    mem[96] = balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27
                    emit Transfer((balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27), 0, address(tokenHolder[idx].field_256));
                    if 1 <= tokenHolder.length:
                        s = balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27
                        s = totalSupply / dividendPayment / stor27
                        s = address(tokenHolder[idx].field_256)
                        idx = idx + 1
                        continue 
        else:
            if balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27:
                if balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27 / balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 == stor27:
                    if balanceOf[address(stor19[idx].field_256)] + (balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27) >= balanceOf[address(stor19[idx].field_256)]:
                        mem[0] = address(tokenHolder[idx].field_256)
                        mem[32] = 7
                        balanceOf[address(stor19[idx].field_256)] += balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27
                        if totalSupply + (balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27) >= totalSupply:
                            totalSupply += balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27
                            mem[96] = balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27
                            emit Transfer((balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27), 0, address(tokenHolder[idx].field_256));
                            if 1 <= tokenHolder.length:
                                s = balanceOf[address(stor19[idx].field_256)] / totalSupply / dividendPayment / stor27 * stor27
                                s = totalSupply / dividendPayment / stor27
                                s = address(tokenHolder[idx].field_256)
                                idx = idx + 1
                                continue 
        revert
    return 1
}



}
