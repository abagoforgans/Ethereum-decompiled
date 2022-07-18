contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 stor2;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
address owner;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint8 sub_904aa889;
uint8 finalized; offset 8
uint256 goal;
address stor12;

function cap() {
    return cap
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function sub_904aa889(?) {
    return bool(sub_904aa889)
}

function finalized() {
    return bool(finalized)
}

function openingTime() {
    return openingTime
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function goalReached() {
    return weiRaised >= goal
}

function isOwner() {
    return (msg.sender == owner)
}

function rate() {
    if block.timestamp >= 433872 * 24 * 3600:
        return 5000
    return 6666
}

function forceClose() {
    require msg.sender == owner
    require not sub_904aa889
    sub_904aa889 = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    cap = arg1
}

function updateGoal(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    goal = arg1
}

function hasClosed() {
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    return (1 == bool(sub_904aa889))
}

function renounceWhitelisted() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    if block.timestamp > closingTime:
        return block.timestamp <= closingTime
    return not bool(sub_904aa889)
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function beneficiaryWithdraw() {
    require msg.sender == owner
    require weiRaised >= goal
    require ext_code.size(stor12)
    call stor12.0x9af6549a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimRefund(address arg1) {
    require calldata.size - 4 >= 32
    require finalized
    require weiRaised < goal
    require ext_code.size(stor12)
    call stor12.withdraw(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finalize() {
    if block.timestamp <= closingTime:
        require 1 == bool(sub_904aa889)
    finalized = 1
    require ext_code.size(stor12)
    if weiRaised < goal:
        call stor12.enableRefunds() with:
             gas gas_remaining wei
    else:
        call stor12.close() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor12)
        call stor12.0x9af6549a with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CrowdsaleFinalized()
}

function reclaimTokens() {
    if block.timestamp <= closingTime:
        require 1 == bool(sub_904aa889)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args walletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor2++
    require arg1
    require stor1[address(arg1)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require not sub_904aa889
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if block.timestamp >= 433872 * 24 * 3600:
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress) > 0
            mem[196 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, 0
            call tokenAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, 0) << 256, mem[260 len 4]
            if not return_data.size:
                require ext_call.success
                require transfer(address arg1, uint256 arg2), address(arg1) << 64
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[228]
            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
        else:
            require 5000 * msg.value / msg.value == 5000
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress) > 0
            mem[196 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, Mask(224, 32, 5000 * msg.value) >> 32
            call tokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, 5000 * msg.value) << 224, mem[260 len 4]
            if not return_data.size:
                require ext_call.success
                require transfer(address arg1, uint256 arg2), address(arg1) << 64
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[228]
            emit TokensPurchased(msg.value, 5000 * msg.value, msg.sender, arg1);
    else:
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress) > 0
            mem[196 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, 0
            call tokenAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, 0) << 256, mem[260 len 4]
            if not return_data.size:
                require ext_call.success
                require transfer(address arg1, uint256 arg2), address(arg1) << 64
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[228]
            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
        else:
            require 6666 * msg.value / msg.value == 6666
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress) > 0
            mem[196 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, Mask(224, 32, 6666 * msg.value) >> 32
            call tokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, 6666 * msg.value) << 224, mem[260 len 4]
            if not return_data.size:
                require ext_call.success
                require transfer(address arg1, uint256 arg2), address(arg1) << 64
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[228]
            emit TokensPurchased(msg.value, 6666 * msg.value, msg.sender, arg1);
    require ext_code.size(stor12)
    call stor12.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor2 + 1 == stor2
}

function _fallback() payable {
    stor2++
    require msg.sender
    require stor1[address(msg.sender)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require not sub_904aa889
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if block.timestamp >= 433872 * 24 * 3600:
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress) > 0
            mem[196 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, transfer(address arg1, uint256 arg2), msg.sender, 0) << 256, mem[260 len 4]
            if not return_data.size:
                require ext_call.success
                require transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[228]
            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
        else:
            require 5000 * msg.value / msg.value == 5000
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress) > 0
            mem[196 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, 5000 * msg.value) >> 32
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 5000 * msg.value) << 224, mem[260 len 4]
            if not return_data.size:
                require ext_call.success
                require transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[228]
            emit TokensPurchased(msg.value, 5000 * msg.value, msg.sender, msg.sender);
    else:
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress) > 0
            mem[196 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, transfer(address arg1, uint256 arg2), msg.sender, 0) << 256, mem[260 len 4]
            if not return_data.size:
                require ext_call.success
                require transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[228]
            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
        else:
            require 6666 * msg.value / msg.value == 6666
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress) > 0
            mem[196 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, 6666 * msg.value) >> 32
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 6666 * msg.value) << 224, mem[260 len 4]
            if not return_data.size:
                require ext_call.success
                require transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[228]
            emit TokensPurchased(msg.value, 6666 * msg.value, msg.sender, msg.sender);
    require ext_code.size(stor12)
    call stor12.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor2 + 1 == stor2
}



}
