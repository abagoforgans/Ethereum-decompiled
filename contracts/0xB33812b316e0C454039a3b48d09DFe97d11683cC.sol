contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
array of struct stor3;
uint8 stor4;
address stor8;
uint256 stor9;
uint8 stor10;
uint256 stor10; offset 8
uint256 stor11;
uint128 stor13; offset 160

function _fallback() payable {
    uint8(stor10.field_0) = 0
    Mask(248, 0, stor10.field_8) = 0
    stor11 = 168 * 24 * 3600
    stor13 = 0
    require not msg.value
    stor0 = msg.sender
    stor8 = 0xf961eb0acf690bd8f92c5f9c486f3b30848d87aa
    stor2 = 4
    require msg.sender == stor0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = (3 * stor3.length) + 3
        while 3 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            stor3[idx].field_512 = 0
            idx = idx + 3
            continue 
    require 400 * 10^stor2 > 0
    require 400 * 10^stor2
    require 10^18 == (400 * 10^stor2 * 10^18 / 400 * 10^stor2) + (10^18 % 400 * 10^stor2)
    stor3[stor3.length].field_0 = 10^18 / 400 * 10^stor2
    stor3[stor3.length].field_256 = 0
    stor3[stor3.length].field_512 = 5000 * 10^18
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = (3 * stor3.length) + 3
        while 3 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            stor3[idx].field_512 = 0
            idx = idx + 3
            continue 
    require 400 * 10^stor2 > 0
    require 400 * 10^stor2
    require 10^18 == (400 * 10^stor2 * 10^18 / 400 * 10^stor2) + (10^18 % 400 * 10^stor2)
    stor3[stor3.length].field_0 = 10^18 / 400 * 10^stor2
    stor3[stor3.length].field_256 = 0
    stor3[stor3.length].field_512 = 10^18
    stor4 = 2
    stor9 = 5000 * 10^18
    return code.data[1025 len 5433]
}



// =====================  Runtime code  =====================


address controllerAddress;
uint8 stor1; offset 160
uint128 stor1; offset 160
address newControllerAddress;
uint256 decimals;
array of struct priceList;
uint8 numTiers;
uint256 currentTierIndex;
uint256 totalDepositedEthers;
address daoAddress;
address tokenFactoryAddress;
uint256 hardCapAmount;
uint8 stor10;
uint8 stor10; offset 8
uint256 stor10; offset 8
uint256 duration;
uint256 startTime;
uint8 finalizeSet; offset 160
uint128 stor13; offset 160
address multiSigAddress;

function priceList(uint256 arg1) {
    require arg1 < priceList.length
    return priceList[arg1].field_0, priceList[arg1].field_256, priceList[arg1].field_512
}

function duration() {
    return duration
}

function currentTierIndex() {
    return currentTierIndex
}

function decimals() {
    return decimals
}

function multiSig() {
    return multiSigAddress
}

function newController() {
    return newControllerAddress
}

function numTiers() {
    return numTiers
}

function dao() {
    return daoAddress
}

function isStarted() {
    return bool(uint8(stor10.field_0))
}

function startTime() {
    return startTime
}

function totalDepositedEthers() {
    return totalDepositedEthers
}

function isFinalized() {
    return bool(uint8(stor10.field_8))
}

function finalizeSet() {
    return bool(finalizeSet)
}

function halted() {
    return bool(uint8(stor1.field_160))
}

function hardCapAmount() {
    return hardCapAmount
}

function tokenFactory() {
    return tokenFactoryAddress
}

function controller() {
    return controllerAddress
}

function halt() {
    require msg.sender == controllerAddress
    Mask(96, 0, stor1.field_160) = 1
}

function changeOwner(address arg1) {
    require msg.sender == controllerAddress
    newControllerAddress = arg1
}

function acceptOwnership() {
    if msg.sender == newControllerAddress:
        controllerAddress = newControllerAddress
}

function unhalt() {
    require msg.sender == controllerAddress
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
}

function setDAOAndMultiSig(address arg1, address arg2) {
    require msg.sender == controllerAddress
    daoAddress = arg1
    multiSigAddress = arg2
    stor13 = 1
}

function startCrowdsale() {
    require msg.sender == controllerAddress
    require not uint8(stor10.field_0)
    uint8(stor10.field_0) = 1
    startTime = block.timestamp
}

