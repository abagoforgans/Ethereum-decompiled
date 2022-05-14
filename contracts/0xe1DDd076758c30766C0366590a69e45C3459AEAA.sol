contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 alreadyPayed;
address stor2;
uint256 startTime;
uint256 endTime;
uint256 etherMinimum;
uint256 soldTokens;
uint256 remainingTokens;
array of uint256 oneTokenInFiatWei;
array of uint256 sendThreshold;
mapping of uint256 etherUser;
mapping of uint256 pendingTokenUser;
mapping of uint256 tokenUser;
array of uint256 tokenThreshold;
array of uint256 bonusThreshold;

function sendThreshold(uint256 arg1) {
    require arg1 < sendThreshold.length
    return sendThreshold[arg1]
}

function isKycSigner(address arg1) {
    return bool(stor0[arg1])
}

function endTime() {
    return endTime
}

function pendingTokenUser(address arg1) {
    return pendingTokenUser[arg1]
}

function soldTokens() {
    return soldTokens
}

function etherMinimum() {
    return etherMinimum
}

function startTime() {
    return startTime
}

function etherUser(address arg1) {
    return etherUser[arg1]
}

function alreadyPayed(uint64 arg1) {
    return alreadyPayed[arg1]
}

function tokenThreshold(uint256 arg1) {
    require arg1 < tokenThreshold.length
    return tokenThreshold[arg1]
}

function bonusThreshold(uint256 arg1) {
    require arg1 < bonusThreshold.length
    return bonusThreshold[arg1]
}

function remainingTokens() {
    return remainingTokens
}

function tokenUser(address arg1) {
    return tokenUser[arg1]
}

function oneTokenInFiatWei(uint256 arg1) {
    require arg1 < oneTokenInFiatWei.length
    return oneTokenInFiatWei[arg1]
}

function totalTokens() {
    require soldTokens + remainingTokens >= remainingTokens
    return (soldTokens + remainingTokens)
}

function userBalance(address arg1) {
    return pendingTokenUser[address(arg1)], tokenUser[address(arg1)], etherUser[address(arg1)]
}

function ended() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return not bool(remainingTokens)
}

function started() {
    if block.timestamp > startTime:
        return (block.timestamp > startTime)
    return not bool(remainingTokens)
}

function changeMinimum(uint256 arg1) {
    require ext_code.size(stor2)
    call stor2.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    etherMinimum = arg1
}

function setTime(uint256 arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if arg1:
        startTime = arg1
    if arg2:
        endTime = arg2
}

function price() {
    require 0 < oneTokenInFiatWei.length
    require ext_code.size(stor2)
    call stor2.tokenValueInEther(uint256 arg1) with:
         gas gas_remaining wei
        args oneTokenInFiatWei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (1000000000000000000 * 10^18 / ext_call.return_data[0])
}

