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
    stor9 = 10^9
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 1
    stor18 = 0
    stor19 = 8
    require not msg.value
    stor0 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 15
    stor3.length.field_8 = 'Faceblock Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'FCB' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 2
    stor10 = address(code.data[10357 len 32])
    stor11 = address(code.data[10389 len 32])
    stor13 = address(code.data[10453 len 32])
    stor12 = address(code.data[10421 len 32])
    stor7[address(code.data[10357 len 32])] = 1200 * 10^6
    stor7[address(code.data[10421 len 32])] = 100 * 10^6
    stor16 += 100 * 10^6
    return code.data[1261 len 9096]
}



// =====================  Runtime code  =====================


const maxPresaleSupply = 600 * 10^6

const endTime = (420258 * 3600)

const minCrowdsaleAllocation = 600 * 10^6

const incentivisationAllocation = 100 * 10^6

const sub_e7bb3841(?) = 100

const sub_ebc65aa3(?) = 200 * 10^6

const advisorsAllocation = 100 * 10^6


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
address sub_8212f186Address;
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

function sub_8212f186(?) {
    return sub_8212f186Address
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

function releaseAdvisorTokens() {
    require msg.sender == owner
    require not totalAllocatedToAdvisors
    require balanceOf[stor11] + 100 * 10^6 >= balanceOf[stor11]
    balanceOf[stor11] += 100 * 10^6
    require totalAllocated + 100 * 10^6 >= totalAllocated
    totalAllocated += 100 * 10^6
    totalAllocatedToAdvisors = 100 * 10^6
    emit Transfer(100 * 10^6, 0, advisorAddress);
    return 1
}

function retrieveUnsoldTokens() {
    require block.timestamp >= 424290 * 3600
    require msg.sender == owner
    balanceOf[stor10] = 0
    require balanceOf[stor12] + balanceOf[stor10] >= balanceOf[stor12]
    balanceOf[stor12] += balanceOf[stor10]
    require totalAllocated + balanceOf[stor10] >= totalAllocated
    totalAllocated += balanceOf[stor10]
    emit Transfer(balanceOf[stor10], crowdFundAddress, incentivisationFundAddress);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= 420258 * 3600:
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

function sub_e6abc3bb(?) {
    require msg.sender == owner
    require totalAllocatedToTeam < 200 * 10^6
    require stor18 < stor19
    require block.timestamp - (420258 * 3600) / 2016 * 24 * 3600 > stor18
    stor18++
    require balanceOf[stor13] + 200 * 10^6 >= balanceOf[stor13]
    balanceOf[stor13] += 200 * 10^6
    emit Transfer(200 * 10^6, 0, sub_8212f186Address);
    require totalAllocated + 200 * 10^6 >= totalAllocated
    totalAllocated += 200 * 10^6
    require totalAllocatedToTeam + 200 * 10^6 >= totalAllocatedToTeam
    totalAllocatedToTeam += 200 * 10^6
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp <= 420258 * 3600:
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



}
