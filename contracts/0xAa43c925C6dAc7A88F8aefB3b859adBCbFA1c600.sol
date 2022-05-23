contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
address devWalletAddress;
uint256 weiRaised;

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function devWallet() {
    return devWalletAddress
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateCABoxToken(address arg1) {
    require msg.sender == owner
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenContractUpdated(1);
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    mem[736] = 24000
    mem[768] = 20000
    mem[800] = 16000
    mem[832] = 12000
    mem[864] = 8000
    mem[896] = 426432 * 24 * 3600
    mem[928] = 427320 * 24 * 3600
    mem[960] = 427488 * 24 * 3600
    mem[992] = 427656 * 24 * 3600
    mem[1024] = 427824 * 24 * 3600
    mem[1056] = 427320 * 24 * 3600
    mem[1088] = 427488 * 24 * 3600
    mem[1120] = 427656 * 24 * 3600
    mem[1152] = 427824 * 24 * 3600
    mem[1184] = 427992 * 24 * 3600
    mem[1216] = 500
    mem[1248] = 250
    mem[1280] = 200
    mem[1312] = 150
    mem[1344] = 100
    s = 0
    idx = 0
    s = 24000
    while idx < 5:
        if mem[(32 * idx) + 920 len 8] > block.timestamp:
            s = mem[(32 * idx) + 920 len 8] <= block.timestamp
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        if block.timestamp >= mem[(32 * idx) + 1080 len 8]:
            s = block.timestamp < mem[(32 * idx) + 1080 len 8]
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        require idx < 5
        s = block.timestamp < mem[(32 * idx) + 1080 len 8]
        idx = idx + 1
        s = mem[(32 * idx) + 760 len 8] + (mem[(32 * idx) + 760 len 8] * mem[(32 * idx) + 1216] / 1000)
        continue 
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * s / msg.value == s
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), msg.value * s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, msg.value * s, msg.sender, arg1);
    call walletAddress with:
       value 750 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call devWalletAddress with:
       value 250 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.sender
    require msg.value
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    mem[736] = 24000
    mem[768] = 20000
    mem[800] = 16000
    mem[832] = 12000
    mem[864] = 8000
    mem[896] = 426432 * 24 * 3600
    mem[928] = 427320 * 24 * 3600
    mem[960] = 427488 * 24 * 3600
    mem[992] = 427656 * 24 * 3600
    mem[1024] = 427824 * 24 * 3600
    mem[1056] = 427320 * 24 * 3600
    mem[1088] = 427488 * 24 * 3600
    mem[1120] = 427656 * 24 * 3600
    mem[1152] = 427824 * 24 * 3600
    mem[1184] = 427992 * 24 * 3600
    mem[1216] = 500
    mem[1248] = 250
    mem[1280] = 200
    mem[1312] = 150
    mem[1344] = 100
    s = 0
    idx = 0
    s = 24000
    while idx < 5:
        if mem[(32 * idx) + 920 len 8] > block.timestamp:
            s = mem[(32 * idx) + 920 len 8] <= block.timestamp
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        if block.timestamp >= mem[(32 * idx) + 1080 len 8]:
            s = block.timestamp < mem[(32 * idx) + 1080 len 8]
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        require idx < 5
        s = block.timestamp < mem[(32 * idx) + 1080 len 8]
        idx = idx + 1
        s = mem[(32 * idx) + 760 len 8] + (mem[(32 * idx) + 760 len 8] * mem[(32 * idx) + 1216] / 1000)
        continue 
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * s / msg.value == s
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, msg.value * s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, msg.value * s, msg.sender, msg.sender);
    call walletAddress with:
       value 750 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call devWalletAddress with:
       value 250 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
