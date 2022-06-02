contract main {




// =====================  Runtime code  =====================


const soft_cap = 50000000 * 10^18


uint8 stor0; offset 160
address owner;
uint256 startTime;
uint256 endTime;
address tokenAddress;
address listAddress;
uint8 stor5; offset 160
address multisigWalletAddress;
uint256 hardCap;
uint256 sub_c289fd85;
mapping of uint256 sub_834d0d1f;
mapping of uint256 sub_2681a941;
uint256 sub_6a4fa8db;
uint256 sub_a1764ca0;
mapping of uint256 allocatedTokens;
uint256 totalTokensAllocated;
uint256 exchangeRate;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;

function getAllocatedTokens(address arg1) {
    require arg1
    return allocatedTokens[address(arg1)]
}

function list() {
    return listAddress
}

function allocatedTokens(address arg1) {
    return allocatedTokens[arg1]
}

function sub_2681a941(?) {
    return sub_2681a941[arg1]
}

function endTime() {
    return endTime
}

function paused() {
    return bool(stor0)
}

function sub_69e73131(?) {
    require arg1
    return sub_2681a941[address(arg1)]
}

function sub_6a4fa8db(?) {
    return sub_6a4fa8db
}

function startTime() {
    return startTime
}

function sub_834d0d1f(?) {
    require arg1
    return sub_834d0d1f[address(arg1)]
}

function sub_87c78a07(?) {
    return sub_834d0d1f[arg1]
}

function owner() {
    return owner
}

function multisigWallet() {
    return multisigWalletAddress
}

function sub_a1764ca0(?) {
    return sub_a1764ca0
}

function totalTokensAllocated() {
    return totalTokensAllocated
}

function sub_c289fd85(?) {
    return sub_c289fd85
}

function getExchangeRate() {
    return exchangeRate
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function sub_acef518c(?) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 != stor19
    stor19 = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setExchangeRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 != exchangeRate
    exchangeRate = arg1
    return 1
}

function sub_6d4f8d87(?) {
    require arg1
    require sub_2681a941[address(arg1)] + allocatedTokens[address(arg1)] >= allocatedTokens[address(arg1)]
    return (sub_2681a941[address(arg1)] + allocatedTokens[address(arg1)])
}

function isCrowdsaleActive() {
    if stor0:
        return 0
    if block.timestamp <= startTime:
        return 0
    if block.timestamp >= endTime:
        return 0
    if sub_c289fd85 > hardCap:
        return 0
    return 1
}

function claimRefund() {
    require not stor0
    require msg.sender == owner
    require block.timestamp > endTime
    require 50000000 * 10^18 > sub_c289fd85
    if sub_834d0d1f[msg.sender] <= eth.balance(this.address):
        sub_834d0d1f[msg.sender] = 0
        if sub_834d0d1f[msg.sender] > 0:
            call msg.sender with:
               value sub_834d0d1f[msg.sender] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Refund(sub_834d0d1f[msg.sender], msg.sender);
}

function allocateTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require arg2 > 0
    require sub_c289fd85 < hardCap
    require arg2 + sub_c289fd85 >= sub_c289fd85
    if arg2 + sub_c289fd85 <= hardCap:
        require arg2 + allocatedTokens[address(arg1)] >= allocatedTokens[address(arg1)]
        allocatedTokens[address(arg1)] += arg2
        require arg2 + sub_c289fd85 >= sub_c289fd85
        sub_c289fd85 += arg2
        require arg2 + totalTokensAllocated >= totalTokensAllocated
        totalTokensAllocated += arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensAllocated(arg2, arg1);
    else:
        require sub_c289fd85 <= hardCap
        require hardCap - sub_c289fd85 + allocatedTokens[address(arg1)] >= allocatedTokens[address(arg1)]
        allocatedTokens[address(arg1)] = hardCap - sub_c289fd85 + allocatedTokens[address(arg1)]
        require hardCap >= sub_c289fd85
        sub_c289fd85 = hardCap
        require hardCap - sub_c289fd85 + totalTokensAllocated >= totalTokensAllocated
        totalTokensAllocated = hardCap - sub_c289fd85 + totalTokensAllocated
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(arg1), hardCap - sub_c289fd85
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensAllocated((hardCap - sub_c289fd85), arg1);
    if sub_c289fd85 == hardCap:
        require ext_code.size(tokenAddress)
        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
             gas gas_remaining wei
            args (block.timestamp + (336 * 24 * 3600))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not stor5:
        stor5 = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
             gas gas_remaining wei
            args (endTime + (336 * 24 * 3600))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getRate() {
    require stor18
    require exchangeRate
    if stor19 > 0:
        if stor19 + 100 >= stor19:
            if not exchangeRate:
                if stor18:
                    if not 0 / stor18:
                        return 0
                    if (100 * 0 / stor18) + (stor19 * 0 / stor18) / 0 / stor18 == stor19 + 100:
                        return ((100 * 0 / stor18) + (stor19 * 0 / stor18) / 100)
            else:
                if 100 * exchangeRate / exchangeRate == 100:
                    if stor18:
                        if not 100 * exchangeRate / stor18:
                            return 0
                        if (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor19 + 100:
                            return ((100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100)
    else:
        if block.timestamp > startTime + (24 * 3600):
            if block.timestamp > startTime + (48 * 24 * 3600):
                if stor17 + 100 >= stor17:
                    if not exchangeRate:
                        if stor18:
                            if not 0 / stor18:
                                return 0
                            if (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100:
                                return ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100)
                    else:
                        if 100 * exchangeRate / exchangeRate == 100:
                            if stor18:
                                if not 100 * exchangeRate / stor18:
                                    return 0
                                if (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100:
                                    return ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100)
            else:
                if stor16 + 100 >= stor16:
                    if not exchangeRate:
                        if stor18:
                            if not 0 / stor18:
                                return 0
                            if (100 * 0 / stor18) + (stor16 * 0 / stor18) / 0 / stor18 == stor16 + 100:
                                return ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100)
                    else:
                        if 100 * exchangeRate / exchangeRate == 100:
                            if stor18:
                                if not 100 * exchangeRate / stor18:
                                    return 0
                                if (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor16 + 100:
                                    return ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100)
        else:
            if stor15 + 100 >= stor15:
                if not exchangeRate:
                    if stor18:
                        if not 0 / stor18:
                            if block.timestamp <= startTime + (24 * 3600):
                                if stor17 + 100 >= stor17:
                                    if not exchangeRate:
                                        if stor18:
                                            if not 0 / stor18:
                                                return 0
                                            if (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100:
                                                return ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100)
                                    else:
                                        if 100 * exchangeRate / exchangeRate == 100:
                                            if stor18:
                                                if not 100 * exchangeRate / stor18:
                                                    return 0
                                                if (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100:
                                                    return ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100)
                            else:
                                if block.timestamp > startTime + (48 * 24 * 3600):
                                    if stor17 + 100 >= stor17:
                                        if not exchangeRate:
                                            if stor18:
                                                if not 0 / stor18:
                                                    return 0
                                                if (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100:
                                                    return ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100)
                                        else:
                                            if 100 * exchangeRate / exchangeRate == 100:
                                                if stor18:
                                                    if not 100 * exchangeRate / stor18:
                                                        return 0
                                                    if (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100:
                                                        return ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100)
                                else:
                                    if stor16 + 100 >= stor16:
                                        if not exchangeRate:
                                            if stor18:
                                                if not 0 / stor18:
                                                    return 0
                                                if (100 * 0 / stor18) + (stor16 * 0 / stor18) / 0 / stor18 == stor16 + 100:
                                                    return ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100)
                                        else:
                                            if 100 * exchangeRate / exchangeRate == 100:
                                                if stor18:
                                                    if not 100 * exchangeRate / stor18:
                                                        return 0
                                                    if (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor16 + 100:
                                                        return ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100)
                        else:
                            if (100 * 0 / stor18) + (stor15 * 0 / stor18) / 0 / stor18 == stor15 + 100:
                                if block.timestamp <= startTime + (24 * 3600):
                                    if stor17 + 100 >= stor17:
                                        if not exchangeRate:
                                            if stor18:
                                                if not 0 / stor18:
                                                    return 0
                                                if (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100:
                                                    return ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100)
                                        else:
                                            if 100 * exchangeRate / exchangeRate == 100:
                                                if stor18:
                                                    if not 100 * exchangeRate / stor18:
                                                        return 0
                                                    if (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100:
                                                        return ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100)
                                else:
                                    if block.timestamp > startTime + (48 * 24 * 3600):
                                        if stor17 + 100 >= stor17:
                                            if not exchangeRate:
                                                if stor18:
                                                    if not 0 / stor18:
                                                        return 0
                                                    if (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100:
                                                        return ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100)
                                            else:
                                                if 100 * exchangeRate / exchangeRate == 100:
                                                    if stor18:
                                                        if not 100 * exchangeRate / stor18:
                                                            return 0
                                                        if (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100:
                                                            return ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100)
                                    else:
                                        if stor16 + 100 >= stor16:
                                            if not exchangeRate:
                                                if stor18:
                                                    if not 0 / stor18:
                                                        return 0
                                                    if (100 * 0 / stor18) + (stor16 * 0 / stor18) / 0 / stor18 == stor16 + 100:
                                                        return ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100)
                                            else:
                                                if 100 * exchangeRate / exchangeRate == 100:
                                                    if stor18:
                                                        if not 100 * exchangeRate / stor18:
                                                            return 0
                                                        if (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor16 + 100:
                                                            return ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100)
                else:
                    if 100 * exchangeRate / exchangeRate == 100:
                        if stor18:
                            if not 100 * exchangeRate / stor18:
                                if block.timestamp <= startTime + (24 * 3600):
                                    if stor17 + 100 >= stor17:
                                        if not exchangeRate:
                                            if stor18:
                                                if not 0 / stor18:
                                                    return 0
                                                if (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100:
                                                    return ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100)
                                        else:
                                            if 100 * exchangeRate / exchangeRate == 100:
                                                if stor18:
                                                    if not 100 * exchangeRate / stor18:
                                                        return 0
                                                    if (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100:
                                                        return ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100)
                                else:
                                    if block.timestamp > startTime + (48 * 24 * 3600):
                                        if stor17 + 100 >= stor17:
                                            if not exchangeRate:
                                                if stor18:
                                                    if not 0 / stor18:
                                                        return 0
                                                    if (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100:
                                                        return ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100)
                                            else:
                                                if 100 * exchangeRate / exchangeRate == 100:
                                                    if stor18:
                                                        if not 100 * exchangeRate / stor18:
                                                            return 0
                                                        if (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100:
                                                            return ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100)
                                    else:
                                        if stor16 + 100 >= stor16:
                                            if not exchangeRate:
                                                if stor18:
                                                    if not 0 / stor18:
                                                        return 0
                                                    if (100 * 0 / stor18) + (stor16 * 0 / stor18) / 0 / stor18 == stor16 + 100:
                                                        return ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100)
                                            else:
                                                if 100 * exchangeRate / exchangeRate == 100:
                                                    if stor18:
                                                        if not 100 * exchangeRate / stor18:
                                                            return 0
                                                        if (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor16 + 100:
                                                            return ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100)
                            else:
                                if (100 * 100 * exchangeRate / stor18) + (stor15 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor15 + 100:
                                    if block.timestamp <= startTime + (24 * 3600):
                                        if stor17 + 100 >= stor17:
                                            if not exchangeRate:
                                                if stor18:
                                                    if not 0 / stor18:
                                                        return 0
                                                    if (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100:
                                                        return ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100)
                                            else:
                                                if 100 * exchangeRate / exchangeRate == 100:
                                                    if stor18:
                                                        if not 100 * exchangeRate / stor18:
                                                            return 0
                                                        if (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100:
                                                            return ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100)
                                    else:
                                        if block.timestamp > startTime + (48 * 24 * 3600):
                                            if stor17 + 100 >= stor17:
                                                if not exchangeRate:
                                                    if stor18:
                                                        if not 0 / stor18:
                                                            return 0
                                                        if (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100:
                                                            return ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100)
                                                else:
                                                    if 100 * exchangeRate / exchangeRate == 100:
                                                        if stor18:
                                                            if not 100 * exchangeRate / stor18:
                                                                return 0
                                                            if (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100:
                                                                return ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100)
                                        else:
                                            if stor16 + 100 >= stor16:
                                                if not exchangeRate:
                                                    if stor18:
                                                        if not 0 / stor18:
                                                            return 0
                                                        if (100 * 0 / stor18) + (stor16 * 0 / stor18) / 0 / stor18 == stor16 + 100:
                                                            return ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100)
                                                else:
                                                    if 100 * exchangeRate / exchangeRate == 100:
                                                        if stor18:
                                                            if not 100 * exchangeRate / stor18:
                                                                return 0
                                                            if (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor16 + 100:
                                                                return ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100)
    revert
}

