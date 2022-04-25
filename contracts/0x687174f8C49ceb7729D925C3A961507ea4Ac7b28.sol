contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint8 stor8;
address stor8;
address stor8; offset 16
uint256 stor8; offset 8
address stor9;
address stor10;
address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor15;
uint256 stor16;
uint256 stor17;

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
    emit Transfer(0, 0, stor1);
    require 420420 * 3600 >= block.timestamp
    require address(code.data[14614 len 32])
    require address(code.data[14614 len 32]) != this.address
    require address(code.data[14646 len 32])
    require address(code.data[14646 len 32]) != this.address
    require address(code.data[14678 len 32])
    require address(code.data[14678 len 32]) != this.address
    require address(code.data[14710 len 32])
    require address(code.data[14710 len 32]) != this.address
    uint8(stor8.field_0) = 0
    Mask(248, 0, stor8.field_8) = 0
    stor16 = 420420 * 3600
    stor17 = 1515326399
    stor12 = 14800000
    stor15 = 2 * 10^18
    stor13 = 120
    address(stor8.field_16) = address(code.data[14614 len 32])
    stor9 = address(code.data[14646 len 32])
    stor10 = address(code.data[14678 len 32])
    stor11 = address(code.data[14710 len 32])
    require stor6[address(this.address)] + 145454828 * 10^18 >= stor6[address(this.address)]
    stor6[address(this.address)] += 145454828 * 10^18
    require stor0 + 145454828 * 10^18 >= stor0
    stor0 += 145454828 * 10^18
    emit Transfer(145454828 * 10^18, 0, this.address);
    require stor6[stor10] + 100000000 * 10^18 >= stor6[stor10]
    stor6[stor10] += 100000000 * 10^18
    require stor0 + 100000000 * 10^18 >= stor0
    stor0 += 100000000 * 10^18
    emit Transfer(100000000 * 10^18, 0, stor10);
    require stor6[stor11] >= stor6[stor11]
    require stor0 >= stor0
    emit Transfer(0, 0, stor11);
    require stor0 <= 1000000000 * 10^18
    require stor6[address(stor8.field_0)] + -stor0 + 1000000000 * 10^18 >= stor6[address(stor8.field_0)]
    stor6[address(stor8.field_0)] = stor6[address(stor8.field_0)] + -stor0 + 1000000000 * 10^18
    require 1000000000 * 10^18 >= stor0
    stor0 = 1000000000 * 10^18
    emit Transfer((-stor0 + 1000000000 * 10^18), 0, address(stor8.field_16));
    require stor6[address(this.address)] == 145454828 * 10^18
    require stor6[stor10] == 100000000 * 10^18
    require not stor6[stor11]
    require stor6[address(stor8.field_0)] == -stor0 + 1000000000 * 10^18
    require stor0 == 1000000000 * 10^18
    return code.data[3876 len 10738]
}



// =====================  Runtime code  =====================


const currentTime = block.timestamp

const PRESALE_BONUS = 120

const TOKEN_PRIVATE_SALE_CAP = 54545172 * 10^18

const DECIMALS = 18

const END_TIME = 1515326399

const TOKEN_FOUNDATION_CAP = 0

const TOKEN_RESERVE1_CAP = 100000000 * 10^18

const DECIMALSFACTOR = 10^18

const TOKEN_RESERVE2_CAP = 0

const NAME = 'GAT Token'

const TOKEN_FUTURE_CAP = 400000000 * 10^18

const CONTRIBUTION_MIN = 2 * 10^18

const TOKEN_PUBLIC_SALE_CAP = 445454828 * 10^18

const TOKEN_TOTAL_CAP = 1000000000 * 10^18

const START_TIME = (420420 * 3600)

const TOKEN_PRESALE_CAP = 145454828 * 10^18

const TOKENS_PER_KETHER = 14800000

const SYMBOL = 'GAT'


uint256 totalSupply;
address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 finalized;
uint8 suspended; offset 8
address stor8;
address bankAddress; offset 16
uint256 stor8; offset 8
address fundingAddress;
address reserve1Address;
address reserve2Address;
uint256 tokensPerKEther;
uint256 bonus;
uint256 totalTokensSold;
uint256 contributionMinimum;
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

function contributionMinimum() {
    return contributionMinimum
}

function totalTokensSold() {
    return totalTokensSold
}

function reserve1Address() {
    return reserve1Address
}

function suspended() {
    return bool(suspended)
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
    return bool(finalized)
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
    require msg.sender == newOwner
    owner = msg.sender
    emit OwnerChanged(msg.sender);
    return 1
}

