contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 tokenVolumeInput;
mapping of uint256 tokenVolumeOutput;
mapping of uint256 gameTokenAmount;
mapping of uint256 gameTokenAllocation;
uint256 freeTokens;
array of address games;
address stor7;
address stor8;
uint32 stor9;
address stor9;
uint8 stor10;
uint256 divRate;
uint256 tier;

function games(uint256 arg1) {
    require arg1 < games.length
    return games[arg1]
}

function gameTokenAmount(address arg1) {
    return gameTokenAmount[arg1]
}

function tier() {
    return tier
}

function whitelistedContract(address arg1) {
    return bool(stor0[arg1])
}

function freeTokens() {
    return freeTokens
}

function gameTokenAllocation(address arg1) {
    return gameTokenAllocation[arg1]
}

function divRate() {
    return uint256(divRate)
}

function tokenVolumeInput(address arg1) {
    return tokenVolumeInput[arg1]
}

function tokenVolumeOutput(address arg1) {
    return tokenVolumeOutput[arg1]
}

function _fallback() payable {
  stop
}

function WithdrawToBankroll() {
    call address(stor9) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function WithdrawAndTransferToBankroll() {
    require ext_code.size(stor8)
    call stor8.withdraw(address arg1) with:
         gas gas_remaining wei
        args address(stor9)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor9) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function setBankroll(address arg1) {
    if address(stor9) != msg.sender:
        require ext_code.size(address(stor9))
        call address(stor9).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    address(stor9) = arg1
}

function gameRequestTokens(address arg1, uint256 arg2) {
    require stor0[msg.sender]
    require arg2 <= gameTokenAmount[msg.sender]
    gameTokenAmount[msg.sender] -= arg2
    tokenVolumeOutput[msg.sender] += arg2
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x9d8cc304: msg.sender, address(arg1), arg2
}

function changeAllocation(int256 arg1) {
    require stor0[msg.sender]
    if arg1 <= 0:
        require -arg1 <= gameTokenAllocation[msg.sender]
        gameTokenAllocation[msg.sender] += arg1
    else:
        require arg1 + gameTokenAllocation[msg.sender] >= gameTokenAllocation[msg.sender]
        require arg1 + gameTokenAllocation[msg.sender] <= gameTokenAmount[msg.sender]
        gameTokenAllocation[msg.sender] += arg1
    require ext_code.size(address(stor9))
    call address(stor9).0x815def1a with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function WithdrawTokensToBankroll(uint256 arg1) {
    if address(stor9) != msg.sender:
        require ext_code.size(address(stor9))
        call address(stor9).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor9), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function contractTokenWithdrawToFreeTokens(address arg1, uint256 arg2) {
    if address(stor9) != msg.sender:
        require ext_code.size(address(stor9))
        call address(stor9).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require stor0[address(arg1)]
    require arg2 <= gameTokenAmount[address(arg1)]
    require gameTokenAmount[address(arg1)] - arg2 > gameTokenAllocation[address(arg1)]
    gameTokenAmount[address(arg1)] -= arg2
    require arg2 + freeTokens >= freeTokens
    freeTokens += arg2
}

function setAllocation(address arg1, uint256 arg2) {
    if address(stor9) != msg.sender:
        require ext_code.size(address(stor9))
        call address(stor9).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require stor0[address(arg1)]
    gameTokenAllocation[address(arg1)] = arg2
    require ext_code.size(address(stor9))
    call address(stor9).0x815def1a with:
         gas gas_remaining wei
        args this.address, arg2 - gameTokenAllocation[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addGame(address arg1, uint256 arg2) {
    if address(stor9) != msg.sender:
        require ext_code.size(address(stor9))
        call address(stor9).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require not stor0[address(arg1)]
    games.length++
    games[games.length] = arg1
    gameTokenAllocation[address(arg1)] = arg2
    if arg2 <= freeTokens:
        freeTokens -= arg2
        gameTokenAmount[address(arg1)] = arg2
        require ext_code.size(arg1)
        call arg1.bankrollExternalUpdateTokens(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uint256(divRate), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor9))
    call address(stor9).0x815def1a with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(arg1)] = 1
}

function zethrBuyIn() {
    if address(stor9) != msg.sender:
        require ext_code.size(address(stor9))
        call address(stor9).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if eth.balance(this.address) >= 10^13:
        require ext_code.size(stor8)
        call stor8.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor8)
        call stor8.buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, uint32(stor9), uint8(stor10), 96, 0, mem[228]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor8)
        call stor8.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function getData(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    if arg1.length != floor32(arg1.length):
        revert with 0, 'bytes32 multiply'
    if not arg1.length:
        revert with 0, 'cannot send empty'
    if 32 == arg1.length:
        mem[ceil32(arg1.length) + 128] = mem[140 len 20]
        return mem[ceil32(arg1.length) + 128], Array(len=arg1.length, data=arg1[all])
    _11 = mem[128]
    mem[ceil32(arg1.length) + 128] = arg1.length - 32
    idx = 0
    while idx < arg1.length - 32 / 32:
        mem[ceil32(arg1.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + arg1.length + 128] = address(_11)
    mem[ceil32(arg1.length) + arg1.length + 160] = 64
    mem[ceil32(arg1.length) + arg1.length + 192] = mem[ceil32(arg1.length) + 128]
    mem[ceil32(arg1.length) + arg1.length + 224 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not mem[ceil32(arg1.length) + 128] % 32:
        return address(_11), 64, mem[ceil32(arg1.length) + arg1.length + 192 len mem[ceil32(arg1.length) + 128] + 32]
    mem[floor32(mem[ceil32(arg1.length) + 128]) + ceil32(arg1.length) + arg1.length + 224] = mem[floor32(mem[ceil32(arg1.length) + 128]) + ceil32(arg1.length) + arg1.length + -(mem[ceil32(arg1.length) + 128] % 32) + 256 len mem[ceil32(arg1.length) + 128] % 32]
    return address(_11), 
           Array(len=mem[ceil32(arg1.length) + 128], data=mem[ceil32(arg1.length) + arg1.length + 224 len floor32(mem[ceil32(arg1.length) + 128]) + 32])
}

function removeGame(address arg1) {
    if address(stor9) != msg.sender:
        require ext_code.size(address(stor9))
        call address(stor9).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require stor0[address(arg1)]
    idx = 0
    while idx < games.length:
        mem[0] = 6
        if games[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < games.length
        games[idx] = 0
        if idx != games.length - 1:
            require games.length - 1 < games.length
            require idx < games.length
            games[idx] = games[games.length]
        games.length--
        if games.length > games.length - 1:
            idx = games.length + sha3(6) - 1
            while sha3(6) + games.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require gameTokenAmount[address(arg1)] + freeTokens >= freeTokens
        freeTokens += gameTokenAmount[address(arg1)]
        gameTokenAmount[address(arg1)] = 0
        require ext_code.size(arg1)
        call arg1.bankrollExternalUpdateTokens(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uint256(divRate), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0[address(arg1)] = 0
        require ext_code.size(address(stor9))
        call address(stor9).0x815def1a with:
             gas gas_remaining wei
            args this.address, -gameTokenAllocation[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        gameTokenAllocation[address(arg1)] = 0
    require gameTokenAmount[address(arg1)] + freeTokens >= freeTokens
    freeTokens += gameTokenAmount[address(arg1)]
    gameTokenAmount[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.bankrollExternalUpdateTokens(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint256(divRate), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(arg1)] = 0
    require ext_code.size(address(stor9))
    call address(stor9).0x815def1a with:
         gas gas_remaining wei
        args this.address, -gameTokenAllocation[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    gameTokenAllocation[address(arg1)] = 0
}

function allocateTokens() {
    if address(stor9) != msg.sender:
        require ext_code.size(address(stor9))
        call address(stor9).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.myDividends(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor8)
        call stor8.withdraw(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) >= 10^13:
        if address(stor9) != msg.sender:
            require ext_code.size(address(stor9))
            call address(stor9).0x2f54bf6e with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        if eth.balance(this.address) >= 10^13:
            require ext_code.size(stor8)
            call stor8.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(stor9), uint8(stor10), 96, 0, mem[228]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    idx = 0
    s = 0
    t = 0
    u = 0
    v = 0
    while idx < games.length:
        mem[0] = games[idx]
        mem[32] = 4
        if gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]] > 0:
            mem[0] = games[idx]
            mem[32] = 3
            gameTokenAmount[stor6[idx]] = gameTokenAllocation[stor6[idx]]
            mem[96] = 0xef4ef10300000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(divRate)
            mem[132] = gameTokenAllocation[stor6[idx]]
            require ext_code.size(games[idx])
            call games[idx].bankrollExternalUpdateTokens(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uint256(divRate), gameTokenAllocation[stor6[idx]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            freeTokens = gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]] + freeTokens
        idx = idx + 1
        s = gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]]
        t = gameTokenAllocation[stor6[idx]]
        u = gameTokenAmount[stor6[idx]]
        v = games[idx]
        continue 
    idx = 0
    w = s
    w = t
    w = u
    w = v
    while idx < games.length:
        mem[0] = games[idx]
        mem[32] = 4
        if gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]] < 0:
            if freeTokens < -gameTokenAmount[stor6[idx]] + gameTokenAllocation[stor6[idx]]:
                mem[96] = games[idx]
                mem[128] = -gameTokenAmount[stor6[idx]] + gameTokenAllocation[stor6[idx]] - freeTokens
                emit 0xaead6eee: games[idx], -gameTokenAmount[stor6[idx]] + gameTokenAllocation[stor6[idx]] - freeTokens
            else:
                freeTokens = freeTokens + gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]]
                mem[0] = games[idx]
                mem[32] = 3
                gameTokenAmount[stor6[idx]] = gameTokenAllocation[stor6[idx]]
                mem[96] = 0xef4ef10300000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(divRate)
                mem[132] = gameTokenAllocation[stor6[idx]]
                require ext_code.size(games[idx])
                call games[idx].bankrollExternalUpdateTokens(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uint256(divRate), gameTokenAllocation[stor6[idx]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        w = gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]]
        w = gameTokenAllocation[stor6[idx]]
        w = gameTokenAmount[stor6[idx]]
        w = games[idx]
        continue 
}

