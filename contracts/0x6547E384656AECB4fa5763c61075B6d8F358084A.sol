contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint16 stor8;
address stor8;
address stor8; offset 16
address stor9;
address stor10;
address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor15;
uint256 stor16;

function _fallback() {
    stor1 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'GAT' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'GAT Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor0 = 0
    emit code.data[7790 len 32]: 0, 0, stor1
    require 419220 * 3600 >= block.timestamp
    require address(code.data[7822 len 32])
    require address(code.data[7822 len 32]) != this.address
    require address(code.data[7854 len 32])
    require address(code.data[7854 len 32]) != this.address
    require address(code.data[7886 len 32])
    require address(code.data[7886 len 32]) != this.address
    require address(code.data[7918 len 32])
    require address(code.data[7918 len 32]) != this.address
    stor15 = 419220 * 3600
    stor16 = 1511870399
    stor12 = 1500000
    stor13 = 120
    uint16(stor8.field_0) = 0
    address(stor8.field_16) = address(code.data[7822 len 32])
    stor9 = address(code.data[7854 len 32])
    stor10 = address(code.data[7886 len 32])
    stor11 = address(code.data[7918 len 32])
    require stor6[address(this.address)] + 15000000 * 10^18 >= stor6[address(this.address)]
    stor6[address(this.address)] += 15000000 * 10^18
    require stor0 + 15000000 * 10^18 >= stor0
    stor0 += 15000000 * 10^18
    emit code.data[7790 len 32]: 15000000 * 10^18, 0, this.address
    require stor6[stor10] + 50000000 * 10^18 >= stor6[stor10]
    stor6[stor10] += 50000000 * 10^18
    require stor0 + 50000000 * 10^18 >= stor0
    stor0 += 50000000 * 10^18
    emit code.data[7790 len 32]: 50000000 * 10^18, 0, stor10
    require stor6[stor11] + 50000000 * 10^18 >= stor6[stor11]
    stor6[stor11] += 50000000 * 10^18
    require stor0 + 50000000 * 10^18 >= stor0
    stor0 += 50000000 * 10^18
    emit code.data[7790 len 32]: 50000000 * 10^18, 0, stor11
    require stor0 <= 1000000000 * 10^18
    require -stor0 + stor6[address(stor8.field_0)] + 1000000000 * 10^18 >= stor6[address(stor8.field_0)]
    stor6[address(stor8.field_0)] = -stor0 + stor6[address(stor8.field_0)] + 1000000000 * 10^18
    require 1000000000 * 10^18 >= stor0
    stor0 = 1000000000 * 10^18
    emit code.data[7790 len 32]: (-stor0 + 1000000000 * 10^18), 0, address(stor8.field_16)
    require stor6[address(this.address)] == 15000000 * 10^18
    require stor6[stor10] == 50000000 * 10^18
    require stor6[stor11] == 50000000 * 10^18
    require stor6[address(stor8.field_0)] == -stor0 + 1000000000 * 10^18
    require 1000000000 * 10^18 == stor0
    return code.data[2168 len 5622]
}



// =====================  Runtime code  =====================


const currentTime = block.timestamp

const PRESALE_BONUS = 120

const TOKEN_PRIVATE_SALE_CAP = 70000000 * 10^18

const DECIMALS = 18

const END_TIME = 1511870399

const TOKEN_FOUNDATION_CAP = 100000000 * 10^18

const TOKEN_RESERVE1_CAP = 50000000 * 10^18

const DECIMALSFACTOR = 10^18

const TOKEN_RESERVE2_CAP = 50000000 * 10^18

const NAME = 'GAT Token'

const TOKEN_FUTURE_CAP = 600000000 * 10^18

const CONTRIBUTION_MIN = 10^17

const TOKEN_PUBLIC_SALE_CAP = 130000000 * 10^18

const TOKEN_TOTAL_CAP = 1000000000 * 10^18

const START_TIME = (419220 * 3600)

const TOKEN_PRESALE_CAP = 15000000 * 10^18

const TOKENS_PER_KETHER = 1500000

const SYMBOL = 'GAT'