function finalize() {
    require msg.sender == owner
    require not finalized
    finalized = 1
    emit TokenFinalized()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != owner
    newOwner = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function resume() {
    require msg.sender == owner
    if not suspended:
        return 0
    Mask(248, 0, stor8.field_8) = 0
    emit SaleResumed()
    return 1
}

function suspend() {
    require msg.sender == owner
    if bool(suspended) == 1:
        return 0
    Mask(248, 0, stor8.field_8) = 1
    emit SaleSuspended()
    return 1
}

function setTokensPerKEther(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    tokensPerKEther = arg1
    emit TokensPerKEtherUpdated(arg1);
    return 1
}

function setBonus(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= 100
    require arg1 <= 200
    bonus = arg1
    emit BonusAmountUpdated(arg1);
    return 1
}

function setContributionMinimum(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    contributionMinimum = arg1
    emit ContributionMinimumUpdated(arg1);
    return 1
}

function setTimeWindow(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 >= 420420 * 3600
    require arg2 > arg1
    startTime = arg1
    endTime = arg2
    emit TimeWindowUpdated(arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not finalized:
        if bankAddress != msg.sender:
            if arg1 != bankAddress:
                return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not finalized:
        if arg1 != bankAddress:
            if arg2 != bankAddress:
                return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function reclaimContractTokens() {
    require msg.sender == owner
    if not balanceOf[address(this.address)]:
        return 0
    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    require balanceOf[address(stor8.field_0)] + balanceOf[address(this.address)] >= balanceOf[address(stor8.field_0)]
    balanceOf[address(stor8.field_0)] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, bankAddress);
    emit ContractTokensReclaimed(balanceOf[address(this.address)]);
    return 1
}

function buyTokens(address arg1) payable {
    require not suspended
    require arg1
    require arg1 != this.address
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= contributionMinimum
    require fundingAddress != msg.sender
    require balanceOf[address(this.address)] > 0
    if msg.value:
        require msg.value
        require msg.value * tokensPerKEther / msg.value == tokensPerKEther
    if msg.value * tokensPerKEther:
        require msg.value * tokensPerKEther
        require msg.value * tokensPerKEther * bonus / msg.value * tokensPerKEther == bonus
    require msg.value * tokensPerKEther * bonus / 100000 > 0
    if msg.value * tokensPerKEther * bonus / 100000 <= balanceOf[address(this.address)]:
        require totalTokensSold + (msg.value * tokensPerKEther * bonus / 100000) >= totalTokensSold
        totalTokensSold += msg.value * tokensPerKEther * bonus / 100000
        require msg.value * tokensPerKEther * bonus / 100000 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= msg.value * tokensPerKEther * bonus / 100000
        require balanceOf[address(arg1)] + (msg.value * tokensPerKEther * bonus / 100000) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value * tokensPerKEther * bonus / 100000
        emit Transfer((msg.value * tokensPerKEther * bonus / 100000), this.address, arg1);
        require 0 <= msg.value
        call fundingAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokensPurchased(msg.value, msg.value * tokensPerKEther * bonus / 100000, arg1);
        return (msg.value * tokensPerKEther * bonus / 100000)
    if tokensPerKEther:
        require tokensPerKEther
        require tokensPerKEther * bonus / tokensPerKEther == bonus
    if balanceOf[address(this.address)]:
        require balanceOf[address(this.address)]
        require 100000 * balanceOf[address(this.address)] / balanceOf[address(this.address)] == 100000
    require tokensPerKEther * bonus
    require 100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus <= msg.value
    require totalTokensSold + balanceOf[address(this.address)] >= totalTokensSold
    totalTokensSold += balanceOf[address(this.address)]
    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    require balanceOf[address(arg1)] + balanceOf[address(this.address)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, arg1);
    if msg.value - (100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus) > 0:
        call msg.sender with:
           value msg.value - (100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value - (100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus) <= msg.value
    call fundingAddress with:
       value 100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit TokensPurchased(100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus, balanceOf[address(this.address)], arg1);
    return balanceOf[address(this.address)]
}

function _fallback() payable {
    require not suspended
    require msg.sender
    require this.address != msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= contributionMinimum
    require fundingAddress != msg.sender
    require balanceOf[address(this.address)] > 0
    if msg.value:
        require msg.value
        require msg.value * tokensPerKEther / msg.value == tokensPerKEther
    if msg.value * tokensPerKEther:
        require msg.value * tokensPerKEther
        require msg.value * tokensPerKEther * bonus / msg.value * tokensPerKEther == bonus
    require msg.value * tokensPerKEther * bonus / 100000 > 0
    if msg.value * tokensPerKEther * bonus / 100000 <= balanceOf[address(this.address)]:
        require totalTokensSold + (msg.value * tokensPerKEther * bonus / 100000) >= totalTokensSold
        totalTokensSold += msg.value * tokensPerKEther * bonus / 100000
        require msg.value * tokensPerKEther * bonus / 100000 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= msg.value * tokensPerKEther * bonus / 100000
        require balanceOf[address(msg.sender)] + (msg.value * tokensPerKEther * bonus / 100000) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * tokensPerKEther * bonus / 100000
        emit Transfer((msg.value * tokensPerKEther * bonus / 100000), this.address, msg.sender);
        require 0 <= msg.value
        call fundingAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokensPurchased(msg.value, msg.value * tokensPerKEther * bonus / 100000, msg.sender);
    else:
        if tokensPerKEther:
            require tokensPerKEther
            require tokensPerKEther * bonus / tokensPerKEther == bonus
        if balanceOf[address(this.address)]:
            require balanceOf[address(this.address)]
            require 100000 * balanceOf[address(this.address)] / balanceOf[address(this.address)] == 100000
        require tokensPerKEther * bonus
        require 100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus <= msg.value
        require totalTokensSold + balanceOf[address(this.address)] >= totalTokensSold
        totalTokensSold += balanceOf[address(this.address)]
        require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] = 0
        require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
        if msg.value - (100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus) > 0:
            call msg.sender with:
               value msg.value - (100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.value - (100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus) <= msg.value
        call fundingAddress with:
           value 100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokensPurchased(100000 * balanceOf[address(this.address)] / tokensPerKEther * bonus, balanceOf[address(this.address)], msg.sender);
}



}
