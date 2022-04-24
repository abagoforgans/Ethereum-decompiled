contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor4; offset 24
uint256 stor4; offset 16
uint256 stor4; offset 8
uint256 stor5;
uint256 stor6;
uint256 stor8;

function _fallback() {
    stor1 = msg.sender
    stor0 = 0
    stor3 = 0
    stor2 = 0
    uint8(stor4.field_0) = 0
    Mask(248, 0, stor4.field_8) = 0
    Mask(240, 0, stor4.field_16) = 0
    Mask(232, 0, stor4.field_24) = 0
    stor5 = 4 * 10^6
    stor6 = 5 * 10^6
    stor8 = 100
    return code.data[254 len 7863]
}



// =====================  Runtime code  =====================


const name = 'Chain cell matrix'

const rate = 75000

const decimals = 18

const version = '1.0'

const symbol = 'CCM'

const TEAM_KEEPING = (150000 * 10^18 * 24 * 3600)

const MAX_SUPPLY = 3000000000 * 10^18

const MAX_FUNDING_SUPPLY = (250000 * 10^18 * 3600)

const TWO_YEAR_KEEPING = (120000 * 10^18 * 24 * 3600)

const THREE_YEAR_KEEPING = (160000 * 10^18 * 3600)

const ONE_YEAR_KEEPING = (120000 * 10^18 * 24 * 3600)

const PARTNER_SUPPLY = 120000000 * 10^18


uint256 totalSupply;
address owner;
uint256 totalPartnerSupply;
uint256 totalFundingSupply;
uint8 hasTeamKeepingWithdraw;
uint8 hasOneYearWithdraw; offset 8
uint8 hasTwoYearWithdraw; offset 16
uint8 hasThreeYearWithdraw; offset 24
uint256 stor4; offset 24
uint256 stor4; offset 16
uint256 stor4; offset 8
uint256 startBlock;
uint256 endBlock;
mapping of uint256 lockBalance;
uint256 lockRate;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function hasOneYearWithdraw() {
    return bool(hasOneYearWithdraw)
}

function totalPartnerSupply() {
    return totalPartnerSupply
}

function lockRate() {
    return lockRate
}

function hasTeamKeepingWithdraw() {
    return bool(hasTeamKeepingWithdraw)
}