uint256 totalSupply;
address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor8;
uint8 stor8; offset 8
address stor8;
address bankAddress; offset 16
address fundingAddress;
address reserve1Address;
address reserve2Address;
uint256 tokensPerKEther;
uint256 bonus;
uint256 totalTokensSold;
uint256 startTime;
uint256 endTime;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function totalTokensSold() {
    return totalTokensSold
}

function reserve1Address() {
    return reserve1Address
}

function suspended() {
    return bool(uint8(stor8.field_8))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function bonus() {
    return bonus
}

function bankAddress() {
    return bankAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function reserve2Address() {
    return reserve2Address
}

function tokensPerKEther() {
    return tokensPerKEther
}

function finalized() {
    return bool(uint8(stor8.field_0))
}

function fundingAddress() {
    return fundingAddress
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function acceptOwnership() {
    require newOwner == msg.sender
    owner = msg.sender
    emit OwnerChanged(msg.sender);
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    require owner != arg1
    newOwner = arg1
    return 1
}

function finalize() {
    require owner == msg.sender
    require not uint8(stor8.field_0)
    uint8(stor8.field_0) = 1
    emit TokenFinalized()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function resume() {
    require owner == msg.sender
    if not uint8(stor8.field_8):
        return 0
    uint8(stor8.field_8) = 0
    emit SaleResumed()
    return 1
}

function setTokensPerKEther(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    tokensPerKEther = arg1
    emit TokensPerKEtherUpdated(arg1);
    return 1
}

function suspend() {
    require owner == msg.sender
    if 1 == bool(uint8(stor8.field_8)):
        return 0
    uint8(stor8.field_8) = 1
    emit SaleSuspended()
    return 1
}

function setBonus(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= 100
    require arg1 <= 200
    bonus = arg1
    emit BonusAmountUpdated(arg1);
    return 1
}

function setTimeWindow(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1 >= 419220 * 3600
    require arg2 > arg1
    startTime = arg1
    endTime = arg2
    emit TimeWindowUpdated(arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor8.field_0):
        if bankAddress != msg.sender:
            if bankAddress != arg1:
                return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor8.field_0):
        if bankAddress != arg1:
            if bankAddress != arg2:
                return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function reclaimContractTokens() {
    require owner == msg.sender
    if not balanceOf[address(this.address)]:
        return 0
    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    require balanceOf[address(this.address)] + balanceOf[address(stor8.field_16)] >= balanceOf[address(stor8.field_16)]
    balanceOf[address(stor8.field_0)] = balanceOf[address(this.address)] + balanceOf[address(stor8.field_16)]
    emit Transfer(balanceOf[address(this.address)], this.address, bankAddress);
    emit ContractTokensReclaimed(balanceOf[address(this.address)]);
    return 1
}

function buyTokens(address arg1) payable {
    require not uint8(stor8.field_8)
    require arg1
    require arg1 != this.address
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= 10^17
    require fundingAddress != msg.sender
    require balanceOf[address(this.address)] > 0
    if msg.value:
        require msg.value
        require tokensPerKEther * msg.value / msg.value == tokensPerKEther
    if tokensPerKEther * msg.value:
        require tokensPerKEther * msg.value
        require bonus * tokensPerKEther * msg.value / tokensPerKEther * msg.value == bonus
    require bonus * tokensPerKEther * msg.value / 100000 > 0
    if bonus * tokensPerKEther * msg.value / 100000 <= balanceOf[address(this.address)]:
        require (bonus * tokensPerKEther * msg.value / 100000) + totalTokensSold >= totalTokensSold
        totalTokensSold += bonus * tokensPerKEther * msg.value / 100000
        require bonus * tokensPerKEther * msg.value / 100000 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= bonus * tokensPerKEther * msg.value / 100000
        require (bonus * tokensPerKEther * msg.value / 100000) + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = (bonus * tokensPerKEther * msg.value / 100000) + balanceOf[arg1]
        emit Transfer((bonus * tokensPerKEther * msg.value / 100000), this.address, arg1);
        require 0 <= msg.value
        require msg.value / 20 <= msg.value
        call fundingAddress with:
           value msg.value - (msg.value / 20) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call reserve1Address with:
           value msg.value / 20 wei
             gas 2300 * is_zero(value) wei
        emit TokensPurchased(msg.value, bonus * tokensPerKEther * msg.value / 100000, arg1);
        return (bonus * tokensPerKEther * msg.value / 100000)
    if tokensPerKEther:
        require tokensPerKEther
        require bonus * tokensPerKEther / tokensPerKEther == bonus
    if balanceOf[address(this.address)]:
        require balanceOf[address(this.address)]
        require 100000 * balanceOf[address(this.address)] / balanceOf[address(this.address)] == 100000
    require bonus * tokensPerKEther
    require 100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther <= msg.value
    require balanceOf[address(this.address)] + totalTokensSold >= totalTokensSold
    totalTokensSold += balanceOf[address(this.address)]
    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    require balanceOf[address(this.address)] + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[address(this.address)] + balanceOf[arg1]
    emit Transfer(balanceOf[address(this.address)], this.address, arg1);
    if msg.value - (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther) > 0:
        call msg.sender with:
           value msg.value - (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value - (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther) <= msg.value
    require 100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther / 20 <= 100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther
    call fundingAddress with:
       value (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther) - (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther / 20) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call reserve1Address with:
       value 100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther / 20 wei
         gas 2300 * is_zero(value) wei
    emit TokensPurchased(100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther, balanceOf[address(this.address)], arg1);
    return balanceOf[address(this.address)]
}

function _fallback() payable {
    require not uint8(stor8.field_8)
    require msg.sender
    require this.address != msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= 10^17
    require fundingAddress != msg.sender
    require balanceOf[address(this.address)] > 0
    if msg.value:
        require msg.value
        require tokensPerKEther * msg.value / msg.value == tokensPerKEther
    if tokensPerKEther * msg.value:
        require tokensPerKEther * msg.value
        require bonus * tokensPerKEther * msg.value / tokensPerKEther * msg.value == bonus
    require bonus * tokensPerKEther * msg.value / 100000 > 0
    if bonus * tokensPerKEther * msg.value / 100000 <= balanceOf[address(this.address)]:
        require (bonus * tokensPerKEther * msg.value / 100000) + totalTokensSold >= totalTokensSold
        totalTokensSold += bonus * tokensPerKEther * msg.value / 100000
        require bonus * tokensPerKEther * msg.value / 100000 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= bonus * tokensPerKEther * msg.value / 100000
        require (bonus * tokensPerKEther * msg.value / 100000) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (bonus * tokensPerKEther * msg.value / 100000) + balanceOf[msg.sender]
        emit Transfer((bonus * tokensPerKEther * msg.value / 100000), this.address, msg.sender);
        require 0 <= msg.value
        require msg.value / 20 <= msg.value
        call fundingAddress with:
           value msg.value - (msg.value / 20) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call reserve1Address with:
           value msg.value / 20 wei
             gas 2300 * is_zero(value) wei
        emit TokensPurchased(msg.value, bonus * tokensPerKEther * msg.value / 100000, msg.sender);
    else:
        if tokensPerKEther:
            require tokensPerKEther
            require bonus * tokensPerKEther / tokensPerKEther == bonus
        if balanceOf[address(this.address)]:
            require balanceOf[address(this.address)]
            require 100000 * balanceOf[address(this.address)] / balanceOf[address(this.address)] == 100000
        require bonus * tokensPerKEther
        require 100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther <= msg.value
        require balanceOf[address(this.address)] + totalTokensSold >= totalTokensSold
        totalTokensSold += balanceOf[address(this.address)]
        require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] = 0
        require balanceOf[address(this.address)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = balanceOf[address(this.address)] + balanceOf[msg.sender]
        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
        if msg.value - (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther) > 0:
            call msg.sender with:
               value msg.value - (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.value - (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther) <= msg.value
        require 100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther / 20 <= 100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther
        call fundingAddress with:
           value (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther) - (100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther / 20) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call reserve1Address with:
           value 100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther / 20 wei
             gas 2300 * is_zero(value) wei
        emit TokensPurchased(100000 * balanceOf[address(this.address)] / bonus * tokensPerKEther, balanceOf[address(this.address)], msg.sender);
}



}
