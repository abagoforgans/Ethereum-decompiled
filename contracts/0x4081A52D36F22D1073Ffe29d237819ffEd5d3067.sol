contract main {


// =======================  Init code  ======================


bool stor0; offset 256
address stor0;
address stor1;
mapping of uint256 stor2;
uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor23;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 10
    stor5.length.field_8 = 'HurtleCoin' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'HRCN' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 4
    stor8 = 200 * 10^6
    stor9 = 2 * 10^14
    stor10 = 28 * 10^13
    stor11 = 500 * 10^18
    stor12 = 0
    stor13 = 3300 * 10^18
    stor14 = 35000 * 10^18
    stor15 = 0
    require not msg.value
    address(stor0.field_0) = 0x3c5568c646068212805550cd1433bd9728667dfd
    stor0.field_256 % 1 = 0
    create contract with 0 wei
                    code: code.data[5231 len 1325], 0x3c5568c646068212805550cd1433bd9728667dfd
    require create.new_address
    stor1 = address(create.new_address)
    stor4 = 10^stor7 * stor8
    stor2[address(stor0.field_0)] = 10^stor7 * stor8
    stor16 = 425208 * 24 * 3600
    stor17 = 426648 * 24 * 3600
    stor18 = 426672 * 24 * 3600
    stor19 = 428832 * 24 * 3600
    stor23 = 1
    return code.data[663 len 4568]
}



// =====================  Runtime code  =====================


address owner;
address vaultAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 initialSupply;
uint256 ratePreICO;
uint256 rateICO;
uint256 preSaleMaxCapInWei;
uint256 preSaleRaised;
uint256 icoSoftCapInWei;
uint256 icoHardCapInWei;
uint256 icoRaised;
uint256 presaleStartTimestamp;
uint256 presaleEndTimestamp;
uint256 icoStartTimestamp;
uint256 icoEndTimestamp;
uint256 presaleTokenLimit;
uint256 icoTokenLimit;
uint256 investorCount;
uint8 crowdSaleState;

