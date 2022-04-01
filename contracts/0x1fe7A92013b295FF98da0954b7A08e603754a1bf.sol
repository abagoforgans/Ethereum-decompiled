contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint16 stor8;
uint256 stor9;
address stor10;
address stor11;

function _fallback() payable {
    stor4 = 875
    stor5 = 3990 * 10^18
    stor6 = 3500000 * 10^18
    stor7 = 0
    stor8 = 0
    stor9 = block.timestamp + (672 * 24 * 3600)
    require not msg.value
    stor0 = 0x1538ef80213cde339a333ee420a85c21905b1b2d
    stor10 = 0x67ce771af21fd013faa48ac04d35aa1f20f9f7a6
    stor3 = 0x1d1739f37a103f0d7a5f5736fed2e77de9863450
    stor11 = 0x543d99c00686628b677a8b03a4e7a9ac60023727
    return code.data[221 len 3489]
}



// =====================  Runtime code  =====================


const NTRYAvailableForSale = 3500000 * 10^18


address stor0;
array of struct contributions;
mapping of struct stor2;
address preICOBeneficiaryAddress;
uint256 nTRYPerEther;
uint256 minimumFundingGoal;
uint256 remaingNTRY;
uint256 raisedFunds;
uint8 isPreICOClosed;
uint8 stor8; offset 8
uint256 deadline;
address stor10;
address stor11;

function remaingNTRY() {
    return remaingNTRY
}

function minimumFundingGoal() {
    return minimumFundingGoal
}

function contributions(uint256 arg1) {
    require arg1 < contributions.length
    return contributions[arg1].field_0, 
           contributions[arg1].field_256,
           contributions[arg1].field_512,
           contributions[arg1].field_768
}

function deadline() {
    return deadline
}

function isPreICOClosed() {
    return bool(isPreICOClosed)
}

function preICOBeneficiaryAddress() {
    return preICOBeneficiaryAddress
}

function RaisedFunds() {
    return raisedFunds
}

function NTRYPerEther() {
    return nTRYPerEther
}

function levelThreeBonus(uint256 arg1) {
    remaingNTRY -= arg1
    return (13 * arg1 / 8)
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function updatePrice(uint256 arg1) {
    require stor0 == msg.sender
    nTRYPerEther = arg1
}

function mortal() {
    if block.timestamp < deadline + (672 * 24 * 3600):
    if preICOBeneficiaryAddress != msg.sender:
    call preICOBeneficiaryAddress with:
       value raisedFunds wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if raisedFunds < minimumFundingGoal:
            remaingNTRY = 0
            stor8 = 1
        else:
            emit GoalReached(preICOBeneficiaryAddress, raisedFunds);
            stor8 = 0
            remaingNTRY = 0
        isPreICOClosed = 1
}

function levelTwoBonus(uint256 arg1) {
    if remaingNTRY - 1000000 * 10^18 < arg1:
        remaingNTRY = 1000000 * 10^18
        return 2 * remaingNTRY - 1000000 * 10^18, 
               arg1 + -remaingNTRY - 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125f000000
    remaingNTRY -= arg1
    return 2 * arg1, 0
}

function levelOneBonus(uint256 arg1) {
    if remaingNTRY - 2000000 * 10^18 < arg1:
        remaingNTRY = 2000000 * 10^18
        return Mask(254, 2, (9 * remaingNTRY) - (5000 * 10^18 * 3600)), 
               arg1 + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000
    remaingNTRY -= arg1
    return Mask(254, 2, 9 * arg1), 0
}

function addBonuses(uint256 arg1) {
    if remaingNTRY <= 2000000 * 10^18:
        if remaingNTRY <= 1000000 * 10^18:
            remaingNTRY -= arg1
            return (13 * arg1 / 8)
        if remaingNTRY - 1000000 * 10^18 >= arg1:
            remaingNTRY -= arg1
            return (2 * arg1)
        remaingNTRY = 1000000 * 10^18
        if not arg1 + -remaingNTRY - 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125f000000:
            return (2 * remaingNTRY - 1000000 * 10^18)
        remaingNTRY = (2 * remaingNTRY) + -arg1 - 1000000 * 10^18
        return ((2 * remaingNTRY - 1000000 * 10^18) + ((13 * arg1) + (-13 * remaingNTRY) - 0xcfffffffffffffffffffffffffffffffffffffffffff53f24967f97eed3000000 / 8))
    if remaingNTRY - 2000000 * 10^18 >= arg1:
        remaingNTRY -= arg1
        return (9 * arg1 / 4)
    remaingNTRY = 2000000 * 10^18
    if not arg1 + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000:
        return ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4)
    if remaingNTRY - 1000000 * 10^18 >= arg1 + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000:
        remaingNTRY = (2 * remaingNTRY) + -arg1 - 2000000 * 10^18
        return ((2 * arg1 + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4))
    remaingNTRY = 1000000 * 10^18
    if not arg1 + (-2 * remaingNTRY) - 0x1fffffffffffffffffffffffffffffffffffffffffffd84b9ac9399371d000000:
        return ((2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4))
    remaingNTRY = (3 * remaingNTRY) + -arg1 - 3000000 * 10^18
    return ((2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4) + ((13 * arg1) + (-26 * remaingNTRY) - 0x19ffffffffffffffffffffffffffffffffffffffffffdfbd6dc37ec7cc79000000 / 8))
}

