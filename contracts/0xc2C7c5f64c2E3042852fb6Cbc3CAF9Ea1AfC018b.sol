contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;
uint256 stor6;
uint256 stor7;
uint256 stor11;

function _fallback() payable {
    stor3 = 0x8cd8baa410e9172b949f2c4433d3b5905f8606ff
    stor4 = 0xb4ec550893d31763c02ebda44dff90b7b5a62656
    stor6 = 420520 * 3600
    stor7 = 489440
    stor11 = 7500
    require not msg.value
    stor0 = msg.sender
    return code.data[152 len 5738]
}



// =====================  Runtime code  =====================


const TEAM_PERCENT_GZE = 30

const TIER3_BONUS = 15

const MIN_CONTRIBUTION_ETH = 10^16

const START_DATE = (420256 * 3600)

const TIER2_BONUS = 20

const CAP_USD = 35 * 10^6

const USD_CENT_PER_GZE = 35

const TOKEN_DECIMALS = 18

const TIER1_BONUS = 50


address owner;
address newOwner;
address bttsTokenAddress;
address walletAddress;
address teamWalletAddress;
address bonusListAddress;
uint256 endDate;
uint256 usdPerKEther;
uint256 contributedEth;
uint256 contributedUsd;
uint256 generatedGze;
uint256 lockedAccountThresholdUsd;
mapping of uint256 accountEthAmount;
uint8 precommitmentAdjusted;
uint8 finalised; offset 8

function finalised() {
    return bool(finalised)
}

function bonusList() {
    return bonusListAddress
}

function wallet() {
    return walletAddress
}

function teamWallet() {
    return teamWalletAddress
}

function generatedGze() {
    return generatedGze
}

function contributedUsd() {
    return contributedUsd
}

function owner() {
    return owner
}

function lockedAccountThresholdUsd() {
    return lockedAccountThresholdUsd
}

function contributedEth() {
    return contributedEth
}

function usdPerKEther() {
    return usdPerKEther
}

function endDate() {
    return endDate
}

function newOwner() {
    return newOwner
}

function bttsToken() {
    return bttsTokenAddress
}

function precommitmentAdjusted() {
    return bool(precommitmentAdjusted)
}

function accountEthAmount(address arg1) {
    return accountEthAmount[arg1]
}

function gzePerEth() {
    return (100 * 10^18 * usdPerKEther / 1000 / 35)
}

