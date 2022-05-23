contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
mapping of uint8 stor7;
mapping of uint256 tokenVolumeInput;
mapping of uint256 tokenVolumeOutput;
mapping of uint256 gameTokenAmount;
mapping of uint256 gameTokenAllocation;
uint256 freeTokens;
array of address games;
address stor14;
address stor15;
uint32 stor16;
address stor16;
uint8 stor17;
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
    return bool(stor7[arg1])
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
    call address(stor16) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function WithdrawAndTransferToBankroll() {
    require ext_code.size(stor15)
    call stor15.withdraw(address arg1) with:
         gas gas_remaining wei
        args address(stor16)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor16) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function setFreeTokens(uint256 arg1) {
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    freeTokens = arg1
}

function setBankroll(address arg1) {
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    address(stor16) = arg1
}

function gameRequestTokens(address arg1, uint256 arg2) {
    require stor7[msg.sender]
    require arg2 <= gameTokenAmount[msg.sender]
    gameTokenAmount[msg.sender] -= arg2
    tokenVolumeOutput[msg.sender] += arg2
    require ext_code.size(stor15)
    call stor15.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x9d8cc304: msg.sender, address(arg1), arg2
}

function changeAllocation(int256 arg1) {
    require stor7[msg.sender]
    if arg1 <= 0:
        require -arg1 <= gameTokenAllocation[msg.sender]
        gameTokenAllocation[msg.sender] += arg1
    else:
        require arg1 + gameTokenAllocation[msg.sender] >= gameTokenAllocation[msg.sender]
        require arg1 + gameTokenAllocation[msg.sender] <= gameTokenAmount[msg.sender]
        gameTokenAllocation[msg.sender] += arg1
    require ext_code.size(address(stor16))
    call address(stor16).0x815def1a with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function WithdrawTokensToBankroll(uint256 arg1) {
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(stor15)
    call stor15.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor16), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function contractTokenWithdrawToFreeTokens(address arg1, uint256 arg2) {
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require stor7[address(arg1)]
    require arg2 <= gameTokenAmount[address(arg1)]
    require gameTokenAmount[address(arg1)] - arg2 > gameTokenAllocation[address(arg1)]
    gameTokenAmount[address(arg1)] -= arg2
    require arg2 + freeTokens >= freeTokens
    freeTokens += arg2
}

function setAllocation(address arg1, uint256 arg2) {
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require stor7[address(arg1)]
    gameTokenAllocation[address(arg1)] = arg2
    require ext_code.size(address(stor16))
    call address(stor16).0x815def1a with:
         gas gas_remaining wei
        args this.address, arg2 - gameTokenAllocation[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addGame(address arg1, uint256 arg2) {
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require not stor7[address(arg1)]
    games.length++
    games[games.length] = arg1
    gameTokenAllocation[address(arg1)] = arg2
    if arg2 <= freeTokens:
        freeTokens -= arg2
        gameTokenAmount[address(arg1)] = arg2
        require ext_code.size(arg1)
        call arg1.0xef4ef103 with:
             gas gas_remaining wei
            args uint256(divRate), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor16))
    call address(stor16).0x815def1a with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7[address(arg1)] = 1
}

function zethrBuyIn() {
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if eth.balance(this.address) >= 10^13:
        require ext_code.size(stor15)
        call stor15.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        call stor15.buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, uint32(stor16), uint8(stor17), 96, 0, mem[228]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        call stor15.0x70a08231 with:
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
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require stor7[address(arg1)]
    idx = 0
    while idx < games.length:
        mem[0] = 13
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
            idx = games.length + sha3(13) - 1
            while sha3(13) + games.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require gameTokenAmount[address(arg1)] + freeTokens >= freeTokens
        freeTokens += gameTokenAmount[address(arg1)]
        gameTokenAmount[address(arg1)] = 0
        require ext_code.size(arg1)
        call arg1.0xef4ef103 with:
             gas gas_remaining wei
            args uint256(divRate), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor7[address(arg1)] = 0
        require ext_code.size(address(stor16))
        call address(stor16).0x815def1a with:
             gas gas_remaining wei
            args this.address, -gameTokenAllocation[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        gameTokenAllocation[address(arg1)] = 0
    require gameTokenAmount[address(arg1)] + freeTokens >= freeTokens
    freeTokens += gameTokenAmount[address(arg1)]
    gameTokenAmount[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0xef4ef103 with:
         gas gas_remaining wei
        args uint256(divRate), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7[address(arg1)] = 0
    require ext_code.size(address(stor16))
    call address(stor16).0x815def1a with:
         gas gas_remaining wei
        args this.address, -gameTokenAllocation[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    gameTokenAllocation[address(arg1)] = 0
}

function allocateTokens() {
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(stor15)
    call stor15.myDividends(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor15)
        call stor15.withdraw(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) >= 10^13:
        if address(stor16) != msg.sender:
            require ext_code.size(address(stor16))
            call address(stor16).0x2f54bf6e with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        if eth.balance(this.address) >= 10^13:
            require ext_code.size(stor15)
            call stor15.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            call stor15.buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(stor16), uint8(stor17), 96, 0, mem[228]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            call stor15.0x70a08231 with:
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
        mem[32] = 11
        if gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]] > 0:
            mem[0] = games[idx]
            mem[32] = 10
            gameTokenAmount[stor13[idx]] = gameTokenAllocation[stor13[idx]]
            mem[96] = 0xef4ef10300000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(divRate)
            mem[132] = gameTokenAllocation[stor13[idx]]
            require ext_code.size(games[idx])
            call games[idx].0xef4ef103 with:
                 gas gas_remaining wei
                args uint256(divRate), gameTokenAllocation[stor13[idx]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            freeTokens = gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]] + freeTokens
        idx = idx + 1
        s = gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]]
        t = gameTokenAllocation[stor13[idx]]
        u = gameTokenAmount[stor13[idx]]
        v = games[idx]
        continue 
    idx = 0
    w = s
    w = t
    w = u
    w = v
    while idx < games.length:
        mem[0] = games[idx]
        mem[32] = 11
        if gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]] < 0:
            if freeTokens < -gameTokenAmount[stor13[idx]] + gameTokenAllocation[stor13[idx]]:
                mem[96] = games[idx]
                mem[128] = -gameTokenAmount[stor13[idx]] + gameTokenAllocation[stor13[idx]] - freeTokens
                emit 0xaead6eee: games[idx], -gameTokenAmount[stor13[idx]] + gameTokenAllocation[stor13[idx]] - freeTokens
            else:
                freeTokens = freeTokens + gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]]
                mem[0] = games[idx]
                mem[32] = 10
                gameTokenAmount[stor13[idx]] = gameTokenAllocation[stor13[idx]]
                mem[96] = 0xef4ef10300000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(divRate)
                mem[132] = gameTokenAllocation[stor13[idx]]
                require ext_code.size(games[idx])
                call games[idx].0xef4ef103 with:
                     gas gas_remaining wei
                    args uint256(divRate), gameTokenAllocation[stor13[idx]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        w = gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]]
        w = gameTokenAllocation[stor13[idx]]
        w = gameTokenAmount[stor13[idx]]
        w = games[idx]
        continue 
}

