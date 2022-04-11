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

function _fallback() payable {
    stor7 = 1200
    require not msg.value
    mem[96 len -3631] = code.data[5000 len -3631]
    mem[64] = -3535
    stor0[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    stor1[] = Array(len=mem[mem[320] + 96], data=mem[mem[320] + 128 len mem[mem[320] + 96]])
    stor2 = mem[319 len 1]
    stor3 = 0
    stor5 = mem[204 len 20]
    stor6 = msg.sender
    stor4 = block.timestamp + stor7
    emit TotalSupply(stor3, stor3 + mem[96], mem[236 len 20]);
    stor3 += mem[96]
    stor8[address(mem[224])] = mem[96]
    emit Transfer(mem[96], 0, mem[236 len 20]);
    emit TotalSupply(stor3, stor3 + mem[128], mem[204 len 20]);
    stor3 += mem[128]
    stor8[address(mem[192])] = mem[128]
    emit Transfer(mem[128], 0, mem[204 len 20]);
    emit TotalSupply(stor3, stor3 + mem[160], msg.sender);
    stor3 += mem[160]
    stor8[address(msg.sender)] = mem[160]
    emit Transfer(mem[160], 0, msg.sender);
    return code.data[1369 len 3631]
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
