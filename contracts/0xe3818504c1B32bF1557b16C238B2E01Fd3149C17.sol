contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
uint256 stor12;
address stor13;
uint8 stor16;
uint256 stor17;

function _fallback() payable {
    stor8 = 0x4162ad6eec341e438eabe85f52a941b078210819
    stor9 = 0xe72ba5c6f63ddd395df9582800e2821ce5a05d75
    stor10 = 0xf0231160bd1a2a2d25aed2f11b8360ebf56f6153
    stor12 = 0
    require not msg.value
    stor3 = msg.sender
    require code.data[9173 len 20]
    require code.data[9205 len 20]
    stor13 = code.data[9173 len 20]
    stor17 = 0
    stor0 = 800000000 * 10^18
    stor11 = code.data[9205 len 20]
    stor1[stor8] = 8000000 * 10^18
    create contract with 0 wei
                    code: code.data[8104 len 1057], 3, stor10, 120000000 * 10^18
    require create.new_address
    stor7 = address(create.new_address)
    stor1[address(create.new_address)] = 120000000 * 10^18
    create contract with 0 wei
                    code: code.data[8104 len 1057], 3, stor9, 80000000 * 10^18
    stor6 = address(create.new_address)
    stor1[address(create.new_address)] = 80000000 * 10^18
    stor16 = 0
    return code.data[639 len 7465]
}



// =====================  Runtime code  =====================


const name = ''

const maxPresaleTokens = 48000000 * 10^18

const decimals = 18

const lockedTeamAllocationTokens = 16000000 * 10^18

const minTokensForSale = 32000000 * 10^18

const twentyThirtyTokens = 80000000 * 10^18

const tokenPrice = 5 * 10^14

const futureTokens = 120000000 * 10^18

const symbol = ''

const unlockedTeamAllocationTokens = 8000000 * 10^18

const totalAvailableForSale = 528000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address teamAllocationAddress;
address unsoldTokensAddress;
address twentyThirtyAllocationAddress;
address futureSaleAllocationAddress;
address unlockedTeamStorageVaultAddress;
address twentyThirtyVaultAddress;
address futureSaleVaultAddress;
address stor11;
uint256 stor12;
address pillarTokenFactoryAddress;
uint256 stor14;
uint256 stor15;
uint8 stor16;
uint256 stor17;

function futureSaleVault() {
    return futureSaleVaultAddress
}

function totalSupply() {
    return totalSupply
}

function fundingStatus() {
    return bool(stor16)
}

function teamAllocation() {
    return teamAllocationAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function unlockedTeamStorageVault() {
    return unlockedTeamStorageVaultAddress
}

function owner() {
    return owner
}

function twentyThirtyVault() {
    return twentyThirtyVaultAddress
}

function twentyThirtyAllocation() {
    return twentyThirtyAllocationAddress
}

function unsoldTokens() {
    return unsoldTokensAddress
}

function pillarTokenFactory() {
    return pillarTokenFactoryAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function futureSaleAllocation() {
    return futureSaleAllocationAddress
}

function pauseTokenSale() {
    require owner == msg.sender
    require stor16
    stor16 = 0
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function numberOfTokensLeft() {
    require stor17 <= 528000000 * 10^18
    return (-stor17 + 528000000 * 10^18)
}

function unPauseTokenSale() {
    require owner == msg.sender
    require not stor16
    stor16 = 1
    return 1
}

function allocateForRefund() payable {
    require owner == msg.sender
    emit MoneyAddedForRefund(msg.sender, msg.value, eth.balance(this.address));
    return eth.balance(this.address)
}

function startTokenSale(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor16
    require arg2 > arg1
    stor14 = arg1
    stor15 = arg2
    stor16 = 1
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit code.data[7390 len 32]: arg2, msg.sender, arg1
}

function allocateTokens(address arg1, uint256 arg2) {
    require not stor16
    require owner == msg.sender
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require (10^18 * arg2) + stor12 >= stor12
    stor12 += 10^18 * arg2
    require (10^18 * arg2) + stor12 <= 48000000 * 10^18
    require (10^18 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^18 * arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit code.data[7390 len 32]: arg3, arg1, arg2
}

function refund() {
    require stor16
    require block.number > stor15
    require stor17 < 32000000 * 10^18
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)]
    require 5 * 10^14 * balanceOf[address(msg.sender)] / balanceOf[address(msg.sender)] == 5 * 10^14
    call msg.sender with:
       value 5 * 10^14 * balanceOf[address(msg.sender)] / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refund((5 * 10^14 * balanceOf[address(msg.sender)] / 10^18), msg.sender);
}

function purchase() payable {
    require stor16
    require block.number >= stor14
    require block.number <= stor15
    require stor17 < 528000000 * 10^18
    require msg.value >= 5 * 10^14
    require msg.value / 5 * 10^14 >= 1
    call pillarTokenFactoryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if msg.value / 5 * 10^14:
        require msg.value / 5 * 10^14
        require 10^18 * msg.value / 5 * 10^14 / msg.value / 5 * 10^14 == 10^18
    require (10^18 * msg.value / 5 * 10^14) + stor17 >= stor17
    stor17 += 10^18 * msg.value / 5 * 10^14
    require (10^18 * msg.value / 5 * 10^14) + stor17 <= 528000000 * 10^18
    require (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / 5 * 10^14
    emit code.data[7390 len 32]: (10^18 * msg.value / 5 * 10^14), 0, msg.sender
}

function _fallback() payable {
    require stor16
    require block.number >= stor14
    require block.number <= stor15
    require stor17 < 528000000 * 10^18
    require msg.value >= 5 * 10^14
    require msg.value / 5 * 10^14 >= 1
    call pillarTokenFactoryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if msg.value / 5 * 10^14:
        require msg.value / 5 * 10^14
        require 10^18 * msg.value / 5 * 10^14 / msg.value / 5 * 10^14 == 10^18
    require (10^18 * msg.value / 5 * 10^14) + stor17 >= stor17
    stor17 += 10^18 * msg.value / 5 * 10^14
    require (10^18 * msg.value / 5 * 10^14) + stor17 <= 528000000 * 10^18
    require (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / 5 * 10^14
    emit code.data[7390 len 32]: (10^18 * msg.value / 5 * 10^14), 0, msg.sender
}

function finalize() {
    require stor16
    require owner == msg.sender
    require block.number > stor15
    require stor17 >= 32000000 * 10^18
    require stor11
    stor16 = 0
    create contract with 0 wei
                    code: code.data[5249 len 1084]
    require create.new_address
    teamAllocationAddress = address(create.new_address)
    balanceOf[address(create.new_address)] = 16000000 * 10^18
    require stor17 <= 528000000 * 10^18
    if -stor17 + 528000000 * 10^18 <= 0:
        call pillarTokenFactoryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        create contract with 0 wei
                        code: code.data[6333 len 1057], 10, stor11, -stor17 + 528000000 * 10^18
        if create.new_address:
            unsoldTokensAddress = address(create.new_address)
            balanceOf[address(create.new_address)] = -stor17 + 528000000 * 10^18
            call pillarTokenFactoryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert
}



}
