contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 5138]




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 nextMint;
address treasurerAddress;
address entrepreneurAddress;
uint256 secondsBetweenMints;
mapping of uint256 treasuryBalance;

function entrepreneur() {
    return entrepreneurAddress
}

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function treasuryBalance() {
    return treasuryBalance[stor5]
}

function balanceOf(address arg1) {
    return treasuryBalance[arg1]
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function nextMint() {
    return nextMint
}

function secondsBetweenMints() {
    return secondsBetweenMints
}

function treasurer() {
    return treasurerAddress
}

function _fallback() payable {
    revert
}

function transferTreasury(address arg1) {
    require msg.sender == treasurerAddress
    treasuryBalance[address(arg1)] = treasuryBalance[stor5]
    treasuryBalance[stor5] = 0
    emit Transfer(treasuryBalance[stor5], treasurerAddress, arg1);
    treasurerAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    require treasuryBalance[address(msg.sender)] >= arg2
    require treasuryBalance[address(arg1)] + arg2 >= treasuryBalance[address(arg1)]
    treasuryBalance[address(msg.sender)] -= arg2
    treasuryBalance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function mintToken(uint256 arg1) {
    require msg.sender == treasurerAddress
    require block.timestamp >= nextMint
    nextMint = block.timestamp + secondsBetweenMints
    emit TotalSupply(totalSupply, totalSupply + arg1, treasurerAddress);
    totalSupply += arg1
    treasuryBalance[stor5] += arg1
    emit Transfer(arg1, 0, treasurerAddress);
    emit TotalSupply(totalSupply, totalSupply + (arg1 / 20), msg.sender);
    totalSupply += arg1 / 20
    treasuryBalance[stor6] = arg1 / 20
    emit Transfer((arg1 / 20), 0, entrepreneurAddress);
}

function WestCoin() {
    secondsBetweenMints = 1200
    bool(name.length) = 0
    name.length.field_1 = 8
    name.length.field_8 = 'Sample28' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 3
    symbol.length.field_8 = 'SMP' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    totalSupply = 0
    treasurerAddress = 0xbc0477db950eae9c8024efbbf1d35c4c23dd96b
    entrepreneurAddress = msg.sender
    nextMint = block.timestamp + secondsBetweenMints
    emit TotalSupply(totalSupply, totalSupply + 30 * 10^6, 0xd7c5009bc884e39748f2326fdc35bc4e0e7f7428);
    totalSupply += 30 * 10^6
    treasuryBalance[0xd7c5009bc884e39748f2326fdc35bc4e0e7f7428] = 30 * 10^6
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  30 * 10^6,
    emit 0x0: 30 * 10^6
    emit 0xd7c5009b: 30 * 10^6
    emit TotalSupply(totalSupply, totalSupply + 30 * 10^6, 0xbc0477db950eae9c8024efbbf1d35c4c23dd96b);
    totalSupply += 30 * 10^6
    treasuryBalance[0xbc0477db950eae9c8024efbbf1d35c4c23dd96b] = 30 * 10^6
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  30 * 10^6,
    emit 0x0: 30 * 10^6
    emit 0xbc0477db: 30 * 10^6
    emit TotalSupply(totalSupply, totalSupply + 3 * 10^6, msg.sender);
    totalSupply += 3 * 10^6
    treasuryBalance[address(msg.sender)] = 3 * 10^6
    emit Transfer(3 * 10^6, 0, msg.sender);
}



}