function icoSoftCapInWei() {
    return icoSoftCapInWei
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function presaleTokenLimit() {
    return presaleTokenLimit
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function getICORaisedAmount() {
    return icoRaised
}

function presaleStartTimestamp() {
    return presaleStartTimestamp
}

function preSaleMaxCapInWei() {
    return preSaleMaxCapInWei
}

function ratePreICO() {
    return ratePreICO
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function presaleEndTimestamp() {
    return presaleEndTimestamp
}

function icoTokenLimit() {
    return icoTokenLimit
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getInvestorCount() {
    return investorCount
}

function getPresaleRaisedAmount() {
    return preSaleRaised
}

function icoEndTimestamp() {
    return icoEndTimestamp
}

function icoStartTimestamp() {
    return icoStartTimestamp
}

function preSaleRaised() {
    return preSaleRaised
}

function icoRaised() {
    return icoRaised
}

function rateICO() {
    return rateICO
}

function investorCount() {
    return investorCount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function icoHardCapInWei() {
    return icoHardCapInWei
}

function crowdSaleState() {
    require crowdSaleState <= 7
    return crowdSaleState
}

function vault() {
    return vaultAddress
}

function isCrowdSaleStateICO() {
    require crowdSaleState <= 7
    return (crowdSaleState == 3)
}

function isCrowdSaleStatePreSale() {
    require crowdSaleState <= 7
    return (crowdSaleState == 2)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isICOPeriod() {
    if icoRaised <= icoHardCapInWei:
        if block.timestamp < icoEndTimestamp:
            return 1
    crowdSaleState = 7
    return 0
}

function isPreSalePeriod() {
    if preSaleRaised <= preSaleMaxCapInWei:
        if block.timestamp < presaleEndTimestamp:
            return (block.timestamp > presaleStartTimestamp)
    crowdSaleState = 6
    return 0
}

function getRefund(address arg1) {
    require crowdSaleState <= 7
    require crowdSaleState == 5
    require balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require arg1 != msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    if not balanceOf[address(arg1)]:
        investorCount++
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if not balanceOf[address(msg.sender)]:
        investorCount--
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require arg2 != arg1
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    if not balanceOf[address(arg2)]:
        investorCount++
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not balanceOf[address(arg1)]:
        investorCount--
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function endCrowdSale() {
    require owner == msg.sender
    if block.timestamp >= icoEndTimestamp:
        if icoRaised < icoSoftCapInWei:
            crowdSaleState = 5
            require ext_code.size(vaultAddress)
            call vaultAddress.enableRefunds() with:
                 gas gas_remaining - 710 wei
        else:
            crowdSaleState = 4
            require ext_code.size(vaultAddress)
            call vaultAddress.0x43d726d6 with:
                 gas gas_remaining - 710 wei
    else:
        require icoRaised >= icoSoftCapInWei
        crowdSaleState = 4
        require ext_code.size(vaultAddress)
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
}

function enter() payable {
    require msg.value > 0
    if preSaleRaised > preSaleMaxCapInWei:
        crowdSaleState = 6
        if icoRaised > icoHardCapInWei:
            crowdSaleState = 7
            revert
        if block.timestamp >= icoEndTimestamp:
            crowdSaleState = 7
            revert
        require crowdSaleState <= 7
        if crowdSaleState == 6:
            crowdSaleState = 3
    else:
        if block.timestamp < presaleEndTimestamp:
            if block.timestamp > presaleStartTimestamp:
                require crowdSaleState <= 7
                if crowdSaleState == 1:
                    crowdSaleState = 2
            else:
                if icoRaised > icoHardCapInWei:
                    crowdSaleState = 7
                    revert
                if block.timestamp >= icoEndTimestamp:
                    crowdSaleState = 7
                    revert
                require crowdSaleState <= 7
                if crowdSaleState == 6:
                    crowdSaleState = 3
        else:
            crowdSaleState = 6
            if icoRaised > icoHardCapInWei:
                crowdSaleState = 7
                revert
            if block.timestamp >= icoEndTimestamp:
                crowdSaleState = 7
                revert
            require crowdSaleState <= 7
            if crowdSaleState == 6:
                crowdSaleState = 3
    require msg.value > 0
    require crowdSaleState <= 7
    if crowdSaleState == 1:
        if preSaleRaised > preSaleMaxCapInWei:
            crowdSaleState = 6
        else:
            if block.timestamp >= presaleEndTimestamp:
                crowdSaleState = 6
            else:
                if block.timestamp > presaleStartTimestamp:
                    crowdSaleState = 2
    require crowdSaleState <= 7
    if crowdSaleState == 2:
        require ratePreICO
        require msg.value / ratePreICO
        if not balanceOf[address(msg.sender)]:
            investorCount++
        require crowdSaleState <= 7
        if crowdSaleState == 2:
            require 10^decimals * msg.value / ratePreICO > 0
            require owner != msg.sender
            require 10^decimals * msg.value / ratePreICO < balanceOf[stor0]
            require 10^decimals * msg.value / ratePreICO <= balanceOf[stor0]
            balanceOf[stor0] += -1 * 10^decimals * msg.value / ratePreICO
            require (10^decimals * msg.value / ratePreICO) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (10^decimals * msg.value / ratePreICO) + balanceOf[msg.sender]
            emit Transfer((10^decimals * msg.value / ratePreICO), owner, msg.sender);
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address arg1) with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
            require msg.value + preSaleRaised >= preSaleRaised
            preSaleRaised += msg.value
        else:
            require crowdSaleState <= 7
            if crowdSaleState == 3:
                require 10^decimals * msg.value / ratePreICO > 0
                require owner != msg.sender
                require 10^decimals * msg.value / ratePreICO < balanceOf[stor0]
                require 10^decimals * msg.value / ratePreICO <= balanceOf[stor0]
                balanceOf[stor0] += -1 * 10^decimals * msg.value / ratePreICO
                require (10^decimals * msg.value / ratePreICO) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (10^decimals * msg.value / ratePreICO) + balanceOf[msg.sender]
                emit Transfer((10^decimals * msg.value / ratePreICO), owner, msg.sender);
                require ext_code.size(vaultAddress)
                call vaultAddress.deposit(address arg1) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
                require msg.value + icoRaised >= icoRaised
                icoRaised += msg.value
    else:
        require crowdSaleState <= 7
        require crowdSaleState == 3
        require rateICO
        require msg.value / rateICO
        if not balanceOf[address(msg.sender)]:
            investorCount++
        require crowdSaleState <= 7
        if crowdSaleState == 2:
            require 10^decimals * msg.value / rateICO > 0
            require owner != msg.sender
            require 10^decimals * msg.value / rateICO < balanceOf[stor0]
            require 10^decimals * msg.value / rateICO <= balanceOf[stor0]
            balanceOf[stor0] += -1 * 10^decimals * msg.value / rateICO
            require (10^decimals * msg.value / rateICO) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (10^decimals * msg.value / rateICO) + balanceOf[msg.sender]
            emit Transfer((10^decimals * msg.value / rateICO), owner, msg.sender);
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address arg1) with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
            require msg.value + preSaleRaised >= preSaleRaised
            preSaleRaised += msg.value
        else:
            require crowdSaleState <= 7
            if crowdSaleState == 3:
                require 10^decimals * msg.value / rateICO > 0
                require owner != msg.sender
                require 10^decimals * msg.value / rateICO < balanceOf[stor0]
                require 10^decimals * msg.value / rateICO <= balanceOf[stor0]
                balanceOf[stor0] += -1 * 10^decimals * msg.value / rateICO
                require (10^decimals * msg.value / rateICO) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (10^decimals * msg.value / rateICO) + balanceOf[msg.sender]
                emit Transfer((10^decimals * msg.value / rateICO), owner, msg.sender);
                require ext_code.size(vaultAddress)
                call vaultAddress.deposit(address arg1) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
                require msg.value + icoRaised >= icoRaised
                icoRaised += msg.value
}

function _fallback() payable {
    require msg.value > 0
    if preSaleRaised > preSaleMaxCapInWei:
        crowdSaleState = 6
        if icoRaised > icoHardCapInWei:
            crowdSaleState = 7
            revert
        if block.timestamp >= icoEndTimestamp:
            crowdSaleState = 7
            revert
        require crowdSaleState <= 7
        if crowdSaleState == 6:
            crowdSaleState = 3
    else:
        if block.timestamp < presaleEndTimestamp:
            if block.timestamp > presaleStartTimestamp:
                require crowdSaleState <= 7
                if crowdSaleState == 1:
                    crowdSaleState = 2
            else:
                if icoRaised > icoHardCapInWei:
                    crowdSaleState = 7
                    revert
                if block.timestamp >= icoEndTimestamp:
                    crowdSaleState = 7
                    revert
                require crowdSaleState <= 7
                if crowdSaleState == 6:
                    crowdSaleState = 3
        else:
            crowdSaleState = 6
            if icoRaised > icoHardCapInWei:
                crowdSaleState = 7
                revert
            if block.timestamp >= icoEndTimestamp:
                crowdSaleState = 7
                revert
            require crowdSaleState <= 7
            if crowdSaleState == 6:
                crowdSaleState = 3
    require msg.value > 0
    require crowdSaleState <= 7
    if crowdSaleState == 1:
        if preSaleRaised > preSaleMaxCapInWei:
            crowdSaleState = 6
        else:
            if block.timestamp >= presaleEndTimestamp:
                crowdSaleState = 6
            else:
                if block.timestamp > presaleStartTimestamp:
                    crowdSaleState = 2
    require crowdSaleState <= 7
    if crowdSaleState == 2:
        require ratePreICO
        require msg.value / ratePreICO
        if not balanceOf[address(msg.sender)]:
            investorCount++
        require crowdSaleState <= 7
        if crowdSaleState == 2:
            require 10^decimals * msg.value / ratePreICO > 0
            require owner != msg.sender
            require 10^decimals * msg.value / ratePreICO < balanceOf[stor0]
            require 10^decimals * msg.value / ratePreICO <= balanceOf[stor0]
            balanceOf[stor0] += -1 * 10^decimals * msg.value / ratePreICO
            require (10^decimals * msg.value / ratePreICO) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (10^decimals * msg.value / ratePreICO) + balanceOf[msg.sender]
            emit Transfer((10^decimals * msg.value / ratePreICO), owner, msg.sender);
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address arg1) with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
            require msg.value + preSaleRaised >= preSaleRaised
            preSaleRaised += msg.value
        else:
            require crowdSaleState <= 7
            if crowdSaleState == 3:
                require 10^decimals * msg.value / ratePreICO > 0
                require owner != msg.sender
                require 10^decimals * msg.value / ratePreICO < balanceOf[stor0]
                require 10^decimals * msg.value / ratePreICO <= balanceOf[stor0]
                balanceOf[stor0] += -1 * 10^decimals * msg.value / ratePreICO
                require (10^decimals * msg.value / ratePreICO) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (10^decimals * msg.value / ratePreICO) + balanceOf[msg.sender]
                emit Transfer((10^decimals * msg.value / ratePreICO), owner, msg.sender);
                require ext_code.size(vaultAddress)
                call vaultAddress.deposit(address arg1) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
                require msg.value + icoRaised >= icoRaised
                icoRaised += msg.value
    else:
        require crowdSaleState <= 7
        require crowdSaleState == 3
        require rateICO
        require msg.value / rateICO
        if not balanceOf[address(msg.sender)]:
            investorCount++
        require crowdSaleState <= 7
        if crowdSaleState == 2:
            require 10^decimals * msg.value / rateICO > 0
            require owner != msg.sender
            require 10^decimals * msg.value / rateICO < balanceOf[stor0]
            require 10^decimals * msg.value / rateICO <= balanceOf[stor0]
            balanceOf[stor0] += -1 * 10^decimals * msg.value / rateICO
            require (10^decimals * msg.value / rateICO) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (10^decimals * msg.value / rateICO) + balanceOf[msg.sender]
            emit Transfer((10^decimals * msg.value / rateICO), owner, msg.sender);
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address arg1) with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
            require msg.value + preSaleRaised >= preSaleRaised
            preSaleRaised += msg.value
        else:
            require crowdSaleState <= 7
            if crowdSaleState == 3:
                require 10^decimals * msg.value / rateICO > 0
                require owner != msg.sender
                require 10^decimals * msg.value / rateICO < balanceOf[stor0]
                require 10^decimals * msg.value / rateICO <= balanceOf[stor0]
                balanceOf[stor0] += -1 * 10^decimals * msg.value / rateICO
                require (10^decimals * msg.value / rateICO) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (10^decimals * msg.value / rateICO) + balanceOf[msg.sender]
                emit Transfer((10^decimals * msg.value / rateICO), owner, msg.sender);
                require ext_code.size(vaultAddress)
                call vaultAddress.deposit(address arg1) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
                require msg.value + icoRaised >= icoRaised
                icoRaised += msg.value
}



}
