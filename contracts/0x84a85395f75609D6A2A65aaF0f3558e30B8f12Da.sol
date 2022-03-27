contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'SmartPool' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'SPT' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor13 = 10^18
    require not msg.value
    address(stor3.field_0) = msg.sender
    Mask(96, 0, stor3.field_160) = 0
    stor0 = 0
    stor12 = 100
    stor7 = code.data[7210 len 20]
    stor11 = 0
    require stor12
    if code.data[7166 len 32]:
        require code.data[7166 len 32]
        require code.data[7166 len 32] * stor13 / stor12 / code.data[7166 len 32] == stor13 / stor12
    if stor12:
        require stor12
        require stor12 * code.data[7166 len 32] * stor13 / stor12 / stor12 == code.data[7166 len 32] * stor13 / stor12
    require stor13
    if stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13 >= 1:
        require stor1[address(stor3.field_0)] + (stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13) >= stor1[address(stor3.field_0)]
        require stor1[address(stor3.field_0)] + (stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13) >= stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13
        stor1[address(stor3.field_0)] += stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13
        require stor0 + (stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13) >= stor0
        require stor0 + (stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13) >= stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13
        stor0 += stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13
        emit TokenMint(address(stor3.field_0), stor12 * code.data[7166 len 32] * stor13 / stor12 / stor13);
    return code.data[1384 len 5782]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address beneficialAddress;
mapping of uint256 donationAmount;
mapping of address donors;
uint256 donorCount;
uint256 totalFundRaised;
uint256 tokenRate;
uint256 stor13;

function name() {
    return name[0 len name.length]
}

function beneficial() {
    return beneficialAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function tokenRate() {
    return tokenRate
}

function donors(uint256 arg1) {
    return donors[arg1]
}

function getDonationAmount() {
    return donationAmount[address(msg.sender)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getTokenBalance() {
    return balanceOf[address(msg.sender)]
}

function owner() {
    return owner
}

function totalFundRaised() {
    return totalFundRaised
}

function symbol() {
    return symbol[0 len symbol.length]
}

function donationAmountInWei(address arg1) {
    return donationAmount[arg1]
}

function donorCount() {
    return donorCount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function changeRate(uint256 arg1) {
    require msg.sender == owner
    tokenRate = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function startAcceptingDonation() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
}

function stopAcceptingDonation() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require msg.sender == owner
    call beneficialAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor3.field_160)
    require msg.value > 0
    if not donationAmount[address(msg.sender)]:
        donors[stor10] = msg.sender
        donorCount++
    require donationAmount[address(msg.sender)] + msg.value >= donationAmount[address(msg.sender)]
    require donationAmount[address(msg.sender)] + msg.value >= msg.value
    donationAmount[address(msg.sender)] += msg.value
    require totalFundRaised + msg.value >= totalFundRaised
    require totalFundRaised + msg.value >= msg.value
    totalFundRaised += msg.value
    if tokenRate:
        require tokenRate
        require tokenRate * msg.value / tokenRate == msg.value
    require stor13
    if tokenRate * msg.value / stor13 < 1:
        emit Donated(msg.value, 0, block.number, msg.sender);
    else:
        require balanceOf[address(msg.sender)] + (tokenRate * msg.value / stor13) >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + (tokenRate * msg.value / stor13) >= tokenRate * msg.value / stor13
        balanceOf[address(msg.sender)] += tokenRate * msg.value / stor13
        require totalSupply + (tokenRate * msg.value / stor13) >= totalSupply
        require totalSupply + (tokenRate * msg.value / stor13) >= tokenRate * msg.value / stor13
        totalSupply += tokenRate * msg.value / stor13
        emit TokenMint(msg.sender, tokenRate * msg.value / stor13);
        emit Donated(msg.value, tokenRate * msg.value / stor13, block.number, msg.sender);
}



}
