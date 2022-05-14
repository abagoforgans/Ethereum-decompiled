contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 maxSupply;
uint256 icoStartBlock;
uint256 icoEndBlock;
address mainWalletAddress;
address secondaryWalletAddress;
uint256 priceUpdateWaitingTime;
uint256 previousUpdateTime;
uint256 stor13;
uint256 stor14;
uint256 minInvestment;
uint8 stor16; offset 160
uint8 stor16; offset 168
uint8 stor16; offset 176
uint128 stor16; offset 176
uint128 stor16; offset 168
uint128 stor16; offset 160
address grantVestedEDEXContractAddress;
mapping of struct liquidations;
mapping of struct prices;
mapping of uint8 stor19;

function name() {
    return name[0 len name.length]
}

function verified(address arg1) {
    return bool(stor19[arg1])
}

function icoStartBlock() {
    return icoStartBlock
}

function totalSupply() {
    return totalSupply
}

function mainWallet() {
    return mainWalletAddress
}

function decimals() {
    return decimals
}

function previousUpdateTime() {
    return previousUpdateTime
}

function icoEndBlock() {
    return icoEndBlock
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function priceUpdateWaitingTime() {
    return priceUpdateWaitingTime
}

function setTrading() {
    return bool(uint8(stor16.field_176))
}

function minInvestment() {
    return minInvestment
}

function liquidations(address arg1) {
    return liquidations[arg1].field_0, liquidations[arg1].field_256
}

function symbol() {
    return symbol[0 len symbol.length]
}

function prices(uint256 arg1) {
    return prices[arg1].field_0, prices[arg1].field_256
}

function maxSupply() {
    return maxSupply
}

function grantVestedEDEXContract() {
    return grantVestedEDEXContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function secondaryWallet() {
    return secondaryWalletAddress
}

function currentPrice() {
    return stor13, stor14
}

function haltICO() {
    require msg.sender == mainWalletAddress
    Mask(88, 0, stor16.field_168) = 1
}

function unhaltICO() {
    require msg.sender == mainWalletAddress
    Mask(88, 0, stor16.field_168) = 0
}

function changeMainWallet(address arg1) {
    require msg.sender == mainWalletAddress
    require arg1
    mainWalletAddress = arg1
}

function changePriceUpdateWaitingTime(uint256 arg1) {
    require msg.sender == mainWalletAddress
    priceUpdateWaitingTime = arg1
}

function changeSecondaryWallet(address arg1) {
    require msg.sender == mainWalletAddress
    require arg1
    secondaryWalletAddress = arg1
}

function enableTrading() {
    require msg.sender == mainWalletAddress
    require block.number > icoEndBlock
    Mask(80, 0, stor16.field_176) = 1
}

function changeIcoEndBlock(uint256 arg1) {
    require msg.sender == mainWalletAddress
    require block.number < icoEndBlock
    require block.number < arg1
    icoEndBlock = arg1
}

function changeIcoStartBlock(uint256 arg1) {
    require msg.sender == mainWalletAddress
    require block.number < icoStartBlock
    require block.number < arg1
    icoStartBlock = arg1
}

function addLiquidity() payable {
    if secondaryWalletAddress != msg.sender:
        require msg.sender == mainWalletAddress
    require msg.value > 0
    emit AddLiquidity(msg.value);
}

function verifyInvestor(address arg1) {
    if secondaryWalletAddress != msg.sender:
        require msg.sender == mainWalletAddress
    stor19[address(arg1)] = 1
    emit Verification(arg1);
}

function removeVerifiedInvestor(address arg1) {
    if secondaryWalletAddress != msg.sender:
        require msg.sender == mainWalletAddress
    stor19[address(arg1)] = 0
    emit Verification(arg1);
}

function setGrantVestedEDEXContract(address arg1) {
    require msg.sender == mainWalletAddress
    require arg1
    grantVestedEDEXContractAddress = arg1
    stor19[address(stor16.field_0)] = 1
    Mask(96, 0, stor16.field_160) = 1
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
    require allowance[address(msg.sender)][address(arg1)] == arg2
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function updatePriceBottomInteger(uint256 arg1) {
    require msg.sender == mainWalletAddress
    require block.number > icoEndBlock
    require arg1 > 0
    stor14 = arg1
    prices[stor12].field_0 = stor13
    prices[stor12].field_256 = stor14
    previousUpdateTime = block.timestamp
    emit PriceEDEXUpdate(stor13, arg1);
}

function removeLiquidity(uint256 arg1) {
    if secondaryWalletAddress != msg.sender:
        require msg.sender == mainWalletAddress
    require arg1 <= eth.balance(this.address)
    call mainWalletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RemoveLiquidity(arg1);
}

function checkLiquidationValue(uint256 arg1) {
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    if not arg1:
        require stor13
        require eth.balance(this.address) >= 0 / stor13
        return (0 / stor13)
    require arg1
    require arg1 * stor14 / arg1 == stor14
    require stor13
    require eth.balance(this.address) >= arg1 * stor14 / stor13
    return (arg1 * stor14 / stor13)
}

function icoBottomIntegerPrice() {
    require icoStartBlock <= block.number
    if block.number - icoStartBlock < 100:
        return stor14
    if not stor14:
        return 0
    if block.number - icoStartBlock >= 200:
        if stor14:
            if 120 * stor14 / stor14 == 120:
                return (120 * stor14 / 100)
    else:
        if stor14:
            if 110 * stor14 / stor14 == 110:
                return (110 * stor14 / 100)
    revert
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor16.field_176):
        if mainWalletAddress != msg.sender:
            require msg.sender == grantVestedEDEXContractAddress
    require calldata.size >= 68
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claimEDEX(address arg1) {
    require msg.sender == mainWalletAddress
    require arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args mainWalletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function requestLiquidation(uint256 arg1) {
    if not uint8(stor16.field_176):
        if mainWalletAddress != msg.sender:
            require msg.sender == grantVestedEDEXContractAddress
    require stor19[address(msg.sender)]
    require block.number > icoEndBlock
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    require not liquidations[address(msg.sender)].field_0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    liquidations[address(msg.sender)].field_0 = arg1
    liquidations[address(msg.sender)].field_256 = previousUpdateTime
    emit LiquidationCall(arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor16.field_176):
        if mainWalletAddress != msg.sender:
            require msg.sender == grantVestedEDEXContractAddress
    require calldata.size >= 100
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function updatePriceEDEX(uint256 arg1) {
    if secondaryWalletAddress != msg.sender:
        require msg.sender == mainWalletAddress
    require arg1 > 0
    if msg.sender == secondaryWalletAddress:
        require priceUpdateWaitingTime <= block.timestamp
        require block.timestamp - priceUpdateWaitingTime >= previousUpdateTime
        if arg1 > stor13:
            if not arg1:
                require stor13
                require 100 <= 0 / stor13
                require (0 / stor13) - 100 <= 20
            else:
                require arg1
                require 100 * arg1 / arg1 == 100
                require stor13
                require 100 <= 100 * arg1 / stor13
                require (100 * arg1 / stor13) - 100 <= 20
    stor13 = arg1
    prices[stor12].field_0 = stor13
    prices[stor12].field_256 = stor14
    previousUpdateTime = block.timestamp
    emit PriceEDEXUpdate(arg1, stor14);
}

function privateSaleTokens(address arg1, uint256 arg2) {
    require msg.sender == mainWalletAddress
    require block.number < icoEndBlock
    require arg1
    stor19[address(arg1)] = 1
    require uint8(stor16.field_160)
    if not arg2:
        require arg2 >= arg2
        require totalSupply + arg2 >= totalSupply
        require totalSupply + arg2 <= maxSupply
        require totalSupply + arg2 >= totalSupply
        totalSupply += arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
    else:
        require arg2
        require 1764705882352941 * arg2 / arg2 == 1764705882352941
        require arg2 + (1764705882352941 * arg2 / 10^16) >= arg2
        require totalSupply + arg2 + (1764705882352941 * arg2 / 10^16) >= totalSupply
        require totalSupply + arg2 + (1764705882352941 * arg2 / 10^16) <= maxSupply
        require totalSupply + arg2 + (1764705882352941 * arg2 / 10^16) >= totalSupply
        totalSupply = totalSupply + arg2 + (1764705882352941 * arg2 / 10^16)
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require balanceOf[address(stor16.field_0)] + (1764705882352941 * arg2 / 10^16) >= balanceOf[address(stor16.field_0)]
        balanceOf[address(stor16.field_0)] += 1764705882352941 * arg2 / 10^16
    emit Verification(arg1);
    emit PrivateSale(arg2, arg1);
}

function liquidate() {
    require liquidations[address(msg.sender)].field_0 > 0
    require prices[stor17[address(msg.sender)].field_256].field_0 > 0
    if not liquidations[address(msg.sender)].field_0:
        require prices[stor17[address(msg.sender)].field_256].field_0
        liquidations[address(msg.sender)].field_0 = 0
        if eth.balance(this.address) < 0 / prices[stor17[address(msg.sender)].field_256].field_0:
            require balanceOf[address(msg.sender)] + liquidations[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += liquidations[address(msg.sender)].field_0
            emit Liquidations(liquidations[address(msg.sender)].field_0, 0, msg.sender);
        else:
            require balanceOf[stor9] + liquidations[address(msg.sender)].field_0 >= balanceOf[stor9]
            balanceOf[stor9] += liquidations[address(msg.sender)].field_0
            call msg.sender with:
               value 0 / prices[stor17[address(msg.sender)].field_256].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Liquidations(liquidations[address(msg.sender)].field_0, 0 / prices[stor17[address(msg.sender)].field_256].field_0, msg.sender);
    else:
        require liquidations[address(msg.sender)].field_0
        require liquidations[address(msg.sender)].field_0 * prices[stor17[address(msg.sender)].field_256].field_256 / liquidations[address(msg.sender)].field_0 == prices[stor17[address(msg.sender)].field_256].field_256
        require prices[stor17[address(msg.sender)].field_256].field_0
        liquidations[address(msg.sender)].field_0 = 0
        if eth.balance(this.address) < liquidations[address(msg.sender)].field_0 * prices[stor17[address(msg.sender)].field_256].field_256 / prices[stor17[address(msg.sender)].field_256].field_0:
            require balanceOf[address(msg.sender)] + liquidations[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += liquidations[address(msg.sender)].field_0
            emit Liquidations(liquidations[address(msg.sender)].field_0, 0, msg.sender);
        else:
            require balanceOf[stor9] + liquidations[address(msg.sender)].field_0 >= balanceOf[stor9]
            balanceOf[stor9] += liquidations[address(msg.sender)].field_0
            call msg.sender with:
               value liquidations[address(msg.sender)].field_0 * prices[stor17[address(msg.sender)].field_256].field_256 / prices[stor17[address(msg.sender)].field_256].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Liquidations(liquidations[address(msg.sender)].field_0, liquidations[address(msg.sender)].field_0 * prices[stor17[address(msg.sender)].field_256].field_256 / prices[stor17[address(msg.sender)].field_256].field_0, msg.sender);
}

function buyTo(address arg1) payable {
    require stor19[address(msg.sender)]
    require not uint8(stor16.field_168)
    require arg1
    require msg.value >= minInvestment
    require block.number >= icoStartBlock
    require block.number < icoEndBlock
    require icoStartBlock <= block.number
    if block.number - icoStartBlock >= 100:
        if block.number - icoStartBlock >= 200:
            if stor14:
                require stor14
                require 120 * stor14 / stor14 == 120
                if msg.value:
                    require msg.value
                    require msg.value * stor13 / msg.value == stor13
                    require 120 * stor14 / 100
                    require uint8(stor16.field_160)
                    if msg.value * stor13 / 120 * stor14 / 100:
                        require msg.value * stor13 / 120 * stor14 / 100
                        require 1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / msg.value * stor13 / 120 * stor14 / 100 == 1764705882352941
                        require (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= msg.value * stor13 / 120 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16)
                        require balanceOf[address(arg1)] + (msg.value * stor13 / 120 * stor14 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += msg.value * stor13 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 120 * stor14 / 100, msg.sender, arg1);
                    else:
                        require msg.value * stor13 / 120 * stor14 / 100 >= msg.value * stor13 / 120 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) >= totalSupply
                        totalSupply += msg.value * stor13 / 120 * stor14 / 100
                        require balanceOf[address(arg1)] + (msg.value * stor13 / 120 * stor14 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += msg.value * stor13 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 120 * stor14 / 100, msg.sender, arg1);
                else:
                    require 120 * stor14 / 100
                    require uint8(stor16.field_160)
                    if 0 / 120 * stor14 / 100:
                        require 0 / 120 * stor14 / 100
                        require 1764705882352941 * 0 / 120 * stor14 / 100 / 0 / 120 * stor14 / 100 == 1764705882352941
                        require (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= 0 / 120 * stor14 / 100
                        require totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16)
                        require balanceOf[address(arg1)] + (0 / 120 * stor14 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * 0 / 120 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 120 * stor14 / 100, msg.sender, arg1);
                    else:
                        require 0 / 120 * stor14 / 100 >= 0 / 120 * stor14 / 100
                        require totalSupply + (0 / 120 * stor14 / 100) >= totalSupply
                        require totalSupply + (0 / 120 * stor14 / 100) <= maxSupply
                        require totalSupply + (0 / 120 * stor14 / 100) >= totalSupply
                        totalSupply += 0 / 120 * stor14 / 100
                        require balanceOf[address(arg1)] + (0 / 120 * stor14 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 120 * stor14 / 100, msg.sender, arg1);
            else:
                require msg.value
                require msg.value
                require msg.value * stor13 / msg.value == stor13
                revert
        else:
            if stor14:
                require stor14
                require 110 * stor14 / stor14 == 110
                if msg.value:
                    require msg.value
                    require msg.value * stor13 / msg.value == stor13
                    require 110 * stor14 / 100
                    require uint8(stor16.field_160)
                    if msg.value * stor13 / 110 * stor14 / 100:
                        require msg.value * stor13 / 110 * stor14 / 100
                        require 1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / msg.value * stor13 / 110 * stor14 / 100 == 1764705882352941
                        require (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= msg.value * stor13 / 110 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16)
                        require balanceOf[address(arg1)] + (msg.value * stor13 / 110 * stor14 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += msg.value * stor13 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 110 * stor14 / 100, msg.sender, arg1);
                    else:
                        require msg.value * stor13 / 110 * stor14 / 100 >= msg.value * stor13 / 110 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) >= totalSupply
                        totalSupply += msg.value * stor13 / 110 * stor14 / 100
                        require balanceOf[address(arg1)] + (msg.value * stor13 / 110 * stor14 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += msg.value * stor13 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 110 * stor14 / 100, msg.sender, arg1);
                else:
                    require 110 * stor14 / 100
                    require uint8(stor16.field_160)
                    if 0 / 110 * stor14 / 100:
                        require 0 / 110 * stor14 / 100
                        require 1764705882352941 * 0 / 110 * stor14 / 100 / 0 / 110 * stor14 / 100 == 1764705882352941
                        require (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= 0 / 110 * stor14 / 100
                        require totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16)
                        require balanceOf[address(arg1)] + (0 / 110 * stor14 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * 0 / 110 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 110 * stor14 / 100, msg.sender, arg1);
                    else:
                        require 0 / 110 * stor14 / 100 >= 0 / 110 * stor14 / 100
                        require totalSupply + (0 / 110 * stor14 / 100) >= totalSupply
                        require totalSupply + (0 / 110 * stor14 / 100) <= maxSupply
                        require totalSupply + (0 / 110 * stor14 / 100) >= totalSupply
                        totalSupply += 0 / 110 * stor14 / 100
                        require balanceOf[address(arg1)] + (0 / 110 * stor14 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 110 * stor14 / 100, msg.sender, arg1);
            else:
                require msg.value
                require msg.value
                require msg.value * stor13 / msg.value == stor13
                revert
    else:
        if msg.value:
            require msg.value
            require msg.value * stor13 / msg.value == stor13
            require stor14
            require uint8(stor16.field_160)
            if msg.value * stor13 / stor14:
                require msg.value * stor13 / stor14
                require 1764705882352941 * msg.value * stor13 / stor14 / msg.value * stor13 / stor14 == 1764705882352941
                require (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= msg.value * stor13 / stor14
                require totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= totalSupply
                require totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) <= maxSupply
                require totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= totalSupply
                totalSupply = totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16)
                require balanceOf[address(arg1)] + (msg.value * stor13 / stor14) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += msg.value * stor13 / stor14
                require balanceOf[address(stor16.field_0)] + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= balanceOf[address(stor16.field_0)]
                balanceOf[address(stor16.field_0)] += 1764705882352941 * msg.value * stor13 / stor14 / 10^16
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, msg.value * stor13 / stor14, msg.sender, arg1);
            else:
                require msg.value * stor13 / stor14 >= msg.value * stor13 / stor14
                require totalSupply + (msg.value * stor13 / stor14) >= totalSupply
                require totalSupply + (msg.value * stor13 / stor14) <= maxSupply
                require totalSupply + (msg.value * stor13 / stor14) >= totalSupply
                totalSupply += msg.value * stor13 / stor14
                require balanceOf[address(arg1)] + (msg.value * stor13 / stor14) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += msg.value * stor13 / stor14
                require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, msg.value * stor13 / stor14, msg.sender, arg1);
        else:
            require stor14
            require uint8(stor16.field_160)
            if 0 / stor14:
                require 0 / stor14
                require 1764705882352941 * 0 / stor14 / 0 / stor14 == 1764705882352941
                require (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) >= 0 / stor14
                require totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) >= totalSupply
                require totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) <= maxSupply
                require totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) >= totalSupply
                totalSupply = totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16)
                require balanceOf[address(arg1)] + (0 / stor14) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 0 / stor14
                require balanceOf[address(stor16.field_0)] + (1764705882352941 * 0 / stor14 / 10^16) >= balanceOf[address(stor16.field_0)]
                balanceOf[address(stor16.field_0)] += 1764705882352941 * 0 / stor14 / 10^16
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, 0 / stor14, msg.sender, arg1);
            else:
                require 0 / stor14 >= 0 / stor14
                require totalSupply + (0 / stor14) >= totalSupply
                require totalSupply + (0 / stor14) <= maxSupply
                require totalSupply + (0 / stor14) >= totalSupply
                totalSupply += 0 / stor14
                require balanceOf[address(arg1)] + (0 / stor14) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 0 / stor14
                require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, 0 / stor14, msg.sender, arg1);
}