function _fallback() payable {
    if msg.sender == multisigWalletAddress:
        if not stor0:
            if block.timestamp > startTime:
                if block.timestamp < endTime:
                    require sub_c289fd85 > hardCap
        require sub_c289fd85 < 50000000 * 10^18
    else:
        require ext_code.size(listAddress)
        call listAddress.isWhitelisted(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require not stor0
        require msg.sender
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require sub_c289fd85 < hardCap
        require msg.value >= 10^18
        require stor18
        require exchangeRate
        if stor19 > 0:
            require stor19 + 100 >= stor19
            if not exchangeRate:
                require stor18
                if not 0 / stor18:
                    if msg.value:
                        require not 0 / msg.value
                    require sub_c289fd85 >= sub_c289fd85
                    require sub_c289fd85 <= hardCap
                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                    sub_834d0d1f[address(msg.sender)] += msg.value
                    require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                    require sub_a1764ca0 >= sub_a1764ca0
                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                    sub_6a4fa8db += msg.value
                    require sub_c289fd85 >= sub_c289fd85
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit 0x35abf7f0: msg.value, 0, msg.sender
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_c289fd85 == hardCap:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                             gas gas_remaining wei
                            args (block.timestamp + (336 * 24 * 3600))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not stor5:
                        stor5 = 1
                        require ext_code.size(tokenAddress)
                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                             gas gas_remaining wei
                            args (endTime + (336 * 24 * 3600))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require (100 * 0 / stor18) + (stor19 * 0 / stor18) / 0 / stor18 == stor19 + 100
                    if not msg.value:
                        require sub_c289fd85 >= sub_c289fd85
                        require sub_c289fd85 <= hardCap
                        require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                        sub_834d0d1f[address(msg.sender)] += msg.value
                        require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                        require sub_a1764ca0 >= sub_a1764ca0
                        require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                        sub_6a4fa8db += msg.value
                        require sub_c289fd85 >= sub_c289fd85
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args owner, msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit 0x35abf7f0: msg.value, 0, msg.sender
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_c289fd85 == hardCap:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (block.timestamp + (336 * 24 * 3600))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not stor5:
                            stor5 = 1
                            require ext_code.size(tokenAddress)
                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (endTime + (336 * 24 * 3600))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value / msg.value == (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100
                        require ((100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                        if ((100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                            require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += msg.value
                            require ((100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            sub_2681a941[address(msg.sender)] += (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value
                            require ((100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                            sub_a1764ca0 += (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value
                            require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += msg.value
                            require ((100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                            sub_c289fd85 += (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: msg.value, (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 * msg.value, msg.sender
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require sub_c289fd85 <= hardCap
                            require (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100
                            require hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 <= msg.value
                            require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100
                            require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                            require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                            sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                            require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100
                            require hardCap >= sub_c289fd85
                            sub_c289fd85 = hardCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, hardCap - sub_c289fd85
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                            call multisigWalletAddress with:
                               value hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100) > 0:
                                call msg.sender with:
                                   value msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor19 * 0 / stor18) / 100) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require 100 * exchangeRate / exchangeRate == 100
                require stor18
                if not 100 * exchangeRate / stor18:
                    if msg.value:
                        require not 0 / msg.value
                    require sub_c289fd85 >= sub_c289fd85
                    require sub_c289fd85 <= hardCap
                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                    sub_834d0d1f[address(msg.sender)] += msg.value
                    require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                    require sub_a1764ca0 >= sub_a1764ca0
                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                    sub_6a4fa8db += msg.value
                    require sub_c289fd85 >= sub_c289fd85
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit 0x35abf7f0: msg.value, 0, msg.sender
                    call multisigWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_c289fd85 == hardCap:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                             gas gas_remaining wei
                            args (block.timestamp + (336 * 24 * 3600))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not stor5:
                        stor5 = 1
                        require ext_code.size(tokenAddress)
                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                             gas gas_remaining wei
                            args (endTime + (336 * 24 * 3600))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor19 + 100
                    if not msg.value:
                        require sub_c289fd85 >= sub_c289fd85
                        require sub_c289fd85 <= hardCap
                        require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                        sub_834d0d1f[address(msg.sender)] += msg.value
                        require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                        require sub_a1764ca0 >= sub_a1764ca0
                        require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                        sub_6a4fa8db += msg.value
                        require sub_c289fd85 >= sub_c289fd85
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args owner, msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit 0x35abf7f0: msg.value, 0, msg.sender
                        call multisigWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_c289fd85 == hardCap:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (block.timestamp + (336 * 24 * 3600))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not stor5:
                            stor5 = 1
                            require ext_code.size(tokenAddress)
                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (endTime + (336 * 24 * 3600))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value / msg.value == (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100
                        require ((100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                        if ((100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                            require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += msg.value
                            require ((100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            sub_2681a941[address(msg.sender)] += (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value
                            require ((100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                            sub_a1764ca0 += (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value
                            require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += msg.value
                            require ((100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                            sub_c289fd85 += (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: msg.value, (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 * msg.value, msg.sender
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require sub_c289fd85 <= hardCap
                            require (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100
                            require hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 <= msg.value
                            require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100
                            require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                            require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                            sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                            require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100
                            require hardCap >= sub_c289fd85
                            sub_c289fd85 = hardCap
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, hardCap - sub_c289fd85
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                            call multisigWalletAddress with:
                               value hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100) > 0:
                                call msg.sender with:
                                   value msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor19 * 100 * exchangeRate / stor18) / 100) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if block.timestamp > startTime + (24 * 3600):
                if block.timestamp > startTime + (48 * 24 * 3600):
                    require stor17 + 100 >= stor17
                    if not exchangeRate:
                        require stor18
                        if not 0 / stor18:
                            if msg.value:
                                require not 0 / msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require sub_c289fd85 <= hardCap
                            require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += msg.value
                            require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            require sub_a1764ca0 >= sub_a1764ca0
                            require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: msg.value, 0, msg.sender
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100
                            if not msg.value:
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value / msg.value == (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                if ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] += (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                    require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 += (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    sub_c289fd85 += (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require sub_c289fd85 <= hardCap
                                    require (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                    require hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 <= msg.value
                                    require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                    require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                    require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                    require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                    require hardCap >= sub_c289fd85
                                    sub_c289fd85 = hardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, hardCap - sub_c289fd85
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                    call multisigWalletAddress with:
                                       value hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) > 0:
                                        call msg.sender with:
                                           value msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 100 * exchangeRate / exchangeRate == 100
                        require stor18
                        if not 100 * exchangeRate / stor18:
                            if msg.value:
                                require not 0 / msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require sub_c289fd85 <= hardCap
                            require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += msg.value
                            require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            require sub_a1764ca0 >= sub_a1764ca0
                            require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: msg.value, 0, msg.sender
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100
                            if not msg.value:
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value / msg.value == (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                if ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] += (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 += (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    sub_c289fd85 += (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require sub_c289fd85 <= hardCap
                                    require (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                    require hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 <= msg.value
                                    require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                    require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                    require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                    require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                    require hardCap >= sub_c289fd85
                                    sub_c289fd85 = hardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, hardCap - sub_c289fd85
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                    call multisigWalletAddress with:
                                       value hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) > 0:
                                        call msg.sender with:
                                           value msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require stor16 + 100 >= stor16
                    if not exchangeRate:
                        require stor18
                        if not 0 / stor18:
                            if msg.value:
                                require not 0 / msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require sub_c289fd85 <= hardCap
                            require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += msg.value
                            require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            require sub_a1764ca0 >= sub_a1764ca0
                            require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: msg.value, 0, msg.sender
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require (100 * 0 / stor18) + (stor16 * 0 / stor18) / 0 / stor18 == stor16 + 100
                            if not msg.value:
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value / msg.value == (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100
                                require ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                if ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] += (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value
                                    require ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 += (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    sub_c289fd85 += (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require sub_c289fd85 <= hardCap
                                    require (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100
                                    require hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 <= msg.value
                                    require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100
                                    require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                    require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                    require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100
                                    require hardCap >= sub_c289fd85
                                    sub_c289fd85 = hardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, hardCap - sub_c289fd85
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                    call multisigWalletAddress with:
                                       value hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100) > 0:
                                        call msg.sender with:
                                           value msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 100 * exchangeRate / exchangeRate == 100
                        require stor18
                        if not 100 * exchangeRate / stor18:
                            if msg.value:
                                require not 0 / msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require sub_c289fd85 <= hardCap
                            require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += msg.value
                            require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            require sub_a1764ca0 >= sub_a1764ca0
                            require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: msg.value, 0, msg.sender
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor16 + 100
                            if not msg.value:
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value / msg.value == (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100
                                require ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                if ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] += (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    require ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 += (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    sub_c289fd85 += (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require sub_c289fd85 <= hardCap
                                    require (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100
                                    require hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 <= msg.value
                                    require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100
                                    require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                    require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                    require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100
                                    require hardCap >= sub_c289fd85
                                    sub_c289fd85 = hardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, hardCap - sub_c289fd85
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                    call multisigWalletAddress with:
                                       value hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100) > 0:
                                        call msg.sender with:
                                           value msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require stor15 + 100 >= stor15
                if not exchangeRate:
                    require stor18
                    if 0 / stor18:
                        require (100 * 0 / stor18) + (stor15 * 0 / stor18) / 0 / stor18 == stor15 + 100
                else:
                    require 100 * exchangeRate / exchangeRate == 100
                    require stor18
                    if 100 * exchangeRate / stor18:
                        require (100 * 100 * exchangeRate / stor18) + (stor15 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor15 + 100
                if block.timestamp <= startTime + (24 * 3600):
                    require stor17 + 100 >= stor17
                    if not exchangeRate:
                        require stor18
                        if not 0 / stor18:
                            if msg.value:
                                require not 0 / msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require sub_c289fd85 <= hardCap
                            require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += msg.value
                            require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            require sub_a1764ca0 >= sub_a1764ca0
                            require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: msg.value, 0, msg.sender
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100
                            if not msg.value:
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value / msg.value == (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                if ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] += (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                    require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 += (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    sub_c289fd85 += (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require sub_c289fd85 <= hardCap
                                    require (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                    require hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 <= msg.value
                                    require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                    require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                    require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                    require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                    require hardCap >= sub_c289fd85
                                    sub_c289fd85 = hardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, hardCap - sub_c289fd85
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                    call multisigWalletAddress with:
                                       value hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) > 0:
                                        call msg.sender with:
                                           value msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 100 * exchangeRate / exchangeRate == 100
                        require stor18
                        if not 100 * exchangeRate / stor18:
                            if msg.value:
                                require not 0 / msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require sub_c289fd85 <= hardCap
                            require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                            sub_834d0d1f[address(msg.sender)] += msg.value
                            require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                            require sub_a1764ca0 >= sub_a1764ca0
                            require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                            sub_6a4fa8db += msg.value
                            require sub_c289fd85 >= sub_c289fd85
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit 0x35abf7f0: msg.value, 0, msg.sender
                            call multisigWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_c289fd85 == hardCap:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not stor5:
                                stor5 = 1
                                require ext_code.size(tokenAddress)
                                call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (endTime + (336 * 24 * 3600))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100
                            if not msg.value:
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value / msg.value == (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                if ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] += (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 += (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    sub_c289fd85 += (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require sub_c289fd85 <= hardCap
                                    require (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                    require hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 <= msg.value
                                    require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                    require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                    require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                    sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                    require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                    require hardCap >= sub_c289fd85
                                    sub_c289fd85 = hardCap
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, hardCap - sub_c289fd85
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                    call multisigWalletAddress with:
                                       value hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) > 0:
                                        call msg.sender with:
                                           value msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if block.timestamp > startTime + (48 * 24 * 3600):
                        require stor17 + 100 >= stor17
                        if not exchangeRate:
                            require stor18
                            if not 0 / stor18:
                                if msg.value:
                                    require not 0 / msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 0 / stor18) + (stor17 * 0 / stor18) / 0 / stor18 == stor17 + 100
                                if not msg.value:
                                    require sub_c289fd85 >= sub_c289fd85
                                    require sub_c289fd85 <= hardCap
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    require sub_a1764ca0 >= sub_a1764ca0
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require sub_c289fd85 >= sub_c289fd85
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, 0, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value / msg.value == (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                    require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    if ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                        require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                        sub_834d0d1f[address(msg.sender)] += msg.value
                                        require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                        sub_2681a941[address(msg.sender)] += (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                        require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                        sub_a1764ca0 += (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                        require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                        sub_6a4fa8db += msg.value
                                        require ((100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                        sub_c289fd85 += (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args owner, msg.sender, (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit 0x35abf7f0: msg.value, (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 * msg.value, msg.sender
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_c289fd85 == hardCap:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (block.timestamp + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not stor5:
                                            stor5 = 1
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (endTime + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require sub_c289fd85 <= hardCap
                                        require (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                        require hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 <= msg.value
                                        require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                        sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                        require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                        sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                        require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                        sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                        require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                        sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100
                                        require hardCap >= sub_c289fd85
                                        sub_c289fd85 = hardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args owner, msg.sender, hardCap - sub_c289fd85
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                        call multisigWalletAddress with:
                                           value hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_c289fd85 == hardCap:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (block.timestamp + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not stor5:
                                            stor5 = 1
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (endTime + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) > 0:
                                            call msg.sender with:
                                               value msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor17 * 0 / stor18) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require 100 * exchangeRate / exchangeRate == 100
                            require stor18
                            if not 100 * exchangeRate / stor18:
                                if msg.value:
                                    require not 0 / msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor17 + 100
                                if not msg.value:
                                    require sub_c289fd85 >= sub_c289fd85
                                    require sub_c289fd85 <= hardCap
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    require sub_a1764ca0 >= sub_a1764ca0
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require sub_c289fd85 >= sub_c289fd85
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, 0, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value / msg.value == (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                    require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    if ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                        require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                        sub_834d0d1f[address(msg.sender)] += msg.value
                                        require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                        sub_2681a941[address(msg.sender)] += (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                        require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                        sub_a1764ca0 += (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                        require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                        sub_6a4fa8db += msg.value
                                        require ((100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                        sub_c289fd85 += (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args owner, msg.sender, (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit 0x35abf7f0: msg.value, (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 * msg.value, msg.sender
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_c289fd85 == hardCap:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (block.timestamp + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not stor5:
                                            stor5 = 1
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (endTime + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require sub_c289fd85 <= hardCap
                                        require (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                        require hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 <= msg.value
                                        require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                        sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                        require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                        sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                        require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                        sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                        require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                        sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100
                                        require hardCap >= sub_c289fd85
                                        sub_c289fd85 = hardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args owner, msg.sender, hardCap - sub_c289fd85
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                        call multisigWalletAddress with:
                                           value hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_c289fd85 == hardCap:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (block.timestamp + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not stor5:
                                            stor5 = 1
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (endTime + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) > 0:
                                            call msg.sender with:
                                               value msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor17 * 100 * exchangeRate / stor18) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require stor16 + 100 >= stor16
                        if not exchangeRate:
                            require stor18
                            if not 0 / stor18:
                                if msg.value:
                                    require not 0 / msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 0 / stor18) + (stor16 * 0 / stor18) / 0 / stor18 == stor16 + 100
                                if not msg.value:
                                    require sub_c289fd85 >= sub_c289fd85
                                    require sub_c289fd85 <= hardCap
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    require sub_a1764ca0 >= sub_a1764ca0
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require sub_c289fd85 >= sub_c289fd85
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, 0, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value / msg.value == (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100
                                    require ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    if ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                        require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                        sub_834d0d1f[address(msg.sender)] += msg.value
                                        require ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                        sub_2681a941[address(msg.sender)] += (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value
                                        require ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                        sub_a1764ca0 += (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value
                                        require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                        sub_6a4fa8db += msg.value
                                        require ((100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                        sub_c289fd85 += (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args owner, msg.sender, (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit 0x35abf7f0: msg.value, (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 * msg.value, msg.sender
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_c289fd85 == hardCap:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (block.timestamp + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not stor5:
                                            stor5 = 1
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (endTime + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require sub_c289fd85 <= hardCap
                                        require (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100
                                        require hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 <= msg.value
                                        require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                        sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100
                                        require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                        sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                        require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                        sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                        require (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                        sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100
                                        require hardCap >= sub_c289fd85
                                        sub_c289fd85 = hardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args owner, msg.sender, hardCap - sub_c289fd85
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                        call multisigWalletAddress with:
                                           value hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_c289fd85 == hardCap:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (block.timestamp + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not stor5:
                                            stor5 = 1
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (endTime + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100) > 0:
                                            call msg.sender with:
                                               value msg.value - (hardCap - sub_c289fd85 / (100 * 0 / stor18) + (stor16 * 0 / stor18) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require 100 * exchangeRate / exchangeRate == 100
                            require stor18
                            if not 100 * exchangeRate / stor18:
                                if msg.value:
                                    require not 0 / msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require sub_c289fd85 <= hardCap
                                require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                sub_834d0d1f[address(msg.sender)] += msg.value
                                require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                require sub_a1764ca0 >= sub_a1764ca0
                                require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                sub_6a4fa8db += msg.value
                                require sub_c289fd85 >= sub_c289fd85
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit 0x35abf7f0: msg.value, 0, msg.sender
                                call multisigWalletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_c289fd85 == hardCap:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (block.timestamp + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not stor5:
                                    stor5 = 1
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (endTime + (336 * 24 * 3600))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * exchangeRate / stor18 == stor16 + 100
                                if not msg.value:
                                    require sub_c289fd85 >= sub_c289fd85
                                    require sub_c289fd85 <= hardCap
                                    require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                    sub_834d0d1f[address(msg.sender)] += msg.value
                                    require sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                    require sub_a1764ca0 >= sub_a1764ca0
                                    require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                    sub_6a4fa8db += msg.value
                                    require sub_c289fd85 >= sub_c289fd85
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit 0x35abf7f0: msg.value, 0, msg.sender
                                    call multisigWalletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_c289fd85 == hardCap:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (block.timestamp + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not stor5:
                                        stor5 = 1
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (endTime + (336 * 24 * 3600))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value / msg.value == (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100
                                    require ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                    if ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 <= hardCap:
                                        require msg.value + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                        sub_834d0d1f[address(msg.sender)] += msg.value
                                        require ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                        sub_2681a941[address(msg.sender)] += (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value
                                        require ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_a1764ca0 >= sub_a1764ca0
                                        sub_a1764ca0 += (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value
                                        require msg.value + sub_6a4fa8db >= sub_6a4fa8db
                                        sub_6a4fa8db += msg.value
                                        require ((100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value) + sub_c289fd85 >= sub_c289fd85
                                        sub_c289fd85 += (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args owner, msg.sender, (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit 0x35abf7f0: msg.value, (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 * msg.value, msg.sender
                                        call multisigWalletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_c289fd85 == hardCap:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (block.timestamp + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not stor5:
                                            stor5 = 1
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (endTime + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require sub_c289fd85 <= hardCap
                                        require (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100
                                        require hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 <= msg.value
                                        require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100) + sub_834d0d1f[address(msg.sender)] >= sub_834d0d1f[address(msg.sender)]
                                        sub_834d0d1f[address(msg.sender)] += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100
                                        require hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)] >= sub_2681a941[address(msg.sender)]
                                        sub_2681a941[address(msg.sender)] = hardCap - sub_c289fd85 + sub_2681a941[address(msg.sender)]
                                        require hardCap - sub_c289fd85 + sub_a1764ca0 >= sub_a1764ca0
                                        sub_a1764ca0 = hardCap - sub_c289fd85 + sub_a1764ca0
                                        require (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100) + sub_6a4fa8db >= sub_6a4fa8db
                                        sub_6a4fa8db += hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100
                                        require hardCap >= sub_c289fd85
                                        sub_c289fd85 = hardCap
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args owner, msg.sender, hardCap - sub_c289fd85
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit 0x35abf7f0: hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100, hardCap - sub_c289fd85, msg.sender
                                        call multisigWalletAddress with:
                                           value hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_c289fd85 == hardCap:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (block.timestamp + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not stor5:
                                            stor5 = 1
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.setStartTimeForTokenTransfers(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (endTime + (336 * 24 * 3600))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100) > 0:
                                            call msg.sender with:
                                               value msg.value - (hardCap - sub_c289fd85 / (100 * 100 * exchangeRate / stor18) + (stor16 * 100 * exchangeRate / stor18) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
}



}
