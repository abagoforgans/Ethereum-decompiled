contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor5;
uint16 stor8; offset 160
uint8 stor9; offset 160
uint256 stor10;
uint256 stor20;
uint8 stor21; offset 160

function _fallback() payable {
    stor5 = 0
    stor8 = 0
    stor9 = 1
    stor10 = 500
    stor20 = 50
    stor21 = 0
    stor3 = msg.sender
    return code.data[133 len 12137]
}



// =====================  Runtime code  =====================


const name = 'Wolk Protocol Token'

const decimals = 18

const tokenGenerationMin = 50000000 * 10^18

const percentageETHReserve = 15

const symbol = 'WOLK'

const tokenGenerationMax = 150000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint32 stor2;
uint256 totalTokens;
address owner;
address newOwner;
uint256 reserveBalance;
address multisigWalletAddress;
mapping of uint8 stor7;
uint8 stor8; offset 160
uint8 stor8; offset 168
address wolkSaleAddress;
uint8 stor9; offset 160
uint128 stor9; offset 160
address burnFormulaAddress;
uint256 burnBasisPoints;
mapping of uint8 stor11;
mapping of uint256 checkServiceFee;
mapping of address checkFeeSchedule;
mapping of uint256 stor14;
mapping of uint256 participantBalance;
mapping of uint8 stor16;
uint256 presale_start_block;
uint256 start_block;
uint256 end_block;
uint256 maxPerExchangeBP;
uint8 exchangeIsRunning; offset 160
uint128 stor21; offset 160
address exchangeFormulaAddress;

function totalSupply() {
    return uint256(totalTokens)
}

function exchangeFormula() {
    return exchangeFormulaAddress
}

function exchangeIsRunning() {
    return bool(exchangeIsRunning)
}

function end_block() {
    return end_block
}

function checkAuthorization(address arg1, address arg2) {
    return bool(stor11[address(arg1)][address(arg2)])
}

