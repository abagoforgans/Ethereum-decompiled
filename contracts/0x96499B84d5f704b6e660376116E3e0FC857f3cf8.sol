contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() {
    stor3 = msg.sender
    return code.data[60 len 3559]
}



// =====================  Runtime code  =====================


const name = 'Protostarr'

const decimals = 4

const founders_addr = 0xea16ebd8cdf5a51fa0a80bfa5665146b2ab82210

const symbol = 'PSR'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address upgradeAgentAddress;
uint256 totalUpgraded;
uint256 stor9CAD;

function totalSupply() {
    return totalSupply
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalUpgraded() {
    return totalUpgraded
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setUpgradeAgent(address arg1) {
    require arg1
    require owner == msg.sender
    upgradeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isUpgradeAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    emit UpgradeAgentSet(upgradeAgentAddress);
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= 420232 * 3600
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getPrice() {
    require block.timestamp >= 417400 * 3600
    if block.timestamp < 1502645400:
        return 170
    if block.timestamp < 417568 * 3600:
        return 150
    if block.timestamp < 417736 * 3600:
        return 130
    if block.timestamp < 417904 * 3600:
        return 110
    require block.timestamp < 418072 * 3600
    return 100
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= 420232 * 3600
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function upgrade(uint256 arg1) {
    require upgradeAgentAddress
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 + totalUpgraded >= totalUpgraded
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function createTokens(address arg1) payable {
    require msg.value > 1666666666666666
    require block.timestamp >= 417400 * 3600
    if block.timestamp < 1502645400:
        if msg.value:
            require msg.value
            require 170 * msg.value / msg.value == 170
        if 170 * msg.value:
            require 170 * msg.value
            require 1700000 * msg.value / 170 * msg.value == 10000
        require (1700000 * msg.value / 10^18) + totalSupply >= totalSupply
        totalSupply += 1700000 * msg.value / 10^18
        require (1700000 * msg.value / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 1700000 * msg.value / 10^18
        require (1700000 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
        totalSupply += 1700000 * msg.value / 10^18 / 10
        require (1700000 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
        stor9CAD += 1700000 * msg.value / 10^18 / 10
    else:
        if block.timestamp < 417568 * 3600:
            if msg.value:
                require msg.value
                require 150 * msg.value / msg.value == 150
            if 150 * msg.value:
                require 150 * msg.value
                require 1500000 * msg.value / 150 * msg.value == 10000
            require (1500000 * msg.value / 10^18) + totalSupply >= totalSupply
            totalSupply += 1500000 * msg.value / 10^18
            require (1500000 * msg.value / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 1500000 * msg.value / 10^18
            require (1500000 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
            totalSupply += 1500000 * msg.value / 10^18 / 10
            require (1500000 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
            stor9CAD += 1500000 * msg.value / 10^18 / 10
        else:
            if block.timestamp < 417736 * 3600:
                if msg.value:
                    require msg.value
                    require 130 * msg.value / msg.value == 130
                if 130 * msg.value:
                    require 130 * msg.value
                    require 1300000 * msg.value / 130 * msg.value == 10000
                require (1300000 * msg.value / 10^18) + totalSupply >= totalSupply
                totalSupply += 1300000 * msg.value / 10^18
                require (1300000 * msg.value / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 1300000 * msg.value / 10^18
                require (1300000 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
                totalSupply += 1300000 * msg.value / 10^18 / 10
                require (1300000 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
                stor9CAD += 1300000 * msg.value / 10^18 / 10
            else:
                if block.timestamp < 417904 * 3600:
                    if msg.value:
                        require msg.value
                        require 110 * msg.value / msg.value == 110
                    if 110 * msg.value:
                        require 110 * msg.value
                        require 1100000 * msg.value / 110 * msg.value == 10000
                    require (1100000 * msg.value / 10^18) + totalSupply >= totalSupply
                    totalSupply += 1100000 * msg.value / 10^18
                    require (1100000 * msg.value / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 1100000 * msg.value / 10^18
                    require (1100000 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
                    totalSupply += 1100000 * msg.value / 10^18 / 10
                    require (1100000 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
                    stor9CAD += 1100000 * msg.value / 10^18 / 10
                else:
                    require block.timestamp < 418072 * 3600
                    if msg.value:
                        require msg.value
                        require 100 * msg.value / msg.value == 100
                    if 100 * msg.value:
                        require 100 * msg.value
                        require 10^6 * msg.value / 100 * msg.value == 10000
                    require (10^6 * msg.value / 10^18) + totalSupply >= totalSupply
                    totalSupply += 10^6 * msg.value / 10^18
                    require (10^6 * msg.value / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 10^6 * msg.value / 10^18
                    require (10^6 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
                    totalSupply += 10^6 * msg.value / 10^18 / 10
                    require (10^6 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
                    stor9CAD += 10^6 * msg.value / 10^18 / 10
    call 0xea16ebd8cdf5a51fa0a80bfa5665146b2ab82210 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value > 1666666666666666
    require block.timestamp >= 417400 * 3600
    if block.timestamp < 1502645400:
        if msg.value:
            require msg.value
            require 170 * msg.value / msg.value == 170
        if 170 * msg.value:
            require 170 * msg.value
            require 1700000 * msg.value / 170 * msg.value == 10000
        require (1700000 * msg.value / 10^18) + totalSupply >= totalSupply
        totalSupply += 1700000 * msg.value / 10^18
        require (1700000 * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 1700000 * msg.value / 10^18
        require (1700000 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
        totalSupply += 1700000 * msg.value / 10^18 / 10
        require (1700000 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
        stor9CAD += 1700000 * msg.value / 10^18 / 10
    else:
        if block.timestamp < 417568 * 3600:
            if msg.value:
                require msg.value
                require 150 * msg.value / msg.value == 150
            if 150 * msg.value:
                require 150 * msg.value
                require 1500000 * msg.value / 150 * msg.value == 10000
            require (1500000 * msg.value / 10^18) + totalSupply >= totalSupply
            totalSupply += 1500000 * msg.value / 10^18
            require (1500000 * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 1500000 * msg.value / 10^18
            require (1500000 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
            totalSupply += 1500000 * msg.value / 10^18 / 10
            require (1500000 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
            stor9CAD += 1500000 * msg.value / 10^18 / 10
        else:
            if block.timestamp < 417736 * 3600:
                if msg.value:
                    require msg.value
                    require 130 * msg.value / msg.value == 130
                if 130 * msg.value:
                    require 130 * msg.value
                    require 1300000 * msg.value / 130 * msg.value == 10000
                require (1300000 * msg.value / 10^18) + totalSupply >= totalSupply
                totalSupply += 1300000 * msg.value / 10^18
                require (1300000 * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 1300000 * msg.value / 10^18
                require (1300000 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
                totalSupply += 1300000 * msg.value / 10^18 / 10
                require (1300000 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
                stor9CAD += 1300000 * msg.value / 10^18 / 10
            else:
                if block.timestamp < 417904 * 3600:
                    if msg.value:
                        require msg.value
                        require 110 * msg.value / msg.value == 110
                    if 110 * msg.value:
                        require 110 * msg.value
                        require 1100000 * msg.value / 110 * msg.value == 10000
                    require (1100000 * msg.value / 10^18) + totalSupply >= totalSupply
                    totalSupply += 1100000 * msg.value / 10^18
                    require (1100000 * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 1100000 * msg.value / 10^18
                    require (1100000 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
                    totalSupply += 1100000 * msg.value / 10^18 / 10
                    require (1100000 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
                    stor9CAD += 1100000 * msg.value / 10^18 / 10
                else:
                    require block.timestamp < 418072 * 3600
                    if msg.value:
                        require msg.value
                        require 100 * msg.value / msg.value == 100
                    if 100 * msg.value:
                        require 100 * msg.value
                        require 10^6 * msg.value / 100 * msg.value == 10000
                    require (10^6 * msg.value / 10^18) + totalSupply >= totalSupply
                    totalSupply += 10^6 * msg.value / 10^18
                    require (10^6 * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^6 * msg.value / 10^18
                    require (10^6 * msg.value / 10^18 / 10) + totalSupply >= totalSupply
                    totalSupply += 10^6 * msg.value / 10^18 / 10
                    require (10^6 * msg.value / 10^18 / 10) + stor9CAD >= stor9CAD
                    stor9CAD += 10^6 * msg.value / 10^18 / 10
    call 0xea16ebd8cdf5a51fa0a80bfa5665146b2ab82210 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
