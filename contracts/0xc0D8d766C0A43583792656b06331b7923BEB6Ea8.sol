contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor3;
address stor5;

function _fallback() payable {
    stor3 = 20
    require not msg.value
    stor0 = code.data[5935 len 32]
    stor5 = msg.sender
    stor1[address(msg.sender)] = code.data[5935 len 32]
    stor3 = 2
    return code.data[104 len 5831]
}



// =====================  Runtime code  =====================


const name = 'CoinDash Token'

const decimals = 18

const symbol = 'CDT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
array of struct tokenGrantsCount;
address creatorAddress;

function tokenGrantsCount(address arg1) {
    return tokenGrantsCount[address(arg1)].field_0
}

function creator() {
    return creatorAddress
}

function totalSupply() {
    return totalSupply
}

function grants(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[arg1].field_0
    return tokenGrantsCount[arg1][arg2].field_0, 
           tokenGrantsCount[arg1][arg2].field_256,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_640,
           bool(tokenGrantsCount[arg1][arg2].field_704),
           bool(tokenGrantsCount[arg1][arg2].field_712)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert 
}

function drain() {
    require creatorAddress == msg.sender
    call creatorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function lastTokenIsTransferableDate(address arg1) {
    idx = 0
    while idx < tokenGrantsCount[address(arg1)].field_0:
        mem[32] = 4
        require idx < tokenGrantsCount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 4)
        idx = idx + 1
        continue 
    return uint64(block.timestamp)
}

function calculateVestedTokens(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if arg2 < arg4:
        return 0
    if arg2 >= arg5:
        return arg1
    require arg3 <= arg2
    if arg1:
        require (arg2 * arg1) - (arg3 * arg1) / arg1 == arg2 - arg3
    require arg3 <= arg5
    require arg5 - arg3
    return ((arg2 * arg1) - (arg3 * arg1) / arg5 - arg3)
}

function tokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               0,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               bool(tokenGrantsCount[address(arg1)][arg2].field_704),
               bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               bool(tokenGrantsCount[address(arg1)][arg2].field_704),
               bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
    if tokenGrantsCount[address(arg1)][arg2].field_256:
        require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
    require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
    require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
    return tokenGrantsCount[address(arg1)][arg2].field_0, 
           tokenGrantsCount[address(arg1)][arg2].field_256,
           (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640,
           tokenGrantsCount[address(arg1)][arg2].field_512,
           tokenGrantsCount[address(arg1)][arg2].field_512,
           tokenGrantsCount[address(arg1)][arg2].field_512,
           bool(tokenGrantsCount[address(arg1)][arg2].field_704),
           bool(tokenGrantsCount[address(arg1)][arg2].field_712)
}