function emergency() payable {
    require uint8(stor10.field_0)
    require uint8(stor1.field_160)
    require msg.sender == controllerAddress
    require finalizeSet
    Mask(248, 0, stor10.field_8) = 1
    uint8(stor10.field_0) = 0
    call multiSigAddress with:
       value eth.balance(this.address) wei
         gas 150000 wei
}

function finalize() payable {
    require msg.sender == controllerAddress
    require finalizeSet
    if hardCapAmount == totalDepositedEthers:
        call daoAddress with:
           value 2 * totalDepositedEthers / 10 wei
             gas 150000 wei
        call multiSigAddress with:
           value eth.balance(this.address) wei
             gas 150000 wei
        Mask(248, 0, stor10.field_8) = 1
    else:
        if block.timestamp - startTime > duration:
            call daoAddress with:
               value 2 * totalDepositedEthers / 10 wei
                 gas 150000 wei
            call multiSigAddress with:
               value eth.balance(this.address) wei
                 gas 150000 wei
            Mask(248, 0, stor10.field_8) = 1
}

function setPricing() {
    require msg.sender == controllerAddress
    priceList.length++
    if not priceList.length <= priceList.length + 1:
        idx = (3 * priceList.length) + 3
        while 3 * priceList.length > idx:
            priceList[idx].field_0 = 0
            priceList[idx].field_256 = 0
            priceList[idx].field_512 = 0
            idx = idx + 3
            continue 
    require 400 * 10^decimals > 0
    require 400 * 10^decimals
    require 10^18 == (400 * 10^decimals * 10^18 / 400 * 10^decimals) + (10^18 % 400 * 10^decimals)
    priceList[priceList.length].field_0 = 10^18 / 400 * 10^decimals
    priceList[priceList.length].field_256 = 0
    priceList[priceList.length].field_512 = 5000 * 10^18
    priceList.length++
    if not priceList.length <= priceList.length + 1:
        idx = (3 * priceList.length) + 3
        while 3 * priceList.length > idx:
            priceList[idx].field_0 = 0
            priceList[idx].field_256 = 0
            priceList[idx].field_512 = 0
            idx = idx + 3
            continue 
    require 400 * 10^decimals > 0
    require 400 * 10^decimals
    require 10^18 == (400 * 10^decimals * 10^18 / 400 * 10^decimals) + (10^18 % 400 * 10^decimals)
    priceList[priceList.length].field_0 = 10^18 / 400 * 10^decimals
    priceList[priceList.length].field_256 = 0
    priceList[priceList.length].field_512 = 10^18
    numTiers = 2
}