function dumpFreeTokens(address arg1) {
    if address(stor16) != msg.sender:
        require ext_code.size(address(stor16))
        call address(stor16).0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if address(stor16) != msg.sender:
            require ext_code.size(address(stor16))
            call address(stor16).0x2f54bf6e with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require ext_code.size(stor15)
    call stor15.myDividends(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor15)
        call stor15.withdraw(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) >= 10^13:
        if address(stor16) != msg.sender:
            require ext_code.size(address(stor16))
            call address(stor16).0x2f54bf6e with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        if eth.balance(this.address) >= 10^13:
            require ext_code.size(stor15)
            call stor15.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            call stor15.buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(stor16), uint8(stor17), 96, 0, mem[228]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            call stor15.0x70a08231 with:
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
        mem[32] = 11
        if gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]] > 0:
            mem[0] = games[idx]
            mem[32] = 10
            gameTokenAmount[stor13[idx]] = gameTokenAllocation[stor13[idx]]
            mem[96] = 0xef4ef10300000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(divRate)
            mem[132] = gameTokenAllocation[stor13[idx]]
            require ext_code.size(games[idx])
            call games[idx].0xef4ef103 with:
                 gas gas_remaining wei
                args uint256(divRate), gameTokenAllocation[stor13[idx]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            freeTokens = gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]] + freeTokens
        idx = idx + 1
        s = gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]]
        t = gameTokenAllocation[stor13[idx]]
        u = gameTokenAmount[stor13[idx]]
        v = games[idx]
        continue 
    idx = 0
    w = s
    w = t
    w = u
    w = v
    while idx < games.length:
        mem[0] = games[idx]
        mem[32] = 11
        if gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]] < 0:
            if freeTokens < -gameTokenAmount[stor13[idx]] + gameTokenAllocation[stor13[idx]]:
                mem[96] = games[idx]
                mem[128] = -gameTokenAmount[stor13[idx]] + gameTokenAllocation[stor13[idx]] - freeTokens
                emit 0xaead6eee: games[idx], -gameTokenAmount[stor13[idx]] + gameTokenAllocation[stor13[idx]] - freeTokens
            else:
                freeTokens = freeTokens + gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]]
                mem[0] = games[idx]
                mem[32] = 10
                gameTokenAmount[stor13[idx]] = gameTokenAllocation[stor13[idx]]
                mem[96] = 0xef4ef10300000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(divRate)
                mem[132] = gameTokenAllocation[stor13[idx]]
                require ext_code.size(games[idx])
                call games[idx].0xef4ef103 with:
                     gas gas_remaining wei
                    args uint256(divRate), gameTokenAllocation[stor13[idx]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        w = gameTokenAmount[stor13[idx]] - gameTokenAllocation[stor13[idx]]
        w = gameTokenAllocation[stor13[idx]]
        w = gameTokenAmount[stor13[idx]]
        w = games[idx]
        continue 
    if freeTokens < 10^18:
        return 0
    require ext_code.size(stor15)
    call stor15.0xa9059cbb with:
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
    if stor14 != msg.sender:
        revert with 0, 'Only Zethr can call this'
    mem[ceil32(arg3.length) + 132] = arg1
    require ext_code.size(stor15)
    call stor15.getUserAverageDividendRate(address arg1) with:
         gas gas_remaining wei
        args arg1
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0 len 24] >= 30:
        if tier != 6:
            revert with 0, 'Should send to right tier contract'
        if stor0 == arg1:
            freeTokens += arg2
            return 1
        if stor1 == arg1:
            freeTokens += arg2
            return 1
        if stor2 == arg1:
            freeTokens += arg2
            return 1
        if stor3 == arg1:
            freeTokens += arg2
            return 1
        if stor4 == arg1:
            freeTokens += arg2
            return 1
        if stor5 == arg1:
            freeTokens += arg2
            return 1
        if stor6 == arg1:
            freeTokens += arg2
            return 1
        if arg3.length != floor32(arg3.length):
            revert with 0, 'bytes32 multiply'
        if not arg3.length:
            revert with 0, 'cannot send empty'
        if 32 == arg3.length:
            _136 = mem[128]
            if this.address == mem[140 len 20]:
                freeTokens += arg2
            else:
                if ext_code.size(mem[128]) <= 0:
                    revert with 0, 'Target address should be a contract'
                if not stor7[mem[140 len 20]]:
                    revert with 0, 'Target should be whitelisted'
                require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                gameTokenAmount[address(mem[128])] += arg2
                require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                tokenVolumeInput[address(mem[128])] += arg2
                require ext_code.size(address(_136))
                call address(_136).0x82916381 with:
                     gas gas_remaining wei
                    args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xa78fd207: address(_136), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
        else:
            _133 = mem[128]
            mem[64] = ceil32(arg3.length) + arg3.length + 128
            mem[ceil32(arg3.length) + 128] = arg3.length - 32
            idx = 0
            while idx < arg3.length - 32 / 32:
                mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                idx = idx + 1
                continue 
            if this.address == address(_133):
                freeTokens += arg2
            else:
                if ext_code.size(_133) <= 0:
                    revert with 0, 'Target address should be a contract'
                if not stor7[address(_133)]:
                    revert with 0, 'Target should be whitelisted'
                require arg2 + gameTokenAmount[address(_133)] >= gameTokenAmount[address(_133)]
                gameTokenAmount[address(_133)] += arg2
                require arg2 + tokenVolumeInput[address(_133)] >= tokenVolumeInput[address(_133)]
                tokenVolumeInput[address(_133)] += arg2
                mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                mem[ceil32(arg3.length) + arg3.length + 228] = 128
                mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                if not mem[ceil32(arg3.length) + 128] % 32:
                    require ext_code.size(address(_133))
                    call address(_133).0x82916381 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                else:
                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                    require ext_code.size(address(_133))
                    call address(_133).0x82916381 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg3.length) + arg3.length + 128] = address(_133)
                mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                mem[ceil32(arg3.length) + arg3.length + 224] = 128
                mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                if not mem[ceil32(arg3.length) + 128] % 32:
                    emit 0xa78fd207: address(_133), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                else:
                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                    emit 0xa78fd207: address(_133), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
    else:
        if ext_call.return_data[0 len 24] >= 25:
            if tier != 5:
                revert with 0, 'Should send to right tier contract'
            if stor0 == arg1:
                freeTokens += arg2
                return 1
            if stor1 == arg1:
                freeTokens += arg2
                return 1
            if stor2 == arg1:
                freeTokens += arg2
                return 1
            if stor3 == arg1:
                freeTokens += arg2
                return 1
            if stor4 == arg1:
                freeTokens += arg2
                return 1
            if stor5 == arg1:
                freeTokens += arg2
                return 1
            if stor6 == arg1:
                freeTokens += arg2
                return 1
            if arg3.length != floor32(arg3.length):
                revert with 0, 'bytes32 multiply'
            if not arg3.length:
                revert with 0, 'cannot send empty'
            if 32 == arg3.length:
                _155 = mem[128]
                if this.address == mem[140 len 20]:
                    freeTokens += arg2
                else:
                    if ext_code.size(mem[128]) <= 0:
                        revert with 0, 'Target address should be a contract'
                    if not stor7[mem[140 len 20]]:
                        revert with 0, 'Target should be whitelisted'
                    require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                    gameTokenAmount[address(mem[128])] += arg2
                    require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                    tokenVolumeInput[address(mem[128])] += arg2
                    require ext_code.size(address(_155))
                    call address(_155).0x82916381 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xa78fd207: address(_155), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
            else:
                _152 = mem[128]
                mem[64] = ceil32(arg3.length) + arg3.length + 128
                mem[ceil32(arg3.length) + 128] = arg3.length - 32
                idx = 0
                while idx < arg3.length - 32 / 32:
                    mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                    idx = idx + 1
                    continue 
                if this.address == address(_152):
                    freeTokens += arg2
                else:
                    if ext_code.size(_152) <= 0:
                        revert with 0, 'Target address should be a contract'
                    if not stor7[address(_152)]:
                        revert with 0, 'Target should be whitelisted'
                    require arg2 + gameTokenAmount[address(_152)] >= gameTokenAmount[address(_152)]
                    gameTokenAmount[address(_152)] += arg2
                    require arg2 + tokenVolumeInput[address(_152)] >= tokenVolumeInput[address(_152)]
                    tokenVolumeInput[address(_152)] += arg2
                    mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                    mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                    mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                    mem[ceil32(arg3.length) + arg3.length + 228] = 128
                    mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                    mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    if not mem[ceil32(arg3.length) + 128] % 32:
                        require ext_code.size(address(_152))
                        call address(_152).0x82916381 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                    else:
                        mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                        require ext_code.size(address(_152))
                        call address(_152).0x82916381 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg3.length) + arg3.length + 128] = address(_152)
                    mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                    mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                    mem[ceil32(arg3.length) + arg3.length + 224] = 128
                    mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                    mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    if not mem[ceil32(arg3.length) + 128] % 32:
                        emit 0xa78fd207: address(_152), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                    else:
                        mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                        emit 0xa78fd207: address(_152), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
        else:
            if ext_call.return_data[0 len 24] >= 20:
                if tier != 4:
                    revert with 0, 'Should send to right tier contract'
                if stor0 == arg1:
                    freeTokens += arg2
                    return 1
                if stor1 == arg1:
                    freeTokens += arg2
                    return 1
                if stor2 == arg1:
                    freeTokens += arg2
                    return 1
                if stor3 == arg1:
                    freeTokens += arg2
                    return 1
                if stor4 == arg1:
                    freeTokens += arg2
                    return 1
                if stor5 == arg1:
                    freeTokens += arg2
                    return 1
                if stor6 == arg1:
                    freeTokens += arg2
                    return 1
                if arg3.length != floor32(arg3.length):
                    revert with 0, 'bytes32 multiply'
                if not arg3.length:
                    revert with 0, 'cannot send empty'
                if 32 == arg3.length:
                    _172 = mem[128]
                    if this.address == mem[140 len 20]:
                        freeTokens += arg2
                    else:
                        if ext_code.size(mem[128]) <= 0:
                            revert with 0, 'Target address should be a contract'
                        if not stor7[mem[140 len 20]]:
                            revert with 0, 'Target should be whitelisted'
                        require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                        gameTokenAmount[address(mem[128])] += arg2
                        require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                        tokenVolumeInput[address(mem[128])] += arg2
                        require ext_code.size(address(_172))
                        call address(_172).0x82916381 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xa78fd207: address(_172), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                else:
                    _169 = mem[128]
                    mem[64] = ceil32(arg3.length) + arg3.length + 128
                    mem[ceil32(arg3.length) + 128] = arg3.length - 32
                    idx = 0
                    while idx < arg3.length - 32 / 32:
                        mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                        idx = idx + 1
                        continue 
                    if this.address == address(_169):
                        freeTokens += arg2
                    else:
                        if ext_code.size(_169) <= 0:
                            revert with 0, 'Target address should be a contract'
                        if not stor7[address(_169)]:
                            revert with 0, 'Target should be whitelisted'
                        require arg2 + gameTokenAmount[address(_169)] >= gameTokenAmount[address(_169)]
                        gameTokenAmount[address(_169)] += arg2
                        require arg2 + tokenVolumeInput[address(_169)] >= tokenVolumeInput[address(_169)]
                        tokenVolumeInput[address(_169)] += arg2
                        mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                        mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                        mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                        mem[ceil32(arg3.length) + arg3.length + 228] = 128
                        mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                        mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                        if not mem[ceil32(arg3.length) + 128] % 32:
                            require ext_code.size(address(_169))
                            call address(_169).0x82916381 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                        else:
                            mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                            require ext_code.size(address(_169))
                            call address(_169).0x82916381 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg3.length) + arg3.length + 128] = address(_169)
                        mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                        mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                        mem[ceil32(arg3.length) + arg3.length + 224] = 128
                        mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                        mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                        if not mem[ceil32(arg3.length) + 128] % 32:
                            emit 0xa78fd207: address(_169), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                        else:
                            mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                            emit 0xa78fd207: address(_169), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
            else:
                if ext_call.return_data[0 len 24] >= 15:
                    if tier != 3:
                        revert with 0, 'Should send to right tier contract'
                    if stor0 == arg1:
                        freeTokens += arg2
                        return 1
                    if stor1 == arg1:
                        freeTokens += arg2
                        return 1
                    if stor2 == arg1:
                        freeTokens += arg2
                        return 1
                    if stor3 == arg1:
                        freeTokens += arg2
                        return 1
                    if stor4 == arg1:
                        freeTokens += arg2
                        return 1
                    if stor5 == arg1:
                        freeTokens += arg2
                        return 1
                    if stor6 == arg1:
                        freeTokens += arg2
                        return 1
                    if arg3.length != floor32(arg3.length):
                        revert with 0, 'bytes32 multiply'
                    if not arg3.length:
                        revert with 0, 'cannot send empty'
                    if 32 == arg3.length:
                        _187 = mem[128]
                        if this.address == mem[140 len 20]:
                            freeTokens += arg2
                        else:
                            if ext_code.size(mem[128]) <= 0:
                                revert with 0, 'Target address should be a contract'
                            if not stor7[mem[140 len 20]]:
                                revert with 0, 'Target should be whitelisted'
                            require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                            gameTokenAmount[address(mem[128])] += arg2
                            require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                            tokenVolumeInput[address(mem[128])] += arg2
                            require ext_code.size(address(_187))
                            call address(_187).0x82916381 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xa78fd207: address(_187), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                    else:
                        _184 = mem[128]
                        mem[64] = ceil32(arg3.length) + arg3.length + 128
                        mem[ceil32(arg3.length) + 128] = arg3.length - 32
                        idx = 0
                        while idx < arg3.length - 32 / 32:
                            mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                            idx = idx + 1
                            continue 
                        if this.address == address(_184):
                            freeTokens += arg2
                        else:
                            if ext_code.size(_184) <= 0:
                                revert with 0, 'Target address should be a contract'
                            if not stor7[address(_184)]:
                                revert with 0, 'Target should be whitelisted'
                            require arg2 + gameTokenAmount[address(_184)] >= gameTokenAmount[address(_184)]
                            gameTokenAmount[address(_184)] += arg2
                            require arg2 + tokenVolumeInput[address(_184)] >= tokenVolumeInput[address(_184)]
                            tokenVolumeInput[address(_184)] += arg2
                            mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                            mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                            mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                            mem[ceil32(arg3.length) + arg3.length + 228] = 128
                            mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                            mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                            if not mem[ceil32(arg3.length) + 128] % 32:
                                require ext_code.size(address(_184))
                                call address(_184).0x82916381 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                            else:
                                mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                                require ext_code.size(address(_184))
                                call address(_184).0x82916381 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(arg3.length) + arg3.length + 128] = address(_184)
                            mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                            mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                            mem[ceil32(arg3.length) + arg3.length + 224] = 128
                            mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                            mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                            if not mem[ceil32(arg3.length) + 128] % 32:
                                emit 0xa78fd207: address(_184), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                            else:
                                mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                                emit 0xa78fd207: address(_184), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                else:
                    if ext_call.return_data[0 len 24] >= 10:
                        if tier != 2:
                            revert with 0, 'Should send to right tier contract'
                        if stor0 == arg1:
                            freeTokens += arg2
                            return 1
                        if stor1 == arg1:
                            freeTokens += arg2
                            return 1
                        if stor2 == arg1:
                            freeTokens += arg2
                            return 1
                        if stor3 == arg1:
                            freeTokens += arg2
                            return 1
                        if stor4 == arg1:
                            freeTokens += arg2
                            return 1
                        if stor5 == arg1:
                            freeTokens += arg2
                            return 1
                        if stor6 == arg1:
                            freeTokens += arg2
                            return 1
                        if arg3.length != floor32(arg3.length):
                            revert with 0, 'bytes32 multiply'
                        if not arg3.length:
                            revert with 0, 'cannot send empty'
                        if 32 == arg3.length:
                            _199 = mem[128]
                            if this.address == mem[140 len 20]:
                                freeTokens += arg2
                            else:
                                if ext_code.size(mem[128]) <= 0:
                                    revert with 0, 'Target address should be a contract'
                                if not stor7[mem[140 len 20]]:
                                    revert with 0, 'Target should be whitelisted'
                                require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                                gameTokenAmount[address(mem[128])] += arg2
                                require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                                tokenVolumeInput[address(mem[128])] += arg2
                                require ext_code.size(address(_199))
                                call address(_199).0x82916381 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xa78fd207: address(_199), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                        else:
                            _196 = mem[128]
                            mem[64] = ceil32(arg3.length) + arg3.length + 128
                            mem[ceil32(arg3.length) + 128] = arg3.length - 32
                            idx = 0
                            while idx < arg3.length - 32 / 32:
                                mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                                idx = idx + 1
                                continue 
                            if this.address == address(_196):
                                freeTokens += arg2
                            else:
                                if ext_code.size(_196) <= 0:
                                    revert with 0, 'Target address should be a contract'
                                if not stor7[address(_196)]:
                                    revert with 0, 'Target should be whitelisted'
                                require arg2 + gameTokenAmount[address(_196)] >= gameTokenAmount[address(_196)]
                                gameTokenAmount[address(_196)] += arg2
                                require arg2 + tokenVolumeInput[address(_196)] >= tokenVolumeInput[address(_196)]
                                tokenVolumeInput[address(_196)] += arg2
                                mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                                mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                                mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                                mem[ceil32(arg3.length) + arg3.length + 228] = 128
                                mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                                mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                if not mem[ceil32(arg3.length) + 128] % 32:
                                    require ext_code.size(address(_196))
                                    call address(_196).0x82916381 with:
                                         gas gas_remaining wei
                                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                                else:
                                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                                    require ext_code.size(address(_196))
                                    call address(_196).0x82916381 with:
                                         gas gas_remaining wei
                                        args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(arg3.length) + arg3.length + 128] = address(_196)
                                mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                                mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                                mem[ceil32(arg3.length) + arg3.length + 224] = 128
                                mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                                mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                if not mem[ceil32(arg3.length) + 128] % 32:
                                    emit 0xa78fd207: address(_196), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                                else:
                                    mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                                    emit 0xa78fd207: address(_196), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                    else:
                        if ext_call.return_data[0 len 24] >= 5:
                            if tier != 1:
                                revert with 0, 'Should send to right tier contract'
                            if stor0 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor1 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor2 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor3 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor4 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor5 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor6 == arg1:
                                freeTokens += arg2
                                return 1
                            if arg3.length != floor32(arg3.length):
                                revert with 0, 'bytes32 multiply'
                            if not arg3.length:
                                revert with 0, 'cannot send empty'
                            if 32 == arg3.length:
                                _208 = mem[128]
                                if this.address == mem[140 len 20]:
                                    freeTokens += arg2
                                else:
                                    if ext_code.size(mem[128]) <= 0:
                                        revert with 0, 'Target address should be a contract'
                                    if not stor7[mem[140 len 20]]:
                                        revert with 0, 'Target should be whitelisted'
                                    require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                                    gameTokenAmount[address(mem[128])] += arg2
                                    require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                                    tokenVolumeInput[address(mem[128])] += arg2
                                    require ext_code.size(address(_208))
                                    call address(_208).0x82916381 with:
                                         gas gas_remaining wei
                                        args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit 0xa78fd207: address(_208), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                            else:
                                _205 = mem[128]
                                mem[64] = ceil32(arg3.length) + arg3.length + 128
                                mem[ceil32(arg3.length) + 128] = arg3.length - 32
                                idx = 0
                                while idx < arg3.length - 32 / 32:
                                    mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(_205):
                                    freeTokens += arg2
                                else:
                                    if ext_code.size(_205) <= 0:
                                        revert with 0, 'Target address should be a contract'
                                    if not stor7[address(_205)]:
                                        revert with 0, 'Target should be whitelisted'
                                    require arg2 + gameTokenAmount[address(_205)] >= gameTokenAmount[address(_205)]
                                    gameTokenAmount[address(_205)] += arg2
                                    require arg2 + tokenVolumeInput[address(_205)] >= tokenVolumeInput[address(_205)]
                                    tokenVolumeInput[address(_205)] += arg2
                                    mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                                    mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                                    mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                                    mem[ceil32(arg3.length) + arg3.length + 228] = 128
                                    mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                                    mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                    if not mem[ceil32(arg3.length) + 128] % 32:
                                        require ext_code.size(address(_205))
                                        call address(_205).0x82916381 with:
                                             gas gas_remaining wei
                                            args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                                        require ext_code.size(address(_205))
                                        call address(_205).0x82916381 with:
                                             gas gas_remaining wei
                                            args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(arg3.length) + arg3.length + 128] = address(_205)
                                    mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                                    mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                                    mem[ceil32(arg3.length) + arg3.length + 224] = 128
                                    mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                                    mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                    if not mem[ceil32(arg3.length) + 128] % 32:
                                        emit 0xa78fd207: address(_205), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                                        emit 0xa78fd207: address(_205), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                        else:
                            require ext_call.return_data[0 len 24] >= 2
                            if tier != 0:
                                revert with 0, 'Should send to right tier contract'
                            if stor0 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor1 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor2 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor3 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor4 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor5 == arg1:
                                freeTokens += arg2
                                return 1
                            if stor6 == arg1:
                                freeTokens += arg2
                                return 1
                            if arg3.length != floor32(arg3.length):
                                revert with 0, 'bytes32 multiply'
                            if not arg3.length:
                                revert with 0, 'cannot send empty'
                            if 32 == arg3.length:
                                _216 = mem[128]
                                if this.address == mem[140 len 20]:
                                    freeTokens += arg2
                                else:
                                    if ext_code.size(mem[128]) <= 0:
                                        revert with 0, 'Target address should be a contract'
                                    if not stor7[mem[140 len 20]]:
                                        revert with 0, 'Target should be whitelisted'
                                    require arg2 + gameTokenAmount[address(mem[128])] >= gameTokenAmount[address(mem[128])]
                                    gameTokenAmount[address(mem[128])] += arg2
                                    require arg2 + tokenVolumeInput[address(mem[128])] >= tokenVolumeInput[address(mem[128])]
                                    tokenVolumeInput[address(mem[128])] += arg2
                                    require ext_code.size(address(_216))
                                    call address(_216).0x82916381 with:
                                         gas gas_remaining wei
                                        args address(arg1), arg2, uint256(divRate), Array(len=arg3.length, data=arg3[all])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit 0xa78fd207: address(_216), address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
                            else:
                                _213 = mem[128]
                                mem[64] = ceil32(arg3.length) + arg3.length + 128
                                mem[ceil32(arg3.length) + 128] = arg3.length - 32
                                idx = 0
                                while idx < arg3.length - 32 / 32:
                                    mem[ceil32(arg3.length) + (32 * idx + 1) + 128] = mem[(32 * idx + 2) + 96]
                                    idx = idx + 1
                                    continue 
                                if this.address == address(_213):
                                    freeTokens += arg2
                                else:
                                    if ext_code.size(_213) <= 0:
                                        revert with 0, 'Target address should be a contract'
                                    if not stor7[address(_213)]:
                                        revert with 0, 'Target should be whitelisted'
                                    require arg2 + gameTokenAmount[address(_213)] >= gameTokenAmount[address(_213)]
                                    gameTokenAmount[address(_213)] += arg2
                                    require arg2 + tokenVolumeInput[address(_213)] >= tokenVolumeInput[address(_213)]
                                    tokenVolumeInput[address(_213)] += arg2
                                    mem[ceil32(arg3.length) + arg3.length + 128] = 0x8291638100000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + arg3.length + 132] = arg1
                                    mem[ceil32(arg3.length) + arg3.length + 164] = arg2
                                    mem[ceil32(arg3.length) + arg3.length + 196] = uint256(divRate)
                                    mem[ceil32(arg3.length) + arg3.length + 228] = 128
                                    mem[ceil32(arg3.length) + arg3.length + 260] = mem[ceil32(arg3.length) + 128]
                                    mem[ceil32(arg3.length) + arg3.length + 292 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                    if not mem[ceil32(arg3.length) + 128] % 32:
                                        require ext_code.size(address(_213))
                                        call address(_213).0x82916381 with:
                                             gas gas_remaining wei
                                            args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len mem[ceil32(arg3.length) + 128] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 292] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 324 len mem[ceil32(arg3.length) + 128] % 32]
                                        require ext_code.size(address(_213))
                                        call address(_213).0x82916381 with:
                                             gas gas_remaining wei
                                            args address(arg1), arg2, uint256(divRate), 128, mem[ceil32(arg3.length) + arg3.length + 260 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(arg3.length) + arg3.length + 128] = address(_213)
                                    mem[ceil32(arg3.length) + arg3.length + 160] = arg1
                                    mem[ceil32(arg3.length) + arg3.length + 192] = arg2
                                    mem[ceil32(arg3.length) + arg3.length + 224] = 128
                                    mem[ceil32(arg3.length) + arg3.length + 256] = mem[ceil32(arg3.length) + 128]
                                    mem[ceil32(arg3.length) + arg3.length + 288 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                                    if not mem[ceil32(arg3.length) + 128] % 32:
                                        emit 0xa78fd207: address(_213), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len mem[ceil32(arg3.length) + 128] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + 288] = mem[floor32(mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + arg3.length + -(mem[ceil32(arg3.length) + 128] % 32) + 320 len mem[ceil32(arg3.length) + 128] % 32]
                                        emit 0xa78fd207: address(_213), address(arg1), arg2, 128, mem[ceil32(arg3.length) + arg3.length + 256 len floor32(mem[ceil32(arg3.length) + 128]) + 64]
    return 0
}



}