function buy() payable {
    require stor19[address(msg.sender)]
    require not uint8(stor16.field_168)
    require msg.sender
    require msg.value >= minInvestment
    require block.number >= icoStartBlock
    require block.number < icoEndBlock
    require icoStartBlock <= block.number
    if block.number - icoStartBlock >= 100:
        if block.number - icoStartBlock >= 200:
            if stor14:
                require stor14
                require 120 * stor14 / stor14 == 120
                if msg.value:
                    require msg.value
                    require msg.value * stor13 / msg.value == stor13
                    require 120 * stor14 / 100
                    require uint8(stor16.field_160)
                    if msg.value * stor13 / 120 * stor14 / 100:
                        require msg.value * stor13 / 120 * stor14 / 100
                        require 1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / msg.value * stor13 / 120 * stor14 / 100 == 1764705882352941
                        require (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= msg.value * stor13 / 120 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16)
                        require balanceOf[address(msg.sender)] + (msg.value * stor13 / 120 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * stor13 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 120 * stor14 / 100, msg.sender, msg.sender);
                    else:
                        require msg.value * stor13 / 120 * stor14 / 100 >= msg.value * stor13 / 120 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) >= totalSupply
                        totalSupply += msg.value * stor13 / 120 * stor14 / 100
                        require balanceOf[address(msg.sender)] + (msg.value * stor13 / 120 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * stor13 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 120 * stor14 / 100, msg.sender, msg.sender);
                else:
                    require 120 * stor14 / 100
                    require uint8(stor16.field_160)
                    if 0 / 120 * stor14 / 100:
                        require 0 / 120 * stor14 / 100
                        require 1764705882352941 * 0 / 120 * stor14 / 100 / 0 / 120 * stor14 / 100 == 1764705882352941
                        require (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= 0 / 120 * stor14 / 100
                        require totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16)
                        require balanceOf[address(msg.sender)] + (0 / 120 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 0 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * 0 / 120 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 120 * stor14 / 100, msg.sender, msg.sender);
                    else:
                        require 0 / 120 * stor14 / 100 >= 0 / 120 * stor14 / 100
                        require totalSupply + (0 / 120 * stor14 / 100) >= totalSupply
                        require totalSupply + (0 / 120 * stor14 / 100) <= maxSupply
                        require totalSupply + (0 / 120 * stor14 / 100) >= totalSupply
                        totalSupply += 0 / 120 * stor14 / 100
                        require balanceOf[address(msg.sender)] + (0 / 120 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 0 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 120 * stor14 / 100, msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value
                require msg.value * stor13 / msg.value == stor13
                revert
        else:
            if stor14:
                require stor14
                require 110 * stor14 / stor14 == 110
                if msg.value:
                    require msg.value
                    require msg.value * stor13 / msg.value == stor13
                    require 110 * stor14 / 100
                    require uint8(stor16.field_160)
                    if msg.value * stor13 / 110 * stor14 / 100:
                        require msg.value * stor13 / 110 * stor14 / 100
                        require 1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / msg.value * stor13 / 110 * stor14 / 100 == 1764705882352941
                        require (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= msg.value * stor13 / 110 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16)
                        require balanceOf[address(msg.sender)] + (msg.value * stor13 / 110 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * stor13 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 110 * stor14 / 100, msg.sender, msg.sender);
                    else:
                        require msg.value * stor13 / 110 * stor14 / 100 >= msg.value * stor13 / 110 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) >= totalSupply
                        totalSupply += msg.value * stor13 / 110 * stor14 / 100
                        require balanceOf[address(msg.sender)] + (msg.value * stor13 / 110 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * stor13 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 110 * stor14 / 100, msg.sender, msg.sender);
                else:
                    require 110 * stor14 / 100
                    require uint8(stor16.field_160)
                    if 0 / 110 * stor14 / 100:
                        require 0 / 110 * stor14 / 100
                        require 1764705882352941 * 0 / 110 * stor14 / 100 / 0 / 110 * stor14 / 100 == 1764705882352941
                        require (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= 0 / 110 * stor14 / 100
                        require totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16)
                        require balanceOf[address(msg.sender)] + (0 / 110 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 0 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * 0 / 110 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 110 * stor14 / 100, msg.sender, msg.sender);
                    else:
                        require 0 / 110 * stor14 / 100 >= 0 / 110 * stor14 / 100
                        require totalSupply + (0 / 110 * stor14 / 100) >= totalSupply
                        require totalSupply + (0 / 110 * stor14 / 100) <= maxSupply
                        require totalSupply + (0 / 110 * stor14 / 100) >= totalSupply
                        totalSupply += 0 / 110 * stor14 / 100
                        require balanceOf[address(msg.sender)] + (0 / 110 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 0 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 110 * stor14 / 100, msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value
                require msg.value * stor13 / msg.value == stor13
                revert
    else:
        if msg.value:
            require msg.value
            require msg.value * stor13 / msg.value == stor13
            require stor14
            require uint8(stor16.field_160)
            if msg.value * stor13 / stor14:
                require msg.value * stor13 / stor14
                require 1764705882352941 * msg.value * stor13 / stor14 / msg.value * stor13 / stor14 == 1764705882352941
                require (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= msg.value * stor13 / stor14
                require totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= totalSupply
                require totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) <= maxSupply
                require totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= totalSupply
                totalSupply = totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16)
                require balanceOf[address(msg.sender)] + (msg.value * stor13 / stor14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * stor13 / stor14
                require balanceOf[address(stor16.field_0)] + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= balanceOf[address(stor16.field_0)]
                balanceOf[address(stor16.field_0)] += 1764705882352941 * msg.value * stor13 / stor14 / 10^16
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, msg.value * stor13 / stor14, msg.sender, msg.sender);
            else:
                require msg.value * stor13 / stor14 >= msg.value * stor13 / stor14
                require totalSupply + (msg.value * stor13 / stor14) >= totalSupply
                require totalSupply + (msg.value * stor13 / stor14) <= maxSupply
                require totalSupply + (msg.value * stor13 / stor14) >= totalSupply
                totalSupply += msg.value * stor13 / stor14
                require balanceOf[address(msg.sender)] + (msg.value * stor13 / stor14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * stor13 / stor14
                require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, msg.value * stor13 / stor14, msg.sender, msg.sender);
        else:
            require stor14
            require uint8(stor16.field_160)
            if 0 / stor14:
                require 0 / stor14
                require 1764705882352941 * 0 / stor14 / 0 / stor14 == 1764705882352941
                require (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) >= 0 / stor14
                require totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) >= totalSupply
                require totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) <= maxSupply
                require totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) >= totalSupply
                totalSupply = totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16)
                require balanceOf[address(msg.sender)] + (0 / stor14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 0 / stor14
                require balanceOf[address(stor16.field_0)] + (1764705882352941 * 0 / stor14 / 10^16) >= balanceOf[address(stor16.field_0)]
                balanceOf[address(stor16.field_0)] += 1764705882352941 * 0 / stor14 / 10^16
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, 0 / stor14, msg.sender, msg.sender);
            else:
                require 0 / stor14 >= 0 / stor14
                require totalSupply + (0 / stor14) >= totalSupply
                require totalSupply + (0 / stor14) <= maxSupply
                require totalSupply + (0 / stor14) >= totalSupply
                totalSupply += 0 / stor14
                require balanceOf[address(msg.sender)] + (0 / stor14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 0 / stor14
                require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, 0 / stor14, msg.sender, msg.sender);
}

