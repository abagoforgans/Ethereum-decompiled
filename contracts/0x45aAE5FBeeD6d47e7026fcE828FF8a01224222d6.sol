contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
address stor9; offset 8
address stor10;

function _fallback() payable {
    stor3 = 100000000 * 10^18
    create contract with 0 wei
                    code: code.data[4946 len 2159]
    require create.new_address
    stor6 = address(create.new_address)
    stor7 = 18
    stor8 = 0
    uint8(stor9.field_0) = 0
    require not msg.value
    stor4 = stor3
    stor1[address(msg.sender)] = stor3
    stor5 = msg.sender
    address(stor9.field_8) = 0xdb2dda9b539726ba861546015f5904a5682dec4b
    stor10 = 0xbd5a19c4f1a2b1ffe8e72de33b740c916763d8b8
    stor1[msg.sender] = stor3
    return code.data[295 len 4651]
}



// =====================  Runtime code  =====================


const name = 'LandSibToken'

const symbol = 'LSC'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 INITIAL_SUPPLY;
uint256 totalSupply;
address owner;
address tokenRewardAddress;
uint256 decimals;
uint256 totalBuyTokens;
uint8 stor9;
address stor9;
address founderAddress; offset 8
address partnerAddress;

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function founder() {
    return founderAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function partner() {
    return partnerAddress
}

function icoClosed() {
    return bool(uint8(stor9.field_0))
}

function totalBuyTokens() {
    return totalBuyTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isPresale() {
    if block.timestamp < 1513944001:
        return block.timestamp >= 1513944001
    return block.timestamp <= 1514635201
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isSale() {
    if block.timestamp < 421128 * 24 * 3600:
        return block.timestamp >= 421128 * 24 * 3600
    return block.timestamp <= 421920 * 24 * 3600
}

function getRate() {
    if block.timestamp < 1513944001:
        return 675
    if block.timestamp < 420611 * 3600:
        return 630
    if block.timestamp < 420659 * 3600:
        return 585
    if block.timestamp < 420707 * 3600:
        return 540
    if block.timestamp >= 421128 * 24 * 3600:
        return 450
    return 495
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sendOtherTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor9.field_0)
    require arg1
    require totalBuyTokens <= 10000000 * 10^18
    require arg2 <= balanceOf[stor5]
    balanceOf[stor5] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require arg2 + totalBuyTokens >= totalBuyTokens
    totalBuyTokens += arg2
}

function close() {
    require owner == msg.sender
    require not uint8(stor9.field_0)
    if not balanceOf[stor5]:
        if not balanceOf[stor5]:
            require 0 <= balanceOf[stor5]
            require balanceOf[address(stor9.field_8)] >= balanceOf[address(stor9.field_8)]
            balanceOf[address(stor9.field_0)] = balanceOf[address(stor9.field_8)]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(stor9.field_0), 0
            require ext_call.success
            require totalBuyTokens >= totalBuyTokens
            require 0 <= balanceOf[stor5]
            require balanceOf[stor10] >= balanceOf[stor10]
            balanceOf[stor10] = balanceOf[stor10]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args partnerAddress, 0
            require ext_call.success
            require totalBuyTokens >= totalBuyTokens
        else:
            require 40 * balanceOf[stor5] / balanceOf[stor5] == 40
            require 0 <= balanceOf[stor5]
            require balanceOf[address(stor9.field_8)] >= balanceOf[address(stor9.field_8)]
            balanceOf[address(stor9.field_0)] = balanceOf[address(stor9.field_8)]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(stor9.field_0), 0
            require ext_call.success
            require totalBuyTokens >= totalBuyTokens
            require 40 * balanceOf[stor5] / 100 <= balanceOf[stor5]
            balanceOf[stor5] -= 40 * balanceOf[stor5] / 100
            require (40 * balanceOf[stor5] / 100) + balanceOf[stor10] >= balanceOf[stor10]
            balanceOf[stor10] += 40 * balanceOf[stor5] / 100
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args partnerAddress, 40 * balanceOf[stor5] / 100
            require ext_call.success
            require (40 * balanceOf[stor5] / 100) + totalBuyTokens >= totalBuyTokens
            totalBuyTokens += 40 * balanceOf[stor5] / 100
    else:
        require 40 * balanceOf[stor5] / balanceOf[stor5] == 40
        if not balanceOf[stor5]:
            require 40 * balanceOf[stor5] / 100 <= balanceOf[stor5]
            balanceOf[stor5] -= 40 * balanceOf[stor5] / 100
            require (40 * balanceOf[stor5] / 100) + balanceOf[address(stor9.field_8)] >= balanceOf[address(stor9.field_8)]
            balanceOf[address(stor9.field_0)] = (40 * balanceOf[stor5] / 100) + balanceOf[address(stor9.field_8)]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(stor9.field_0), 40 * balanceOf[stor5] / 100
            require ext_call.success
            require (40 * balanceOf[stor5] / 100) + totalBuyTokens >= totalBuyTokens
            totalBuyTokens += 40 * balanceOf[stor5] / 100
            require 0 <= balanceOf[stor5]
            require balanceOf[stor10] >= balanceOf[stor10]
            balanceOf[stor10] = balanceOf[stor10]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args partnerAddress, 0
            require ext_call.success
            require totalBuyTokens >= totalBuyTokens
        else:
            require 40 * balanceOf[stor5] / balanceOf[stor5] == 40
            require 40 * balanceOf[stor5] / 100 <= balanceOf[stor5]
            balanceOf[stor5] -= 40 * balanceOf[stor5] / 100
            require (40 * balanceOf[stor5] / 100) + balanceOf[address(stor9.field_8)] >= balanceOf[address(stor9.field_8)]
            balanceOf[address(stor9.field_0)] = (40 * balanceOf[stor5] / 100) + balanceOf[address(stor9.field_8)]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(stor9.field_0), 40 * balanceOf[stor5] / 100
            require ext_call.success
            require (40 * balanceOf[stor5] / 100) + totalBuyTokens >= totalBuyTokens
            totalBuyTokens += 40 * balanceOf[stor5] / 100
            require 40 * balanceOf[stor5] / 100 <= balanceOf[stor5]
            balanceOf[stor5] -= 40 * balanceOf[stor5] / 100
            require (40 * balanceOf[stor5] / 100) + balanceOf[stor10] >= balanceOf[stor10]
            balanceOf[stor10] += 40 * balanceOf[stor5] / 100
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args partnerAddress, 40 * balanceOf[stor5] / 100
            require ext_call.success
            require (40 * balanceOf[stor5] / 100) + totalBuyTokens >= totalBuyTokens
            totalBuyTokens += 40 * balanceOf[stor5] / 100
    uint8(stor9.field_0) = 1
}

function buyTokens(address arg1) payable {
    require not uint8(stor9.field_0)
    require block.timestamp >= 1513944001
    if block.timestamp > 1514635201:
        require block.timestamp >= 421128 * 24 * 3600
        require block.timestamp <= 421920 * 24 * 3600
    require msg.value >= 10^15
    require totalBuyTokens <= 10000000 * 10^18
    if block.timestamp < 1513944001:
        if not msg.value:
            require totalBuyTokens >= totalBuyTokens
            require 0 <= balanceOf[stor5]
            require balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenPurchase(msg.value, 0, arg1, arg1);
        else:
            require 675 * msg.value / msg.value == 675
            require (675 * msg.value) + totalBuyTokens >= totalBuyTokens
            totalBuyTokens += 675 * msg.value
            require 675 * msg.value <= balanceOf[stor5]
            balanceOf[stor5] += -675 * msg.value
            require (675 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = (675 * msg.value) + balanceOf[arg1]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 675 * msg.value
            require ext_call.success
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenPurchase(msg.value, 675 * msg.value, arg1, arg1);
    else:
        if block.timestamp < 420611 * 3600:
            if not msg.value:
                require totalBuyTokens >= totalBuyTokens
                require 0 <= balanceOf[stor5]
                require balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit TokenPurchase(msg.value, 0, arg1, arg1);
            else:
                require 630 * msg.value / msg.value == 630
                require (630 * msg.value) + totalBuyTokens >= totalBuyTokens
                totalBuyTokens += 630 * msg.value
                require 630 * msg.value <= balanceOf[stor5]
                balanceOf[stor5] += -630 * msg.value
                require (630 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = (630 * msg.value) + balanceOf[arg1]
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 630 * msg.value
                require ext_call.success
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit TokenPurchase(msg.value, 630 * msg.value, arg1, arg1);
        else:
            if block.timestamp < 420659 * 3600:
                if not msg.value:
                    require totalBuyTokens >= totalBuyTokens
                    require 0 <= balanceOf[stor5]
                    require balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenPurchase(msg.value, 0, arg1, arg1);
                else:
                    require 585 * msg.value / msg.value == 585
                    require (585 * msg.value) + totalBuyTokens >= totalBuyTokens
                    totalBuyTokens += 585 * msg.value
                    require 585 * msg.value <= balanceOf[stor5]
                    balanceOf[stor5] += -585 * msg.value
                    require (585 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = (585 * msg.value) + balanceOf[arg1]
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 585 * msg.value
                    require ext_call.success
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenPurchase(msg.value, 585 * msg.value, arg1, arg1);
            else:
                if block.timestamp < 420707 * 3600:
                    if not msg.value:
                        require totalBuyTokens >= totalBuyTokens
                        require 0 <= balanceOf[stor5]
                        require balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = balanceOf[arg1]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit TokenPurchase(msg.value, 0, arg1, arg1);
                    else:
                        require 540 * msg.value / msg.value == 540
                        require (540 * msg.value) + totalBuyTokens >= totalBuyTokens
                        totalBuyTokens += 540 * msg.value
                        require 540 * msg.value <= balanceOf[stor5]
                        balanceOf[stor5] += -540 * msg.value
                        require (540 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = (540 * msg.value) + balanceOf[arg1]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 540 * msg.value
                        require ext_call.success
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit TokenPurchase(msg.value, 540 * msg.value, arg1, arg1);
                else:
                    if block.timestamp >= 421128 * 24 * 3600:
                        if not msg.value:
                            require totalBuyTokens >= totalBuyTokens
                            require 0 <= balanceOf[stor5]
                            require balanceOf[arg1] >= balanceOf[arg1]
                            balanceOf[address(arg1)] = balanceOf[arg1]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                            require ext_call.success
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit TokenPurchase(msg.value, 0, arg1, arg1);
                        else:
                            require 450 * msg.value / msg.value == 450
                            require (450 * msg.value) + totalBuyTokens >= totalBuyTokens
                            totalBuyTokens += 450 * msg.value
                            require 450 * msg.value <= balanceOf[stor5]
                            balanceOf[stor5] += -450 * msg.value
                            require (450 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                            balanceOf[address(arg1)] = (450 * msg.value) + balanceOf[arg1]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 450 * msg.value
                            require ext_call.success
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit TokenPurchase(msg.value, 450 * msg.value, arg1, arg1);
                    else:
                        if not msg.value:
                            require totalBuyTokens >= totalBuyTokens
                            require 0 <= balanceOf[stor5]
                            require balanceOf[arg1] >= balanceOf[arg1]
                            balanceOf[address(arg1)] = balanceOf[arg1]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                            require ext_call.success
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit TokenPurchase(msg.value, 0, arg1, arg1);
                        else:
                            require 495 * msg.value / msg.value == 495
                            require (495 * msg.value) + totalBuyTokens >= totalBuyTokens
                            totalBuyTokens += 495 * msg.value
                            require 495 * msg.value <= balanceOf[stor5]
                            balanceOf[stor5] += -495 * msg.value
                            require (495 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                            balanceOf[address(arg1)] = (495 * msg.value) + balanceOf[arg1]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 495 * msg.value
                            require ext_call.success
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit TokenPurchase(msg.value, 495 * msg.value, arg1, arg1);
}

function _fallback() payable {
    require not uint8(stor9.field_0)
    require block.timestamp >= 1513944001
    if block.timestamp > 1514635201:
        require block.timestamp >= 421128 * 24 * 3600
        require block.timestamp <= 421920 * 24 * 3600
    require msg.value >= 10^15
    require totalBuyTokens <= 10000000 * 10^18
    if block.timestamp < 1513944001:
        if not msg.value:
            require totalBuyTokens >= totalBuyTokens
            require 0 <= balanceOf[stor5]
            require balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[msg.sender]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            require 675 * msg.value / msg.value == 675
            require (675 * msg.value) + totalBuyTokens >= totalBuyTokens
            totalBuyTokens += 675 * msg.value
            require 675 * msg.value <= balanceOf[stor5]
            balanceOf[stor5] += -675 * msg.value
            require (675 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (675 * msg.value) + balanceOf[msg.sender]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 675 * msg.value
            require ext_call.success
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenPurchase(msg.value, 675 * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp < 420611 * 3600:
            if not msg.value:
                require totalBuyTokens >= totalBuyTokens
                require 0 <= balanceOf[stor5]
                require balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require 630 * msg.value / msg.value == 630
                require (630 * msg.value) + totalBuyTokens >= totalBuyTokens
                totalBuyTokens += 630 * msg.value
                require 630 * msg.value <= balanceOf[stor5]
                balanceOf[stor5] += -630 * msg.value
                require (630 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (630 * msg.value) + balanceOf[msg.sender]
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 630 * msg.value
                require ext_call.success
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit TokenPurchase(msg.value, 630 * msg.value, msg.sender, msg.sender);
        else:
            if block.timestamp < 420659 * 3600:
                if not msg.value:
                    require totalBuyTokens >= totalBuyTokens
                    require 0 <= balanceOf[stor5]
                    require balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require 585 * msg.value / msg.value == 585
                    require (585 * msg.value) + totalBuyTokens >= totalBuyTokens
                    totalBuyTokens += 585 * msg.value
                    require 585 * msg.value <= balanceOf[stor5]
                    balanceOf[stor5] += -585 * msg.value
                    require (585 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (585 * msg.value) + balanceOf[msg.sender]
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 585 * msg.value
                    require ext_call.success
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenPurchase(msg.value, 585 * msg.value, msg.sender, msg.sender);
            else:
                if block.timestamp < 420707 * 3600:
                    if not msg.value:
                        require totalBuyTokens >= totalBuyTokens
                        require 0 <= balanceOf[stor5]
                        require balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require 540 * msg.value / msg.value == 540
                        require (540 * msg.value) + totalBuyTokens >= totalBuyTokens
                        totalBuyTokens += 540 * msg.value
                        require 540 * msg.value <= balanceOf[stor5]
                        balanceOf[stor5] += -540 * msg.value
                        require (540 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = (540 * msg.value) + balanceOf[msg.sender]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 540 * msg.value
                        require ext_call.success
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit TokenPurchase(msg.value, 540 * msg.value, msg.sender, msg.sender);
                else:
                    if block.timestamp >= 421128 * 24 * 3600:
                        if not msg.value:
                            require totalBuyTokens >= totalBuyTokens
                            require 0 <= balanceOf[stor5]
                            require balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        else:
                            require 450 * msg.value / msg.value == 450
                            require (450 * msg.value) + totalBuyTokens >= totalBuyTokens
                            totalBuyTokens += 450 * msg.value
                            require 450 * msg.value <= balanceOf[stor5]
                            balanceOf[stor5] += -450 * msg.value
                            require (450 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (450 * msg.value) + balanceOf[msg.sender]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 450 * msg.value
                            require ext_call.success
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit TokenPurchase(msg.value, 450 * msg.value, msg.sender, msg.sender);
                    else:
                        if not msg.value:
                            require totalBuyTokens >= totalBuyTokens
                            require 0 <= balanceOf[stor5]
                            require balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        else:
                            require 495 * msg.value / msg.value == 495
                            require (495 * msg.value) + totalBuyTokens >= totalBuyTokens
                            totalBuyTokens += 495 * msg.value
                            require 495 * msg.value <= balanceOf[stor5]
                            balanceOf[stor5] += -495 * msg.value
                            require (495 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (495 * msg.value) + balanceOf[msg.sender]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 495 * msg.value
                            require ext_call.success
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit TokenPurchase(msg.value, 495 * msg.value, msg.sender, msg.sender);
}



}