function startBlock() {
    return startBlock
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function lockBalance(address arg1) {
    return lockBalance[arg1]
}

function hasThreeYearWithdraw() {
    return bool(hasThreeYearWithdraw)
}

function owner() {
    return owner
}

function hasTwoYearWithdraw() {
    return bool(hasTwoYearWithdraw)
}

function totalFundingSupply() {
    return totalFundingSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setLockRate(uint256 arg1) {
    require msg.sender == owner
    lockRate = arg1
}

function setupFundingInfo(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    startBlock = arg1
    endBlock = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function etherProceeds() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToTeam() {
    require msg.sender == owner
    require not hasTeamKeepingWithdraw
    require totalSupply + (150000 * 10^18 * 24 * 3600) >= totalSupply
    require 3000000000 * 10^18 >= totalSupply + (150000 * 10^18 * 24 * 3600)
    require totalSupply + (150000 * 10^18 * 24 * 3600) >= totalSupply
    totalSupply += 150000 * 10^18 * 24 * 3600
    balanceOf[address(msg.sender)] += 150000 * 10^18 * 24 * 3600
    emit CreateCCM((150000 * 10^18 * 24 * 3600), msg.sender);
    emit Transfer((150000 * 10^18 * 24 * 3600), 0, msg.sender);
    hasTeamKeepingWithdraw = 1
}

function withdrawForThreeYear() {
    require msg.sender == owner
    require not hasThreeYearWithdraw
    require block.timestamp > 438280 * 3600
    require totalSupply + (160000 * 10^18 * 3600) >= totalSupply
    require 3000000000 * 10^18 >= totalSupply + (160000 * 10^18 * 3600)
    require totalSupply + (160000 * 10^18 * 3600) >= totalSupply
    totalSupply += 160000 * 10^18 * 3600
    balanceOf[address(msg.sender)] += 160000 * 10^18 * 3600
    emit CreateCCM((160000 * 10^18 * 3600), msg.sender);
    emit Transfer((160000 * 10^18 * 3600), 0, msg.sender);
    Mask(232, 0, stor4.field_24) = 1
}

function withdrawForOneYear() {
    require msg.sender == owner
    require not hasOneYearWithdraw
    require block.timestamp > 420760 * 3600
    require totalSupply + (120000 * 10^18 * 24 * 3600) >= totalSupply
    require 3000000000 * 10^18 >= totalSupply + (120000 * 10^18 * 24 * 3600)
    require totalSupply + (120000 * 10^18 * 24 * 3600) >= totalSupply
    totalSupply += 120000 * 10^18 * 24 * 3600
    balanceOf[address(msg.sender)] += 120000 * 10^18 * 24 * 3600
    emit CreateCCM((120000 * 10^18 * 24 * 3600), msg.sender);
    emit Transfer((120000 * 10^18 * 24 * 3600), 0, msg.sender);
    Mask(248, 0, stor4.field_8) = 1
}

function withdrawForTwoYear() {
    require msg.sender == owner
    require not hasTwoYearWithdraw
    require block.timestamp > 429520 * 3600
    require totalSupply + (120000 * 10^18 * 24 * 3600) >= totalSupply
    require 3000000000 * 10^18 >= totalSupply + (120000 * 10^18 * 24 * 3600)
    require totalSupply + (120000 * 10^18 * 24 * 3600) >= totalSupply
    totalSupply += 120000 * 10^18 * 24 * 3600
    balanceOf[address(msg.sender)] += 120000 * 10^18 * 24 * 3600
    emit CreateCCM((120000 * 10^18 * 24 * 3600), msg.sender);
    emit Transfer((120000 * 10^18 * 24 * 3600), 0, msg.sender);
    Mask(240, 0, stor4.field_16) = 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if not lockBalance[address(msg.sender)]:
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg2 >= 0
    else:
        require lockBalance[address(msg.sender)]
        require lockBalance[address(msg.sender)] * lockRate / lockBalance[address(msg.sender)] == lockRate
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg2 >= lockBalance[address(msg.sender)] * lockRate / 100
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    if not lockBalance[address(arg1)]:
        require arg3 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - arg3 >= 0
    else:
        require lockBalance[address(arg1)]
        require lockBalance[address(arg1)] * lockRate / lockBalance[address(arg1)] == lockRate
        require arg3 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - arg3 >= lockBalance[address(arg1)] * lockRate / 100
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawToPartner(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg2:
        require totalPartnerSupply >= totalPartnerSupply
        require 120000000 * 10^18 >= totalPartnerSupply
    else:
        require arg2
        require arg2 / arg2 == 1
        require totalPartnerSupply + arg2 >= totalPartnerSupply
        require 120000000 * 10^18 >= totalPartnerSupply + arg2
    if not arg2:
        require totalSupply >= totalSupply
        require 3000000000 * 10^18 >= totalSupply
    else:
        require arg2
        require arg2 / arg2 == 1
        require totalSupply + arg2 >= totalSupply
        require 3000000000 * 10^18 >= totalSupply + arg2
    if not arg2:
        require totalSupply >= totalSupply
        emit CreateCCM(0, arg1);
        emit Transfer(0, 0, arg1);
    else:
        require arg2
        require arg2 / arg2 == 1
        require totalSupply + arg2 >= totalSupply
        totalSupply += arg2
        balanceOf[address(arg1)] += arg2
        emit CreateCCM(arg2, arg1);
        emit Transfer(arg2, 0, arg1);
    require totalPartnerSupply + arg2 >= totalPartnerSupply
    totalPartnerSupply += arg2
    require lockBalance[address(arg1)] + arg2 >= lockBalance[address(arg1)]
    lockBalance[address(arg1)] += arg2
}

function _fallback() payable {
    require block.number >= startBlock
    require block.number < endBlock
    if not msg.value:
        require totalFundingSupply >= totalFundingSupply
        require 250000 * 10^18 * 3600 >= totalFundingSupply
    else:
        require msg.value
        require 75000 * msg.value / msg.value == 75000
        require totalFundingSupply + (75000 * msg.value) >= totalFundingSupply
        require 250000 * 10^18 * 3600 >= totalFundingSupply + (75000 * msg.value)
    if not msg.value:
        require totalSupply >= totalSupply
        require 3000000000 * 10^18 >= totalSupply
    else:
        require msg.value
        require 75000 * msg.value / msg.value == 75000
        require totalSupply + (75000 * msg.value) >= totalSupply
        require 3000000000 * 10^18 >= totalSupply + (75000 * msg.value)
    if not msg.value:
        require totalSupply >= totalSupply
        emit CreateCCM(0, msg.sender);
        emit Transfer(0, 0, msg.sender);
    else:
        require msg.value
        require 75000 * msg.value / msg.value == 75000
        require totalSupply + (75000 * msg.value) >= totalSupply
        totalSupply += 75000 * msg.value
        balanceOf[address(msg.sender)] += 75000 * msg.value
        emit CreateCCM((75000 * msg.value), msg.sender);
        emit Transfer((75000 * msg.value), 0, msg.sender);
    if not msg.value:
        require totalFundingSupply >= totalFundingSupply
        require lockBalance[address(msg.sender)] >= lockBalance[address(msg.sender)]
    require msg.value
    require 75000 * msg.value / msg.value == 75000
    require totalFundingSupply + (75000 * msg.value) >= totalFundingSupply
    totalFundingSupply += 75000 * msg.value
    require lockBalance[address(msg.sender)] + (75000 * msg.value) >= lockBalance[address(msg.sender)]
    lockBalance[address(msg.sender)] += 75000 * msg.value
}



}
