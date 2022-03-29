contract main {


// =======================  Init code  ======================


uint8 stor1;
address stor4;
uint8 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;

function _fallback() payable {
    stor1 = 0
    stor7 = 0
    require not msg.value
    require code.data[11174 len 20]
    require code.data[11206 len 20]
    require code.data[11226 len 32] > block.number
    require code.data[11258 len 32] > code.data[11226 len 32]
    stor1 = 1
    stor4 = code.data[11206 len 20]
    stor8 = code.data[11226 len 32]
    stor9 = code.data[11258 len 32]
    create contract with 0 wei
                    code: code.data[9951 len 1211], code.data[11174 len 20]
    require create.new_address
    stor11 = address(create.new_address)
    require ext_code.size(stor11)
    call stor11.isLUNVault() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor10 = code.data[11174 len 20]
    require ext_code.size(stor10)
    call stor10.isMultiSigWallet() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    return code.data[920 len 9031]
}



// =====================  Runtime code  =====================


const name = 'Lunyr Token'

const vaultPercentOfTotal = 15

const crowdfundPercentOfTotal = 78

const tokenCreationMax = 11000000 * 10^18

const lunyrPercentOfTotal = 7

const decimals = 18

const hundredPercent = 100

const symbol = 'LUN'

const tokenCreationMin = 1100000 * 10^18

const tokensPerEther = 44


uint256 totalSupply;
uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
uint8 stor7;
uint256 fundingStartBlock;
uint256 fundingEndBlock;
address lunyrMultisigAddress;
address timeVaultAddress;

function totalSupply() {
    return totalSupply
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function upgradeMaster() {
    return upgradeMasterAddress
}

function finalizedCrowdfunding() {
    return bool(stor7)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isLunyrToken() {
    return bool(stor1)
}

function lunyrMultisig() {
    return lunyrMultisigAddress
}

function fundingEndBlock() {
    return fundingEndBlock
}

function totalUpgraded() {
    return totalUpgraded
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function timeVault() {
    return timeVaultAddress
}

function _fallback() {
    revert 
}

function setMultiSigWallet(address arg1) {
    require msg.sender == lunyrMultisigAddress
    require ext_code.size(arg1)
    call arg1.isMultiSigWallet() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    lunyrMultisigAddress = arg1
}

function getState() {
    if not stor7:
        if block.number < fundingStartBlock:
            return 0
        if block.number <= fundingEndBlock:
            if totalSupply < 11000000 * 10^18:
                return 1
        if totalSupply < 1100000 * 10^18:
            return 3
    return 2
}

function setUpgradeMaster(address arg1) {
    if not stor7:
        require block.number >= fundingStartBlock
        if block.number <= fundingEndBlock:
            require totalSupply >= 11000000 * 10^18
        require totalSupply >= 1100000 * 10^18
    require arg1
    require msg.sender == upgradeMasterAddress
    upgradeMasterAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if not stor7:
        require block.number >= fundingStartBlock
        if block.number <= fundingEndBlock:
            require totalSupply >= 11000000 * 10^18
        require totalSupply >= 1100000 * 10^18
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor7:
        require block.number >= fundingStartBlock
        if block.number <= fundingEndBlock:
            require totalSupply >= 11000000 * 10^18
        require totalSupply >= 1100000 * 10^18
    require arg1
    require arg1 != upgradeAgentAddress
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function create() payable {
    require not stor7
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require totalSupply < 11000000 * 10^18
    require msg.value
    require msg.value
    require 44 * msg.value / msg.value == 44
    require totalSupply + (44 * msg.value) >= totalSupply
    require totalSupply + (44 * msg.value) >= 44 * msg.value
    totalSupply += 44 * msg.value
    require totalSupply <= 11000000 * 10^18
    require balanceOf[address(msg.sender)] + (44 * msg.value) >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (44 * msg.value) >= 44 * msg.value
    balanceOf[address(msg.sender)] += 44 * msg.value
    emit Transfer((44 * msg.value), 0, msg.sender);
}

function setUpgradeAgent(address arg1) {
    if not stor7:
        require block.number >= fundingStartBlock
        if block.number <= fundingEndBlock:
            require totalSupply >= 11000000 * 10^18
        require totalSupply >= 1100000 * 10^18
    require arg1
    require msg.sender == upgradeMasterAddress
    if upgradeAgentAddress:
        require ext_code.size(upgradeAgentAddress)
        call upgradeAgentAddress.upgradeHasBegun() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require not ext_call.return_data[0]
    upgradeAgentAddress = arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.originalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] == totalSupply
    emit UpgradeAgentSet(upgradeAgentAddress);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor7:
        require block.number >= fundingStartBlock
        if block.number <= fundingEndBlock:
            require totalSupply >= 11000000 * 10^18
        require totalSupply >= 1100000 * 10^18
    require arg2
    require arg2 != upgradeAgentAddress
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function upgrade(uint256 arg1) {
    if not stor7:
        require block.number >= fundingStartBlock
        if block.number <= fundingEndBlock:
            require totalSupply >= 11000000 * 10^18
        require totalSupply >= 1100000 * 10^18
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.0x8da5cb5b with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require totalUpgraded + arg1 >= totalUpgraded
    require totalUpgraded + arg1 >= arg1
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function refund() {
    require not stor7
    require block.number >= fundingStartBlock
    if block.number > fundingEndBlock:
        if totalSupply < 1100000 * 10^18:
            if balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] = 0
                if balanceOf[address(msg.sender)] <= totalSupply:
                    totalSupply -= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] == (44 * balanceOf[address(msg.sender)] / 44) + (balanceOf[address(msg.sender)] % 44):
                        emit Refund((balanceOf[address(msg.sender)] / 44), msg.sender);
                        call msg.sender with:
                           value balanceOf[address(msg.sender)] / 44 wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    else:
        if totalSupply >= 11000000 * 10^18:
            if totalSupply < 1100000 * 10^18:
                if balanceOf[address(msg.sender)]:
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] <= totalSupply:
                        totalSupply -= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] == (44 * balanceOf[address(msg.sender)] / 44) + (balanceOf[address(msg.sender)] % 44):
                            emit Refund((balanceOf[address(msg.sender)] / 44), msg.sender);
                            call msg.sender with:
                               value balanceOf[address(msg.sender)] / 44 wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
    revert 
}

function finalizeCrowdfunding() {
    if stor7:
        if not stor7:
            stor7 = 1
            if not totalSupply:
                if 15 * totalSupply == (78 * 15 * totalSupply / 78) + (15 * totalSupply % 78):
                    if balanceOf[stor11] + (15 * totalSupply / 78) >= balanceOf[stor11]:
                        if balanceOf[stor11] + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                            balanceOf[stor11] += 15 * totalSupply / 78
                            emit Transfer((15 * totalSupply / 78), 0, timeVaultAddress);
                            if not totalSupply:
                                if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                    if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                        if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                            balanceOf[stor10] += 7 * totalSupply / 78
                                            emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                            if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                    if 7 * totalSupply / 78 >= 0:
                                                        if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                            totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                            call lunyrMultisigAddress with:
                                                               value eth.balance(this.address) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                            else:
                                if totalSupply:
                                    if 7 * totalSupply / totalSupply == 7:
                                        if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                            if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                    balanceOf[stor10] += 7 * totalSupply / 78
                                                    emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                    if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                        if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                            if 7 * totalSupply / 78 >= 0:
                                                                if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                    totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                    call lunyrMultisigAddress with:
                                                                       value eth.balance(this.address) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
            else:
                if totalSupply:
                    if 15 * totalSupply / totalSupply == 15:
                        if 15 * totalSupply == (78 * 15 * totalSupply / 78) + (15 * totalSupply % 78):
                            if balanceOf[stor11] + (15 * totalSupply / 78) >= balanceOf[stor11]:
                                if balanceOf[stor11] + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                    balanceOf[stor11] += 15 * totalSupply / 78
                                    emit Transfer((15 * totalSupply / 78), 0, timeVaultAddress);
                                    if not totalSupply:
                                        if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                            if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                    balanceOf[stor10] += 7 * totalSupply / 78
                                                    emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                    if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                        if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                            if 7 * totalSupply / 78 >= 0:
                                                                if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                    totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                    call lunyrMultisigAddress with:
                                                                       value eth.balance(this.address) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                    else:
                                        if totalSupply:
                                            if 7 * totalSupply / totalSupply == 7:
                                                if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                                    if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                        if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                            balanceOf[stor10] += 7 * totalSupply / 78
                                                            emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                            if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                                if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                                    if 7 * totalSupply / 78 >= 0:
                                                                        if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                            totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                            call lunyrMultisigAddress with:
                                                                               value eth.balance(this.address) wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if ext_call.success:
    else:
        if block.number >= fundingStartBlock:
            if block.number > fundingEndBlock:
                if totalSupply >= 1100000 * 10^18:
                    if not stor7:
                        stor7 = 1
                        if not totalSupply:
                            if 15 * totalSupply == (78 * 15 * totalSupply / 78) + (15 * totalSupply % 78):
                                if balanceOf[stor11] + (15 * totalSupply / 78) >= balanceOf[stor11]:
                                    if balanceOf[stor11] + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                        balanceOf[stor11] += 15 * totalSupply / 78
                                        emit Transfer((15 * totalSupply / 78), 0, timeVaultAddress);
                                        if not totalSupply:
                                            if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                                if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                    if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                        balanceOf[stor10] += 7 * totalSupply / 78
                                                        emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                        if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                            if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                                if 7 * totalSupply / 78 >= 0:
                                                                    if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                        totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                        call lunyrMultisigAddress with:
                                                                           value eth.balance(this.address) wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if ext_call.success:
                                        else:
                                            if totalSupply:
                                                if 7 * totalSupply / totalSupply == 7:
                                                    if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                                        if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                            if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                balanceOf[stor10] += 7 * totalSupply / 78
                                                                emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                                if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                                    if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                                        if 7 * totalSupply / 78 >= 0:
                                                                            if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                                totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                                call lunyrMultisigAddress with:
                                                                                   value eth.balance(this.address) wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if ext_call.success:
                        else:
                            if totalSupply:
                                if 15 * totalSupply / totalSupply == 15:
                                    if 15 * totalSupply == (78 * 15 * totalSupply / 78) + (15 * totalSupply % 78):
                                        if balanceOf[stor11] + (15 * totalSupply / 78) >= balanceOf[stor11]:
                                            if balanceOf[stor11] + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                balanceOf[stor11] += 15 * totalSupply / 78
                                                emit Transfer((15 * totalSupply / 78), 0, timeVaultAddress);
                                                if not totalSupply:
                                                    if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                                        if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                            if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                balanceOf[stor10] += 7 * totalSupply / 78
                                                                emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                                if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                                    if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                                        if 7 * totalSupply / 78 >= 0:
                                                                            if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                                totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                                call lunyrMultisigAddress with:
                                                                                   value eth.balance(this.address) wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if ext_call.success:
                                                else:
                                                    if totalSupply:
                                                        if 7 * totalSupply / totalSupply == 7:
                                                            if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                                                if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                                    if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                        balanceOf[stor10] += 7 * totalSupply / 78
                                                                        emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                                        if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                                            if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                                                if 7 * totalSupply / 78 >= 0:
                                                                                    if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                                        totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                                        call lunyrMultisigAddress with:
                                                                                           value eth.balance(this.address) wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if ext_call.success:
            else:
                if totalSupply >= 11000000 * 10^18:
                    if totalSupply >= 1100000 * 10^18:
                        if not stor7:
                            stor7 = 1
                            if not totalSupply:
                                if 15 * totalSupply == (78 * 15 * totalSupply / 78) + (15 * totalSupply % 78):
                                    if balanceOf[stor11] + (15 * totalSupply / 78) >= balanceOf[stor11]:
                                        if balanceOf[stor11] + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                            balanceOf[stor11] += 15 * totalSupply / 78
                                            emit Transfer((15 * totalSupply / 78), 0, timeVaultAddress);
                                            if not totalSupply:
                                                if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                                    if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                        if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                            balanceOf[stor10] += 7 * totalSupply / 78
                                                            emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                            if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                                if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                                    if 7 * totalSupply / 78 >= 0:
                                                                        if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                            totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                            call lunyrMultisigAddress with:
                                                                               value eth.balance(this.address) wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if ext_call.success:
                                            else:
                                                if totalSupply:
                                                    if 7 * totalSupply / totalSupply == 7:
                                                        if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                                            if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                                if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                    balanceOf[stor10] += 7 * totalSupply / 78
                                                                    emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                                    if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                                        if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                                            if 7 * totalSupply / 78 >= 0:
                                                                                if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                                    totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                                    call lunyrMultisigAddress with:
                                                                                       value eth.balance(this.address) wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if ext_call.success:
                            else:
                                if totalSupply:
                                    if 15 * totalSupply / totalSupply == 15:
                                        if 15 * totalSupply == (78 * 15 * totalSupply / 78) + (15 * totalSupply % 78):
                                            if balanceOf[stor11] + (15 * totalSupply / 78) >= balanceOf[stor11]:
                                                if balanceOf[stor11] + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                    balanceOf[stor11] += 15 * totalSupply / 78
                                                    emit Transfer((15 * totalSupply / 78), 0, timeVaultAddress);
                                                    if not totalSupply:
                                                        if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                                            if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                                if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                    balanceOf[stor10] += 7 * totalSupply / 78
                                                                    emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                                    if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                                        if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                                            if 7 * totalSupply / 78 >= 0:
                                                                                if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                                    totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                                    call lunyrMultisigAddress with:
                                                                                       value eth.balance(this.address) wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if ext_call.success:
                                                    else:
                                                        if totalSupply:
                                                            if 7 * totalSupply / totalSupply == 7:
                                                                if 7 * totalSupply == (78 * 7 * totalSupply / 78) + (7 * totalSupply % 78):
                                                                    if balanceOf[stor10] + (7 * totalSupply / 78) >= balanceOf[stor10]:
                                                                        if balanceOf[stor10] + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                            balanceOf[stor10] += 7 * totalSupply / 78
                                                                            emit Transfer((7 * totalSupply / 78), 0, lunyrMultisigAddress);
                                                                            if totalSupply + (15 * totalSupply / 78) >= totalSupply:
                                                                                if totalSupply + (15 * totalSupply / 78) >= 15 * totalSupply / 78:
                                                                                    if 7 * totalSupply / 78 >= 0:
                                                                                        if totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78) >= 7 * totalSupply / 78:
                                                                                            totalSupply = totalSupply + (15 * totalSupply / 78) + (7 * totalSupply / 78)
                                                                                            call lunyrMultisigAddress with:
                                                                                               value eth.balance(this.address) wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if ext_call.success:
    revert 
}



}
