contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
uint256 stor11;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 8
    stor2.length.field_8 = 'Winsshar' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'WSR' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 6
    stor5 = 10^17
    stor6 = 10^15
    stor7 = 2 * 10^13
    require not msg.value
    stor11 = 0
    stor8 = msg.sender
    stor0[address(msg.sender)] = stor6
    stor9 = code.data[4056 len 20]
    stor0[code.data[4056 len 20]] = stor7
    return code.data[487 len 3557]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 maxSupply;
uint256 totalSupply;
uint256 administrativeSupply;
address stor8;
address stor9;
mapping of address downloaders;
uint256 numberOfDownloaders;

function name() {
    return name[0 len name.length]
}

function downloaders(uint256 arg1) {
    return downloaders[arg1]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function administrativeSupply() {
    return administrativeSupply
}

function numberOfDownloaders() {
    return numberOfDownloaders
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    require tx.origin == msg.sender
}

function ownership(address arg1) {
    require stor8 == msg.sender
    stor8 = arg1
    balanceOf[arg1] = balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
}

function burnTokens(uint256 arg1) {
    require stor8 == msg.sender
    require totalSupply - arg1 >= 0
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[stor8]
    balanceOf[stor8] -= arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeApproval(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2 == allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function mintTokens(uint256 arg1) {
    require stor8 == msg.sender
    require maxSupply - administrativeSupply >= totalSupply + arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[stor8] >= balanceOf[stor8]
    balanceOf[stor8] += arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function administrativePayouts(address arg1, uint256 arg2) {
    require stor9 == msg.sender
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferDuringIntialOffer(address arg1, uint256 arg2) {
    require numberOfDownloaders <= 10^6
    require arg2 <= 2000
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function giveReward(address arg1) {
    require numberOfDownloaders <= 10^6
    require stor8 == msg.sender
    require arg1
    numberOfDownloaders++
    downloaders[stor11 + 1] = arg1
    require balanceOf[address(msg.sender)] >= 10
    require 10 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= 10
    require balanceOf[arg1] + 10 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + 10
    emit Transfer(10, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