function transferableTokens(address arg1, uint64 arg2) payable {
    mem[64] = 96
    require not msg.value
    if tokenGrantsCount[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 4
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            _25 = mem[64]
            mem[64] = mem[64] + 224
            mem[_25] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_25 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_25 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
            mem[_25 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
            mem[_25 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
            mem[_25 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
            mem[_25 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
            if arg2 < tokenGrantsCount[address(arg1)][idx].field_512:
                if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                    if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                        idx = idx + 1
                        s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                        continue 
            else:
                if arg2 >= tokenGrantsCount[address(arg1)][idx].field_576:
                    if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if s >= s:
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if tokenGrantsCount[address(arg1)][idx].field_640 <= arg2:
                        if not tokenGrantsCount[address(arg1)][idx].field_256:
                            if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                    if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                        if tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                            idx = idx + 1
                                            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                            continue 
                        else:
                            if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == arg2 - tokenGrantsCount[address(arg1)][idx].field_512:
                                if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                    if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                            if tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                continue 
            revert 
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            return (balanceOf[address(arg1)] - s)
    return balanceOf[address(arg1)]
}

function vestedBalanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    if tokenGrantsCount[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 4
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            _25 = mem[64]
            mem[64] = mem[64] + 224
            mem[_25] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_25 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_25 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
            mem[_25 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
            mem[_25 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
            mem[_25 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
            mem[_25 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
            if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                    if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                        idx = idx + 1
                        s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                        continue 
            else:
                if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
                    if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if s >= s:
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp):
                        if not tokenGrantsCount[address(arg1)][idx].field_256:
                            if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                        if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                            idx = idx + 1
                                            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                            continue 
                        else:
                            if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512:
                                if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                    if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                            if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                continue 
            revert 
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            return (balanceOf[address(arg1)] - s)
    return balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    if not tokenGrantsCount[address(arg1)].field_0:
        require arg3 <= balanceOf[address(arg1)]
    else:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 4
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            _49 = mem[64]
            mem[64] = mem[64] + 224
            mem[_49] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_49 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_49 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
            mem[_49 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
            mem[_49 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
            mem[_49 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
            mem[_49 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
            if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                    if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                        idx = idx + 1
                        s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                        continue 
            else:
                if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
                    if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if s >= s:
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp):
                        if not tokenGrantsCount[address(arg1)][idx].field_256:
                            if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                        if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                            idx = idx + 1
                                            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                            continue 
                        else:
                            if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512:
                                if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                    if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                            if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                continue 
            revert 
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            require arg3 <= balanceOf[address(arg1)] - s
        else:
            require arg3 <= balanceOf[address(arg1)]
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if not tokenGrantsCount[address(msg.sender)].field_0:
        require arg2 <= balanceOf[address(msg.sender)]
    else:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(msg.sender)].field_0:
            mem[32] = 4
            require idx < tokenGrantsCount[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 4)
            _37 = mem[64]
            mem[64] = mem[64] + 224
            mem[_37] = tokenGrantsCount[address(msg.sender)][idx].field_0
            mem[_37 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
            mem[_37 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
            mem[_37 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
            mem[_37 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
            mem[_37 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
            mem[_37 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                        idx = idx + 1
                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                        continue 
            else:
                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                        if s >= s:
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                        if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                            idx = idx + 1
                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                            continue 
                        else:
                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                continue 
            revert 
        require s <= balanceOf[address(msg.sender)]
        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
            require arg2 <= balanceOf[address(msg.sender)] - s
        else:
            require arg2 <= balanceOf[address(msg.sender)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function grantVestedTokens(address arg1, uint256 arg2, uint64 arg3, uint64 arg4, uint64 arg5, bool arg6, bool arg7) {
    require arg4 >= arg3
    require arg5 >= arg4
    require tokenGrantsCount[address(arg1)].field_0 <= stor3
    tokenGrantsCount[address(arg1)].field_0++
    if not tokenGrantsCount[address(arg1)].field_0 > tokenGrantsCount[address(arg1)].field_0 + 1:
        mem[64] = 320
        if arg6:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = msg.sender
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint8(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_720 = Mask(48, 16, arg6) >> 16
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    _198 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_198] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_198 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_198 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_198 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_198 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_198 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_198 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                else:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                    revert 
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint8(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_720 = Mask(48, 16, arg6) >> 16
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    _199 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_199] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_199 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_199 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_199 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_199 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_199 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_199 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                else:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                    revert 
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
    else:
        idx = (3 * tokenGrantsCount[address(arg1)].field_0) + 3
        while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
            tokenGrantsCount[address(arg1)][idx].field_0 = 0
            tokenGrantsCount[address(arg1)][idx].field_256 = 0
            tokenGrantsCount[address(arg1)][idx].field_512 = 0
            idx = idx + 3
            continue 
        mem[64] = 320
        if arg6:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = msg.sender
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint8(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_720 = Mask(48, 16, arg6) >> 16
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    _350 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_350] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_350 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_350 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_350 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_350 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_350 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_350 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                else:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                    revert 
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint8(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_720 = Mask(48, 16, arg6) >> 16
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 4
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    _351 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_351] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_351 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_351 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_351 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_351 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_351 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_351 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                else:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                    revert 
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    emit NewTokenGrant(arg2, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
}

function revokeTokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    require tokenGrantsCount[address(arg1)][arg2].field_704
    require tokenGrantsCount[address(arg1)][arg2].field_0 == msg.sender
    if tokenGrantsCount[address(arg1)][arg2].field_712:
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][arg2].field_256
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = 0
            tokenGrantsCount[address(arg1)][arg2].field_256 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                idx = 3 * tokenGrantsCount[address(arg1)].field_0
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
            require tokenGrantsCount[address(arg1)][arg2].field_256 + balanceOf[57005] >= balanceOf[57005]
            balanceOf[57005] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256
            emit Transfer(tokenGrantsCount[address(arg1)][arg2].field_256, arg1, 57005);
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    idx = 3 * tokenGrantsCount[address(arg1)].field_0
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[57005] >= balanceOf[57005]
                require 0 <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, arg1, 57005);
            else:
                require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
                if tokenGrantsCount[address(arg1)][arg2].field_256:
                    require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
                require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
                require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    idx = 3 * tokenGrantsCount[address(arg1)].field_0
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[57005] >= balanceOf[57005]
                balanceOf[57005] = tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[57005]
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit Transfer((tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, 57005);
    else:
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][arg2].field_256
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = 0
            tokenGrantsCount[address(arg1)][arg2].field_256 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                idx = 3 * tokenGrantsCount[address(arg1)].field_0
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
            require tokenGrantsCount[address(arg1)][arg2].field_256 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256
            emit Transfer(tokenGrantsCount[address(arg1)][arg2].field_256, arg1, msg.sender);
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    idx = 3 * tokenGrantsCount[address(arg1)].field_0
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, arg1, msg.sender);
            else:
                require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
                if tokenGrantsCount[address(arg1)][arg2].field_256:
                    require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
                require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
                require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
                    idx = 3 * tokenGrantsCount[address(arg1)].field_0
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[address(msg.sender)]
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit Transfer((tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, msg.sender);
}



}
