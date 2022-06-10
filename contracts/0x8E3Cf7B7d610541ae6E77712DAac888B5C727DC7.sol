contract main {




// =====================  Runtime code  =====================


const name = 'Neurone by Neuronecoin Core'

const decimals = 0

const symbol = 'ONE'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
address adminAddress;
uint256 totalEthReleased;
mapping of uint256 ethReleased;
array of address trackedTokens;
mapping of uint8 stor8;
mapping of uint256 totalTokensReleased;
mapping of uint256 tokensReleased;

function mintingFinished() {
    return bool(stor3)
}

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

function owner() {
    return owner
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
    return bool(stor8[arg1])
}

function _fallback() payable {
  stop
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function finishMinting() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function trackToken(address arg1) {
    require msg.sender == adminAddress
    require arg1
    require not stor8[address(arg1)]
    trackedTokens.length++
    address(trackedTokens[trackedTokens.length]) = arg1
    stor8[address(arg1)] = 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function finishedLoading() {
    require msg.sender == adminAddress
    require not stor3
    require ext_code.size(this.address)
    call this.address.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function addPayee(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require not stor3
    require arg1
    require arg2 > 0
    require not balanceOf[address(arg1)]
    require ext_code.size(this.address)
    call this.address.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addPayees(address[] arg1, uint256[] arg2) {
    require msg.sender == adminAddress
    require arg2.length == arg1.length
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require msg.sender == adminAddress
        require not stor3
        require address(cd[((32 * idx) + arg1 + 36)])
        require cd[((32 * idx) + arg2 + 36)] > 0
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 0
        require not balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[100] = address(cd[((32 * idx) + arg1 + 36)])
        mem[132] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(this.address)
        call this.address.0x40c10f19 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function unTrackToken(address arg1, uint16 arg2) {
    require msg.sender == adminAddress
    require stor8[address(arg1)]
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
    require totalTokensReleased[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if not totalTokensReleased[address(arg1)] + ext_call.return_data[0]:
        if totalSupply:
            if tokensReleased[address(arg1)][address(arg2)] <= 0 / totalSupply:
                return ((0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)])
    else:
        if (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalTokensReleased[address(arg1)] + ext_call.return_data[0] == balanceOf[address(arg2)]:
            if totalSupply:
                if tokensReleased[address(arg1)][address(arg2)] <= (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply:
                    return (((totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)])
    revert
}

function claimEthFor(address arg1) {
    require 0 < balanceOf[address(arg1)]
    require totalEthReleased + eth.balance(this.address) >= eth.balance(this.address)
    if not totalEthReleased + eth.balance(this.address):
        require totalSupply
        require ethReleased[address(arg1)] <= 0 / totalSupply
        require (0 / totalSupply) - ethReleased[address(arg1)]
        require (0 / totalSupply) - ethReleased[address(arg1)] <= eth.balance(this.address)
        require 0 / totalSupply >= ethReleased[address(arg1)]
        ethReleased[address(arg1)] = 0 / totalSupply
        require (0 / totalSupply) - ethReleased[address(arg1)] + totalEthReleased >= totalEthReleased
        totalEthReleased = (0 / totalSupply) - ethReleased[address(arg1)] + totalEthReleased
        call arg1 with:
           value (0 / totalSupply) - ethReleased[address(arg1)] wei
             gas 2300 * is_zero(value) wei
    else:
        require (totalEthReleased * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalEthReleased + eth.balance(this.address) == balanceOf[address(arg1)]
        require totalSupply
        require ethReleased[address(arg1)] <= (totalEthReleased * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply
        require ((totalEthReleased * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)]
        require ((totalEthReleased * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)] <= eth.balance(this.address)
        require (totalEthReleased * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply >= ethReleased[address(arg1)]
        ethReleased[address(arg1)] = (totalEthReleased * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply
        require ((totalEthReleased * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)] + totalEthReleased >= totalEthReleased
        totalEthReleased = ((totalEthReleased * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)] + totalEthReleased
        call arg1 with:
           value ((totalEthReleased * balanceOf[address(arg1)]) + (eth.balance(this.address) * balanceOf[address(arg1)]) / totalSupply) - ethReleased[address(arg1)] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimEth() {
    require 0 < balanceOf[address(msg.sender)]
    require totalEthReleased + eth.balance(this.address) >= eth.balance(this.address)
    if not totalEthReleased + eth.balance(this.address):
        require totalSupply
        require ethReleased[address(msg.sender)] <= 0 / totalSupply
        require (0 / totalSupply) - ethReleased[address(msg.sender)]
        require (0 / totalSupply) - ethReleased[address(msg.sender)] <= eth.balance(this.address)
        require 0 / totalSupply >= ethReleased[address(msg.sender)]
        ethReleased[address(msg.sender)] = 0 / totalSupply
        require (0 / totalSupply) - ethReleased[address(msg.sender)] + totalEthReleased >= totalEthReleased
        totalEthReleased = (0 / totalSupply) - ethReleased[address(msg.sender)] + totalEthReleased
        call msg.sender with:
           value (0 / totalSupply) - ethReleased[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    else:
        require (totalEthReleased * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalEthReleased + eth.balance(this.address) == balanceOf[address(msg.sender)]
        require totalSupply
        require ethReleased[address(msg.sender)] <= (totalEthReleased * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply
        require ((totalEthReleased * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)]
        require ((totalEthReleased * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)] <= eth.balance(this.address)
        require (totalEthReleased * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply >= ethReleased[address(msg.sender)]
        ethReleased[address(msg.sender)] = (totalEthReleased * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply
        require ((totalEthReleased * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)] + totalEthReleased >= totalEthReleased
        totalEthReleased = ((totalEthReleased * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)] + totalEthReleased
        call msg.sender with:
           value ((totalEthReleased * balanceOf[address(msg.sender)]) + (eth.balance(this.address) * balanceOf[address(msg.sender)]) / totalSupply) - ethReleased[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != msg.sender
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if not ethReleased[address(msg.sender)]:
        require balanceOf[msg.sender]
        require (0 / balanceOf[msg.sender]) + ethReleased[address(arg1)] >= ethReleased[address(arg1)]
        ethReleased[address(arg1)] += 0 / balanceOf[msg.sender]
        require 0 / balanceOf[msg.sender] <= ethReleased[msg.sender]
        ethReleased[address(msg.sender)] = ethReleased[msg.sender] - (0 / balanceOf[msg.sender])
    else:
        require arg2 * ethReleased[address(msg.sender)] / ethReleased[address(msg.sender)] == arg2
        require balanceOf[msg.sender]
        require (arg2 * ethReleased[address(msg.sender)] / balanceOf[msg.sender]) + ethReleased[address(arg1)] >= ethReleased[address(arg1)]
        ethReleased[address(arg1)] += arg2 * ethReleased[address(msg.sender)] / balanceOf[msg.sender]
        require arg2 * ethReleased[address(msg.sender)] / balanceOf[msg.sender] <= ethReleased[msg.sender]
        ethReleased[address(msg.sender)] = ethReleased[msg.sender] - (arg2 * ethReleased[address(msg.sender)] / balanceOf[msg.sender])
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < trackedTokens.length:
        if not tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]:
            require balanceOf[msg.sender]
            require (0 / balanceOf[msg.sender]) + tokensReleased[address(stor7[uint16(idx)])][address(arg1)] >= tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
            tokensReleased[address(stor7[uint16(idx)])][address(arg1)] += 0 / balanceOf[msg.sender]
            require 0 / balanceOf[msg.sender] <= tokensReleased[address(stor7[uint16(idx)])][msg.sender]
            mem[0] = msg.sender
            mem[32] = sha3(address(trackedTokens[uint16(idx)]), 10)
            tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] = tokensReleased[address(stor7[uint16(idx)])][msg.sender] - (0 / balanceOf[msg.sender])
            s = 0 / balanceOf[msg.sender]
            s = address(trackedTokens[uint16(idx)])
            idx = idx + 1
            continue 
        require arg2 * tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] / tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] == arg2
        require balanceOf[msg.sender]
        require (arg2 * tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] / balanceOf[msg.sender]) + tokensReleased[address(stor7[uint16(idx)])][address(arg1)] >= tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
        tokensReleased[address(stor7[uint16(idx)])][address(arg1)] += arg2 * tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] / balanceOf[msg.sender]
        require arg2 * tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] / balanceOf[msg.sender] <= tokensReleased[address(stor7[uint16(idx)])][msg.sender]
        mem[0] = msg.sender
        mem[32] = sha3(address(trackedTokens[uint16(idx)]), 10)
        tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] = tokensReleased[address(stor7[uint16(idx)])][msg.sender] - (arg2 * tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] / balanceOf[msg.sender])
        s = arg2 * tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] / balanceOf[msg.sender]
        s = address(trackedTokens[uint16(idx)])
        idx = idx + 1
        continue 
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != arg1
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if not ethReleased[address(arg1)]:
        require balanceOf[address(arg1)]
        require (0 / balanceOf[address(arg1)]) + ethReleased[address(arg2)] >= ethReleased[address(arg2)]
        ethReleased[address(arg2)] += 0 / balanceOf[address(arg1)]
        require 0 / balanceOf[address(arg1)] <= ethReleased[arg1]
        ethReleased[address(arg1)] = ethReleased[arg1] - (0 / balanceOf[address(arg1)])
    else:
        require arg3 * ethReleased[address(arg1)] / ethReleased[address(arg1)] == arg3
        require balanceOf[address(arg1)]
        require (arg3 * ethReleased[address(arg1)] / balanceOf[address(arg1)]) + ethReleased[address(arg2)] >= ethReleased[address(arg2)]
        ethReleased[address(arg2)] += arg3 * ethReleased[address(arg1)] / balanceOf[address(arg1)]
        require arg3 * ethReleased[address(arg1)] / balanceOf[address(arg1)] <= ethReleased[arg1]
        ethReleased[address(arg1)] = ethReleased[arg1] - (arg3 * ethReleased[address(arg1)] / balanceOf[address(arg1)])
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < trackedTokens.length:
        if not tokensReleased[address(stor7[uint16(idx)])][address(arg1)]:
            require balanceOf[address(arg1)]
            require (0 / balanceOf[address(arg1)]) + tokensReleased[address(stor7[uint16(idx)])][address(arg2)] >= tokensReleased[address(stor7[uint16(idx)])][address(arg2)]
            tokensReleased[address(stor7[uint16(idx)])][address(arg2)] += 0 / balanceOf[address(arg1)]
            require 0 / balanceOf[address(arg1)] <= tokensReleased[address(stor7[uint16(idx)])][arg1]
            mem[0] = arg1
            mem[32] = sha3(address(trackedTokens[uint16(idx)]), 10)
            tokensReleased[address(stor7[uint16(idx)])][address(arg1)] = tokensReleased[address(stor7[uint16(idx)])][arg1] - (0 / balanceOf[address(arg1)])
            s = 0 / balanceOf[address(arg1)]
            s = address(trackedTokens[uint16(idx)])
            idx = idx + 1
            continue 
        require arg3 * tokensReleased[address(stor7[uint16(idx)])][address(arg1)] / tokensReleased[address(stor7[uint16(idx)])][address(arg1)] == arg3
        require balanceOf[address(arg1)]
        require (arg3 * tokensReleased[address(stor7[uint16(idx)])][address(arg1)] / balanceOf[address(arg1)]) + tokensReleased[address(stor7[uint16(idx)])][address(arg2)] >= tokensReleased[address(stor7[uint16(idx)])][address(arg2)]
        tokensReleased[address(stor7[uint16(idx)])][address(arg2)] += arg3 * tokensReleased[address(stor7[uint16(idx)])][address(arg1)] / balanceOf[address(arg1)]
        require arg3 * tokensReleased[address(stor7[uint16(idx)])][address(arg1)] / balanceOf[address(arg1)] <= tokensReleased[address(stor7[uint16(idx)])][arg1]
        mem[0] = arg1
        mem[32] = sha3(address(trackedTokens[uint16(idx)]), 10)
        tokensReleased[address(stor7[uint16(idx)])][address(arg1)] = tokensReleased[address(stor7[uint16(idx)])][arg1] - (arg3 * tokensReleased[address(stor7[uint16(idx)])][address(arg1)] / balanceOf[address(arg1)])
        s = arg3 * tokensReleased[address(stor7[uint16(idx)])][address(arg1)] / balanceOf[address(arg1)]
        s = address(trackedTokens[uint16(idx)])
        idx = idx + 1
        continue 
    return 1
}

function claimToken(address arg1, address arg2) {
    require 0 < balanceOf[address(arg2)]
    require stor8[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalTokensReleased[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if not totalTokensReleased[address(arg1)] + ext_call.return_data[0]:
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
            require (0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)] + totalTokensReleased[address(arg1)] >= totalTokensReleased[address(arg1)]
            totalTokensReleased[address(arg1)] = (0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)] + totalTokensReleased[address(arg1)]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), (0 / totalSupply) - tokensReleased[address(arg1)][address(arg2)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalTokensReleased[address(arg1)] + ext_call.return_data[0] == balanceOf[address(arg2)]
        require totalSupply
        require tokensReleased[address(arg1)][address(arg2)] <= (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply
        if ((totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)]:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= ((totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)]
            require (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply >= tokensReleased[address(arg1)][address(arg2)]
            tokensReleased[address(arg1)][address(arg2)] = (totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply
            require ((totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)] + totalTokensReleased[address(arg1)] >= totalTokensReleased[address(arg1)]
            totalTokensReleased[address(arg1)] = ((totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)] + totalTokensReleased[address(arg1)]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), ((totalTokensReleased[address(arg1)] * balanceOf[address(arg2)]) + (ext_call.return_data[0] * balanceOf[address(arg2)]) / totalSupply) - tokensReleased[address(arg1)][address(arg2)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function claimTokensFor(address arg1) {
    require 0 < balanceOf[address(arg1)]
    idx = 0
    while uint16(idx) < trackedTokens.length:
        require 0 < balanceOf[address(arg1)]
        require stor8[address(stor7[uint16(idx)])]
        mem[100] = this.address
        require ext_code.size(address(trackedTokens[uint16(idx)]))
        call address(trackedTokens[uint16(idx)]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require totalTokensReleased[address(stor7[uint16(idx)])] + ext_call.return_data[0] >= ext_call.return_data[0]
        mem[0] = arg1
        mem[32] = 0
        if not totalTokensReleased[address(stor7[uint16(idx)])] + ext_call.return_data[0]:
            require totalSupply
            require tokensReleased[address(stor7[uint16(idx)])][address(arg1)] <= 0 / totalSupply
            if (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)]:
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
                require 0 / totalSupply >= tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
                tokensReleased[address(stor7[uint16(idx)])][address(arg1)] = 0 / totalSupply
                require (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)] + totalTokensReleased[address(stor7[uint16(idx)])] >= totalTokensReleased[address(stor7[uint16(idx)])]
                mem[0] = address(trackedTokens[uint16(idx)])
                mem[32] = 9
                totalTokensReleased[address(stor7[uint16(idx)])] = (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)] + totalTokensReleased[address(stor7[uint16(idx)])]
                mem[100] = arg1
                mem[132] = (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            require (totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalTokensReleased[address(stor7[uint16(idx)])] + ext_call.return_data[0] == balanceOf[address(arg1)]
            require totalSupply
            require tokensReleased[address(stor7[uint16(idx)])][address(arg1)] <= (totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply
            if ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)]:
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
                require (totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply >= tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
                tokensReleased[address(stor7[uint16(idx)])][address(arg1)] = (totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply
                require ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)] + totalTokensReleased[address(stor7[uint16(idx)])] >= totalTokensReleased[address(stor7[uint16(idx)])]
                mem[0] = address(trackedTokens[uint16(idx)])
                mem[32] = 9
                totalTokensReleased[address(stor7[uint16(idx)])] = ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)] + totalTokensReleased[address(stor7[uint16(idx)])]
                mem[100] = arg1
                mem[132] = ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(arg1)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
}

function claimMyTokens() {
    require 0 < balanceOf[address(msg.sender)]
    idx = 0
    while uint16(idx) < trackedTokens.length:
        require 0 < balanceOf[address(msg.sender)]
        require stor8[address(stor7[uint16(idx)])]
        mem[100] = this.address
        require ext_code.size(address(trackedTokens[uint16(idx)]))
        call address(trackedTokens[uint16(idx)]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require totalTokensReleased[address(stor7[uint16(idx)])] + ext_call.return_data[0] >= ext_call.return_data[0]
        mem[0] = msg.sender
        mem[32] = 0
        if not totalTokensReleased[address(stor7[uint16(idx)])] + ext_call.return_data[0]:
            require totalSupply
            require tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] <= 0 / totalSupply
            if (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]:
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]
                require 0 / totalSupply >= tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]
                tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] = 0 / totalSupply
                require (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] + totalTokensReleased[address(stor7[uint16(idx)])] >= totalTokensReleased[address(stor7[uint16(idx)])]
                mem[0] = address(trackedTokens[uint16(idx)])
                mem[32] = 9
                totalTokensReleased[address(stor7[uint16(idx)])] = (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] + totalTokensReleased[address(stor7[uint16(idx)])]
                mem[100] = msg.sender
                mem[132] = (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            require (totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalTokensReleased[address(stor7[uint16(idx)])] + ext_call.return_data[0] == balanceOf[address(msg.sender)]
            require totalSupply
            require tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] <= (totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply
            if ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]:
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]
                require (totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply >= tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]
                tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] = (totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply
                require ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] + totalTokensReleased[address(stor7[uint16(idx)])] >= totalTokensReleased[address(stor7[uint16(idx)])]
                mem[0] = address(trackedTokens[uint16(idx)])
                mem[32] = 9
                totalTokensReleased[address(stor7[uint16(idx)])] = ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)] + totalTokensReleased[address(stor7[uint16(idx)])]
                mem[100] = msg.sender
                mem[132] = ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]
                require ext_code.size(address(trackedTokens[uint16(idx)]))
                call address(trackedTokens[uint16(idx)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((totalTokensReleased[address(stor7[uint16(idx)])] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - tokensReleased[address(stor7[uint16(idx)])][address(msg.sender)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