function _fallback() payable {
    require not uint8(stor1.field_160)
    require uint8(stor10.field_0)
    require not uint8(stor10.field_8)
    require totalDepositedEthers < hardCapAmount
    require totalDepositedEthers + msg.value >= totalDepositedEthers
    require totalDepositedEthers + msg.value >= msg.value
    if totalDepositedEthers + msg.value <= hardCapAmount:
        require msg.value <= msg.value
        if not numTiers:
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
        else:
            s = 0
            idx = 0
            t = 0
            u = msg.value
            while uint8(idx) < numTiers:
                require uint8(idx) < priceList.length
                mem[0] = 3
                if priceList[uint8(idx)].field_256 >= priceList[uint8(idx)].field_512:
                    s = s
                    idx = idx + 1
                    t = t
                    u = u
                    continue 
                require uint8(idx) < priceList.length
                require uint8(idx) < priceList.length
                require priceList[uint8(idx)].field_0
                if priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 < u:
                    require t + (priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 / priceList[uint8(idx)].field_0) >= t
                    require t + (priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 / priceList[uint8(idx)].field_0) >= priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 / priceList[uint8(idx)].field_0
                    require uint8(idx) < priceList.length
                    require priceList[uint8(idx)].field_256 >= 0
                    require priceList[uint8(idx)].field_512 >= priceList[uint8(idx)].field_256
                    require uint8(idx) < priceList.length
                    priceList[uint8(idx)].field_256 = priceList[uint8(idx)].field_512
                    require totalDepositedEthers >= 0
                    require priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 + totalDepositedEthers >= totalDepositedEthers
                    totalDepositedEthers = priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 + totalDepositedEthers
                    require priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 <= u
                    require uint8(idx) < priceList.length
                    mem[0] = 3
                    s = priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256
                    idx = idx + 1
                    t = t + (priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 / priceList[uint8(idx)].field_0)
                    u = u - priceList[uint8(idx)].field_512 + priceList[uint8(idx)].field_256
                    continue 
                require t + (u / priceList[uint8(idx)].field_0) >= t
                require t + (u / priceList[uint8(idx)].field_0) >= u / priceList[uint8(idx)].field_0
                require uint8(idx) < priceList.length
                require u + priceList[uint8(idx)].field_256 >= u
                require u + priceList[uint8(idx)].field_256 >= priceList[uint8(idx)].field_256
                require uint8(idx) < priceList.length
                priceList[uint8(idx)].field_256 += u
                require u + totalDepositedEthers >= u
                require u + totalDepositedEthers >= totalDepositedEthers
                totalDepositedEthers += u
                require u <= u
                require uint8(idx) < priceList.length
                mem[0] = 3
                s = u
                idx = idx + 1
                t = t + (u / priceList[uint8(idx)].field_0)
                u = 0
                continue 
            currentTierIndex = 0
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, t
        require ext_call.success
    else:
        require totalDepositedEthers <= hardCapAmount
        require hardCapAmount - totalDepositedEthers <= msg.value
        if not numTiers:
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
        else:
            s = 0
            idx = 0
            t = 0
            u = hardCapAmount - totalDepositedEthers
            while uint8(idx) < numTiers:
                require uint8(idx) < priceList.length
                mem[0] = 3
                if priceList[uint8(idx)].field_256 >= priceList[uint8(idx)].field_512:
                    s = s
                    idx = idx + 1
                    t = t
                    u = u
                    continue 
                require uint8(idx) < priceList.length
                require uint8(idx) < priceList.length
                require priceList[uint8(idx)].field_0
                if priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 < u:
                    require t + (priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 / priceList[uint8(idx)].field_0) >= t
                    require t + (priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 / priceList[uint8(idx)].field_0) >= priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 / priceList[uint8(idx)].field_0
                    require uint8(idx) < priceList.length
                    require priceList[uint8(idx)].field_256 >= 0
                    require priceList[uint8(idx)].field_512 >= priceList[uint8(idx)].field_256
                    require uint8(idx) < priceList.length
                    priceList[uint8(idx)].field_256 = priceList[uint8(idx)].field_512
                    require totalDepositedEthers >= 0
                    require priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 + totalDepositedEthers >= totalDepositedEthers
                    totalDepositedEthers = priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 + totalDepositedEthers
                    require priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 <= u
                    require uint8(idx) < priceList.length
                    mem[0] = 3
                    s = priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256
                    idx = idx + 1
                    t = t + (priceList[uint8(idx)].field_512 - priceList[uint8(idx)].field_256 / priceList[uint8(idx)].field_0)
                    u = u - priceList[uint8(idx)].field_512 + priceList[uint8(idx)].field_256
                    continue 
                require t + (u / priceList[uint8(idx)].field_0) >= t
                require t + (u / priceList[uint8(idx)].field_0) >= u / priceList[uint8(idx)].field_0
                require uint8(idx) < priceList.length
                require u + priceList[uint8(idx)].field_256 >= u
                require u + priceList[uint8(idx)].field_256 >= priceList[uint8(idx)].field_256
                require uint8(idx) < priceList.length
                priceList[uint8(idx)].field_256 += u
                require u + totalDepositedEthers >= u
                require u + totalDepositedEthers >= totalDepositedEthers
                totalDepositedEthers += u
                require u <= u
                require uint8(idx) < priceList.length
                mem[0] = 3
                s = u
                idx = idx + 1
                t = t + (u / priceList[uint8(idx)].field_0)
                u = 0
                continue 
            currentTierIndex = 0
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, t
        require ext_call.success
        if msg.value - hardCapAmount + totalDepositedEthers > 0:
            call msg.sender with:
               value msg.value - hardCapAmount + totalDepositedEthers wei
                 gas 2300 * is_zero(value) wei
}



}