function withdraw(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refundEther(address arg1) {
    require ext_code.size(stor2)
    call stor2.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    call arg1 with:
       value etherUser[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    etherUser[address(arg1)] = 0
    pendingTokenUser[address(arg1)] = 0
}

function _fallback() payable {
    require block.timestamp > startTime
    if block.timestamp >= endTime:
        require block.timestamp > endTime
        require tokenUser[address(msg.sender)] > 0
        idx = 0
        s = 0
        while idx < tokenThreshold.length:
            mem[0] = 13
            if soldTokens <= tokenThreshold[idx]:
                idx = idx + 1
                s = s
                continue 
            require idx < bonusThreshold.length
            mem[0] = 14
            idx = idx + 1
            s = bonusThreshold[idx]
            continue 
        require s > 0
        if tokenUser[address(msg.sender)]:
            require tokenUser[address(msg.sender)]
            require s * tokenUser[address(msg.sender)] / tokenUser[address(msg.sender)] == s
        tokenUser[address(msg.sender)] = 0
        require ext_code.size(stor2)
        call stor2.claim(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, s * tokenUser[address(msg.sender)] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require block.timestamp > startTime
        require block.timestamp < endTime
        require msg.value >= etherMinimum
        require 0 < remainingTokens
        require ext_code.size(stor2)
        call stor2.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sendThreshold.length:
            mem[0] = 9
            if msg.value < sendThreshold[idx]:
                idx = idx + 1
                s = s
                continue 
            require idx < oneTokenInFiatWei.length
            mem[0] = 8
            idx = idx + 1
            s = oneTokenInFiatWei[idx]
            continue 
        require s > 0
        require ext_code.size(stor2)
        call stor2.tokenValueInEther(uint256 arg1) with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value:
            require msg.value
            require 10^ext_call.return_data[0] * msg.value / msg.value == 10^ext_call.return_data[0]
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.tokenContract() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= remainingTokens:
            if ext_call.return_data[0] >= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]:
                require 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] <= remainingTokens
                remainingTokens -= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                require 0 <= msg.value
                require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                etherUser[address(msg.sender)] += msg.value
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                emit Buy(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0], s);
            else:
                if (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - ext_call.return_data[0]:
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - ext_call.return_data[0]
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - ext_call.return_data[0] == ext_call.return_data[0]
                require 10^ext_call.return_data[0]
                remainingTokens = 0
                call msg.sender with:
                   value (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                require msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                require ext_call.return_data[0] + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                pendingTokenUser[address(msg.sender)] += ext_call.return_data[0]
                emit Buy(address(msg.sender), msg.value, ext_call.return_data[0], s);
        else:
            if remainingTokens >= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]:
                require 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] <= remainingTokens
                remainingTokens -= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                require 0 <= msg.value
                require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                etherUser[address(msg.sender)] += msg.value
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                emit Buy(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0], s);
            else:
                if (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - remainingTokens:
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - remainingTokens
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - remainingTokens == ext_call.return_data[0]
                require 10^ext_call.return_data[0]
                remainingTokens = 0
                call msg.sender with:
                   value (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                require msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                require remainingTokens + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                pendingTokenUser[address(msg.sender)] += remainingTokens
                emit Buy(address(msg.sender), msg.value, remainingTokens, s);
}

function buyTokensFor(address arg1, uint64 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require msg.sender == arg1
    hash = sha256hash('Eidoo icoengine authorization', 0, arg1, arg2, arg3) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    signer = erecover(hash, arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0[address(signer)]
    require msg.value + alreadyPayed[arg2 << 192] >= alreadyPayed[arg2 << 192]
    require msg.value + alreadyPayed[arg2 << 192] <= arg3
    alreadyPayed[arg2 << 192] += msg.value
    emit KycVerified(address(arg1), arg2 << 192, arg3, address(signer));
    if msg.value > 0:
        require block.timestamp > startTime
        require block.timestamp < endTime
        require msg.value >= etherMinimum
        require 0 < remainingTokens
        require ext_code.size(stor2)
        call stor2.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sendThreshold.length:
            mem[0] = 9
            if msg.value < sendThreshold[idx]:
                idx = idx + 1
                s = s
                continue 
            require idx < oneTokenInFiatWei.length
            mem[0] = 8
            idx = idx + 1
            s = oneTokenInFiatWei[idx]
            continue 
        require s > 0
        require ext_code.size(stor2)
        call stor2.tokenValueInEther(uint256 arg1) with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value:
            require msg.value
            require 10^ext_call.return_data[0] * msg.value / msg.value == 10^ext_call.return_data[0]
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.tokenContract() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= remainingTokens:
            if ext_call.return_data[0] >= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]:
                require 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] <= remainingTokens
                remainingTokens -= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                require 0 <= msg.value
                require msg.value + etherUser[address(arg1)] >= etherUser[address(arg1)]
                etherUser[address(arg1)] += msg.value
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) + pendingTokenUser[address(arg1)] >= pendingTokenUser[address(arg1)]
                pendingTokenUser[address(arg1)] += 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                emit Buy(address(arg1), msg.value, 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0], s);
            else:
                if (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - ext_call.return_data[0]:
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - ext_call.return_data[0]
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - ext_call.return_data[0] == ext_call.return_data[0]
                require 10^ext_call.return_data[0]
                remainingTokens = 0
                call arg1 with:
                   value (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                require msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(arg1)] >= etherUser[address(arg1)]
                etherUser[address(arg1)] = msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(arg1)]
                require ext_call.return_data[0] + pendingTokenUser[address(arg1)] >= pendingTokenUser[address(arg1)]
                pendingTokenUser[address(arg1)] += ext_call.return_data[0]
                emit Buy(address(arg1), msg.value, ext_call.return_data[0], s);
        else:
            if remainingTokens >= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]:
                require 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] <= remainingTokens
                remainingTokens -= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                require 0 <= msg.value
                require msg.value + etherUser[address(arg1)] >= etherUser[address(arg1)]
                etherUser[address(arg1)] += msg.value
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) + pendingTokenUser[address(arg1)] >= pendingTokenUser[address(arg1)]
                pendingTokenUser[address(arg1)] += 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                emit Buy(address(arg1), msg.value, 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0], s);
            else:
                if (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - remainingTokens:
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - remainingTokens
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - remainingTokens == ext_call.return_data[0]
                require 10^ext_call.return_data[0]
                remainingTokens = 0
                call arg1 with:
                   value (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                require msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(arg1)] >= etherUser[address(arg1)]
                etherUser[address(arg1)] = msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(arg1)]
                require remainingTokens + pendingTokenUser[address(arg1)] >= pendingTokenUser[address(arg1)]
                pendingTokenUser[address(arg1)] += remainingTokens
                emit Buy(address(arg1), msg.value, remainingTokens, s);
    require pendingTokenUser[address(arg1)] > 0
    require pendingTokenUser[address(arg1)] + tokenUser[address(arg1)] >= tokenUser[address(arg1)]
    tokenUser[address(arg1)] += pendingTokenUser[address(arg1)]
    require ext_code.size(stor2)
    call stor2.claim(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), pendingTokenUser[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require pendingTokenUser[address(arg1)] + soldTokens >= soldTokens
    soldTokens += pendingTokenUser[address(arg1)]
    pendingTokenUser[address(arg1)] = 0
    require ext_code.size(stor2)
    call stor2.0x521eb273 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(ext_call.return_data[0]) with:
       value etherUser[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    etherUser[address(arg1)] = 0
    return 1
}

function buyTokens(uint64 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    hash = sha256hash('Eidoo icoengine authorization', 0, msg.sender, arg1, arg2) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    signer = erecover(hash, arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0[address(signer)]
    require msg.value + alreadyPayed[arg1 << 192] >= alreadyPayed[arg1 << 192]
    require msg.value + alreadyPayed[arg1 << 192] <= arg2
    alreadyPayed[arg1 << 192] += msg.value
    emit KycVerified(msg.sender, arg1 << 192, arg2, address(signer));
    if msg.value > 0:
        require block.timestamp > startTime
        require block.timestamp < endTime
        require msg.value >= etherMinimum
        require 0 < remainingTokens
        require ext_code.size(stor2)
        call stor2.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sendThreshold.length:
            mem[0] = 9
            if msg.value < sendThreshold[idx]:
                idx = idx + 1
                s = s
                continue 
            require idx < oneTokenInFiatWei.length
            mem[0] = 8
            idx = idx + 1
            s = oneTokenInFiatWei[idx]
            continue 
        require s > 0
        require ext_code.size(stor2)
        call stor2.tokenValueInEther(uint256 arg1) with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value:
            require msg.value
            require 10^ext_call.return_data[0] * msg.value / msg.value == 10^ext_call.return_data[0]
        require ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.tokenContract() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= remainingTokens:
            if ext_call.return_data[0] >= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]:
                require 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] <= remainingTokens
                remainingTokens -= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                require 0 <= msg.value
                require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                etherUser[address(msg.sender)] += msg.value
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                emit Buy(msg.sender, msg.value, 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0], s);
            else:
                if (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - ext_call.return_data[0]:
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - ext_call.return_data[0]
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - ext_call.return_data[0] == ext_call.return_data[0]
                require 10^ext_call.return_data[0]
                remainingTokens = 0
                call msg.sender with:
                   value (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                require msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                require ext_call.return_data[0] + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                pendingTokenUser[address(msg.sender)] += ext_call.return_data[0]
                emit Buy(msg.sender, msg.value, ext_call.return_data[0], s);
        else:
            if remainingTokens >= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]:
                require 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] <= remainingTokens
                remainingTokens -= 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                require 0 <= msg.value
                require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                etherUser[address(msg.sender)] += msg.value
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]
                emit Buy(msg.sender, msg.value, 10^ext_call.return_data[0] * msg.value / ext_call.return_data[0], s);
            else:
                if (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - remainingTokens:
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - remainingTokens
                    require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0]) - remainingTokens == ext_call.return_data[0]
                require 10^ext_call.return_data[0]
                remainingTokens = 0
                call msg.sender with:
                   value (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                require msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / ext_call.return_data[0] * ext_call.return_data[0]) - (remainingTokens * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                require remainingTokens + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                pendingTokenUser[address(msg.sender)] += remainingTokens
                emit Buy(msg.sender, msg.value, remainingTokens, s);
    require pendingTokenUser[address(msg.sender)] > 0
    require pendingTokenUser[address(msg.sender)] + tokenUser[address(msg.sender)] >= tokenUser[address(msg.sender)]
    tokenUser[address(msg.sender)] += pendingTokenUser[address(msg.sender)]
    require ext_code.size(stor2)
    call stor2.claim(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, pendingTokenUser[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require pendingTokenUser[address(msg.sender)] + soldTokens >= soldTokens
    soldTokens += pendingTokenUser[address(msg.sender)]
    pendingTokenUser[address(msg.sender)] = 0
    require ext_code.size(stor2)
    call stor2.0x521eb273 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(ext_call.return_data[0]) with:
       value etherUser[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    etherUser[address(msg.sender)] = 0
    return 1
}



}