function _fallback() payable {
    require tx.origin == msg.sender
    require stor19[address(msg.sender)]
    require not uint8(stor16.field_168)
    require msg.sender
    require msg.value >= minInvestment
    require block.number >= icoStartBlock
    require block.number < icoEndBlock
    require icoStartBlock <= block.number
    if block.number - icoStartBlock >= 100:
        if block.number - icoStartBlock >= 200:
            if stor14:
                require stor14
                require 120 * stor14 / stor14 == 120
                if msg.value:
                    require msg.value
                    require msg.value * stor13 / msg.value == stor13
                    require 120 * stor14 / 100
                    require uint8(stor16.field_160)
                    if msg.value * stor13 / 120 * stor14 / 100:
                        require msg.value * stor13 / 120 * stor14 / 100
                        require 1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / msg.value * stor13 / 120 * stor14 / 100 == 1764705882352941
                        require (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= msg.value * stor13 / 120 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (msg.value * stor13 / 120 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16)
                        require balanceOf[address(msg.sender)] + (msg.value * stor13 / 120 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * stor13 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * msg.value * stor13 / 120 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 120 * stor14 / 100, msg.sender, msg.sender);
                    else:
                        require msg.value * stor13 / 120 * stor14 / 100 >= msg.value * stor13 / 120 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 120 * stor14 / 100) >= totalSupply
                        totalSupply += msg.value * stor13 / 120 * stor14 / 100
                        require balanceOf[address(msg.sender)] + (msg.value * stor13 / 120 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * stor13 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 120 * stor14 / 100, msg.sender, msg.sender);
                else:
                    require 120 * stor14 / 100
                    require uint8(stor16.field_160)
                    if 0 / 120 * stor14 / 100:
                        require 0 / 120 * stor14 / 100
                        require 1764705882352941 * 0 / 120 * stor14 / 100 / 0 / 120 * stor14 / 100 == 1764705882352941
                        require (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= 0 / 120 * stor14 / 100
                        require totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (0 / 120 * stor14 / 100) + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16)
                        require balanceOf[address(msg.sender)] + (0 / 120 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 0 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * 0 / 120 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * 0 / 120 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 120 * stor14 / 100, msg.sender, msg.sender);
                    else:
                        require 0 / 120 * stor14 / 100 >= 0 / 120 * stor14 / 100
                        require totalSupply + (0 / 120 * stor14 / 100) >= totalSupply
                        require totalSupply + (0 / 120 * stor14 / 100) <= maxSupply
                        require totalSupply + (0 / 120 * stor14 / 100) >= totalSupply
                        totalSupply += 0 / 120 * stor14 / 100
                        require balanceOf[address(msg.sender)] + (0 / 120 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 0 / 120 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 120 * stor14 / 100, msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value
                require msg.value * stor13 / msg.value == stor13
                revert
        else:
            if stor14:
                require stor14
                require 110 * stor14 / stor14 == 110
                if msg.value:
                    require msg.value
                    require msg.value * stor13 / msg.value == stor13
                    require 110 * stor14 / 100
                    require uint8(stor16.field_160)
                    if msg.value * stor13 / 110 * stor14 / 100:
                        require msg.value * stor13 / 110 * stor14 / 100
                        require 1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / msg.value * stor13 / 110 * stor14 / 100 == 1764705882352941
                        require (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= msg.value * stor13 / 110 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (msg.value * stor13 / 110 * stor14 / 100) + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16)
                        require balanceOf[address(msg.sender)] + (msg.value * stor13 / 110 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * stor13 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * msg.value * stor13 / 110 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 110 * stor14 / 100, msg.sender, msg.sender);
                    else:
                        require msg.value * stor13 / 110 * stor14 / 100 >= msg.value * stor13 / 110 * stor14 / 100
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) >= totalSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) <= maxSupply
                        require totalSupply + (msg.value * stor13 / 110 * stor14 / 100) >= totalSupply
                        totalSupply += msg.value * stor13 / 110 * stor14 / 100
                        require balanceOf[address(msg.sender)] + (msg.value * stor13 / 110 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * stor13 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, msg.value * stor13 / 110 * stor14 / 100, msg.sender, msg.sender);
                else:
                    require 110 * stor14 / 100
                    require uint8(stor16.field_160)
                    if 0 / 110 * stor14 / 100:
                        require 0 / 110 * stor14 / 100
                        require 1764705882352941 * 0 / 110 * stor14 / 100 / 0 / 110 * stor14 / 100 == 1764705882352941
                        require (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= 0 / 110 * stor14 / 100
                        require totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        require totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) <= maxSupply
                        require totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= totalSupply
                        totalSupply = totalSupply + (0 / 110 * stor14 / 100) + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16)
                        require balanceOf[address(msg.sender)] + (0 / 110 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 0 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] + (1764705882352941 * 0 / 110 * stor14 / 100 / 10^16) >= balanceOf[address(stor16.field_0)]
                        balanceOf[address(stor16.field_0)] += 1764705882352941 * 0 / 110 * stor14 / 100 / 10^16
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 110 * stor14 / 100, msg.sender, msg.sender);
                    else:
                        require 0 / 110 * stor14 / 100 >= 0 / 110 * stor14 / 100
                        require totalSupply + (0 / 110 * stor14 / 100) >= totalSupply
                        require totalSupply + (0 / 110 * stor14 / 100) <= maxSupply
                        require totalSupply + (0 / 110 * stor14 / 100) >= totalSupply
                        totalSupply += 0 / 110 * stor14 / 100
                        require balanceOf[address(msg.sender)] + (0 / 110 * stor14 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 0 / 110 * stor14 / 100
                        require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                        call mainWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Buy(msg.value, 0 / 110 * stor14 / 100, msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value
                require msg.value * stor13 / msg.value == stor13
                revert
    else:
        if msg.value:
            require msg.value
            require msg.value * stor13 / msg.value == stor13
            require stor14
            require uint8(stor16.field_160)
            if msg.value * stor13 / stor14:
                require msg.value * stor13 / stor14
                require 1764705882352941 * msg.value * stor13 / stor14 / msg.value * stor13 / stor14 == 1764705882352941
                require (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= msg.value * stor13 / stor14
                require totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= totalSupply
                require totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) <= maxSupply
                require totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= totalSupply
                totalSupply = totalSupply + (msg.value * stor13 / stor14) + (1764705882352941 * msg.value * stor13 / stor14 / 10^16)
                require balanceOf[address(msg.sender)] + (msg.value * stor13 / stor14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * stor13 / stor14
                require balanceOf[address(stor16.field_0)] + (1764705882352941 * msg.value * stor13 / stor14 / 10^16) >= balanceOf[address(stor16.field_0)]
                balanceOf[address(stor16.field_0)] += 1764705882352941 * msg.value * stor13 / stor14 / 10^16
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, msg.value * stor13 / stor14, msg.sender, msg.sender);
            else:
                require msg.value * stor13 / stor14 >= msg.value * stor13 / stor14
                require totalSupply + (msg.value * stor13 / stor14) >= totalSupply
                require totalSupply + (msg.value * stor13 / stor14) <= maxSupply
                require totalSupply + (msg.value * stor13 / stor14) >= totalSupply
                totalSupply += msg.value * stor13 / stor14
                require balanceOf[address(msg.sender)] + (msg.value * stor13 / stor14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * stor13 / stor14
                require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, msg.value * stor13 / stor14, msg.sender, msg.sender);
        else:
            require stor14
            require uint8(stor16.field_160)
            if 0 / stor14:
                require 0 / stor14
                require 1764705882352941 * 0 / stor14 / 0 / stor14 == 1764705882352941
                require (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) >= 0 / stor14
                require totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) >= totalSupply
                require totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) <= maxSupply
                require totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16) >= totalSupply
                totalSupply = totalSupply + (0 / stor14) + (1764705882352941 * 0 / stor14 / 10^16)
                require balanceOf[address(msg.sender)] + (0 / stor14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 0 / stor14
                require balanceOf[address(stor16.field_0)] + (1764705882352941 * 0 / stor14 / 10^16) >= balanceOf[address(stor16.field_0)]
                balanceOf[address(stor16.field_0)] += 1764705882352941 * 0 / stor14 / 10^16
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, 0 / stor14, msg.sender, msg.sender);
            else:
                require 0 / stor14 >= 0 / stor14
                require totalSupply + (0 / stor14) >= totalSupply
                require totalSupply + (0 / stor14) <= maxSupply
                require totalSupply + (0 / stor14) >= totalSupply
                totalSupply += 0 / stor14
                require balanceOf[address(msg.sender)] + (0 / stor14) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 0 / stor14
                require balanceOf[address(stor16.field_0)] >= balanceOf[address(stor16.field_0)]
                call mainWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Buy(msg.value, 0 / stor14, msg.sender, msg.sender);
}



}