function updateRewardLedger(address arg1, uint256 arg2, uint256 arg3) {
    if stor2[address(arg1)].field_768:
        stor2[address(arg1)].field_0 += arg2
        stor2[address(arg1)].field_256 = 0
        stor2[address(arg1)].field_512 += arg3
        contributions.length++
        if not contributions.length <= contributions.length + 1:
            idx = 4 * contributions.length + 1
            while 4 * contributions.length > idx:
                contributions[idx].field_0 = 0
                contributions[idx].field_256 = 0
                contributions[idx].field_512 = 0
                contributions[idx].field_768 = 0
                idx = idx + 4
                continue 
        contributions[contributions.length].field_0 = arg2
        contributions[contributions.length].field_256 = nTRYPerEther
        contributions[contributions.length].field_512 = arg3
        contributions[contributions.length].field_768 = arg1
    else:
        stor2[address(arg1)].field_0 = arg2
        stor2[address(arg1)].field_256 = nTRYPerEther
        stor2[address(arg1)].field_512 = arg3
        stor2[address(arg1)].field_768 = arg1
        contributions.length++
        if not contributions.length <= contributions.length + 1:
            idx = 4 * contributions.length + 1
            while 4 * contributions.length > idx:
                contributions[idx].field_0 = 0
                contributions[idx].field_256 = 0
                contributions[idx].field_512 = 0
                contributions[idx].field_768 = 0
                idx = idx + 4
                continue 
        contributions[contributions.length].field_0 = stor2[address(arg1)].field_0
        contributions[contributions.length].field_256 = stor2[address(arg1)].field_256
        contributions[contributions.length].field_512 = stor2[address(arg1)].field_512
        contributions[contributions.length].field_768 = stor2[address(arg1)].field_768
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if not stor8:
            if preICOBeneficiaryAddress == msg.sender:
                call preICOBeneficiaryAddress with:
                   value raisedFunds wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    stor8 = 1
                else:
                    emit FundTransfer(preICOBeneficiaryAddress, raisedFunds, 0);
        else:
            if stor2[address(msg.sender)].field_512 <= 0:
                if not stor8:
                    if preICOBeneficiaryAddress == msg.sender:
                        call preICOBeneficiaryAddress with:
                           value raisedFunds wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor8 = 1
                        else:
                            emit FundTransfer(preICOBeneficiaryAddress, raisedFunds, 0);
            else:
                require ext_code.size(stor10)
                call stor10.takeBackNTRY(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, stor11, stor2[address(msg.sender)].field_512
                require ext_call.success
                if not ext_call.return_data[0]:
                    call msg.sender with:
                       value stor2[address(msg.sender)].field_0 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require ext_code.size(stor10)
                        call stor10.takeBackNTRY(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 50 wei
                            args stor11, msg.sender, stor2[address(msg.sender)].field_512
                        require ext_call.success
                    else:
                        emit FundTransfer(msg.sender, stor2[address(msg.sender)].field_0, 0);
                        stor2[address(msg.sender)].field_0 = 0
                        stor2[address(msg.sender)].field_256 = 0
                        stor2[address(msg.sender)].field_512 = 0
                        stor2[address(msg.sender)].field_768 = 0
                    if not stor8:
                        if preICOBeneficiaryAddress == msg.sender:
                            call preICOBeneficiaryAddress with:
                               value raisedFunds wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                stor8 = 1
                            else:
                                emit FundTransfer(preICOBeneficiaryAddress, raisedFunds, 0);
}

function _fallback() payable {
    require not isPreICOClosed
    require msg.value > 0
    require remaingNTRY >= msg.value * nTRYPerEther
    if remaingNTRY <= 2000000 * 10^18:
        if remaingNTRY <= 1000000 * 10^18:
            remaingNTRY += -1 * msg.value * nTRYPerEther
            require ext_code.size(stor10)
            call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 50 wei
                args stor0, msg.sender, 13 * msg.value * nTRYPerEther / 8
            require ext_call.success
            require ext_call.return_data[0]
            raisedFunds += msg.value
            if stor2[address(msg.sender)].field_768:
                stor2[address(msg.sender)].field_0 += msg.value
                stor2[address(msg.sender)].field_256 = 0
                stor2[address(msg.sender)].field_512 += 13 * msg.value * nTRYPerEther / 8
                contributions.length++
                if not contributions.length <= contributions.length + 1:
                    idx = 4 * contributions.length + 1
                    while 4 * contributions.length > idx:
                        contributions[idx].field_0 = 0
                        contributions[idx].field_256 = 0
                        contributions[idx].field_512 = 0
                        contributions[idx].field_768 = 0
                        idx = idx + 4
                        continue 
                contributions[contributions.length].field_0 = msg.value
                contributions[contributions.length].field_256 = nTRYPerEther
                contributions[contributions.length].field_512 = 13 * msg.value * nTRYPerEther / 8
                contributions[contributions.length].field_765 = 0
                contributions[contributions.length].field_768 = msg.sender
            else:
                stor2[address(msg.sender)].field_0 = msg.value
                stor2[address(msg.sender)].field_256 = nTRYPerEther
                stor2[address(msg.sender)].field_512 = 13 * msg.value * nTRYPerEther / 8
                stor2[address(msg.sender)].field_765 = 0
                stor2[address(msg.sender)].field_768 = msg.sender
                contributions.length++
                if not contributions.length <= contributions.length + 1:
                    idx = 4 * contributions.length + 1
                    while 4 * contributions.length > idx:
                        contributions[idx].field_0 = 0
                        contributions[idx].field_256 = 0
                        contributions[idx].field_512 = 0
                        contributions[idx].field_768 = 0
                        idx = idx + 4
                        continue 
                contributions[contributions.length].field_0 = stor2[address(msg.sender)].field_0
                contributions[contributions.length].field_256 = stor2[address(msg.sender)].field_256
                contributions[contributions.length].field_512 = stor2[address(msg.sender)].field_512
                contributions[contributions.length].field_768 = stor2[address(msg.sender)].field_768
        else:
            if remaingNTRY - 1000000 * 10^18 >= msg.value * nTRYPerEther:
                remaingNTRY += -1 * msg.value * nTRYPerEther
                require ext_code.size(stor10)
                call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 50 wei
                    args stor0, msg.sender, 2 * msg.value * nTRYPerEther
                require ext_call.success
                require ext_call.return_data[0]
                raisedFunds += msg.value
                if stor2[address(msg.sender)].field_768:
                    stor2[address(msg.sender)].field_0 += msg.value
                    stor2[address(msg.sender)].field_256 = 0
                    stor2[address(msg.sender)].field_512 += 2 * msg.value * nTRYPerEther
                    contributions.length++
                    if not contributions.length <= contributions.length + 1:
                        idx = 4 * contributions.length + 1
                        while 4 * contributions.length > idx:
                            contributions[idx].field_0 = 0
                            contributions[idx].field_256 = 0
                            contributions[idx].field_512 = 0
                            contributions[idx].field_768 = 0
                            idx = idx + 4
                            continue 
                    contributions[contributions.length].field_0 = msg.value
                    contributions[contributions.length].field_256 = nTRYPerEther
                    contributions[contributions.length].field_512 = 0
                    contributions[contributions.length].field_513 = uint255(msg.value * nTRYPerEther)
                    contributions[contributions.length].field_768 = msg.sender
                else:
                    stor2[address(msg.sender)].field_0 = msg.value
                    stor2[address(msg.sender)].field_256 = nTRYPerEther
                    stor2[address(msg.sender)].field_512 = 0
                    stor2[address(msg.sender)].field_513 = uint255(msg.value * nTRYPerEther)
                    stor2[address(msg.sender)].field_768 = msg.sender
                    contributions.length++
                    if not contributions.length <= contributions.length + 1:
                        idx = 4 * contributions.length + 1
                        while 4 * contributions.length > idx:
                            contributions[idx].field_0 = 0
                            contributions[idx].field_256 = 0
                            contributions[idx].field_512 = 0
                            contributions[idx].field_768 = 0
                            idx = idx + 4
                            continue 
                    contributions[contributions.length].field_0 = stor2[address(msg.sender)].field_0
                    contributions[contributions.length].field_256 = stor2[address(msg.sender)].field_256
                    contributions[contributions.length].field_512 = stor2[address(msg.sender)].field_512
                    contributions[contributions.length].field_768 = stor2[address(msg.sender)].field_768
            else:
                remaingNTRY = 1000000 * 10^18
                if not (msg.value * nTRYPerEther) + -remaingNTRY - 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125f000000:
                    require ext_code.size(stor10)
                    call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 50 wei
                        args stor0, msg.sender, 2 * remaingNTRY - 1000000 * 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    raisedFunds += msg.value
                    if stor2[address(msg.sender)].field_768:
                        stor2[address(msg.sender)].field_0 += msg.value
                        stor2[address(msg.sender)].field_256 = 0
                        stor2[address(msg.sender)].field_512 += 2 * remaingNTRY - 1000000 * 10^18
                        contributions.length++
                        if not contributions.length <= contributions.length + 1:
                            idx = 4 * contributions.length + 1
                            while 4 * contributions.length > idx:
                                contributions[idx].field_0 = 0
                                contributions[idx].field_256 = 0
                                contributions[idx].field_512 = 0
                                contributions[idx].field_768 = 0
                                idx = idx + 4
                                continue 
                        contributions[contributions.length].field_0 = msg.value
                        contributions[contributions.length].field_256 = nTRYPerEther
                        contributions[contributions.length].field_512 = 0
                        contributions[contributions.length].field_513 = uint255(remaingNTRY - 1000000 * 10^18)
                        contributions[contributions.length].field_768 = msg.sender
                    else:
                        stor2[address(msg.sender)].field_0 = msg.value
                        stor2[address(msg.sender)].field_256 = nTRYPerEther
                        stor2[address(msg.sender)].field_512 = 0
                        stor2[address(msg.sender)].field_513 = uint255(remaingNTRY - 1000000 * 10^18)
                        stor2[address(msg.sender)].field_768 = msg.sender
                        contributions.length++
                        if not contributions.length <= contributions.length + 1:
                            idx = 4 * contributions.length + 1
                            while 4 * contributions.length > idx:
                                contributions[idx].field_0 = 0
                                contributions[idx].field_256 = 0
                                contributions[idx].field_512 = 0
                                contributions[idx].field_768 = 0
                                idx = idx + 4
                                continue 
                        contributions[contributions.length].field_0 = stor2[address(msg.sender)].field_0
                        contributions[contributions.length].field_256 = stor2[address(msg.sender)].field_256
                        contributions[contributions.length].field_512 = stor2[address(msg.sender)].field_512
                        contributions[contributions.length].field_768 = stor2[address(msg.sender)].field_768
                else:
                    remaingNTRY = (2 * remaingNTRY) + (-1 * msg.value * nTRYPerEther) - 1000000 * 10^18
                    require ext_code.size(stor10)
                    call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 50 wei
                        args stor0, msg.sender, (2 * remaingNTRY - 1000000 * 10^18) + ((13 * msg.value * nTRYPerEther) + (-13 * remaingNTRY) - 0xcfffffffffffffffffffffffffffffffffffffffffff53f24967f97eed3000000 / 8)
                    require ext_call.success
                    require ext_call.return_data[0]
                    raisedFunds += msg.value
                    if stor2[address(msg.sender)].field_768:
                        stor2[address(msg.sender)].field_0 += msg.value
                        stor2[address(msg.sender)].field_256 = 0
                        stor2[address(msg.sender)].field_512 = (2 * remaingNTRY - 1000000 * 10^18) + ((13 * msg.value * nTRYPerEther) + (-13 * remaingNTRY) - 0xcfffffffffffffffffffffffffffffffffffffffffff53f24967f97eed3000000 / 8) + stor2[address(msg.sender)].field_512
                        contributions.length++
                        if not contributions.length <= contributions.length + 1:
                            idx = 4 * contributions.length + 1
                            while 4 * contributions.length > idx:
                                contributions[idx].field_0 = 0
                                contributions[idx].field_256 = 0
                                contributions[idx].field_512 = 0
                                contributions[idx].field_768 = 0
                                idx = idx + 4
                                continue 
                        contributions[contributions.length].field_0 = msg.value
                        contributions[contributions.length].field_256 = nTRYPerEther
                        contributions[contributions.length].field_512 = (2 * remaingNTRY - 1000000 * 10^18) + ((13 * msg.value * nTRYPerEther) + (-13 * remaingNTRY) - 0xcfffffffffffffffffffffffffffffffffffffffffff53f24967f97eed3000000 / 8)
                        contributions[contributions.length].field_768 = msg.sender
                    else:
                        stor2[address(msg.sender)].field_0 = msg.value
                        stor2[address(msg.sender)].field_256 = nTRYPerEther
                        stor2[address(msg.sender)].field_512 = (2 * remaingNTRY - 1000000 * 10^18) + ((13 * msg.value * nTRYPerEther) + (-13 * remaingNTRY) - 0xcfffffffffffffffffffffffffffffffffffffffffff53f24967f97eed3000000 / 8)
                        stor2[address(msg.sender)].field_768 = msg.sender
                        contributions.length++
                        if not contributions.length <= contributions.length + 1:
                            idx = 4 * contributions.length + 1
                            while 4 * contributions.length > idx:
                                contributions[idx].field_0 = 0
                                contributions[idx].field_256 = 0
                                contributions[idx].field_512 = 0
                                contributions[idx].field_768 = 0
                                idx = idx + 4
                                continue 
                        contributions[contributions.length].field_0 = stor2[address(msg.sender)].field_0
                        contributions[contributions.length].field_256 = stor2[address(msg.sender)].field_256
                        contributions[contributions.length].field_512 = stor2[address(msg.sender)].field_512
                        contributions[contributions.length].field_768 = stor2[address(msg.sender)].field_768
    else:
        if remaingNTRY - 2000000 * 10^18 >= msg.value * nTRYPerEther:
            remaingNTRY += -1 * msg.value * nTRYPerEther
            require ext_code.size(stor10)
            call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 50 wei
                args stor0, msg.sender, 9 * msg.value * nTRYPerEther / 4
            require ext_call.success
            require ext_call.return_data[0]
            raisedFunds += msg.value
            if stor2[address(msg.sender)].field_768:
                stor2[address(msg.sender)].field_0 += msg.value
                stor2[address(msg.sender)].field_256 = 0
                stor2[address(msg.sender)].field_512 += 9 * msg.value * nTRYPerEther / 4
                contributions.length++
                if not contributions.length <= contributions.length + 1:
                    idx = 4 * contributions.length + 1
                    while 4 * contributions.length > idx:
                        contributions[idx].field_0 = 0
                        contributions[idx].field_256 = 0
                        contributions[idx].field_512 = 0
                        contributions[idx].field_768 = 0
                        idx = idx + 4
                        continue 
                contributions[contributions.length].field_0 = msg.value
                contributions[contributions.length].field_256 = nTRYPerEther
                contributions[contributions.length].field_512 = 9 * msg.value * nTRYPerEther / 4
                contributions[contributions.length].field_766 = 0
                contributions[contributions.length].field_768 = msg.sender
            else:
                stor2[address(msg.sender)].field_0 = msg.value
                stor2[address(msg.sender)].field_256 = nTRYPerEther
                stor2[address(msg.sender)].field_512 = 9 * msg.value * nTRYPerEther / 4
                stor2[address(msg.sender)].field_766 = 0
                stor2[address(msg.sender)].field_768 = msg.sender
                contributions.length++
                if not contributions.length <= contributions.length + 1:
                    idx = 4 * contributions.length + 1
                    while 4 * contributions.length > idx:
                        contributions[idx].field_0 = 0
                        contributions[idx].field_256 = 0
                        contributions[idx].field_512 = 0
                        contributions[idx].field_768 = 0
                        idx = idx + 4
                        continue 
                contributions[contributions.length].field_0 = stor2[address(msg.sender)].field_0
                contributions[contributions.length].field_256 = stor2[address(msg.sender)].field_256
                contributions[contributions.length].field_512 = stor2[address(msg.sender)].field_512
                contributions[contributions.length].field_768 = stor2[address(msg.sender)].field_768
        else:
            remaingNTRY = 2000000 * 10^18
            if not (msg.value * nTRYPerEther) + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000:
                require ext_code.size(stor10)
                call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 50 wei
                    args stor0, msg.sender, (9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4
                require ext_call.success
                require ext_call.return_data[0]
                raisedFunds += msg.value
                if stor2[address(msg.sender)].field_768:
                    stor2[address(msg.sender)].field_0 += msg.value
                    stor2[address(msg.sender)].field_256 = 0
                    stor2[address(msg.sender)].field_512 += (9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4
                    contributions.length++
                    if not contributions.length <= contributions.length + 1:
                        idx = 4 * contributions.length + 1
                        while 4 * contributions.length > idx:
                            contributions[idx].field_0 = 0
                            contributions[idx].field_256 = 0
                            contributions[idx].field_512 = 0
                            contributions[idx].field_768 = 0
                            idx = idx + 4
                            continue 
                    contributions[contributions.length].field_0 = msg.value
                    contributions[contributions.length].field_256 = nTRYPerEther
                    contributions[contributions.length].field_512 = (9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4
                    contributions[contributions.length].field_766 = 0
                    contributions[contributions.length].field_768 = msg.sender
                else:
                    stor2[address(msg.sender)].field_0 = msg.value
                    stor2[address(msg.sender)].field_256 = nTRYPerEther
                    stor2[address(msg.sender)].field_512 = (9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4
                    stor2[address(msg.sender)].field_766 = 0
                    stor2[address(msg.sender)].field_768 = msg.sender
                    contributions.length++
                    if not contributions.length <= contributions.length + 1:
                        idx = 4 * contributions.length + 1
                        while 4 * contributions.length > idx:
                            contributions[idx].field_0 = 0
                            contributions[idx].field_256 = 0
                            contributions[idx].field_512 = 0
                            contributions[idx].field_768 = 0
                            idx = idx + 4
                            continue 
                    contributions[contributions.length].field_0 = stor2[address(msg.sender)].field_0
                    contributions[contributions.length].field_256 = stor2[address(msg.sender)].field_256
                    contributions[contributions.length].field_512 = stor2[address(msg.sender)].field_512
                    contributions[contributions.length].field_768 = stor2[address(msg.sender)].field_768
            else:
                if remaingNTRY - 1000000 * 10^18 >= (msg.value * nTRYPerEther) + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000:
                    remaingNTRY = (2 * remaingNTRY) + (-1 * msg.value * nTRYPerEther) - 2000000 * 10^18
                    require ext_code.size(stor10)
                    call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 50 wei
                        args stor0, msg.sender, (2 * (msg.value * nTRYPerEther) + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4)
                    require ext_call.success
                    require ext_call.return_data[0]
                    raisedFunds += msg.value
                    if stor2[address(msg.sender)].field_768:
                        stor2[address(msg.sender)].field_0 += msg.value
                        stor2[address(msg.sender)].field_256 = 0
                        stor2[address(msg.sender)].field_512 = (2 * (msg.value * nTRYPerEther) + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4) + stor2[address(msg.sender)].field_512
                        contributions.length++
                        if not contributions.length <= contributions.length + 1:
                            idx = 4 * contributions.length + 1
                            while 4 * contributions.length > idx:
                                contributions[idx].field_0 = 0
                                contributions[idx].field_256 = 0
                                contributions[idx].field_512 = 0
                                contributions[idx].field_768 = 0
                                idx = idx + 4
                                continue 
                        contributions[contributions.length].field_0 = msg.value
                        contributions[contributions.length].field_256 = nTRYPerEther
                        contributions[contributions.length].field_512 = (2 * (msg.value * nTRYPerEther) + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4)
                        contributions[contributions.length].field_768 = msg.sender
                    else:
                        stor2[address(msg.sender)].field_0 = msg.value
                        stor2[address(msg.sender)].field_256 = nTRYPerEther
                        stor2[address(msg.sender)].field_512 = (2 * (msg.value * nTRYPerEther) + -remaingNTRY - 0xfffffffffffffffffffffffffffffffffffffffffffe587bc8626624be000000) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4)
                        stor2[address(msg.sender)].field_768 = msg.sender
                        contributions.length++
                        if not contributions.length <= contributions.length + 1:
                            idx = 4 * contributions.length + 1
                            while 4 * contributions.length > idx:
                                contributions[idx].field_0 = 0
                                contributions[idx].field_256 = 0
                                contributions[idx].field_512 = 0
                                contributions[idx].field_768 = 0
                                idx = idx + 4
                                continue 
                        contributions[contributions.length].field_0 = stor2[address(msg.sender)].field_0
                        contributions[contributions.length].field_256 = stor2[address(msg.sender)].field_256
                        contributions[contributions.length].field_512 = stor2[address(msg.sender)].field_512
                        contributions[contributions.length].field_768 = stor2[address(msg.sender)].field_768
                else:
                    remaingNTRY = 1000000 * 10^18
                    if not (msg.value * nTRYPerEther) + (-2 * remaingNTRY) - 0x1fffffffffffffffffffffffffffffffffffffffffffd84b9ac9399371d000000:
                        require ext_code.size(stor10)
                        call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 50 wei
                            args stor0, msg.sender, (2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4)
                        require ext_call.success
                        require ext_call.return_data[0]
                        raisedFunds += msg.value
                        if stor2[address(msg.sender)].field_768:
                            stor2[address(msg.sender)].field_0 += msg.value
                            stor2[address(msg.sender)].field_256 = 0
                            stor2[address(msg.sender)].field_512 = (2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4) + stor2[address(msg.sender)].field_512
                            contributions.length++
                            if not contributions.length <= contributions.length + 1:
                                idx = 4 * contributions.length + 1
                                while 4 * contributions.length > idx:
                                    contributions[idx].field_0 = 0
                                    contributions[idx].field_256 = 0
                                    contributions[idx].field_512 = 0
                                    contributions[idx].field_768 = 0
                                    idx = idx + 4
                                    continue 
                            contributions[contributions.length].field_0 = msg.value
                            contributions[contributions.length].field_256 = nTRYPerEther
                            contributions[contributions.length].field_512 = (2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4)
                            contributions[contributions.length].field_768 = msg.sender
                        else:
                            stor2[address(msg.sender)].field_0 = msg.value
                            stor2[address(msg.sender)].field_256 = nTRYPerEther
                            stor2[address(msg.sender)].field_512 = (2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4)
                            stor2[address(msg.sender)].field_768 = msg.sender
                            contributions.length++
                            if not contributions.length <= contributions.length + 1:
                                idx = 4 * contributions.length + 1
                                while 4 * contributions.length > idx:
                                    contributions[idx].field_0 = 0
                                    contributions[idx].field_256 = 0
                                    contributions[idx].field_512 = 0
                                    contributions[idx].field_768 = 0
                                    idx = idx + 4
                                    continue 
                            contributions[contributions.length].field_0 = stor2[address(msg.sender)].field_0
                            contributions[contributions.length].field_256 = stor2[address(msg.sender)].field_256
                            contributions[contributions.length].field_512 = stor2[address(msg.sender)].field_512
                            contributions[contributions.length].field_768 = stor2[address(msg.sender)].field_768
                    else:
                        remaingNTRY = (3 * remaingNTRY) + (-1 * msg.value * nTRYPerEther) - 3000000 * 10^18
                        require ext_code.size(stor10)
                        call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 50 wei
                            args stor0, msg.sender, (2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4) + ((13 * msg.value * nTRYPerEther) + (-26 * remaingNTRY) - 0x19ffffffffffffffffffffffffffffffffffffffffffdfbd6dc37ec7cc79000000 / 8)
                        require ext_call.success
                        require ext_call.return_data[0]
                        raisedFunds += msg.value
                        if stor2[address(msg.sender)].field_768:
                            stor2[address(msg.sender)].field_0 += msg.value
                            stor2[address(msg.sender)].field_256 = 0
                            stor2[address(msg.sender)].field_512 = (2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4) + ((13 * msg.value * nTRYPerEther) + (-26 * remaingNTRY) - 0x19ffffffffffffffffffffffffffffffffffffffffffdfbd6dc37ec7cc79000000 / 8) + stor2[address(msg.sender)].field_512
                            contributions.length++
                            if not contributions.length <= contributions.length + 1:
                                idx = 4 * contributions.length + 1
                                while 4 * contributions.length > idx:
                                    contributions[idx].field_0 = 0
                                    contributions[idx].field_256 = 0
                                    contributions[idx].field_512 = 0
                                    contributions[idx].field_768 = 0
                                    idx = idx + 4
                                    continue 
                            contributions[contributions.length].field_0 = msg.value
                            contributions[contributions.length].field_256 = nTRYPerEther
                            contributions[contributions.length].field_512 = (2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4) + ((13 * msg.value * nTRYPerEther) + (-26 * remaingNTRY) - 0x19ffffffffffffffffffffffffffffffffffffffffffdfbd6dc37ec7cc79000000 / 8)
                            contributions[contributions.length].field_768 = msg.sender
                        else:
                            stor2[address(msg.sender)].field_0 = msg.value
                            stor2[address(msg.sender)].field_256 = nTRYPerEther
                            stor2[address(msg.sender)].field_512 = (2 * remaingNTRY - 1000000 * 10^18) + ((9 * remaingNTRY) - (5000 * 10^18 * 3600) / 4) + ((13 * msg.value * nTRYPerEther) + (-26 * remaingNTRY) - 0x19ffffffffffffffffffffffffffffffffffffffffffdfbd6dc37ec7cc79000000 / 8)
                            stor2[address(msg.sender)].field_768 = msg.sender
                            contributions.length++
                            if not contributions.length <= contributions.length + 1:
                                idx = 4 * contributions.length + 1
                                while 4 * contributions.length > idx:
                                    contributions[idx].field_0 = 0
                                    contributions[idx].field_256 = 0
                                    contributions[idx].field_512 = 0
                                    contributions[idx].field_768 = 0
                                    idx = idx + 4
                                    continue 
                            contributions[contributions.length].field_0 = stor2[address(msg.sender)].field_0
                            contributions[contributions.length].field_256 = stor2[address(msg.sender)].field_256
                            contributions[contributions.length].field_512 = stor2[address(msg.sender)].field_512
                            contributions[contributions.length].field_768 = stor2[address(msg.sender)].field_768
    emit LogFundingReceived(msg.sender, msg.value, raisedFunds);
}



}