function capEth() {
    require usdPerKEther
    return (35000000000 * 10^18 / usdPerKEther)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function lockedAccountThresholdEth() {
    require usdPerKEther
    return (1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther)
}

function gzeFromEth(uint256 arg1, uint256 arg2) {
    return ((100 * arg1 * usdPerKEther) + (arg2 * arg1 * usdPerKEther) / 1000 / 35)
}

function setWallet(address arg1) {
    require owner == msg.sender
    emit WalletUpdated(walletAddress, arg1);
    walletAddress = arg1
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function setTeamWallet(address arg1) {
    require owner == msg.sender
    emit TeamWalletUpdated(teamWalletAddress, arg1);
    teamWalletAddress = arg1
}

function setEndDate(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= block.timestamp
    emit EndDateUpdated(endDate, arg1);
    endDate = arg1
}

function setUsdPerKEther(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp <= 420256 * 3600
    emit UsdPerKEtherUpdated(usdPerKEther, arg1);
    usdPerKEther = arg1
}

function roundUp(uint256 arg1) {
    if arg1 % 10^18 <= 0:
        return 0
    require arg1 + 10^18 >= arg1
    require arg1 % 10^18 <= arg1 + 10^18
    return (arg1 + -(arg1 % 10^18) + 10^18)
}

function setBonusList(address arg1) {
    require owner == msg.sender
    require block.timestamp <= 420256 * 3600
    emit BonusListUpdated(bonusListAddress, arg1);
    bonusListAddress = arg1
}

function setBTTSToken(address arg1) {
    require owner == msg.sender
    require block.timestamp <= 420256 * 3600
    emit BTTSTokenUpdated(bttsTokenAddress, arg1);
    bttsTokenAddress = arg1
}

function setLockedAccountThresholdUsd(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp <= 420256 * 3600
    emit LockedAccountThresholdUsdUpdated(lockedAccountThresholdUsd, arg1);
    lockedAccountThresholdUsd = arg1
}

function getBonusPercent(address arg1) {
    require ext_code.size(bonusListAddress)
    call bonusListAddress.0x76fbc07e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] == 1:
        return 50
    if 2 == ext_call.return_data[0]:
        return 20
    if ext_call.return_data[0] != 3:
        return 0
    return 15
}

function addPrecommitmentAdjustment(address arg1, uint256 arg2) {
    require owner == msg.sender
    if block.timestamp <= endDate:
        require usdPerKEther
        require contributedEth >= 35000000000 * 10^18 / usdPerKEther
    require not finalised
    require arg2 + generatedGze >= generatedGze
    generatedGze += arg2
    require usdPerKEther
    require ext_code.size(bttsTokenAddress)
    call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, accountEthAmount[address(arg1)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
    require ext_call.success
    precommitmentAdjusted = 1
    emit Contributed(0, 0, accountEthAmount[address(arg1)], 0, arg2, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(arg1)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, arg1);
}

function addPrecommitment(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require not finalised
    if arg2:
        require arg2
        require usdPerKEther * arg2 / arg2 == usdPerKEther
    require ((100 * arg2 * usdPerKEther) + (arg3 * arg2 * usdPerKEther) / 1000 / 35) + generatedGze >= generatedGze
    generatedGze += (100 * arg2 * usdPerKEther) + (arg3 * arg2 * usdPerKEther) / 1000 / 35
    require arg2 + contributedEth >= contributedEth
    contributedEth += arg2
    require (usdPerKEther * arg2 / 1000 * 10^18) + contributedUsd >= contributedUsd
    contributedUsd += usdPerKEther * arg2 / 1000 * 10^18
    require arg2 + accountEthAmount[address(arg1)] >= accountEthAmount[address(arg1)]
    accountEthAmount[address(arg1)] += arg2
    require usdPerKEther
    require ext_code.size(bttsTokenAddress)
    call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), (100 * arg2 * usdPerKEther) + (arg3 * arg2 * usdPerKEther) / 1000 / 35, accountEthAmount[address(arg1)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
    require ext_call.success
    emit Contributed(arg2, 0, accountEthAmount[address(arg1)], usdPerKEther * arg2 / 1000 * 10^18, (100 * arg2 * usdPerKEther) + (arg3 * arg2 * usdPerKEther) / 1000 / 35, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(arg1)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, arg1);
}

function finalise() {
    require owner == msg.sender
    require not finalised
    require precommitmentAdjusted
    if block.timestamp <= endDate:
        require usdPerKEther
        require contributedEth >= 35000000000 * 10^18 / usdPerKEther
    if generatedGze:
        require generatedGze
        require 100 * generatedGze / generatedGze == 100
    if 100 * generatedGze / 70:
        require 100 * generatedGze / 70
        require 30 * 100 * generatedGze / 70 / 100 * generatedGze / 70 == 30
    require (30 * 100 * generatedGze / 70 / 100) + generatedGze >= generatedGze
    generatedGze += 30 * 100 * generatedGze / 70 / 100
    if (30 * 100 * generatedGze / 70 / 100) + generatedGze % 10^18 <= 0:
        if 0 <= generatedGze:
            require ext_code.size(bttsTokenAddress)
            call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining - 710 wei
                args teamWalletAddress, 30 * 100 * generatedGze / 70 / 100, 0
        else:
            require generatedGze <= 0
            require 0 >= generatedGze
            generatedGze = 0
            require -generatedGze + (30 * 100 * generatedGze / 70 / 100) >= 30 * 100 * generatedGze / 70 / 100
            require ext_code.size(bttsTokenAddress)
            call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining - 710 wei
                args teamWalletAddress, -generatedGze + (30 * 100 * generatedGze / 70 / 100), 0
    else:
        require (30 * 100 * generatedGze / 70 / 100) + generatedGze % 10^18 <= (30 * 100 * generatedGze / 70 / 100) + generatedGze + 10^18
        if (30 * 100 * generatedGze / 70 / 100) + generatedGze + -((30 * 100 * generatedGze / 70 / 100) + generatedGze % 10^18) + 10^18 <= generatedGze:
            require ext_code.size(bttsTokenAddress)
            call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining - 710 wei
                args teamWalletAddress, 30 * 100 * generatedGze / 70 / 100, 0
        else:
            require generatedGze <= (30 * 100 * generatedGze / 70 / 100) + generatedGze + -((30 * 100 * generatedGze / 70 / 100) + generatedGze % 10^18) + 10^18
            require (30 * 100 * generatedGze / 70 / 100) + -((30 * 100 * generatedGze / 70 / 100) + generatedGze % 10^18) + generatedGze + 10^18 >= generatedGze
            generatedGze = (30 * 100 * generatedGze / 70 / 100) + -((30 * 100 * generatedGze / 70 / 100) + generatedGze % 10^18) + generatedGze + 10^18
            require (2 * 30 * 100 * generatedGze / 70 / 100) + -((30 * 100 * generatedGze / 70 / 100) + generatedGze % 10^18) + 10^18 >= 30 * 100 * generatedGze / 70 / 100
            require ext_code.size(bttsTokenAddress)
            call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining - 710 wei
                args teamWalletAddress, (2 * 30 * 100 * generatedGze / 70 / 100) + -((30 * 100 * generatedGze / 70 / 100) + generatedGze % 10^18) + 10^18, 0
    require ext_call.success
    require ext_code.size(bttsTokenAddress)
    call bttsTokenAddress.disableMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    finalised = 1
}

function _fallback() payable {
    if block.timestamp < 420256 * 3600:
        require owner == msg.sender
        require msg.value == 10^16
    else:
        if block.timestamp > endDate:
            require owner == msg.sender
            require msg.value == 10^16
    require usdPerKEther
    require contributedEth < 35000000000 * 10^18 / usdPerKEther
    require msg.value >= 10^16
    require ext_code.size(bonusListAddress)
    call bonusListAddress.0x76fbc07e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require usdPerKEther
    require msg.value + contributedEth >= contributedEth
    if ext_call.return_data[0] == 1:
        if msg.value + contributedEth <= 35000000000 * 10^18 / usdPerKEther:
            if msg.value:
                require msg.value
                require usdPerKEther * msg.value / msg.value == usdPerKEther
            require (150 * msg.value * usdPerKEther / 1000 / 35) + generatedGze >= generatedGze
            generatedGze += 150 * msg.value * usdPerKEther / 1000 / 35
            require msg.value + contributedEth >= contributedEth
            contributedEth += msg.value
            require (usdPerKEther * msg.value / 1000 * 10^18) + contributedUsd >= contributedUsd
            contributedUsd += usdPerKEther * msg.value / 1000 * 10^18
            require msg.value + accountEthAmount[address(msg.sender)] >= accountEthAmount[address(msg.sender)]
            accountEthAmount[address(msg.sender)] += msg.value
            require usdPerKEther
            require ext_code.size(bttsTokenAddress)
            call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 150 * msg.value * usdPerKEther / 1000 / 35, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
            require ext_call.success
            if msg.value > 0:
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit Contributed(msg.value, 0, accountEthAmount[address(msg.sender)], usdPerKEther * msg.value / 1000 * 10^18, 150 * msg.value * usdPerKEther / 1000 / 35, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, msg.sender);
        else:
            require usdPerKEther
            require contributedEth <= 35000000000 * 10^18 / usdPerKEther
            require (35000000000 * 10^18 / usdPerKEther) - contributedEth <= msg.value
            if (35000000000 * 10^18 / usdPerKEther) - contributedEth:
                require (35000000000 * 10^18 / usdPerKEther) - contributedEth
                require (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / (35000000000 * 10^18 / usdPerKEther) - contributedEth == usdPerKEther
            require ((150 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (150 * contributedEth * usdPerKEther) / 1000 / 35) + generatedGze >= generatedGze
            generatedGze += (150 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (150 * contributedEth * usdPerKEther) / 1000 / 35
            require 35000000000 * 10^18 / usdPerKEther >= contributedEth
            contributedEth = 35000000000 * 10^18 / usdPerKEther
            require ((35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18) + contributedUsd >= contributedUsd
            contributedUsd += (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18
            require (35000000000 * 10^18 / usdPerKEther) - contributedEth + accountEthAmount[address(msg.sender)] >= accountEthAmount[address(msg.sender)]
            accountEthAmount[address(msg.sender)] = (35000000000 * 10^18 / usdPerKEther) - contributedEth + accountEthAmount[address(msg.sender)]
            require usdPerKEther
            require ext_code.size(bttsTokenAddress)
            call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, (150 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (150 * contributedEth * usdPerKEther) / 1000 / 35, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
            require ext_call.success
            if (35000000000 * 10^18 / usdPerKEther) - contributedEth > 0:
                call walletAddress with:
                   value (35000000000 * 10^18 / usdPerKEther) - contributedEth wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit Contributed((35000000000 * 10^18 / usdPerKEther) - contributedEth, 0, accountEthAmount[address(msg.sender)], (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18, (150 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (150 * contributedEth * usdPerKEther) / 1000 / 35, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, msg.sender);
            if msg.value - (35000000000 * 10^18 / usdPerKEther) + contributedEth > 0:
                call msg.sender with:
                   value msg.value - (35000000000 * 10^18 / usdPerKEther) + contributedEth wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    else:
        if 2 == ext_call.return_data[0]:
            if msg.value + contributedEth <= 35000000000 * 10^18 / usdPerKEther:
                if msg.value:
                    require msg.value
                    require usdPerKEther * msg.value / msg.value == usdPerKEther
                require (120 * msg.value * usdPerKEther / 1000 / 35) + generatedGze >= generatedGze
                generatedGze += 120 * msg.value * usdPerKEther / 1000 / 35
                require msg.value + contributedEth >= contributedEth
                contributedEth += msg.value
                require (usdPerKEther * msg.value / 1000 * 10^18) + contributedUsd >= contributedUsd
                contributedUsd += usdPerKEther * msg.value / 1000 * 10^18
                require msg.value + accountEthAmount[address(msg.sender)] >= accountEthAmount[address(msg.sender)]
                accountEthAmount[address(msg.sender)] += msg.value
                require usdPerKEther
                require ext_code.size(bttsTokenAddress)
                call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 120 * msg.value * usdPerKEther / 1000 / 35, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
                require ext_call.success
                if msg.value > 0:
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit Contributed(msg.value, 0, accountEthAmount[address(msg.sender)], usdPerKEther * msg.value / 1000 * 10^18, 120 * msg.value * usdPerKEther / 1000 / 35, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, msg.sender);
            else:
                require usdPerKEther
                require contributedEth <= 35000000000 * 10^18 / usdPerKEther
                require (35000000000 * 10^18 / usdPerKEther) - contributedEth <= msg.value
                if (35000000000 * 10^18 / usdPerKEther) - contributedEth:
                    require (35000000000 * 10^18 / usdPerKEther) - contributedEth
                    require (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / (35000000000 * 10^18 / usdPerKEther) - contributedEth == usdPerKEther
                require ((120 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (120 * contributedEth * usdPerKEther) / 1000 / 35) + generatedGze >= generatedGze
                generatedGze += (120 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (120 * contributedEth * usdPerKEther) / 1000 / 35
                require 35000000000 * 10^18 / usdPerKEther >= contributedEth
                contributedEth = 35000000000 * 10^18 / usdPerKEther
                require ((35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18) + contributedUsd >= contributedUsd
                contributedUsd += (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18
                require (35000000000 * 10^18 / usdPerKEther) - contributedEth + accountEthAmount[address(msg.sender)] >= accountEthAmount[address(msg.sender)]
                accountEthAmount[address(msg.sender)] = (35000000000 * 10^18 / usdPerKEther) - contributedEth + accountEthAmount[address(msg.sender)]
                require usdPerKEther
                require ext_code.size(bttsTokenAddress)
                call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (120 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (120 * contributedEth * usdPerKEther) / 1000 / 35, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
                require ext_call.success
                if (35000000000 * 10^18 / usdPerKEther) - contributedEth > 0:
                    call walletAddress with:
                       value (35000000000 * 10^18 / usdPerKEther) - contributedEth wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit Contributed((35000000000 * 10^18 / usdPerKEther) - contributedEth, 0, accountEthAmount[address(msg.sender)], (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18, (120 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (120 * contributedEth * usdPerKEther) / 1000 / 35, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, msg.sender);
                if msg.value - (35000000000 * 10^18 / usdPerKEther) + contributedEth > 0:
                    call msg.sender with:
                       value msg.value - (35000000000 * 10^18 / usdPerKEther) + contributedEth wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if ext_call.return_data[0] != 3:
                if msg.value + contributedEth <= 35000000000 * 10^18 / usdPerKEther:
                    if msg.value:
                        require msg.value
                        require usdPerKEther * msg.value / msg.value == usdPerKEther
                    require (100 * msg.value * usdPerKEther / 1000 / 35) + generatedGze >= generatedGze
                    generatedGze += 100 * msg.value * usdPerKEther / 1000 / 35
                    require msg.value + contributedEth >= contributedEth
                    contributedEth += msg.value
                    require (usdPerKEther * msg.value / 1000 * 10^18) + contributedUsd >= contributedUsd
                    contributedUsd += usdPerKEther * msg.value / 1000 * 10^18
                    require msg.value + accountEthAmount[address(msg.sender)] >= accountEthAmount[address(msg.sender)]
                    accountEthAmount[address(msg.sender)] += msg.value
                    require usdPerKEther
                    require ext_code.size(bttsTokenAddress)
                    call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * msg.value * usdPerKEther / 1000 / 35, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
                    require ext_call.success
                    if msg.value > 0:
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit Contributed(msg.value, 0, accountEthAmount[address(msg.sender)], usdPerKEther * msg.value / 1000 * 10^18, 100 * msg.value * usdPerKEther / 1000 / 35, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, msg.sender);
                else:
                    require usdPerKEther
                    require contributedEth <= 35000000000 * 10^18 / usdPerKEther
                    require (35000000000 * 10^18 / usdPerKEther) - contributedEth <= msg.value
                    if (35000000000 * 10^18 / usdPerKEther) - contributedEth:
                        require (35000000000 * 10^18 / usdPerKEther) - contributedEth
                        require (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / (35000000000 * 10^18 / usdPerKEther) - contributedEth == usdPerKEther
                    require ((100 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (100 * contributedEth * usdPerKEther) / 1000 / 35) + generatedGze >= generatedGze
                    generatedGze += (100 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (100 * contributedEth * usdPerKEther) / 1000 / 35
                    require 35000000000 * 10^18 / usdPerKEther >= contributedEth
                    contributedEth = 35000000000 * 10^18 / usdPerKEther
                    require ((35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18) + contributedUsd >= contributedUsd
                    contributedUsd += (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18
                    require (35000000000 * 10^18 / usdPerKEther) - contributedEth + accountEthAmount[address(msg.sender)] >= accountEthAmount[address(msg.sender)]
                    accountEthAmount[address(msg.sender)] = (35000000000 * 10^18 / usdPerKEther) - contributedEth + accountEthAmount[address(msg.sender)]
                    require usdPerKEther
                    require ext_code.size(bttsTokenAddress)
                    call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (100 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (100 * contributedEth * usdPerKEther) / 1000 / 35, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
                    require ext_call.success
                    if (35000000000 * 10^18 / usdPerKEther) - contributedEth > 0:
                        call walletAddress with:
                           value (35000000000 * 10^18 / usdPerKEther) - contributedEth wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit Contributed((35000000000 * 10^18 / usdPerKEther) - contributedEth, 0, accountEthAmount[address(msg.sender)], (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18, (100 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (100 * contributedEth * usdPerKEther) / 1000 / 35, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, msg.sender);
                    if msg.value - (35000000000 * 10^18 / usdPerKEther) + contributedEth > 0:
                        call msg.sender with:
                           value msg.value - (35000000000 * 10^18 / usdPerKEther) + contributedEth wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                if msg.value + contributedEth <= 35000000000 * 10^18 / usdPerKEther:
                    if msg.value:
                        require msg.value
                        require usdPerKEther * msg.value / msg.value == usdPerKEther
                    require (115 * msg.value * usdPerKEther / 1000 / 35) + generatedGze >= generatedGze
                    generatedGze += 115 * msg.value * usdPerKEther / 1000 / 35
                    require msg.value + contributedEth >= contributedEth
                    contributedEth += msg.value
                    require (usdPerKEther * msg.value / 1000 * 10^18) + contributedUsd >= contributedUsd
                    contributedUsd += usdPerKEther * msg.value / 1000 * 10^18
                    require msg.value + accountEthAmount[address(msg.sender)] >= accountEthAmount[address(msg.sender)]
                    accountEthAmount[address(msg.sender)] += msg.value
                    require usdPerKEther
                    require ext_code.size(bttsTokenAddress)
                    call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 115 * msg.value * usdPerKEther / 1000 / 35, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
                    require ext_call.success
                    if msg.value > 0:
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit Contributed(msg.value, 0, accountEthAmount[address(msg.sender)], usdPerKEther * msg.value / 1000 * 10^18, 115 * msg.value * usdPerKEther / 1000 / 35, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, msg.sender);
                else:
                    require usdPerKEther
                    require contributedEth <= 35000000000 * 10^18 / usdPerKEther
                    require (35000000000 * 10^18 / usdPerKEther) - contributedEth <= msg.value
                    if (35000000000 * 10^18 / usdPerKEther) - contributedEth:
                        require (35000000000 * 10^18 / usdPerKEther) - contributedEth
                        require (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / (35000000000 * 10^18 / usdPerKEther) - contributedEth == usdPerKEther
                    require ((115 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (115 * contributedEth * usdPerKEther) / 1000 / 35) + generatedGze >= generatedGze
                    generatedGze += (115 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (115 * contributedEth * usdPerKEther) / 1000 / 35
                    require 35000000000 * 10^18 / usdPerKEther >= contributedEth
                    contributedEth = 35000000000 * 10^18 / usdPerKEther
                    require ((35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18) + contributedUsd >= contributedUsd
                    contributedUsd += (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18
                    require (35000000000 * 10^18 / usdPerKEther) - contributedEth + accountEthAmount[address(msg.sender)] >= accountEthAmount[address(msg.sender)]
                    accountEthAmount[address(msg.sender)] = (35000000000 * 10^18 / usdPerKEther) - contributedEth + accountEthAmount[address(msg.sender)]
                    require usdPerKEther
                    require ext_code.size(bttsTokenAddress)
                    call bttsTokenAddress.mint(address rg1, uint256 rg2, bool rg3) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (115 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (115 * contributedEth * usdPerKEther) / 1000 / 35, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther
                    require ext_call.success
                    if (35000000000 * 10^18 / usdPerKEther) - contributedEth > 0:
                        call walletAddress with:
                           value (35000000000 * 10^18 / usdPerKEther) - contributedEth wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit Contributed((35000000000 * 10^18 / usdPerKEther) - contributedEth, 0, accountEthAmount[address(msg.sender)], (35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18, (115 * 35000000000 * 10^18 / usdPerKEther * usdPerKEther) - (115 * contributedEth * usdPerKEther) / 1000 / 35, contributedEth, contributedUsd, generatedGze, accountEthAmount[address(msg.sender)] > 1000 * 10^18 * lockedAccountThresholdUsd / usdPerKEther, msg.sender);
                    if msg.value - (35000000000 * 10^18 / usdPerKEther) + contributedEth > 0:
                        call msg.sender with:
                           value msg.value - (35000000000 * 10^18 / usdPerKEther) + contributedEth wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
}



}