function checkServiceFee(address arg1) {
    return checkServiceFee[address(arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function maxPerExchangeBP() {
    return maxPerExchangeBP
}

function totalTokens() {
    return uint256(totalTokens)
}

function burnFormula() {
    return burnFormulaAddress
}

function participantBalance(address arg1) {
    return participantBalance[address(arg1)]
}

function owner() {
    return owner
}

function multisigWallet() {
    return multisigWalletAddress
}

function burnBasisPoints() {
    return burnBasisPoints
}

function reserveBalance() {
    return reserveBalance
}

function settlementIsRunning() {
    return bool(uint8(stor9.field_160))
}

function start_block() {
    return start_block
}

function openSaleCompleted() {
    return bool(uint8(stor8.field_168))
}

function presale_start_block() {
    return presale_start_block
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function allSaleCompleted() {
    return bool(uint8(stor8.field_160))
}

function wolkSale() {
    return wolkSaleAddress
}

function checkFeeSchedule(address arg1) {
    return checkFeeSchedule[address(arg1)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function updateSettlementStatus(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor9.field_160) = Mask(96, 0, arg1)
    return 1
}

function setBurnRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= 1000
    burnBasisPoints = arg1
    return 1
}

function setMaxPerExchange(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= 10
    require arg1 <= 100
    maxPerExchangeBP = arg1
    return 1
}

function deauthorizeProvider(address arg1) {
    stor11[address(msg.sender)][address(arg1)] = 0
    emit DeauthorizeServiceProvider(arg1, msg.sender);
    return 1
}

function removeService(address arg1, address arg2) {
    require owner == msg.sender
    stor11[address(arg1)][address(arg2)] = 0
    emit DeauthorizeServiceProvider(arg2, arg1);
    return 1
}

function authorizeProvider(address arg1) {
    require stor7[address(arg1)]
    stor11[address(msg.sender)][address(arg1)] = 1
    emit AuthorizeServiceProvider(arg1, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function grantService(address arg1, address arg2) {
    require owner == msg.sender
    if not stor11[address(arg1)][address(msg.sender)]:
        return 0
    if not stor7[address(arg2)]:
        return 0
    stor11[address(arg1)][address(arg2)] = 1
    emit AuthorizeServiceProvider(arg2, msg.sender);
    return 1
}

function setBurnFormula(address arg1) {
    require owner == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.calculateWolkToBurn(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10^18
    require ext_call.success
    require ext_call.return_data[0] > 5 * 10^13
    burnFormulaAddress = arg1
    return 1
}

function wolkGenesis(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5) {
    require owner == msg.sender
    require uint256(totalTokens) < 1
    require block.number <= arg2
    require arg3 > arg2
    require arg2 > arg1
    presale_start_block = arg1
    start_block = arg2
    end_block = arg3
    multisigWalletAddress = arg4
    wolkSaleAddress = arg5
    stor7[address(msg.sender)] = 1
    return 1
}

function setServiceFee(address arg1, uint256 arg2) {
    require owner == msg.sender
    if arg2 <= 0:
        stor7[address(arg1)] = 0
        checkServiceFee[address(arg1)] = 0
        return 0
    if arg2 > 4000:
        stor7[address(arg1)] = 0
        checkServiceFee[address(arg1)] = 0
        return 0
    checkServiceFee[address(arg1)] = arg2
    stor7[address(arg1)] = 1
    emit SetServiceProviderFee(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setFeeFormula(address arg1) {
    require 1 == bool(stor7[address(msg.sender)])
    require checkFeeSchedule[address(arg1)]
    require ext_code.size(checkFeeSchedule[address(arg1)])
    call checkFeeSchedule[address(arg1)].calculateProviderFee(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10^18
    require ext_call.success
    require ext_call.return_data[0] > 5 * 10^13
    checkFeeSchedule[address(msg.sender)] = arg1
    return 1
}

function removeParticipant(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor16[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        participantBalance[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    return 1
}

function _fallback() payable {
    require msg.value > 0
    if not uint8(stor8.field_168):
        require ext_code.size(this.address)
        call this.address.0xfa6b129d with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
    else:
        require block.number >= end_block
        require ext_code.size(this.address)
        call this.address.0x3d8c9b8c with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
    require ext_call.success
}

function estLiquidationCap() {
    if not uint8(stor8.field_168):
        return 0
    if uint256(totalTokens):
        require uint256(totalTokens)
        require maxPerExchangeBP * uint256(totalTokens) / uint256(totalTokens) == maxPerExchangeBP
    require maxPerExchangeBP * uint256(totalTokens) == (10000 * maxPerExchangeBP * uint256(totalTokens) / 10000) + (maxPerExchangeBP * uint256(totalTokens) % 10000)
    if maxPerExchangeBP * uint256(totalTokens) / 10000 >= 100 * 10^18:
        return (maxPerExchangeBP * uint256(totalTokens) / 10000)
    return 100 * 10^18
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund() {
    require stor14[address(msg.sender)] > 0
    require not uint8(stor8.field_160)
    require uint256(totalTokens) < 50000000 * 10^18
    require block.number > end_block
    balanceOf[address(msg.sender)] = 0
    stor14[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] <= uint256(totalTokens)
    uint256(totalTokens) -= balanceOf[address(msg.sender)]
    emit WolkDestroyed(balanceOf[address(msg.sender)], msg.sender);
    emit LogRefund(stor14[address(msg.sender)], msg.sender);
    call msg.sender with:
       value stor14[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setExchangeFormula(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.calculateSaleReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor2), reserveBalance, 15, 10^18
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    call arg1.calculatePurchaseReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor2), reserveBalance, 15, 10^18
    require ext_call.success
    require ext_call.return_data[0] > 0
    exchangeFormulaAddress = arg1
    exchangeIsRunning = 0
    return 1
}

function finalizeOpenSale() {
    require owner == msg.sender
    require not uint8(stor8.field_168)
    require uint256(totalTokens) >= 50000000 * 10^18
    uint8(stor8.field_168) = 1
    end_block = block.number
    if uint256(totalTokens):
        require uint256(totalTokens)
        require 15 * uint256(totalTokens) / uint256(totalTokens) == 15
    require 15 * uint256(totalTokens) == (100000 * 15 * uint256(totalTokens) / 100000) + (15 * uint256(totalTokens) % 100000)
    reserveBalance = 15 * uint256(totalTokens) / 100000
    require 15 * uint256(totalTokens) / 100000 <= eth.balance(this.address)
    call msg.sender with:
       value eth.balance(this.address) - (15 * uint256(totalTokens) / 100000) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function updateExchangeStatus(bool arg1) {
    require owner == msg.sender
    if arg1:
        require ext_code.size(exchangeFormulaAddress)
        call exchangeFormulaAddress.calculateSaleReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(stor2), reserveBalance, 15, 10^18
        require ext_call.success
        require ext_call.return_data[0] > 0
        require ext_code.size(exchangeFormulaAddress)
        call exchangeFormulaAddress.calculatePurchaseReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(stor2), reserveBalance, 15, 10^18
        require ext_call.success
        require ext_call.return_data[0] > 0
    stor21 = Mask(96, 0, arg1)
    return 1
}

function addParticipant(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor16[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160]:
            require mem[(32 * idx) + (32 * arg1.length) + 160]
            require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 10^18
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        participantBalance[mem[(32 * idx) + 140 len 20]] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    return 1
}

function finalize() payable {
    require wolkSaleAddress == msg.sender
    require uint8(stor8.field_168)
    require not uint8(stor8.field_160)
    if msg.value:
        require msg.value
        require 100000 * msg.value / msg.value == 100000
    require 100000 * msg.value == (15 * 100000 * msg.value / 15) + (100000 * msg.value % 15)
    require (100000 * msg.value / 15) + uint256(totalTokens) >= uint256(totalTokens)
    require (100000 * msg.value / 15) + uint256(totalTokens) >= 100000 * msg.value / 15
    uint256(totalTokens) += 100000 * msg.value / 15
    require msg.value + reserveBalance >= reserveBalance
    require msg.value + reserveBalance >= msg.value
    reserveBalance += msg.value
    emit Transfer((100000 * msg.value / 15), this.address, wolkSaleAddress);
    require (100000 * msg.value / 15) + balanceOf[address(stor8.field_0)] >= balanceOf[address(stor8.field_0)]
    require (100000 * msg.value / 15) + balanceOf[address(stor8.field_0)] >= 100000 * msg.value / 15
    balanceOf[address(stor8.field_0)] += 100000 * msg.value / 15
    emit WolkCreated((100000 * msg.value / 15), wolkSaleAddress);
    uint8(stor8.field_160) = 1
}

function purchaseWolk(address arg1) payable {
    require exchangeIsRunning
    require uint8(stor8.field_160)
    require msg.value > 0
    require ext_code.size(exchangeFormulaAddress)
    call exchangeFormulaAddress.calculatePurchaseReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor2), reserveBalance, 15, msg.value
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + uint256(totalTokens) >= uint256(totalTokens)
    require ext_call.return_data[0] + uint256(totalTokens) >= ext_call.return_data[0]
    uint256(totalTokens) += ext_call.return_data[0]
    require ext_call.return_data[0] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require ext_call.return_data[0] + balanceOf[address(arg1)] >= ext_call.return_data[0]
    balanceOf[address(arg1)] += ext_call.return_data[0]
    require msg.value + reserveBalance >= reserveBalance
    require msg.value + reserveBalance >= msg.value
    reserveBalance += msg.value
    emit WolkCreated(ext_call.return_data[0], arg1);
    emit Transfer(ext_call.return_data[0], this.address, arg1);
    return ext_call.return_data[0]
}

function sellWolk(uint256 arg1) {
    require exchangeIsRunning
    require uint8(stor8.field_160)
    if not uint8(stor8.field_168):
        require balanceOf[address(msg.sender)] >= arg1
        require 0 >= arg1
    else:
        if uint256(totalTokens):
            require uint256(totalTokens)
            require maxPerExchangeBP * uint256(totalTokens) / uint256(totalTokens) == maxPerExchangeBP
        require maxPerExchangeBP * uint256(totalTokens) == (10000 * maxPerExchangeBP * uint256(totalTokens) / 10000) + (maxPerExchangeBP * uint256(totalTokens) % 10000)
        require balanceOf[address(msg.sender)] >= arg1
        if maxPerExchangeBP * uint256(totalTokens) / 10000 >= 100 * 10^18:
            require maxPerExchangeBP * uint256(totalTokens) / 10000 >= arg1
        else:
            require 100 * 10^18 >= arg1
    require ext_code.size(exchangeFormulaAddress)
    call exchangeFormulaAddress.calculateSaleReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor2), reserveBalance, 15, arg1
    require ext_call.success
    require eth.balance(this.address) > ext_call.return_data[0]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= uint256(totalTokens)
    uint256(totalTokens) -= arg1
    require ext_call.return_data[0] <= eth.balance(this.address)
    reserveBalance = eth.balance(this.address) - ext_call.return_data[0]
    emit WolkDestroyed(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return ext_call.return_data[0]
}

function settleSeller(address arg1, uint256 arg2) {
    require 1 == bool(stor7[address(msg.sender)])
    require uint8(stor9.field_160)
    require checkServiceFee[address(msg.sender)] > 0
    require checkServiceFee[address(msg.sender)] <= 4000
    require arg2 > 0
    if not checkFeeSchedule[address(msg.sender)]:
        if arg2:
            require arg2
            require checkServiceFee[address(msg.sender)] * arg2 / arg2 == checkServiceFee[address(msg.sender)]
        require checkServiceFee[address(msg.sender)] * arg2 == (10000 * checkServiceFee[address(msg.sender)] * arg2 / 10000) + (checkServiceFee[address(msg.sender)] * arg2 % 10000)
        require checkServiceFee[address(msg.sender)] * arg2 / 10000 <= arg2
        require balanceOf[address(msg.sender)] >= arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000)
        require arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= 0
        balanceOf[address(arg1)] = arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000) + balanceOf[address(arg1)]
        emit Transfer((arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000)), msg.sender, arg1);
    else:
        require ext_code.size(checkFeeSchedule[address(msg.sender)])
        call checkFeeSchedule[address(msg.sender)].calculateProviderFee(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
        if arg2:
            require arg2
            require checkServiceFee[address(msg.sender)] * arg2 / arg2 == checkServiceFee[address(msg.sender)]
        require checkServiceFee[address(msg.sender)] * arg2 == (10000 * checkServiceFee[address(msg.sender)] * arg2 / 10000) + (checkServiceFee[address(msg.sender)] * arg2 % 10000)
        if ext_call.return_data[0] >= 1:
            if ext_call.return_data[0] <= checkServiceFee[address(msg.sender)] * arg2 / 10000:
                require ext_call.return_data[0] <= arg2
                require balanceOf[address(msg.sender)] >= arg2 - ext_call.return_data[0]
                require arg2 - ext_call.return_data[0] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = arg2 - ext_call.return_data[0] + balanceOf[address(arg1)]
                emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, arg1);
            else:
                require checkServiceFee[address(msg.sender)] * arg2 / 10000 <= arg2
                require balanceOf[address(msg.sender)] >= arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000)
                require arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000) + balanceOf[address(arg1)]
                emit Transfer((arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000)), msg.sender, arg1);
        else:
            require checkServiceFee[address(msg.sender)] * arg2 / 10000 <= arg2
            require balanceOf[address(msg.sender)] >= arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000)
            require arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] >= 0
            balanceOf[address(arg1)] = arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000) + balanceOf[address(arg1)]
            emit Transfer((arg2 - (checkServiceFee[address(msg.sender)] * arg2 / 10000)), msg.sender, arg1);
    return 1
}

function settleBuyer(address arg1, uint256 arg2) {
    require 1 == bool(stor7[address(msg.sender)])
    require uint8(stor9.field_160)
    require burnBasisPoints > 0
    require burnBasisPoints <= 1000
    require stor11[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg1)] >= arg2
    require arg2 > 0
    if not burnFormulaAddress:
        if arg2:
            require arg2
            require burnBasisPoints * arg2 / arg2 == burnBasisPoints
        require burnBasisPoints * arg2 == (10000 * burnBasisPoints * arg2 / 10000) + (burnBasisPoints * arg2 % 10000)
        require burnBasisPoints * arg2 / 10000 <= arg2
        require arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
        require arg2 - (burnBasisPoints * arg2 / 10000) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        require balanceOf[msg.sender] >= 0
        balanceOf[address(msg.sender)] = arg2 - (burnBasisPoints * arg2 / 10000) + balanceOf[msg.sender]
        require burnBasisPoints * arg2 / 10000 <= uint256(totalTokens)
        uint256(totalTokens) -= burnBasisPoints * arg2 / 10000
        emit Transfer((arg2 - (burnBasisPoints * arg2 / 10000)), arg1, msg.sender);
        emit Transfer((burnBasisPoints * arg2 / 10000), arg1, 0);
        emit BurnTokens((burnBasisPoints * arg2 / 10000), arg1, msg.sender);
    else:
        require ext_code.size(burnFormulaAddress)
        call burnFormulaAddress.calculateWolkToBurn(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
        if arg2:
            require arg2
            require burnBasisPoints * arg2 / arg2 == burnBasisPoints
        require burnBasisPoints * arg2 == (10000 * burnBasisPoints * arg2 / 10000) + (burnBasisPoints * arg2 % 10000)
        if ext_call.return_data[0] >= 1:
            if ext_call.return_data[0] <= burnBasisPoints * arg2 / 10000:
                require ext_call.return_data[0] <= arg2
                require arg2 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg2
                require arg2 - ext_call.return_data[0] + balanceOf[msg.sender] >= balanceOf[msg.sender]
                require balanceOf[msg.sender] >= 0
                balanceOf[address(msg.sender)] = arg2 - ext_call.return_data[0] + balanceOf[msg.sender]
                require ext_call.return_data[0] <= uint256(totalTokens)
                uint256(totalTokens) -= ext_call.return_data[0]
                emit Transfer((arg2 - ext_call.return_data[0]), arg1, msg.sender);
                emit Transfer(ext_call.return_data[0], arg1, 0);
                emit BurnTokens(ext_call.return_data[0], arg1, msg.sender);
            else:
                require burnBasisPoints * arg2 / 10000 <= arg2
                require arg2 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg2
                require arg2 - (burnBasisPoints * arg2 / 10000) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                require balanceOf[msg.sender] >= 0
                balanceOf[address(msg.sender)] = arg2 - (burnBasisPoints * arg2 / 10000) + balanceOf[msg.sender]
                require burnBasisPoints * arg2 / 10000 <= uint256(totalTokens)
                uint256(totalTokens) -= burnBasisPoints * arg2 / 10000
                emit Transfer((arg2 - (burnBasisPoints * arg2 / 10000)), arg1, msg.sender);
                emit Transfer((burnBasisPoints * arg2 / 10000), arg1, 0);
                emit BurnTokens((burnBasisPoints * arg2 / 10000), arg1, msg.sender);
        else:
            require burnBasisPoints * arg2 / 10000 <= arg2
            require arg2 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg2
            require arg2 - (burnBasisPoints * arg2 / 10000) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            require balanceOf[msg.sender] >= 0
            balanceOf[address(msg.sender)] = arg2 - (burnBasisPoints * arg2 / 10000) + balanceOf[msg.sender]
            require burnBasisPoints * arg2 / 10000 <= uint256(totalTokens)
            uint256(totalTokens) -= burnBasisPoints * arg2 / 10000
            emit Transfer((arg2 - (burnBasisPoints * arg2 / 10000)), arg1, msg.sender);
            emit Transfer((burnBasisPoints * arg2 / 10000), arg1, 0);
            emit BurnTokens((burnBasisPoints * arg2 / 10000), arg1, msg.sender);
    return 1
}

function tokenGenerationEvent(address arg1) payable {
    require stor16[address(arg1)]
    require not uint8(stor8.field_168)
    require not uint8(stor8.field_160)
    require block.number <= end_block
    require msg.value > 0
    if block.number < start_block:
        if block.number < presale_start_block:
            require block.number >= start_block
        else:
            require participantBalance[address(arg1)] >= msg.value
            require msg.value <= participantBalance[address(arg1)]
            participantBalance[address(arg1)] -= msg.value
    if uint256(totalTokens) < 50000000 * 10^18:
        if msg.value:
            require msg.value
            require 1177 * msg.value / msg.value == 1177
        require (1177 * msg.value) + uint256(totalTokens) >= uint256(totalTokens)
        require (1177 * msg.value) + uint256(totalTokens) >= 1177 * msg.value
        require (1177 * msg.value) + uint256(totalTokens) <= 150000000 * 10^18
        uint256(totalTokens) += 1177 * msg.value
        emit Transfer((1177 * msg.value), this.address, arg1);
        require (1177 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require (1177 * msg.value) + balanceOf[address(arg1)] >= 1177 * msg.value
        balanceOf[address(arg1)] += 1177 * msg.value
        require msg.value + stor14[address(arg1)] >= stor14[address(arg1)]
        require msg.value + stor14[address(arg1)] >= msg.value
        stor14[address(arg1)] += msg.value
        emit WolkCreated((1177 * msg.value), arg1);
    else:
        if uint256(totalTokens) < 60000000 * 10^18:
            if msg.value:
                require msg.value
                require 1143 * msg.value / msg.value == 1143
            require (1143 * msg.value) + uint256(totalTokens) >= uint256(totalTokens)
            require (1143 * msg.value) + uint256(totalTokens) >= 1143 * msg.value
            require (1143 * msg.value) + uint256(totalTokens) <= 150000000 * 10^18
            uint256(totalTokens) += 1143 * msg.value
            emit Transfer((1143 * msg.value), this.address, arg1);
            require (1143 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require (1143 * msg.value) + balanceOf[address(arg1)] >= 1143 * msg.value
            balanceOf[address(arg1)] += 1143 * msg.value
            require msg.value + stor14[address(arg1)] >= stor14[address(arg1)]
            require msg.value + stor14[address(arg1)] >= msg.value
            stor14[address(arg1)] += msg.value
            emit WolkCreated((1143 * msg.value), arg1);
        else:
            if uint256(totalTokens) < 70000000 * 10^18:
                if msg.value:
                    require msg.value
                    require 1111 * msg.value / msg.value == 1111
                require (1111 * msg.value) + uint256(totalTokens) >= uint256(totalTokens)
                require (1111 * msg.value) + uint256(totalTokens) >= 1111 * msg.value
                require (1111 * msg.value) + uint256(totalTokens) <= 150000000 * 10^18
                uint256(totalTokens) += 1111 * msg.value
                emit Transfer((1111 * msg.value), this.address, arg1);
                require (1111 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require (1111 * msg.value) + balanceOf[address(arg1)] >= 1111 * msg.value
                balanceOf[address(arg1)] += 1111 * msg.value
                require msg.value + stor14[address(arg1)] >= stor14[address(arg1)]
                require msg.value + stor14[address(arg1)] >= msg.value
                stor14[address(arg1)] += msg.value
                emit WolkCreated((1111 * msg.value), arg1);
            else:
                if uint256(totalTokens) < 80000000 * 10^18:
                    if msg.value:
                        require msg.value
                        require 1081 * msg.value / msg.value == 1081
                    require (1081 * msg.value) + uint256(totalTokens) >= uint256(totalTokens)
                    require (1081 * msg.value) + uint256(totalTokens) >= 1081 * msg.value
                    require (1081 * msg.value) + uint256(totalTokens) <= 150000000 * 10^18
                    uint256(totalTokens) += 1081 * msg.value
                    emit Transfer((1081 * msg.value), this.address, arg1);
                    require (1081 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    require (1081 * msg.value) + balanceOf[address(arg1)] >= 1081 * msg.value
                    balanceOf[address(arg1)] += 1081 * msg.value
                    require msg.value + stor14[address(arg1)] >= stor14[address(arg1)]
                    require msg.value + stor14[address(arg1)] >= msg.value
                    stor14[address(arg1)] += msg.value
                    emit WolkCreated((1081 * msg.value), arg1);
                else:
                    if uint256(totalTokens) < 25000 * 10^18 * 3600:
                        if msg.value:
                            require msg.value
                            require 1053 * msg.value / msg.value == 1053
                        require (1053 * msg.value) + uint256(totalTokens) >= uint256(totalTokens)
                        require (1053 * msg.value) + uint256(totalTokens) >= 1053 * msg.value
                        require (1053 * msg.value) + uint256(totalTokens) <= 150000000 * 10^18
                        uint256(totalTokens) += 1053 * msg.value
                        emit Transfer((1053 * msg.value), this.address, arg1);
                        require (1053 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        require (1053 * msg.value) + balanceOf[address(arg1)] >= 1053 * msg.value
                        balanceOf[address(arg1)] += 1053 * msg.value
                        require msg.value + stor14[address(arg1)] >= stor14[address(arg1)]
                        require msg.value + stor14[address(arg1)] >= msg.value
                        stor14[address(arg1)] += msg.value
                        emit WolkCreated((1053 * msg.value), arg1);
                    else:
                        if uint256(totalTokens) >= 100000000 * 10^18:
                            if msg.value:
                                require msg.value
                                require 1000 * msg.value / msg.value == 1000
                            require (1000 * msg.value) + uint256(totalTokens) >= uint256(totalTokens)
                            require (1000 * msg.value) + uint256(totalTokens) >= 1000 * msg.value
                            require (1000 * msg.value) + uint256(totalTokens) <= 150000000 * 10^18
                            uint256(totalTokens) += 1000 * msg.value
                            emit Transfer((1000 * msg.value), this.address, arg1);
                            require (1000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            require (1000 * msg.value) + balanceOf[address(arg1)] >= 1000 * msg.value
                            balanceOf[address(arg1)] += 1000 * msg.value
                            require msg.value + stor14[address(arg1)] >= stor14[address(arg1)]
                            require msg.value + stor14[address(arg1)] >= msg.value
                            stor14[address(arg1)] += msg.value
                            emit WolkCreated((1000 * msg.value), arg1);
                        else:
                            if msg.value:
                                require msg.value
                                require 1026 * msg.value / msg.value == 1026
                            require (1026 * msg.value) + uint256(totalTokens) >= uint256(totalTokens)
                            require (1026 * msg.value) + uint256(totalTokens) >= 1026 * msg.value
                            require (1026 * msg.value) + uint256(totalTokens) <= 150000000 * 10^18
                            uint256(totalTokens) += 1026 * msg.value
                            emit Transfer((1026 * msg.value), this.address, arg1);
                            require (1026 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            require (1026 * msg.value) + balanceOf[address(arg1)] >= 1026 * msg.value
                            balanceOf[address(arg1)] += 1026 * msg.value
                            require msg.value + stor14[address(arg1)] >= stor14[address(arg1)]
                            require msg.value + stor14[address(arg1)] >= msg.value
                            stor14[address(arg1)] += msg.value
                            emit WolkCreated((1026 * msg.value), arg1);
}



}
