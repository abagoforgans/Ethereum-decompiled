contract main {




// =====================  Runtime code  =====================


const name = 'CCOIN'

const decimals = 18

const symbol = 'CCOIN'


address owner;
uint256 totalSupply;
uint8 stor3;
address multisigETHAddress; offset 8
address crowdSaleaddress;
uint256 ethReceived;
uint256 totalTokensSent;
uint256 startBlock;
uint256 endBlock;
uint256 maxCap;
uint256 minCap;
uint256 minContributionETH;
uint256 tokenPriceWei;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 multiplier;
uint8 stopInEmergency;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor28;

function tokenPriceWei() {
    return tokenPriceWei
}

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function multiplier() {
    return multiplier
}

function stopInEmergency() {
    return bool(stopInEmergency)
}

function maxCap() {
    return maxCap
}

function minCap() {
    return minCap
}

function startBlock() {
    return startBlock
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function multisigETH() {
    return multisigETHAddress
}

function owner() {
    return owner
}

function totalTokensSent() {
    return totalTokensSent
}

function locked() {
    return bool(stor3)
}

function crowdSaleaddress() {
    return crowdSaleaddress
}

function whitelisted(address arg1) {
    return bool(stor28[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function minContributionETH() {
    return minContributionETH
}

function ethReceived() {
    return ethReceived
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        if arg1:
            owner = arg1
}

function stopCrowdsale() {
    if msg.sender == owner:
        stopInEmergency = 1
        emit StoppedCrowdsale()
}

function restartCrowdsale() {
    if msg.sender == owner:
        stopInEmergency = 0
        emit RestartedCrowdsale()
}

function lock() {
    if crowdSaleaddress != msg.sender:
        require msg.sender == owner
    stor3 = 1
    emit Locked()
}

function unlock() {
    if crowdSaleaddress != msg.sender:
        require msg.sender == owner
    stor3 = 0
    emit Unlocked()
}

function resetCrowdSaleaddress(address arg1) {
    if crowdSaleaddress != msg.sender:
        require msg.sender == owner
    crowdSaleaddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function WhitelistParticipant(address arg1) {
    if crowdSaleaddress != msg.sender:
        require msg.sender == owner
    stor28[address(arg1)] = 1
    emit Whitelist(arg1);
}

function BlacklistParticipant(address arg1) {
    if crowdSaleaddress != msg.sender:
        require msg.sender == owner
    stor28[address(arg1)] = 0
    emit Whitelist(arg1);
}

function burn(address arg1, uint256 arg2) {
    if crowdSaleaddress != msg.sender:
        require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burned(arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if crowdSaleaddress != msg.sender:
        if stor3:
            require msg.sender == owner
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function Airdrop(address arg1, uint256 arg2) {
    if crowdSaleaddress != msg.sender:
        require msg.sender == owner
        if crowdSaleaddress != msg.sender:
            if stor3:
                require msg.sender == owner
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if crowdSaleaddress != msg.sender:
        if stor3:
            require msg.sender == owner
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawFromEscrow(address arg1, bytes32 arg2) {
    require balanceOf[address(arg1)] > 0
    require ext_code.size(arg1)
    call arg1.creator() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(arg1)
    call arg1.getClaimableRewards(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= ext_call.return_data[0]
    require balanceOf[address(msg.sender)] + ext_call.return_data[0] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += ext_call.return_data[0]
}

function _fallback() payable {
    require calldata.size >= 68
    require msg.value >= minContributionETH
    if not msg.value:
        require tokenPriceWei
        if block.number <= startBlock + stor13:
            if not 0 / tokenPriceWei:
                require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                require totalTokensSent + (0 / tokenPriceWei) <= maxCap
                if crowdSaleaddress != msg.sender:
                    if stor3:
                        require msg.sender == owner
                require 0 / tokenPriceWei <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= 0 / tokenPriceWei
                require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 0 / tokenPriceWei
                emit Transfer((0 / tokenPriceWei), msg.sender, msg.sender);
                require ethReceived + msg.value >= ethReceived
                ethReceived += msg.value
                require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                totalTokensSent += 0 / tokenPriceWei
            else:
                require 0 / tokenPriceWei
                require 0 / tokenPriceWei * stor18 / 0 / tokenPriceWei == stor18
                require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor18 / 100) >= totalTokensSent
                require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor18 / 100) <= maxCap
                if crowdSaleaddress != msg.sender:
                    if stor3:
                        require msg.sender == owner
                require (0 / tokenPriceWei) + (0 / tokenPriceWei * stor18 / 100) <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (0 / tokenPriceWei) - (0 / tokenPriceWei * stor18 / 100)
                require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor18 / 100) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor18 / 100)
                emit Transfer(((0 / tokenPriceWei) + (0 / tokenPriceWei * stor18 / 100)), msg.sender, msg.sender);
                require ethReceived + msg.value >= ethReceived
                ethReceived += msg.value
                require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor18 / 100) >= totalTokensSent
                totalTokensSent = totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor18 / 100)
        else:
            if block.number <= startBlock + stor14:
                if not 0 / tokenPriceWei:
                    require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                    require totalTokensSent + (0 / tokenPriceWei) <= maxCap
                    if crowdSaleaddress != msg.sender:
                        if stor3:
                            require msg.sender == owner
                    require 0 / tokenPriceWei <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= 0 / tokenPriceWei
                    require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 0 / tokenPriceWei
                    emit Transfer((0 / tokenPriceWei), msg.sender, msg.sender);
                    require ethReceived + msg.value >= ethReceived
                    ethReceived += msg.value
                    require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                    totalTokensSent += 0 / tokenPriceWei
                else:
                    require 0 / tokenPriceWei
                    require 0 / tokenPriceWei * stor19 / 0 / tokenPriceWei == stor19
                    require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor19 / 100) >= totalTokensSent
                    require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor19 / 100) <= maxCap
                    if crowdSaleaddress != msg.sender:
                        if stor3:
                            require msg.sender == owner
                    require (0 / tokenPriceWei) + (0 / tokenPriceWei * stor19 / 100) <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (0 / tokenPriceWei) - (0 / tokenPriceWei * stor19 / 100)
                    require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor19 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor19 / 100)
                    emit Transfer(((0 / tokenPriceWei) + (0 / tokenPriceWei * stor19 / 100)), msg.sender, msg.sender);
                    require ethReceived + msg.value >= ethReceived
                    ethReceived += msg.value
                    require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor19 / 100) >= totalTokensSent
                    totalTokensSent = totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor19 / 100)
            else:
                if block.number <= startBlock + stor15:
                    if not 0 / tokenPriceWei:
                        require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                        require totalTokensSent + (0 / tokenPriceWei) <= maxCap
                        if crowdSaleaddress != msg.sender:
                            if stor3:
                                require msg.sender == owner
                        require 0 / tokenPriceWei <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= 0 / tokenPriceWei
                        require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 0 / tokenPriceWei
                        emit Transfer((0 / tokenPriceWei), msg.sender, msg.sender);
                        require ethReceived + msg.value >= ethReceived
                        ethReceived += msg.value
                        require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                        totalTokensSent += 0 / tokenPriceWei
                    else:
                        require 0 / tokenPriceWei
                        require 0 / tokenPriceWei * stor20 / 0 / tokenPriceWei == stor20
                        require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor20 / 100) >= totalTokensSent
                        require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor20 / 100) <= maxCap
                        if crowdSaleaddress != msg.sender:
                            if stor3:
                                require msg.sender == owner
                        require (0 / tokenPriceWei) + (0 / tokenPriceWei * stor20 / 100) <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (0 / tokenPriceWei) - (0 / tokenPriceWei * stor20 / 100)
                        require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor20 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor20 / 100)
                        emit Transfer(((0 / tokenPriceWei) + (0 / tokenPriceWei * stor20 / 100)), msg.sender, msg.sender);
                        require ethReceived + msg.value >= ethReceived
                        ethReceived += msg.value
                        require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor20 / 100) >= totalTokensSent
                        totalTokensSent = totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor20 / 100)
                else:
                    if block.number <= startBlock + stor16:
                        if not 0 / tokenPriceWei:
                            require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                            require totalTokensSent + (0 / tokenPriceWei) <= maxCap
                            if crowdSaleaddress != msg.sender:
                                if stor3:
                                    require msg.sender == owner
                            require 0 / tokenPriceWei <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= 0 / tokenPriceWei
                            require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 0 / tokenPriceWei
                            emit Transfer((0 / tokenPriceWei), msg.sender, msg.sender);
                            require ethReceived + msg.value >= ethReceived
                            ethReceived += msg.value
                            require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                            totalTokensSent += 0 / tokenPriceWei
                        else:
                            require 0 / tokenPriceWei
                            require 0 / tokenPriceWei * stor21 / 0 / tokenPriceWei == stor21
                            require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor21 / 100) >= totalTokensSent
                            require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor21 / 100) <= maxCap
                            if crowdSaleaddress != msg.sender:
                                if stor3:
                                    require msg.sender == owner
                            require (0 / tokenPriceWei) + (0 / tokenPriceWei * stor21 / 100) <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (0 / tokenPriceWei) - (0 / tokenPriceWei * stor21 / 100)
                            require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor21 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor21 / 100)
                            emit Transfer(((0 / tokenPriceWei) + (0 / tokenPriceWei * stor21 / 100)), msg.sender, msg.sender);
                            require ethReceived + msg.value >= ethReceived
                            ethReceived += msg.value
                            require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor21 / 100) >= totalTokensSent
                            totalTokensSent = totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor21 / 100)
                    else:
                        if block.number > startBlock + stor17:
                            require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                            require totalTokensSent + (0 / tokenPriceWei) <= maxCap
                            if crowdSaleaddress != msg.sender:
                                if stor3:
                                    require msg.sender == owner
                            require 0 / tokenPriceWei <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= 0 / tokenPriceWei
                            require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 0 / tokenPriceWei
                            emit Transfer((0 / tokenPriceWei), msg.sender, msg.sender);
                            require ethReceived + msg.value >= ethReceived
                            ethReceived += msg.value
                            require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                            totalTokensSent += 0 / tokenPriceWei
                        else:
                            if not 0 / tokenPriceWei:
                                require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                                require totalTokensSent + (0 / tokenPriceWei) <= maxCap
                                if crowdSaleaddress != msg.sender:
                                    if stor3:
                                        require msg.sender == owner
                                require 0 / tokenPriceWei <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= 0 / tokenPriceWei
                                require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 0 / tokenPriceWei
                                emit Transfer((0 / tokenPriceWei), msg.sender, msg.sender);
                                require ethReceived + msg.value >= ethReceived
                                ethReceived += msg.value
                                require totalTokensSent + (0 / tokenPriceWei) >= totalTokensSent
                                totalTokensSent += 0 / tokenPriceWei
                            else:
                                require 0 / tokenPriceWei
                                require 0 / tokenPriceWei * stor22 / 0 / tokenPriceWei == stor22
                                require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor22 / 100) >= totalTokensSent
                                require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor22 / 100) <= maxCap
                                if crowdSaleaddress != msg.sender:
                                    if stor3:
                                        require msg.sender == owner
                                require (0 / tokenPriceWei) + (0 / tokenPriceWei * stor22 / 100) <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (0 / tokenPriceWei) - (0 / tokenPriceWei * stor22 / 100)
                                require balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor22 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor22 / 100)
                                emit Transfer(((0 / tokenPriceWei) + (0 / tokenPriceWei * stor22 / 100)), msg.sender, msg.sender);
                                require ethReceived + msg.value >= ethReceived
                                ethReceived += msg.value
                                require totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor22 / 100) >= totalTokensSent
                                totalTokensSent = totalTokensSent + (0 / tokenPriceWei) + (0 / tokenPriceWei * stor22 / 100)
    else:
        require msg.value
        require msg.value * multiplier / msg.value == multiplier
        require tokenPriceWei
        if block.number <= startBlock + stor13:
            if not msg.value * multiplier / tokenPriceWei:
                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) <= maxCap
                if crowdSaleaddress != msg.sender:
                    if stor3:
                        require msg.sender == owner
                require msg.value * multiplier / tokenPriceWei <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= msg.value * multiplier / tokenPriceWei
                require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * multiplier / tokenPriceWei
                emit Transfer((msg.value * multiplier / tokenPriceWei), msg.sender, msg.sender);
                require ethReceived + msg.value >= ethReceived
                ethReceived += msg.value
                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                totalTokensSent += msg.value * multiplier / tokenPriceWei
            else:
                require msg.value * multiplier / tokenPriceWei
                require msg.value * multiplier / tokenPriceWei * stor18 / msg.value * multiplier / tokenPriceWei == stor18
                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor18 / 100) >= totalTokensSent
                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor18 / 100) <= maxCap
                if crowdSaleaddress != msg.sender:
                    if stor3:
                        require msg.sender == owner
                require (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor18 / 100) <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (msg.value * multiplier / tokenPriceWei) - (msg.value * multiplier / tokenPriceWei * stor18 / 100)
                require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor18 / 100) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor18 / 100)
                emit Transfer(((msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor18 / 100)), msg.sender, msg.sender);
                require ethReceived + msg.value >= ethReceived
                ethReceived += msg.value
                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor18 / 100) >= totalTokensSent
                totalTokensSent = totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor18 / 100)
        else:
            if block.number <= startBlock + stor14:
                if not msg.value * multiplier / tokenPriceWei:
                    require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                    require totalTokensSent + (msg.value * multiplier / tokenPriceWei) <= maxCap
                    if crowdSaleaddress != msg.sender:
                        if stor3:
                            require msg.sender == owner
                    require msg.value * multiplier / tokenPriceWei <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= msg.value * multiplier / tokenPriceWei
                    require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * multiplier / tokenPriceWei
                    emit Transfer((msg.value * multiplier / tokenPriceWei), msg.sender, msg.sender);
                    require ethReceived + msg.value >= ethReceived
                    ethReceived += msg.value
                    require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                    totalTokensSent += msg.value * multiplier / tokenPriceWei
                else:
                    require msg.value * multiplier / tokenPriceWei
                    require msg.value * multiplier / tokenPriceWei * stor19 / msg.value * multiplier / tokenPriceWei == stor19
                    require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor19 / 100) >= totalTokensSent
                    require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor19 / 100) <= maxCap
                    if crowdSaleaddress != msg.sender:
                        if stor3:
                            require msg.sender == owner
                    require (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor19 / 100) <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (msg.value * multiplier / tokenPriceWei) - (msg.value * multiplier / tokenPriceWei * stor19 / 100)
                    require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor19 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor19 / 100)
                    emit Transfer(((msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor19 / 100)), msg.sender, msg.sender);
                    require ethReceived + msg.value >= ethReceived
                    ethReceived += msg.value
                    require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor19 / 100) >= totalTokensSent
                    totalTokensSent = totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor19 / 100)
            else:
                if block.number <= startBlock + stor15:
                    if not msg.value * multiplier / tokenPriceWei:
                        require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                        require totalTokensSent + (msg.value * multiplier / tokenPriceWei) <= maxCap
                        if crowdSaleaddress != msg.sender:
                            if stor3:
                                require msg.sender == owner
                        require msg.value * multiplier / tokenPriceWei <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= msg.value * multiplier / tokenPriceWei
                        require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * multiplier / tokenPriceWei
                        emit Transfer((msg.value * multiplier / tokenPriceWei), msg.sender, msg.sender);
                        require ethReceived + msg.value >= ethReceived
                        ethReceived += msg.value
                        require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                        totalTokensSent += msg.value * multiplier / tokenPriceWei
                    else:
                        require msg.value * multiplier / tokenPriceWei
                        require msg.value * multiplier / tokenPriceWei * stor20 / msg.value * multiplier / tokenPriceWei == stor20
                        require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor20 / 100) >= totalTokensSent
                        require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor20 / 100) <= maxCap
                        if crowdSaleaddress != msg.sender:
                            if stor3:
                                require msg.sender == owner
                        require (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor20 / 100) <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (msg.value * multiplier / tokenPriceWei) - (msg.value * multiplier / tokenPriceWei * stor20 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor20 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor20 / 100)
                        emit Transfer(((msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor20 / 100)), msg.sender, msg.sender);
                        require ethReceived + msg.value >= ethReceived
                        ethReceived += msg.value
                        require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor20 / 100) >= totalTokensSent
                        totalTokensSent = totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor20 / 100)
                else:
                    if block.number <= startBlock + stor16:
                        if not msg.value * multiplier / tokenPriceWei:
                            require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                            require totalTokensSent + (msg.value * multiplier / tokenPriceWei) <= maxCap
                            if crowdSaleaddress != msg.sender:
                                if stor3:
                                    require msg.sender == owner
                            require msg.value * multiplier / tokenPriceWei <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= msg.value * multiplier / tokenPriceWei
                            require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value * multiplier / tokenPriceWei
                            emit Transfer((msg.value * multiplier / tokenPriceWei), msg.sender, msg.sender);
                            require ethReceived + msg.value >= ethReceived
                            ethReceived += msg.value
                            require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                            totalTokensSent += msg.value * multiplier / tokenPriceWei
                        else:
                            require msg.value * multiplier / tokenPriceWei
                            require msg.value * multiplier / tokenPriceWei * stor21 / msg.value * multiplier / tokenPriceWei == stor21
                            require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor21 / 100) >= totalTokensSent
                            require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor21 / 100) <= maxCap
                            if crowdSaleaddress != msg.sender:
                                if stor3:
                                    require msg.sender == owner
                            require (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor21 / 100) <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (msg.value * multiplier / tokenPriceWei) - (msg.value * multiplier / tokenPriceWei * stor21 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor21 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor21 / 100)
                            emit Transfer(((msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor21 / 100)), msg.sender, msg.sender);
                            require ethReceived + msg.value >= ethReceived
                            ethReceived += msg.value
                            require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor21 / 100) >= totalTokensSent
                            totalTokensSent = totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor21 / 100)
                    else:
                        if block.number > startBlock + stor17:
                            require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                            require totalTokensSent + (msg.value * multiplier / tokenPriceWei) <= maxCap
                            if crowdSaleaddress != msg.sender:
                                if stor3:
                                    require msg.sender == owner
                            require msg.value * multiplier / tokenPriceWei <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= msg.value * multiplier / tokenPriceWei
                            require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value * multiplier / tokenPriceWei
                            emit Transfer((msg.value * multiplier / tokenPriceWei), msg.sender, msg.sender);
                            require ethReceived + msg.value >= ethReceived
                            ethReceived += msg.value
                            require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                            totalTokensSent += msg.value * multiplier / tokenPriceWei
                        else:
                            if not msg.value * multiplier / tokenPriceWei:
                                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) <= maxCap
                                if crowdSaleaddress != msg.sender:
                                    if stor3:
                                        require msg.sender == owner
                                require msg.value * multiplier / tokenPriceWei <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= msg.value * multiplier / tokenPriceWei
                                require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value * multiplier / tokenPriceWei
                                emit Transfer((msg.value * multiplier / tokenPriceWei), msg.sender, msg.sender);
                                require ethReceived + msg.value >= ethReceived
                                ethReceived += msg.value
                                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) >= totalTokensSent
                                totalTokensSent += msg.value * multiplier / tokenPriceWei
                            else:
                                require msg.value * multiplier / tokenPriceWei
                                require msg.value * multiplier / tokenPriceWei * stor22 / msg.value * multiplier / tokenPriceWei == stor22
                                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor22 / 100) >= totalTokensSent
                                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor22 / 100) <= maxCap
                                if crowdSaleaddress != msg.sender:
                                    if stor3:
                                        require msg.sender == owner
                                require (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor22 / 100) <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (msg.value * multiplier / tokenPriceWei) - (msg.value * multiplier / tokenPriceWei * stor22 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor22 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor22 / 100)
                                emit Transfer(((msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor22 / 100)), msg.sender, msg.sender);
                                require ethReceived + msg.value >= ethReceived
                                ethReceived += msg.value
                                require totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor22 / 100) >= totalTokensSent
                                totalTokensSent = totalTokensSent + (msg.value * multiplier / tokenPriceWei) + (msg.value * multiplier / tokenPriceWei * stor22 / 100)
}



}
