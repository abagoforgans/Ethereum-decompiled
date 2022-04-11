contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
uint256 stor7;
mapping of uint256 stor8;

function _fallback() {
    stor7 = 1200
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'Sample28' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'TTO' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 0
    stor5 = 0xbc0477db950eae9c8024efbbf1d35c4c23dd96b
    stor6 = msg.sender
    stor4 = block.timestamp + stor7
    emit TotalSupply(stor3, stor3 + 30 * 10^6, 0xd7c5009bc884e39748f2326fdc35bc4e0e7f7428);
    stor3 += 30 * 10^6
    stor8[0xd7c5009bc884e39748f2326fdc35bc4e0e7f7428] = 30 * 10^6
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  30 * 10^6,
    emit 0x0: 30 * 10^6
    emit 0xd7c5009b: 30 * 10^6
    emit TotalSupply(stor3, stor3 + 30 * 10^6, 0xbc0477db950eae9c8024efbbf1d35c4c23dd96b);
    stor3 += 30 * 10^6
    stor8[0xbc0477db950eae9c8024efbbf1d35c4c23dd96b] = 30 * 10^6
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  30 * 10^6,
    emit 0x0: 30 * 10^6
    emit 0xbc0477db: 30 * 10^6
    emit TotalSupply(stor3, stor3 + 3 * 10^6, msg.sender);
    stor3 += 3 * 10^6
    stor8[address(msg.sender)] = 3 * 10^6
    emit Transfer(3 * 10^6, 0, msg.sender);
    return code.data[1530 len 3631]
}



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
    return name[0 len name.length]
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
    return symbol[0 len symbol.length]
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



}
