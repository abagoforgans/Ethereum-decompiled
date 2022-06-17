contract main {




// =====================  Runtime code  =====================


const name = 'Futereum Centurian'

const decimals = 0

const symbol = 'FUTC'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address adminAddress;
uint256 totalEthReleased;
mapping of uint256 ethReleased;
array of address trackedTokens;
mapping of uint8 stor7;
mapping of uint256 totalTokensReleased;
mapping of uint256 tokensReleased;

function tokensReleased(address arg1, address arg2) {
    return tokensReleased[arg1][arg2]
}

function totalSupply() {
    return totalSupply
}

function ethReleased(address arg1) {
    return ethReleased[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalTokensReleased(address arg1) {
    return totalTokensReleased[arg1]
}

function trackedTokens(uint256 arg1) {
    require arg1 < trackedTokens.length
    return address(trackedTokens[arg1])
}

function totalEthReleased() {
    return totalEthReleased
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function isTokenTracked(address arg1) {
    return bool(stor7[arg1])
}

function _fallback() payable {
  stop
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function trackToken(address arg1) {
    require msg.sender == adminAddress
    require arg1
    require not stor7[address(arg1)]
    trackedTokens.length++
    address(trackedTokens[trackedTokens.length]) = arg1
    stor7[address(arg1)] = 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function unTrackToken(address arg1, uint16 arg2) {
    require msg.sender == adminAddress
    require stor7[address(arg1)]
    require arg2 < trackedTokens.length
    require address(trackedTokens[arg2]) == arg1
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
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require trackedTokens.length - 1 < trackedTokens.length
    require arg2 < trackedTokens.length
    address(trackedTokens[arg2]) = address(trackedTokens[trackedTokens.length])
    require trackedTokens.length - 1 < trackedTokens.length
    address(trackedTokens[trackedTokens.length]) = 0
    trackedTokens.length--
    if trackedTokens.length > trackedTokens.length - 1:
        idx = trackedTokens.length - 1
        while trackedTokens.length > idx:
            uint256(trackedTokens[idx]) = 0
            idx = idx + 1
            continue 
}

function getUnclaimedTokenAmount(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + totalTokensReleased[address(arg1)] >= ext_call.return_data[0]
    if not ext_call.return_data[0] + totalTokensReleased[address(arg1)]:
        if totalSupply:
            if tokensReleased[address(arg1)][address(arg2)] <= 0 / totalSupply:
                return ((0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)])
    else:
        if ext_call.return_data[0] + totalTokensReleased[address(arg1)]:
            if (ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / ext_call.return_data[0] + totalTokensReleased[address(arg1)] == balanceOf[address(arg2)]:
                if totalSupply:
                    if tokensReleased[address(arg1)][address(arg2)] <= (ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply:
                        return (((ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)])
    revert
}

function claimEthFor(address arg1) {
    require balanceOf[address(arg1)] > 0
    require eth.balance(this.address) + totalEthReleased >= eth.balance(this.address)
    if not eth.balance(this.address) + totalEthReleased:
        require totalSupply
        require ethReleased[address(arg1)] <= 0 / totalSupply
        require (0 / totalSupply) - ethReleased[address(arg1)]
        require eth.balance(this.address) >= (0 / totalSupply) - ethReleased[address(arg1)]
        require 0 / totalSupply >= ethReleased[address(arg1)]
        ethReleased[address(arg1)] = 0 / totalSupply
        require totalEthReleased + (0 / totalSupply) - ethReleased[address(arg1)] >= totalEthReleased
        totalEthReleased = totalEthReleased + (0 / totalSupply) - ethReleased[address(arg1)]
        call arg1 with:
           value (0 / totalSupply) - ethReleased[address(arg1)] wei
             gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address) + totalEthReleased
        require (eth.balance(this.address) * balanceOf[address(arg1)]) + (totalEthReleased * balanceOf[address(arg1)]) / eth.balance(this.address) + totalEthReleased == balanceOf[address(arg1)]
        require totalSupply
        require ethReleased[address(arg1)] <= (eth.balance(this.address) * balanceOf[address(arg1)]) + (totalEthReleased * balanceOf[address(arg1)]) / totalSupply
        require ((eth.balance(this.address) * balanceOf[address(arg1)]) + (totalEthReleased * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)]
        require eth.balance(this.address) >= ((eth.balance(this.address) * balanceOf[address(arg1)]) + (totalEthReleased * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)]
        require (eth.balance(this.address) * balanceOf[address(arg1)]) + (totalEthReleased * balanceOf[address(arg1)]) / totalSupply >= ethReleased[address(arg1)]
        ethReleased[address(arg1)] = (eth.balance(this.address) * balanceOf[address(arg1)]) + (totalEthReleased * balanceOf[address(arg1)]) / totalSupply
        require totalEthReleased + ((eth.balance(this.address) * balanceOf[address(arg1)]) + (totalEthReleased * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)] >= totalEthReleased
        totalEthReleased = totalEthReleased + ((eth.balance(this.address) * balanceOf[address(arg1)]) + (totalEthReleased * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)]
        call arg1 with:
           value ((eth.balance(this.address) * balanceOf[address(arg1)]) + (totalEthReleased * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimEth() {
    require balanceOf[address(msg.sender)] > 0
    require eth.balance(this.address) + totalEthReleased >= eth.balance(this.address)
    if not eth.balance(this.address) + totalEthReleased:
        require totalSupply
        require ethReleased[address(msg.sender)] <= 0 / totalSupply
        require (0 / totalSupply) - ethReleased[address(msg.sender)]
        require eth.balance(this.address) >= (0 / totalSupply) - ethReleased[address(msg.sender)]
        require 0 / totalSupply >= ethReleased[address(msg.sender)]
        ethReleased[address(msg.sender)] = 0 / totalSupply
        require totalEthReleased + (0 / totalSupply) - ethReleased[address(msg.sender)] >= totalEthReleased
        totalEthReleased = totalEthReleased + (0 / totalSupply) - ethReleased[address(msg.sender)]
        call msg.sender with:
           value (0 / totalSupply) - ethReleased[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address) + totalEthReleased
        require (eth.balance(this.address) * balanceOf[address(msg.sender)]) + (totalEthReleased * balanceOf[address(msg.sender)]) / eth.balance(this.address) + totalEthReleased == balanceOf[address(msg.sender)]
        require totalSupply
        require ethReleased[address(msg.sender)] <= (eth.balance(this.address) * balanceOf[address(msg.sender)]) + (totalEthReleased * balanceOf[address(msg.sender)]) / totalSupply
        require ((eth.balance(this.address) * balanceOf[address(msg.sender)]) + (totalEthReleased * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)]
        require eth.balance(this.address) >= ((eth.balance(this.address) * balanceOf[address(msg.sender)]) + (totalEthReleased * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)]
        require (eth.balance(this.address) * balanceOf[address(msg.sender)]) + (totalEthReleased * balanceOf[address(msg.sender)]) / totalSupply >= ethReleased[address(msg.sender)]
        ethReleased[address(msg.sender)] = (eth.balance(this.address) * balanceOf[address(msg.sender)]) + (totalEthReleased * balanceOf[address(msg.sender)]) / totalSupply
        require totalEthReleased + ((eth.balance(this.address) * balanceOf[address(msg.sender)]) + (totalEthReleased * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)] >= totalEthReleased
        totalEthReleased = totalEthReleased + ((eth.balance(this.address) * balanceOf[address(msg.sender)]) + (totalEthReleased * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)]
        call msg.sender with:
           value ((eth.balance(this.address) * balanceOf[address(msg.sender)]) + (totalEthReleased * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1 != arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if not ethReleased[address(arg1)]:
        require balanceOf[address(arg1)]
        require ethReleased[address(arg2)] + (0 / balanceOf[address(arg1)]) >= ethReleased[address(arg2)]
        ethReleased[address(arg2)] += 0 / balanceOf[address(arg1)]
        require 0 / balanceOf[address(arg1)] <= ethReleased[address(arg1)]
        ethReleased[address(arg1)] -= 0 / balanceOf[address(arg1)]
    else:
        require ethReleased[address(arg1)]
        require ethReleased[address(arg1)] * arg3 / ethReleased[address(arg1)] == arg3
        require balanceOf[address(arg1)]
        require ethReleased[address(arg2)] + (ethReleased[address(arg1)] * arg3 / balanceOf[address(arg1)]) >= ethReleased[address(arg2)]
        ethReleased[address(arg2)] += ethReleased[address(arg1)] * arg3 / balanceOf[address(arg1)]
        require ethReleased[address(arg1)] * arg3 / balanceOf[address(arg1)] <= ethReleased[address(arg1)]
        ethReleased[address(arg1)] -= ethReleased[address(arg1)] * arg3 / balanceOf[address(arg1)]
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < trackedTokens.length:
        if not tokensReleased[address(stor6[uint16(idx)])][address(arg1)]:
            require balanceOf[address(arg1)]
            require tokensReleased[address(stor6[uint16(idx)])][address(arg2)] + (0 / balanceOf[address(arg1)]) >= tokensReleased[address(stor6[uint16(idx)])][address(arg2)]
            tokensReleased[address(stor6[uint16(idx)])][address(arg2)] += 0 / balanceOf[address(arg1)]
            require 0 / balanceOf[address(arg1)] <= tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
            mem[0] = arg1
            mem[32] = sha3(address(trackedTokens[uint16(idx)]), 9)
            tokensReleased[address(stor6[uint16(idx)])][address(arg1)] -= 0 / balanceOf[address(arg1)]
            s = 0 / balanceOf[address(arg1)]
            s = address(trackedTokens[uint16(idx)])
            idx = idx + 1
            continue 
        require tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
        require tokensReleased[address(stor6[uint16(idx)])][address(arg1)] * arg3 / tokensReleased[address(stor6[uint16(idx)])][address(arg1)] == arg3
        require balanceOf[address(arg1)]
        require tokensReleased[address(stor6[uint16(idx)])][address(arg2)] + (tokensReleased[address(stor6[uint16(idx)])][address(arg1)] * arg3 / balanceOf[address(arg1)]) >= tokensReleased[address(stor6[uint16(idx)])][address(arg2)]
        tokensReleased[address(stor6[uint16(idx)])][address(arg2)] += tokensReleased[address(stor6[uint16(idx)])][address(arg1)] * arg3 / balanceOf[address(arg1)]
        require tokensReleased[address(stor6[uint16(idx)])][address(arg1)] * arg3 / balanceOf[address(arg1)] <= tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
        mem[0] = arg1
        mem[32] = sha3(address(trackedTokens[uint16(idx)]), 9)
        tokensReleased[address(stor6[uint16(idx)])][address(arg1)] -= tokensReleased[address(stor6[uint16(idx)])][address(arg1)] * arg3 / balanceOf[address(arg1)]
        s = tokensReleased[address(stor6[uint16(idx)])][address(arg1)] * arg3 / balanceOf[address(arg1)]
        s = address(trackedTokens[uint16(idx)])
        idx = idx + 1
        continue 
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not ethReleased[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require ethReleased[address(arg1)] + (0 / balanceOf[address(msg.sender)]) >= ethReleased[address(arg1)]
        ethReleased[address(arg1)] += 0 / balanceOf[address(msg.sender)]
        require 0 / balanceOf[address(msg.sender)] <= ethReleased[address(msg.sender)]
        ethReleased[address(msg.sender)] -= 0 / balanceOf[address(msg.sender)]
    else:
        require ethReleased[address(msg.sender)]
        require ethReleased[address(msg.sender)] * arg2 / ethReleased[address(msg.sender)] == arg2
        require balanceOf[address(msg.sender)]
        require ethReleased[address(arg1)] + (ethReleased[address(msg.sender)] * arg2 / balanceOf[address(msg.sender)]) >= ethReleased[address(arg1)]
        ethReleased[address(arg1)] += ethReleased[address(msg.sender)] * arg2 / balanceOf[address(msg.sender)]
        require ethReleased[address(msg.sender)] * arg2 / balanceOf[address(msg.sender)] <= ethReleased[address(msg.sender)]
        ethReleased[address(msg.sender)] -= ethReleased[address(msg.sender)] * arg2 / balanceOf[address(msg.sender)]
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < trackedTokens.length:
        if not tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]:
            require balanceOf[address(msg.sender)]
            require tokensReleased[address(stor6[uint16(idx)])][address(arg1)] + (0 / balanceOf[address(msg.sender)]) >= tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
            tokensReleased[address(stor6[uint16(idx)])][address(arg1)] += 0 / balanceOf[address(msg.sender)]
            require 0 / balanceOf[address(msg.sender)] <= tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(trackedTokens[uint16(idx)]), 9)
            tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] -= 0 / balanceOf[address(msg.sender)]
            s = 0 / balanceOf[address(msg.sender)]
            s = address(trackedTokens[uint16(idx)])
            idx = idx + 1
            continue 
        require tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
        require tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] * arg2 / tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] == arg2
        require balanceOf[address(msg.sender)]
        require tokensReleased[address(stor6[uint16(idx)])][address(arg1)] + (tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] * arg2 / balanceOf[address(msg.sender)]) >= tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
        tokensReleased[address(stor6[uint16(idx)])][address(arg1)] += tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] * arg2 / balanceOf[address(msg.sender)]
        require tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] * arg2 / balanceOf[address(msg.sender)] <= tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = sha3(address(trackedTokens[uint16(idx)]), 9)
        tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] -= tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] * arg2 / balanceOf[address(msg.sender)]
        s = tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] * arg2 / balanceOf[address(msg.sender)]
        s = address(trackedTokens[uint16(idx)])
        idx = idx + 1
        continue 
    return 1
}

function claimToken(address arg1, address arg2) {
    require balanceOf[address(arg2)] > 0
    require stor7[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + totalTokensReleased[address(arg1)] >= ext_call.return_data[0]
    if not ext_call.return_data[0] + totalTokensReleased[address(arg1)]:
        require totalSupply
        require tokensReleased[address(arg1)][address(arg2)] <= 0 / totalSupply
        if (0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)]:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= (0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)]
            require 0 / totalSupply >= tokensReleased[address(arg1)][address(arg2)]
            tokensReleased[address(arg1)][address(arg2)] = 0 / totalSupply
            require totalTokensReleased[address(arg1)] + (0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)] >= totalTokensReleased[address(arg1)]
            totalTokensReleased[address(arg1)] = totalTokensReleased[address(arg1)] + (0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), (0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_call.return_data[0] + totalTokensReleased[address(arg1)]
        require (ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / ext_call.return_data[0] + totalTokensReleased[address(arg1)] == balanceOf[address(arg2)]
        require totalSupply
        require tokensReleased[address(arg1)][address(arg2)] <= (ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply
        if ((ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)]:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= ((ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)]
            require (ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply >= tokensReleased[address(arg1)][address(arg2)]
            tokensReleased[address(arg1)][address(arg2)] = (ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply
            require totalTokensReleased[address(arg1)] + ((ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)] >= totalTokensReleased[address(arg1)]
            totalTokensReleased[address(arg1)] = totalTokensReleased[address(arg1)] + ((ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), ((ext_call.return_data[0] * balanceOf[address(arg2)]) + (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function claimTokensFor(address arg1) {
    require balanceOf[address(arg1)] > 0
    idx = 0
    while uint16(idx) < trackedTokens.length:
        require balanceOf[address(arg1)] > 0
        require stor7[address(stor6[uint16(idx)])]
        mem[100] = this.address
        require ext_code.size(address(trackedTokens[uint16(idx)]))
        call address(trackedTokens[uint16(idx)]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + totalTokensReleased[address(stor6[uint16(idx)])] >= ext_call.return_data[0]
        mem[0] = arg1
        mem[32] = 0
        if not ext_call.return_data[0] + totalTokensReleased[address(stor6[uint16(idx)])]:
            require totalSupply
            require tokensReleased[address(stor6[uint16(idx)])][address(arg1)] <= 0 / totalSupply
            if (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]:
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                require 0 / totalSupply >= tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                tokensReleased[address(stor6[uint16(idx)])][address(arg1)] = 0 / totalSupply
                require totalTokensReleased[address(stor6[uint16(idx)])] + (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)] >= totalTokensReleased[address(stor6[uint16(idx)])]
                mem[0] = address(trackedTokens[uint16(idx)])
                mem[32] = 8
                totalTokensReleased[address(stor6[uint16(idx)])] = totalTokensReleased[address(stor6[uint16(idx)])] + (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                mem[100] = arg1
                mem[132] = (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            require ext_call.return_data[0] + totalTokensReleased[address(stor6[uint16(idx)])]
            require (ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / ext_call.return_data[0] + totalTokensReleased[address(stor6[uint16(idx)])] == balanceOf[address(arg1)]
            require totalSupply
            require tokensReleased[address(stor6[uint16(idx)])][address(arg1)] <= (ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / totalSupply
            if ((ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]:
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= ((ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                require (ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / totalSupply >= tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                tokensReleased[address(stor6[uint16(idx)])][address(arg1)] = (ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / totalSupply
                require totalTokensReleased[address(stor6[uint16(idx)])] + ((ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)] >= totalTokensReleased[address(stor6[uint16(idx)])]
                mem[0] = address(trackedTokens[uint16(idx)])
                mem[32] = 8
                totalTokensReleased[address(stor6[uint16(idx)])] = totalTokensReleased[address(stor6[uint16(idx)])] + ((ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                mem[100] = arg1
                mem[132] = ((ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ((ext_call.return_data[0] * balanceOf[address(arg1)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(arg1)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
}

function claimMyTokens() {
    require balanceOf[address(msg.sender)] > 0
    idx = 0
    while uint16(idx) < trackedTokens.length:
        require balanceOf[address(msg.sender)] > 0
        require stor7[address(stor6[uint16(idx)])]
        mem[100] = this.address
        require ext_code.size(address(trackedTokens[uint16(idx)]))
        call address(trackedTokens[uint16(idx)]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + totalTokensReleased[address(stor6[uint16(idx)])] >= ext_call.return_data[0]
        mem[0] = msg.sender
        mem[32] = 0
        if not ext_call.return_data[0] + totalTokensReleased[address(stor6[uint16(idx)])]:
            require totalSupply
            require tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] <= 0 / totalSupply
            if (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]:
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                require 0 / totalSupply >= tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] = 0 / totalSupply
                require totalTokensReleased[address(stor6[uint16(idx)])] + (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] >= totalTokensReleased[address(stor6[uint16(idx)])]
                mem[0] = address(trackedTokens[uint16(idx)])
                mem[32] = 8
                totalTokensReleased[address(stor6[uint16(idx)])] = totalTokensReleased[address(stor6[uint16(idx)])] + (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                mem[100] = msg.sender
                mem[132] = (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            require ext_call.return_data[0] + totalTokensReleased[address(stor6[uint16(idx)])]
            require (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / ext_call.return_data[0] + totalTokensReleased[address(stor6[uint16(idx)])] == balanceOf[address(msg.sender)]
            require totalSupply
            require tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] <= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / totalSupply
            if ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]:
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                require (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / totalSupply >= tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] = (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / totalSupply
                require totalTokensReleased[address(stor6[uint16(idx)])] + ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)] >= totalTokensReleased[address(stor6[uint16(idx)])]
                mem[0] = address(trackedTokens[uint16(idx)])
                mem[32] = 8
                totalTokensReleased[address(stor6[uint16(idx)])] = totalTokensReleased[address(stor6[uint16(idx)])] + ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                mem[100] = msg.sender
                mem[132] = ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (totalTokensReleased[address(stor6[uint16(idx)])] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor6[uint16(idx)])][address(msg.sender)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