function dumpFreeTokens(address arg1) {
    if address(stor9) != msg.sender:
        require ext_code.size(address(stor9))
        call address(stor9).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if address(stor9) != msg.sender:
            require ext_code.size(address(stor9))
            call address(stor9).0x2f54bf6e with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.myDividends(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor8)
        call stor8.withdraw(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) >= 10^13:
        if address(stor9) != msg.sender:
            require ext_code.size(address(stor9))
            call address(stor9).0x2f54bf6e with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        if eth.balance(this.address) >= 10^13:
            require ext_code.size(stor8)
            call stor8.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(stor9), uint8(stor10), 96, 0, mem[228]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    idx = 0
    s = 0
    t = 0
    u = 0
    v = 0
    while idx < games.length:
        mem[0] = games[idx]
        mem[32] = 4
        if gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]] > 0:
            mem[0] = games[idx]
            mem[32] = 3
            gameTokenAmount[stor6[idx]] = gameTokenAllocation[stor6[idx]]
            mem[96] = 0xef4ef10300000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(divRate)
            mem[132] = gameTokenAllocation[stor6[idx]]
            require ext_code.size(games[idx])
            call games[idx].bankrollExternalUpdateTokens(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uint256(divRate), gameTokenAllocation[stor6[idx]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            freeTokens = gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]] + freeTokens
        idx = idx + 1
        s = gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]]
        t = gameTokenAllocation[stor6[idx]]
        u = gameTokenAmount[stor6[idx]]
        v = games[idx]
        continue 
    idx = 0
    w = s
    w = t
    w = u
    w = v
    while idx < games.length:
        mem[0] = games[idx]
        mem[32] = 4
        if gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]] < 0:
            if freeTokens < -gameTokenAmount[stor6[idx]] + gameTokenAllocation[stor6[idx]]:
                mem[96] = games[idx]
                mem[128] = -gameTokenAmount[stor6[idx]] + gameTokenAllocation[stor6[idx]] - freeTokens
                emit 0xaead6eee: games[idx], -gameTokenAmount[stor6[idx]] + gameTokenAllocation[stor6[idx]] - freeTokens
            else:
                freeTokens = freeTokens + gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]]
                mem[0] = games[idx]
                mem[32] = 3
                gameTokenAmount[stor6[idx]] = gameTokenAllocation[stor6[idx]]
                mem[96] = 0xef4ef10300000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(divRate)
                mem[132] = gameTokenAllocation[stor6[idx]]
                require ext_code.size(games[idx])
                call games[idx].bankrollExternalUpdateTokens(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uint256(divRate), gameTokenAllocation[stor6[idx]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        w = gameTokenAmount[stor6[idx]] - gameTokenAllocation[stor6[idx]]
        w = gameTokenAllocation[stor6[idx]]
        w = gameTokenAmount[stor6[idx]]
        w = games[idx]
        continue 
    if freeTokens < 10^18:
        return 0
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), freeTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    freeTokens = 0
    return freeTokens
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    if stor7 != msg.sender:
        revert with 0, 'Only Zethr can call this'
    mem[ceil32(arg3.length) + 132] = arg1
    require ext_code.size(stor8)
    call stor8.getUserAverageDividendRate(address arg1) with:
         gas gas_remaining wei
        args arg1
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0 len 24] >= 30:
        if tier != 6:
            revert with 0, 'Should send to right tier contract'
        if arg3.length != floor32(arg3.length):
            revert with 0, 'bytes32 multiply'
        if not arg3.length:
            revert with 0, 'cannot send empty'
        if 32 == arg3.length:
            _48 = mem[128]
            if ext_code.size(mem[128]) <= 0:
                revert with 0, 'Target address should be a contract'
            if not stor0[mem[140 len 20]]:
                revert with 0, 'Target should be whitelisted'
            require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
            gameTokenAmount[address(mem[128])] += arg2
            require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
            tokenVolumeInput[address(mem[128])] += arg2
            require ext_code.size(address(_48))
            call address(_48).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xa78fd207: address(_48), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
        else:
            _45 = mem[128]
            mem[64] = ceil32(arg3.length) + arg3.length + 128
            mem[ceil32(arg3.length) + 128] = arg3.length - 32
            idx = 0
            while idx < arg3.length - 32 / 32:
                mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                idx = idx + 1
                continue 
            if ext_code.size(_45) <= 0:
                revert with 0, 'Target address should be a contract'
            if not stor0[address(_45)]:
                revert with 0, 'Target should be whitelisted'
            require arg2 + gameTokenAmount[address(_45)] >= gameTokenAmount[address(_45)]
            gameTokenAmount[address(_45)] += arg2
            require arg2 + tokenVolumeInput[address(_45)] >= tokenVolumeInput[address(_45)]
            tokenVolumeInput[address(_45)] += arg2
            mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + arg3.length + 132] = arg1
            mem[ceil32(arg3.length) + arg3.length + 164] = arg2
            mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
            mem[ceil32(arg3.length) + arg3.length + 228] = 128
            mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
            mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            if not mem[ceil32(arg3.length) + 128] % 32:
                require ext_code.size(address(_45))
                call address(_45).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
            else:
                mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                require ext_code.size(address(_45))
                call address(_45).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg3.length) + arg3.length + 128] = address(_45)
            mem[ceil32(arg3.length) + arg3.length + 160] = arg1
            mem[ceil32(arg3.length) + arg3.length + 192] = arg2
            mem[ceil32(arg3.length) + arg3.length + 224] = 128
            mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
            mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            if not mem[ceil32(arg3.length) + 128] % 32:
                emit 0xa78fd207: address(_45), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
            else:
                mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                emit 0xa78fd207: address(_45), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
    else:
        if ext_call.return_data[0 len 24] >= 25:
            if tier != 5:
                revert with 0, 'Should send to right tier contract'
            if arg3.length != floor32(arg3.length):
                revert with 0, 'bytes32 multiply'
            if not arg3.length:
                revert with 0, 'cannot send empty'
            if 32 == arg3.length:
                _63 = mem[128]
                if ext_code.size(mem[128]) <= 0:
                    revert with 0, 'Target address should be a contract'
                if not stor0[mem[140 len 20]]:
                    revert with 0, 'Target should be whitelisted'
                require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                gameTokenAmount[address(mem[128])] += arg2
                require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                tokenVolumeInput[address(mem[128])] += arg2
                require ext_code.size(address(_63))
                call address(_63).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xa78fd207: address(_63), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
            else:
                _60 = mem[128]
                mem[64] = ceil32(arg3.length) + arg3.length + 128
                mem[ceil32(arg3.length) + 128] = arg3.length - 32
                idx = 0
                while idx < arg3.length - 32 / 32:
                    mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                    idx = idx + 1
                    continue 
                if ext_code.size(_60) <= 0:
                    revert with 0, 'Target address should be a contract'
                if not stor0[address(_60)]:
                    revert with 0, 'Target should be whitelisted'
                require arg2 + gameTokenAmount[address(_60)] >= gameTokenAmount[address(_60)]
                gameTokenAmount[address(_60)] += arg2
                require arg2 + tokenVolumeInput[address(_60)] >= tokenVolumeInput[address(_60)]
                tokenVolumeInput[address(_60)] += arg2
                mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                mem[ceil32(arg3.length) + arg3.length + 228] = 128
                mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                if not mem[ceil32(arg3.length) + 128] % 32:
                    require ext_code.size(address(_60))
                    call address(_60).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                else:
                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                    require ext_code.size(address(_60))
                    call address(_60).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg3.length) + arg3.length + 128] = address(_60)
                mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                mem[ceil32(arg3.length) + arg3.length + 224] = 128
                mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                if not mem[ceil32(arg3.length) + 128] % 32:
                    emit 0xa78fd207: address(_60), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                else:
                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                    emit 0xa78fd207: address(_60), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
        else:
            if ext_call.return_data[0 len 24] >= 20:
                if tier != 4:
                    revert with 0, 'Should send to right tier contract'
                if arg3.length != floor32(arg3.length):
                    revert with 0, 'bytes32 multiply'
                if not arg3.length:
                    revert with 0, 'cannot send empty'
                if 32 == arg3.length:
                    _76 = mem[128]
                    if ext_code.size(mem[128]) <= 0:
                        revert with 0, 'Target address should be a contract'
                    if not stor0[mem[140 len 20]]:
                        revert with 0, 'Target should be whitelisted'
                    require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                    gameTokenAmount[address(mem[128])] += arg2
                    require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                    tokenVolumeInput[address(mem[128])] += arg2
                    require ext_code.size(address(_76))
                    call address(_76).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xa78fd207: address(_76), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                else:
                    _73 = mem[128]
                    mem[64] = ceil32(arg3.length) + arg3.length + 128
                    mem[ceil32(arg3.length) + 128] = arg3.length - 32
                    idx = 0
                    while idx < arg3.length - 32 / 32:
                        mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                        idx = idx + 1
                        continue 
                    if ext_code.size(_73) <= 0:
                        revert with 0, 'Target address should be a contract'
                    if not stor0[address(_73)]:
                        revert with 0, 'Target should be whitelisted'
                    require arg2 + gameTokenAmount[address(_73)] >= gameTokenAmount[address(_73)]
                    gameTokenAmount[address(_73)] += arg2
                    require arg2 + tokenVolumeInput[address(_73)] >= tokenVolumeInput[address(_73)]
                    tokenVolumeInput[address(_73)] += arg2
                    mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                    mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                    mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                    mem[ceil32(arg3.length) + arg3.length + 228] = 128
                    mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                    mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    if not mem[ceil32(arg3.length) + 128] % 32:
                        require ext_code.size(address(_73))
                        call address(_73).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                    else:
                        mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                        require ext_code.size(address(_73))
                        call address(_73).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg3.length) + arg3.length + 128] = address(_73)
                    mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                    mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                    mem[ceil32(arg3.length) + arg3.length + 224] = 128
                    mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                    mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    if not mem[ceil32(arg3.length) + 128] % 32:
                        emit 0xa78fd207: address(_73), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                    else:
                        mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                        emit 0xa78fd207: address(_73), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
            else:
                if ext_call.return_data[0 len 24] >= 15:
                    if tier != 3:
                        revert with 0, 'Should send to right tier contract'
                    if arg3.length != floor32(arg3.length):
                        revert with 0, 'bytes32 multiply'
                    if not arg3.length:
                        revert with 0, 'cannot send empty'
                    if 32 == arg3.length:
                        _89 = mem[128]
                        if ext_code.size(mem[128]) <= 0:
                            revert with 0, 'Target address should be a contract'
                        if not stor0[mem[140 len 20]]:
                            revert with 0, 'Target should be whitelisted'
                        require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                        gameTokenAmount[address(mem[128])] += arg2
                        require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                        tokenVolumeInput[address(mem[128])] += arg2
                        require ext_code.size(address(_89))
                        call address(_89).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xa78fd207: address(_89), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                    else:
                        _86 = mem[128]
                        mem[64] = ceil32(arg3.length) + arg3.length + 128
                        mem[ceil32(arg3.length) + 128] = arg3.length - 32
                        idx = 0
                        while idx < arg3.length - 32 / 32:
                            mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                            idx = idx + 1
                            continue 
                        if ext_code.size(_86) <= 0:
                            revert with 0, 'Target address should be a contract'
                        if not stor0[address(_86)]:
                            revert with 0, 'Target should be whitelisted'
                        require arg2 + gameTokenAmount[address(_86)] >= gameTokenAmount[address(_86)]
                        gameTokenAmount[address(_86)] += arg2
                        require arg2 + tokenVolumeInput[address(_86)] >= tokenVolumeInput[address(_86)]
                        tokenVolumeInput[address(_86)] += arg2
                        mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                        mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                        mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                        mem[ceil32(arg3.length) + arg3.length + 228] = 128
                        mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                        mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                        if not mem[ceil32(arg3.length) + 128] % 32:
                            require ext_code.size(address(_86))
                            call address(_86).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                        else:
                            mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                            require ext_code.size(address(_86))
                            call address(_86).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg3.length) + arg3.length + 128] = address(_86)
                        mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                        mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                        mem[ceil32(arg3.length) + arg3.length + 224] = 128
                        mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                        mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                        if not mem[ceil32(arg3.length) + 128] % 32:
                            emit 0xa78fd207: address(_86), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                        else:
                            mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                            emit 0xa78fd207: address(_86), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                else:
                    if ext_call.return_data[0 len 24] >= 10:
                        if tier != 2:
                            revert with 0, 'Should send to right tier contract'
                        if arg3.length != floor32(arg3.length):
                            revert with 0, 'bytes32 multiply'
                        if not arg3.length:
                            revert with 0, 'cannot send empty'
                        if 32 == arg3.length:
                            _101 = mem[128]
                            if ext_code.size(mem[128]) <= 0:
                                revert with 0, 'Target address should be a contract'
                            if not stor0[mem[140 len 20]]:
                                revert with 0, 'Target should be whitelisted'
                            require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                            gameTokenAmount[address(mem[128])] += arg2
                            require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                            tokenVolumeInput[address(mem[128])] += arg2
                            require ext_code.size(address(_101))
                            call address(_101).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xa78fd207: address(_101), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                        else:
                            _98 = mem[128]
                            mem[64] = ceil32(arg3.length) + arg3.length + 128
                            mem[ceil32(arg3.length) + 128] = arg3.length - 32
                            idx = 0
                            while idx < arg3.length - 32 / 32:
                                mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                                idx = idx + 1
                                continue 
                            if ext_code.size(_98) <= 0:
                                revert with 0, 'Target address should be a contract'
                            if not stor0[address(_98)]:
                                revert with 0, 'Target should be whitelisted'
                            require arg2 + gameTokenAmount[address(_98)] >= gameTokenAmount[address(_98)]
                            gameTokenAmount[address(_98)] += arg2
                            require arg2 + tokenVolumeInput[address(_98)] >= tokenVolumeInput[address(_98)]
                            tokenVolumeInput[address(_98)] += arg2
                            mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                            mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                            mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                            mem[ceil32(arg3.length) + arg3.length + 228] = 128
                            mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                            mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                            if not mem[ceil32(arg3.length) + 128] % 32:
                                require ext_code.size(address(_98))
                                call address(_98).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                            else:
                                mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                                require ext_code.size(address(_98))
                                call address(_98).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(arg3.length) + arg3.length + 128] = address(_98)
                            mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                            mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                            mem[ceil32(arg3.length) + arg3.length + 224] = 128
                            mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                            mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                            if not mem[ceil32(arg3.length) + 128] % 32:
                                emit 0xa78fd207: address(_98), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                            else:
                                mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                                emit 0xa78fd207: address(_98), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                    else:
                        if ext_call.return_data[0 len 24] >= 5:
                            if tier != 1:
                                revert with 0, 'Should send to right tier contract'
                            if arg3.length != floor32(arg3.length):
                                revert with 0, 'bytes32 multiply'
                            if not arg3.length:
                                revert with 0, 'cannot send empty'
                            if 32 == arg3.length:
                                _110 = mem[128]
                                if ext_code.size(mem[128]) <= 0:
                                    revert with 0, 'Target address should be a contract'
                                if not stor0[mem[140 len 20]]:
                                    revert with 0, 'Target should be whitelisted'
                                require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                                gameTokenAmount[address(mem[128])] += arg2
                                require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                                tokenVolumeInput[address(mem[128])] += arg2
                                require ext_code.size(address(_110))
                                call address(_110).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xa78fd207: address(_110), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                            else:
                                _107 = mem[128]
                                mem[64] = ceil32(arg3.length) + arg3.length + 128
                                mem[ceil32(arg3.length) + 128] = arg3.length - 32
                                idx = 0
                                while idx < arg3.length - 32 / 32:
                                    mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                                    idx = idx + 1
                                    continue 
                                if ext_code.size(_107) <= 0:
                                    revert with 0, 'Target address should be a contract'
                                if not stor0[address(_107)]:
                                    revert with 0, 'Target should be whitelisted'
                                require arg2 + gameTokenAmount[address(_107)] >= gameTokenAmount[address(_107)]
                                gameTokenAmount[address(_107)] += arg2
                                require arg2 + tokenVolumeInput[address(_107)] >= tokenVolumeInput[address(_107)]
                                tokenVolumeInput[address(_107)] += arg2
                                mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                                mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                                mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                                mem[ceil32(arg3.length) + arg3.length + 228] = 128
                                mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                                mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                if not mem[ceil32(arg3.length) + 128] % 32:
                                    require ext_code.size(address(_107))
                                    call address(_107).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                                else:
                                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                                    require ext_code.size(address(_107))
                                    call address(_107).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(arg3.length) + arg3.length + 128] = address(_107)
                                mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                                mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                                mem[ceil32(arg3.length) + arg3.length + 224] = 128
                                mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                                mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                if not mem[ceil32(arg3.length) + 128] % 32:
                                    emit 0xa78fd207: address(_107), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                                else:
                                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                                    emit 0xa78fd207: address(_107), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                        else:
                            require ext_call.return_data[0 len 24] >= 2
                            if tier != 0:
                                revert with 0, 'Should send to right tier contract'
                            if arg3.length != floor32(arg3.length):
                                revert with 0, 'bytes32 multiply'
                            if not arg3.length:
                                revert with 0, 'cannot send empty'
                            if 32 == arg3.length:
                                _119 = mem[128]
                                if ext_code.size(mem[128]) <= 0:
                                    revert with 0, 'Target address should be a contract'
                                if not stor0[mem[140 len 20]]:
                                    revert with 0, 'Target should be whitelisted'
                                require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                                gameTokenAmount[address(mem[128])] += arg2
                                require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                                tokenVolumeInput[address(mem[128])] += arg2
                                require ext_code.size(address(_119))
                                call address(_119).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xa78fd207: address(_119), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                            else:
                                _116 = mem[128]
                                mem[64] = ceil32(arg3.length) + arg3.length + 128
                                mem[ceil32(arg3.length) + 128] = arg3.length - 32
                                idx = 0
                                while idx < arg3.length - 32 / 32:
                                    mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                                    idx = idx + 1
                                    continue 
                                if ext_code.size(_116) <= 0:
                                    revert with 0, 'Target address should be a contract'
                                if not stor0[address(_116)]:
                                    revert with 0, 'Target should be whitelisted'
                                require arg2 + gameTokenAmount[address(_116)] >= gameTokenAmount[address(_116)]
                                gameTokenAmount[address(_116)] += arg2
                                require arg2 + tokenVolumeInput[address(_116)] >= tokenVolumeInput[address(_116)]
                                tokenVolumeInput[address(_116)] += arg2
                                mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                                mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                                mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                                mem[ceil32(arg3.length) + arg3.length + 228] = 128
                                mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                                mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                if not mem[ceil32(arg3.length) + 128] % 32:
                                    require ext_code.size(address(_116))
                                    call address(_116).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                                else:
                                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                                    require ext_code.size(address(_116))
                                    call address(_116).execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(arg3.length) + arg3.length + 128] = address(_116)
                                mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                                mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                                mem[ceil32(arg3.length) + arg3.length + 224] = 128
                                mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                                mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                if not mem[ceil32(arg3.length) + 128] % 32:
                                    emit 0xa78fd207: address(_116), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                                else:
                                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                                    emit 0xa78fd207: address(_116), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
    return 0
}



}
