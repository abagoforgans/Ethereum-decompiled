contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 tokenPrice;
uint256 rate;
uint256 usdPerEth;
uint256 sub_1f542c78;
uint256 ethHardCap;
mapping of uint8 stor7;
uint8 stor8;
uint8 currentStage; offset 8
mapping of uint256 sub_276a28c9;
mapping of uint256 sub_2348fb22;
mapping of uint256 stageBonus;
uint256 sub_dfa2fe44;
uint256 sub_6411a8e9;
address tokenAddress;
address walletAddress;
uint256 weiRaised;

function getStageBonus() {
    require currentStage <= 8
    return stageBonus[stor8]
}

function sub_1f542c78(?) {
    return sub_1f542c78
}

function sub_2348fb22(?) {
    return sub_2348fb22[arg1]
}

function sub_276a28c9(?) {
    return sub_276a28c9[arg1]
}

function icoActive() {
    return bool(stor8)
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function ethHardCap() {
    return ethHardCap
}

function currentStage() {
    require currentStage <= 8
    return currentStage
}

function usdPerEth() {
    return usdPerEth
}

function sub_6411a8e9(?) {
    return sub_6411a8e9
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function sub_a79faf32(?) {
    return stageBonus[arg1]
}

function sub_dfa2fe44(?) {
    return sub_dfa2fe44
}

function privateWhitelist(address arg1) {
    return bool(stor7[arg1])
}

function token() {
    return tokenAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_168b836f(?) {
    require msg.sender == owner
    require stor8
    stor8 = 0
}

function addToWhitelist(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function startPreSale() {
    require msg.sender == owner
    require currentStage <= 8
    require not currentStage
    currentStage = 1
    stor8 = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0f009179(?) {
    require msg.sender == owner
    require currentStage <= 8
    require currentStage == 2
    currentStage = 3
    stor8 = 1
}

function sub_24ba21de(?) {
    require msg.sender == owner
    require currentStage <= 8
    require currentStage == 7
    currentStage = 8
    stor8 = 1
}

function sub_63a58408(?) {
    require msg.sender == owner
    require currentStage <= 8
    require currentStage == 6
    currentStage = 7
    stor8 = 1
}

function sub_6e597fb5(?) {
    require msg.sender == owner
    require currentStage <= 8
    require currentStage == 4
    currentStage = 5
    stor8 = 1
}

function sub_a44343f6(?) {
    require msg.sender == owner
    require currentStage <= 8
    require currentStage == 1
    currentStage = 2
    stor8 = 1
}

function sub_a5f5f7e1(?) {
    require msg.sender == owner
    require currentStage <= 8
    require currentStage == 3
    currentStage = 4
    stor8 = 1
}

function sub_d297ac6c(?) {
    require msg.sender == owner
    require currentStage <= 8
    require currentStage == 5
    currentStage = 6
    stor8 = 1
}

function startPrivateSale() {
    require msg.sender == owner
    require currentStage <= 8
    require not currentStage
    require not stor8
    stor8 = 1
}

function sub_6830aa07(?) {
    require msg.sender == owner
    require arg1 > 0
    tokenPrice = arg1
    if not usdPerEth:
        require arg1 > 0
        require arg1
        rate = 0 / arg1
    else:
        require 1000 * usdPerEth / usdPerEth == 1000
        require arg1 > 0
        require arg1
        rate = 1000 * usdPerEth / arg1
}

function burnExtraTokens() {
    require msg.sender == owner
    if sub_dfa2fe44 > sub_6411a8e9:
        require sub_6411a8e9 <= sub_dfa2fe44
        sub_dfa2fe44 = sub_6411a8e9
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9c3129c5 with:
             gas gas_remaining wei
            args (sub_dfa2fe44 - sub_6411a8e9)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_d8b7afc4(?) {
    require msg.sender == owner
    require arg2 + sub_6411a8e9 >= sub_6411a8e9
    require sub_dfa2fe44 >= arg2 + sub_6411a8e9
    require arg2 + sub_6411a8e9 >= sub_6411a8e9
    sub_6411a8e9 += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_54dbbe9e(?) {
    require msg.sender == owner
    require arg1 > 0
    usdPerEth = arg1
    if not arg1:
        require tokenPrice > 0
        require tokenPrice
        rate = 0 / tokenPrice
    else:
        require 1000 * arg1 / arg1 == 1000
        require tokenPrice > 0
        require tokenPrice
        rate = 1000 * arg1 / tokenPrice
    require arg1 > 0
    require arg1
    if not sub_1f542c78 / arg1:
        ethHardCap = 0
    else:
        require 10^18 * sub_1f542c78 / arg1 / sub_1f542c78 / arg1 == 10^18
        ethHardCap = 10^18 * sub_1f542c78 / arg1
}

function endIco() {
    require msg.sender == owner
    require currentStage <= 8
    require currentStage == 8
    require stor8
    stor8 = 0
    require msg.sender == owner
    if sub_dfa2fe44 > sub_6411a8e9:
        require sub_6411a8e9 <= sub_dfa2fe44
        sub_dfa2fe44 = sub_6411a8e9
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9c3129c5 with:
             gas gas_remaining wei
            args (sub_dfa2fe44 - sub_6411a8e9)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function transferSoldTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require currentStage <= 8
    require arg2 + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
    require currentStage <= 8
    require sub_276a28c9[stor8] >= arg2 + sub_2348fb22[stor8]
    require currentStage <= 8
    require arg2 + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
    require currentStage <= 8
    sub_2348fb22[stor8] += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function getStageName() {
    require currentStage <= 8
    if not currentStage:
        return 'Private Sale'
    require currentStage <= 8
    if currentStage == 1:
        return 'Pre Sale'
    require currentStage <= 8
    if currentStage == 2:
        return 'ICO 1 stage'
    require currentStage <= 8
    if currentStage == 3:
        return 'ICO 2 stage'
    require currentStage <= 8
    if currentStage == 4:
        return 'ICO 3 stage'
    require currentStage <= 8
    if currentStage == 5:
        return 'ICO 4 stage'
    require currentStage <= 8
    if currentStage == 6:
        return 'ICO 5 stage'
    require currentStage <= 8
    if currentStage == 7:
        return 'ICO 6 stage'
    require currentStage <= 8
    if currentStage != 8:
        return ' '
    return 'ICO 7 stage'
}

function buyTokens(address arg1) payable {
    stor1++
    require stor8
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require ethHardCap >= msg.value + weiRaised
    require currentStage <= 8
    if not currentStage:
        require stor7[address(arg1)]
    if not msg.value:
        require currentStage <= 8
        require currentStage <= 8
        require sub_2348fb22[stor8] >= sub_2348fb22[stor8]
        require currentStage <= 8
        require sub_276a28c9[stor8] >= sub_2348fb22[stor8]
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require currentStage <= 8
        require sub_2348fb22[stor8] >= sub_2348fb22[stor8]
        require currentStage <= 8
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require currentStage <= 8
        if not rate * msg.value:
            require rate * msg.value >= rate * msg.value
            require currentStage <= 8
            require (rate * msg.value) + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
            require currentStage <= 8
            require sub_276a28c9[stor8] >= (rate * msg.value) + sub_2348fb22[stor8]
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require currentStage <= 8
            require (rate * msg.value) + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
            require currentStage <= 8
            sub_2348fb22[stor8] += rate * msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), rate * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
        else:
            require stageBonus[stor8] * rate * msg.value / rate * msg.value == stageBonus[stor8]
            require (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
            require currentStage <= 8
            require (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
            require currentStage <= 8
            require sub_276a28c9[stor8] >= (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) + sub_2348fb22[stor8]
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require currentStage <= 8
            require (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
            require currentStage <= 8
            sub_2348fb22[stor8] = (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) + sub_2348fb22[stor8]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor1 + 1 == stor1
}

function _fallback() payable {
    stor1++
    require stor8
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require ethHardCap >= msg.value + weiRaised
    require currentStage <= 8
    if not currentStage:
        require stor7[address(msg.sender)]
    if not msg.value:
        require currentStage <= 8
        require currentStage <= 8
        require sub_2348fb22[stor8] >= sub_2348fb22[stor8]
        require currentStage <= 8
        require sub_276a28c9[stor8] >= sub_2348fb22[stor8]
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require currentStage <= 8
        require sub_2348fb22[stor8] >= sub_2348fb22[stor8]
        require currentStage <= 8
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require currentStage <= 8
        if not rate * msg.value:
            require rate * msg.value >= rate * msg.value
            require currentStage <= 8
            require (rate * msg.value) + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
            require currentStage <= 8
            require sub_276a28c9[stor8] >= (rate * msg.value) + sub_2348fb22[stor8]
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require currentStage <= 8
            require (rate * msg.value) + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
            require currentStage <= 8
            sub_2348fb22[stor8] += rate * msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, rate * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
        else:
            require stageBonus[stor8] * rate * msg.value / rate * msg.value == stageBonus[stor8]
            require (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) >= rate * msg.value
            require currentStage <= 8
            require (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
            require currentStage <= 8
            require sub_276a28c9[stor8] >= (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) + sub_2348fb22[stor8]
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require currentStage <= 8
            require (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) + sub_2348fb22[stor8] >= sub_2348fb22[stor8]
            require currentStage <= 8
            sub_2348fb22[stor8] = (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value) + sub_2348fb22[stor8]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensPurchased(msg.value, (stageBonus[stor8] * rate * msg.value / 100) + (rate * msg.value), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor1 + 1 == stor1
}



}
