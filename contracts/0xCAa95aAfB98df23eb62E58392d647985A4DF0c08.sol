contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
mapping of uint256 stor7;
uint256 stor9;
address stor10;
address stor11;
address stor12;
address stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17;
uint256 stor18;
uint256 stor19;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 9
    stor2.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 0
    stor3.length.field_8 = mem[192 len 31]
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 0
    stor4.length.field_8 = mem[224 len 31]
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 0
    stor9 = 2000000000 * 10^18
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 0
    stor19 = 8
    require not msg.value
    stor0 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 13
    stor3.length.field_8 = 'Token Sollida' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'tSLD' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor10 = address(code.data[10543 len 32])
    stor11 = address(code.data[10575 len 32])
    stor13 = address(code.data[10639 len 32])
    stor12 = address(code.data[10607 len 32])
    stor7[address(code.data[10543 len 32])] = 800000000 * 10^18
    stor7[address(code.data[10607 len 32])] = 600000000 * 10^18
    stor16 += 600000000 * 10^18
    return code.data[1301 len 9242]
}



// =====================  Runtime code  =====================


const maxPresaleSupply = 600000000 * 10^18

const endTime = 1509494340

const sub_44437384(?) = 600000000 * 10^18

const minCrowdsaleAllocation = 200000000 * 10^18

const sub_81bbe065(?) = 600000000 * 10^18

const incentivisationAllocation = 600000000 * 10^18

const sub_bda3b367(?) = 10^18


address owner;
address newOwner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address crowdFundAddress;
address advisorAddress;
address incentivisationFundAddress;
address sub_1ef1f04bAddress;
uint256 totalAllocatedToAdvisors;
uint256 totalAllocatedToTeam;
uint256 totalAllocated;
uint8 stor17;
uint256 stor18;
uint256 stor19;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1ef1f04b(?) {
    return sub_1ef1f04bAddress
}

function decimals() {
    return decimals
}

function totalAllocated() {
    return totalAllocated
}

function crowdFundAddress() {
    return crowdFundAddress
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function advisorAddress() {
    return advisorAddress
}

function incentivisationFundAddress() {
    return incentivisationFundAddress
}

function newOwner() {
    return newOwner
}

function totalAllocatedToAdvisors() {
    return totalAllocatedToAdvisors
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function totalAllocatedToTeam() {
    return totalAllocatedToTeam
}

function _fallback() payable {
    revert
}

function allowTransfers() {
    require msg.sender == owner
    stor17 = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function addToAllocation(uint256 arg1) {
    require msg.sender == crowdFundAddress
    require totalAllocated + arg1 >= totalAllocated
    totalAllocated += arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function retrieveUnsoldTokens() {
    require block.timestamp >= 1524009540
    require msg.sender == owner
    balanceOf[stor10] = 0
    require balanceOf[stor12] + balanceOf[stor10] >= balanceOf[stor12]
    balanceOf[stor12] += balanceOf[stor10]
    require totalAllocated + balanceOf[stor10] >= totalAllocated
    totalAllocated += balanceOf[stor10]
    emit Transfer(balanceOf[stor10], crowdFundAddress, incentivisationFundAddress);
    return 1
}

function releaseAdvisorTokens() {
    require block.timestamp >= 1514332740
    require msg.sender == owner
    require not totalAllocatedToAdvisors
    require balanceOf[stor11] + 600000000 * 10^18 >= balanceOf[stor11]
    balanceOf[stor11] += 600000000 * 10^18
    require totalAllocated + 600000000 * 10^18 >= totalAllocated
    totalAllocated += 600000000 * 10^18
    totalAllocatedToAdvisors = 600000000 * 10^18
    emit Transfer(600000000 * 10^18, 0, advisorAddress);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= 1509494340:
        if bool(stor17) != 1:
            if crowdFundAddress != msg.sender:
                require msg.sender == incentivisationFundAddress
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp <= 1509494340:
        if bool(stor17) != 1:
            if crowdFundAddress != msg.sender:
                require msg.sender == incentivisationFundAddress
    require arg1
    require arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function releasesollidaTeamTokens() {
    require block.timestamp >= 1524009540
    require msg.sender == owner
    require totalAllocatedToTeam < 600000000 * 10^18
    require stor18 < stor19
    require block.timestamp - 1509494340 / 2016 * 24 * 3600 > stor18
    stor18++
    require balanceOf[stor13] + 75000000 * 10^18 >= balanceOf[stor13]
    balanceOf[stor13] += 75000000 * 10^18
    emit Transfer(75000000 * 10^18, 0, sub_1ef1f04bAddress);
    require totalAllocated + 75000000 * 10^18 >= totalAllocated
    totalAllocated += 75000000 * 10^18
    require totalAllocatedToTeam + 75000000 * 10^18 >= totalAllocatedToTeam
    totalAllocatedToTeam += 75000000 * 10^18
    return 1
}



}
