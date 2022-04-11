contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor4;
uint8 stor8; offset 160
uint8 stor8; offset 168
uint8 stor8; offset 176
uint16 stor8; offset 168
address stor8;

function _fallback() {
    stor0 = msg.sender
    stor1 = stor0
    stor4 = code.data[9016 len 32]
    address(stor8.field_0) = code.data[9060 len 20]
    uint8(stor8.field_160) = 0
    if not code.data[9060 len 20]:
        uint8(stor8.field_168) = 1
        uint8(stor8.field_176) = 0
    else:
        require ext_code.size(address(stor8.field_0))
        call address(stor8.field_0).0x54fd4d50 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint16(stor8.field_168) = uint16(ext_call.return_data[0] + 1)
    return code.data[365 len 8651]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
uint256 fee;
mapping of uint256 tokens;
mapping of uint256 orderFills;
address successorAddress;
uint8 stor8; offset 160
uint16 version; offset 168
uint128 stor8; offset 160
address predecessorAddress;
mapping of uint256 stor99;
mapping of uint256 stor10109676238930716215955819933325522087218130394559114038351268242149447494;

function deprecated() {
    return bool(uint8(stor8.field_160))
}

function orderFills(address arg1, bytes32 arg2) {
    return orderFills[arg1][arg2]
}

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    return orderFills[address(arg7)][hash]
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function version() {
    return version
}

function successor() {
    return successorAddress
}

function owner() {
    return owner
}

function predecessor() {
    return predecessorAddress
}

function fee() {
    return fee
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function changeTradeTracker(address arg1) {
    require owner == msg.sender
    stor3 = arg1
}

function changeAccountModifiers(address arg1) {
    require owner == msg.sender
    stor2 = arg1
}

function changeFee(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= fee
    fee = arg1
}

function changeFeeAccount(address arg1) {
    require owner == msg.sender
    require arg1
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function deprecate(bool arg1, address arg2) {
    require owner == msg.sender
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
    successorAddress = arg2
}

function getAccountModifiers() {
    if not stor2:
        return 0
    require ext_code.size(stor2)
    call stor2.accountModifiers(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32]
}

function deposit() payable {
    require not uint8(stor8.field_160)
    require msg.value + stor5B8C[msg.sender] >= stor5B8C[msg.sender]
    require msg.value + stor5B8C[msg.sender] >= msg.value
    stor5B8C[msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + stor5B8C[msg.sender]);
}

function withdraw(uint256 arg1) {
    require stor5B8C[msg.sender] >= arg1
    require arg1 <= stor5B8C[msg.sender]
    stor5B8C[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, stor5B8C[msg.sender]);
}

function depositForUser(address arg1) payable {
    require not uint8(stor8.field_160)
    require arg1
    require msg.value > 0
    require ext_code.size(msg.sender)
    call msg.sender.0x54fd4d50 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[30 len 2] > 0
    require msg.value + stor5B8C[arg1] >= stor5B8C[arg1]
    require msg.value + stor5B8C[arg1] >= msg.value
    stor5B8C[arg1] += msg.value
}

function withdrawToken(address arg1, uint256 arg2) {
    require arg1
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg7 << 248, arg8, arg9) 
    require erecover.result
    require address(signer) == msg.sender
    orderFills[address(msg.sender)][hash] = arg2
    emit Cancel(arg1, 0, address(arg3), arg4, arg5, arg6, msg.sender, arg7 << 248, arg8, arg9);
}

function depositToken(address arg1, uint256 arg2) {
    require not uint8(stor8.field_160)
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= tokens[address(arg1)][address(msg.sender)]
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= arg2
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, arg2 + tokens[address(arg1)][address(msg.sender)]);
}

function depositTokenForUser(address arg1, uint256 arg2, address arg3) {
    require not uint8(stor8.field_160)
    require arg1
    require arg3
    require arg2 > 0
    require ext_code.size(msg.sender)
    call msg.sender.0x54fd4d50 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[30 len 2] > 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + tokens[address(arg1)][address(arg3)] >= tokens[address(arg1)][address(arg3)]
    require arg2 + tokens[address(arg1)][address(arg3)] >= arg2
    tokens[address(arg1)][address(arg3)] += arg2
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
    require erecover.result
    if address(signer) != arg7:
        return 0
    if block.number > arg5:
        return 0
    require orderFills[address(arg7)][hash] <= arg2
    if tokens[address(arg3)][address(arg7)]:
        require tokens[address(arg3)][address(arg7)]
        require arg2 * tokens[address(arg3)][address(arg7)] / tokens[address(arg3)][address(arg7)] == arg2
    require arg4
    if arg2 - orderFills[address(arg7)][hash] >= arg2 * tokens[address(arg3)][address(arg7)] / arg4:
        return (arg2 * tokens[address(arg3)][address(arg7)] / arg4)
    return (arg2 - orderFills[address(arg7)][hash])
}

function testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    if tokens[address(arg1)][address(arg12)] >= arg11:
        hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
        require sha256hash.result
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        require erecover.result
        if address(signer) != arg7:
            if 0 >= arg11:
                return 1
        else:
            if block.number > arg5:
                if 0 >= arg11:
                    return 1
            else:
                require orderFills[address(arg7)][hash] <= arg2
                if tokens[address(arg3)][address(arg7)]:
                    require tokens[address(arg3)][address(arg7)]
                    require arg2 * tokens[address(arg3)][address(arg7)] / tokens[address(arg3)][address(arg7)] == arg2
                require arg4
                if arg2 - orderFills[address(arg7)][hash] >= arg2 * tokens[address(arg3)][address(arg7)] / arg4:
                    if arg2 * tokens[address(arg3)][address(arg7)] / arg4 >= arg11:
                        return 1
                else:
                    if arg2 - orderFills[address(arg7)][hash] >= arg11:
                        return 1
        return 0
    else:
        return 0
}

function migrateFunds(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require successorAddress
    s = 0
    idx = 0
    s = successorAddress
    while uint16(idx) < 20:
        mem[(32 * arg1.length) + 160] = 0
        require ext_code.size(address(s))
        call address(s).0x6ff968c3 with:
             gas gas_remaining - 710 wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[12 len 20] != this.address
        if ext_call.return_data[12 len 20]:
            s = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        if stor5B8C[msg.sender] <= 0:
            t = 0
            t = 0
            idx = 0
            while uint16(idx) < arg1.length:
                require uint16(idx) < arg1.length
                _150 = mem[(32 * uint16(idx)) + 128]
                require mem[(32 * uint16(idx)) + 140 len 20]
                _156 = sha3(mem[(32 * uint16(idx)) + 140 len 20], 5)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * uint16(idx)) + 140 len 20], 5)
                if not tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]:
                    t = tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]
                    t = mem[(32 * uint16(idx)) + 128]
                    idx = idx + 1
                    continue 
                require ext_code.size(mem[(32 * uint16(idx)) + 140 len 20])
                call mem[(32 * uint16(idx)) + 140 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(s), tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]
                require ext_call.success
                require ext_call.return_data[0]
                mem[0] = msg.sender
                mem[32] = sha3(address(mem[(32 * uint16(idx)) + 128]), 5)
                tokens[address(mem[(32 * uint16(idx)) + 128])][address(msg.sender)] = 0
                mem[(32 * arg1.length) + 128] = 0x3c2e2a7500000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 132] = address(_150)
                mem[(32 * arg1.length) + 164] = stor[_156][address(msg.sender)]
                mem[(32 * arg1.length) + 196] = msg.sender
                require ext_code.size(address(s))
                call address(s).0x3c2e2a75 with:
                     gas gas_remaining - 710 wei
                    args address(_150), stor[_156][address(msg.sender)], msg.sender
                require ext_call.success
                t = stor[_156][address(msg.sender)]
                t = _150
                idx = idx + 1
                continue 
        else:
            stor5B8C[msg.sender] = 0
            mem[(32 * arg1.length) + 128] = 0x6a523c5e00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = msg.sender
            require ext_code.size(address(s))
            call address(s).0x6a523c5e with:
               value stor5B8C[msg.sender] wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
            t = 0
            t = 0
            idx = 0
            while uint16(idx) < arg1.length:
                require uint16(idx) < arg1.length
                _151 = mem[(32 * uint16(idx)) + 128]
                require mem[(32 * uint16(idx)) + 140 len 20]
                _158 = sha3(mem[(32 * uint16(idx)) + 140 len 20], 5)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * uint16(idx)) + 140 len 20], 5)
                if not tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]:
                    t = tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]
                    t = mem[(32 * uint16(idx)) + 128]
                    idx = idx + 1
                    continue 
                require ext_code.size(mem[(32 * uint16(idx)) + 140 len 20])
                call mem[(32 * uint16(idx)) + 140 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(s), tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]
                require ext_call.success
                require ext_call.return_data[0]
                mem[0] = msg.sender
                mem[32] = sha3(address(mem[(32 * uint16(idx)) + 128]), 5)
                tokens[address(mem[(32 * uint16(idx)) + 128])][address(msg.sender)] = 0
                mem[(32 * arg1.length) + 128] = 0x3c2e2a7500000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 132] = address(_151)
                mem[(32 * arg1.length) + 164] = stor[_158][address(msg.sender)]
                mem[(32 * arg1.length) + 196] = msg.sender
                require ext_code.size(address(s))
                call address(s).0x3c2e2a75 with:
                     gas gas_remaining - 710 wei
                    args address(_151), stor[_158][address(msg.sender)], msg.sender
                require ext_call.success
                t = stor[_158][address(msg.sender)]
                t = _151
                idx = idx + 1
                continue 
        emit FundsMigrated(msg.sender);
    if stor5B8C[msg.sender] <= 0:
        t = 0
        t = 0
        idx = 0
        while uint16(idx) < arg1.length:
            require uint16(idx) < arg1.length
            _148 = mem[(32 * uint16(idx)) + 128]
            require mem[(32 * uint16(idx)) + 140 len 20]
            _152 = sha3(mem[(32 * uint16(idx)) + 140 len 20], 5)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * uint16(idx)) + 140 len 20], 5)
            if not tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]:
                t = tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]
                t = mem[(32 * uint16(idx)) + 128]
                idx = idx + 1
                continue 
            require ext_code.size(mem[(32 * uint16(idx)) + 140 len 20])
            call mem[(32 * uint16(idx)) + 140 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(s), tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]
            require ext_call.success
            require ext_call.return_data[0]
            mem[0] = msg.sender
            mem[32] = sha3(address(mem[(32 * uint16(idx)) + 128]), 5)
            tokens[address(mem[(32 * uint16(idx)) + 128])][address(msg.sender)] = 0
            mem[(32 * arg1.length) + 128] = 0x3c2e2a7500000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = address(_148)
            mem[(32 * arg1.length) + 164] = stor[_152][address(msg.sender)]
            mem[(32 * arg1.length) + 196] = msg.sender
            require ext_code.size(address(s))
            call address(s).0x3c2e2a75 with:
                 gas gas_remaining - 710 wei
                args address(_148), stor[_152][address(msg.sender)], msg.sender
            require ext_call.success
            t = stor[_152][address(msg.sender)]
            t = _148
            idx = idx + 1
            continue 
    else:
        stor5B8C[msg.sender] = 0
        mem[(32 * arg1.length) + 128] = 0x6a523c5e00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = msg.sender
        require ext_code.size(address(s))
        call address(s).0x6a523c5e with:
           value stor5B8C[msg.sender] wei
             gas gas_remaining - 9710 wei
            args msg.sender
        require ext_call.success
        t = 0
        t = 0
        idx = 0
        while uint16(idx) < arg1.length:
            require uint16(idx) < arg1.length
            _149 = mem[(32 * uint16(idx)) + 128]
            require mem[(32 * uint16(idx)) + 140 len 20]
            _154 = sha3(mem[(32 * uint16(idx)) + 140 len 20], 5)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * uint16(idx)) + 140 len 20], 5)
            if not tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]:
                t = tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]
                t = mem[(32 * uint16(idx)) + 128]
                idx = idx + 1
                continue 
            require ext_code.size(mem[(32 * uint16(idx)) + 140 len 20])
            call mem[(32 * uint16(idx)) + 140 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(s), tokens[mem[(32 * uint16(idx)) + 140 len 20]][address(msg.sender)]
            require ext_call.success
            require ext_call.return_data[0]
            mem[0] = msg.sender
            mem[32] = sha3(address(mem[(32 * uint16(idx)) + 128]), 5)
            tokens[address(mem[(32 * uint16(idx)) + 128])][address(msg.sender)] = 0
            mem[(32 * arg1.length) + 128] = 0x3c2e2a7500000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = address(_149)
            mem[(32 * arg1.length) + 164] = stor[_154][address(msg.sender)]
            mem[(32 * arg1.length) + 196] = msg.sender
            require ext_code.size(address(s))
            call address(s).0x3c2e2a75 with:
                 gas gas_remaining - 710 wei
                args address(_149), stor[_154][address(msg.sender)], msg.sender
            require ext_call.success
            t = stor[_154][address(msg.sender)]
            t = _149
            idx = idx + 1
            continue 
    emit FundsMigrated(msg.sender);
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
    require erecover.result
    require address(signer) == arg7
    require block.number <= arg5
    require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
    require arg11 + orderFills[address(arg7)][hash] >= arg11
    require arg11 + orderFills[address(arg7)][hash] <= arg2
    if arg11:
        require arg11
        require fee * arg11 / arg11 == fee
    if arg4:
        require arg4
        require arg11 * arg4 / arg4 == arg11
    require arg2
    if not stor2:
        require arg11 >= arg11
        require arg11 >= 0
        require arg11 + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
        require arg11 + tokens[address(arg1)][address(arg7)] >= arg11
        tokens[address(arg1)][address(arg7)] += arg11
        require (fee * arg11 / 10^18) + arg11 >= arg11
        require (fee * arg11 / 10^18) + arg11 >= fee * arg11 / 10^18
        require (fee * arg11 / 10^18) + arg11 <= tokens[address(arg1)][msg.sender]
        tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][msg.sender] - (fee * arg11 / 10^18) - arg11
        require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
        tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
        require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= tokens[address(arg3)][msg.sender]
        require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= arg11 * arg4 / arg2
        tokens[address(arg3)][address(msg.sender)] = (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender]
        require 0 <= fee * arg11 / 10^18
        require (fee * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
        require (fee * arg11 / 10^18) + tokens[address(arg1)][stor1] >= fee * arg11 / 10^18
        tokens[address(arg1)][stor1] += fee * arg11 / 10^18
        if stor3:
            require ext_code.size(stor3)
            call stor3.tradeComplete(address rg1, uint256 rg2, address rg3, uint256 rg4, address rg5, address rg6, uint256 rg7, uint256 rg8) with:
                 gas gas_remaining - 710 wei
                args 0, 0, uint32(arg11), address(arg3), arg11 * arg4 / arg2, address(arg7), msg.sender, fee * arg11 / 10^18, 0
            require ext_call.success
        require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
        require arg11 + orderFills[address(arg7)][hash] >= arg11
        orderFills[address(arg7)][hash] += arg11
        require arg2
        emit Trade(arg1, 0, address(arg3), arg11 * arg4 / arg2, address(arg7), msg.sender, arg6);
    else:
        require ext_code.size(stor2)
        call stor2.tradeModifiers(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args address(arg7), msg.sender
        require ext_call.success
        if ext_call.return_data[0] <= 100:
            if fee * arg11 / 10^18:
                require fee * arg11 / 10^18
                require (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / fee * arg11 / 10^18 == -ext_call.return_data[0] + 100
            if ext_call.return_data[32] > 100:
                require arg11 >= arg11
                require arg11 >= 0
                require arg11 + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                require arg11 + tokens[address(arg1)][address(arg7)] >= arg11
                tokens[address(arg1)][address(arg7)] += arg11
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) + arg11 >= arg11
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) + arg11 >= (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) + arg11 <= tokens[address(arg1)][msg.sender]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][msg.sender] - ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) - arg11
                require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
                tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
                require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= tokens[address(arg3)][msg.sender]
                require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= arg11 * arg4 / arg2
                tokens[address(arg3)][address(msg.sender)] = (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender]
                require 0 <= (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) + tokens[address(arg1)][stor1] >= (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100
                tokens[address(arg1)][stor1] += (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100
                if stor3:
                    require ext_code.size(stor3)
                    call stor3.tradeComplete(address rg1, uint256 rg2, address rg3, uint256 rg4, address rg5, address rg6, uint256 rg7, uint256 rg8) with:
                         gas gas_remaining - 710 wei
                        args 0, ext_call.return_data[32], 0, 0, arg11 * arg4 / arg2, address(arg7), msg.sender, (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100, 0
                    require ext_call.success
            else:
                if ext_call.return_data[32]:
                    require ext_call.return_data[32]
                    require (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / ext_call.return_data[32] == (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / 100) + arg11 >= arg11
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / 100) + arg11 >= (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / 100
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / 100) + arg11 + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                require tokens[address(arg1)][address(arg7)] >= 0
                tokens[address(arg1)][address(arg7)] = ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / 100) + arg11 + tokens[address(arg1)][address(arg7)]
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) + arg11 >= arg11
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) + arg11 >= (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) + arg11 <= tokens[address(arg1)][msg.sender]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][msg.sender] - ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) - arg11
                require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
                tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
                require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= tokens[address(arg3)][msg.sender]
                require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= arg11 * arg4 / arg2
                tokens[address(arg3)][address(msg.sender)] = (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender]
                require (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / 100 <= (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100
                require ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) - ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / 100) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                require tokens[address(arg1)][stor1] >= 0
                tokens[address(arg1)][stor1] = ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100) - ((100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / 100) + tokens[address(arg1)][stor1]
                if stor3:
                    require ext_code.size(stor3)
                    call stor3.tradeComplete(address rg1, uint256 rg2, address rg3, uint256 rg4, address rg5, address rg6, uint256 rg7, uint256 rg8) with:
                         gas gas_remaining - 710 wei
                        args 0, ext_call.return_data[32], 0, 0, arg11 * arg4 / arg2, address(arg7), msg.sender, (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100, (100 * fee * arg11 / 10^18) - (ext_call.return_data[0] * fee * arg11 / 10^18) / 100 * ext_call.return_data[32] / 100
                    require ext_call.success
        else:
            if fee * arg11 / 10^18:
                require fee * arg11 / 10^18
                require 100 * fee * arg11 / 10^18 / fee * arg11 / 10^18 == 100
            if ext_call.return_data[32] > 100:
                require arg11 >= arg11
                require arg11 >= 0
                require arg11 + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                require arg11 + tokens[address(arg1)][address(arg7)] >= arg11
                tokens[address(arg1)][address(arg7)] += arg11
                require (100 * fee * arg11 / 10^18 / 100) + arg11 >= arg11
                require (100 * fee * arg11 / 10^18 / 100) + arg11 >= 100 * fee * arg11 / 10^18 / 100
                require (100 * fee * arg11 / 10^18 / 100) + arg11 <= tokens[address(arg1)][msg.sender]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][msg.sender] - (100 * fee * arg11 / 10^18 / 100) - arg11
                require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
                tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
                require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= tokens[address(arg3)][msg.sender]
                require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= arg11 * arg4 / arg2
                tokens[address(arg3)][address(msg.sender)] = (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender]
                require 0 <= 100 * fee * arg11 / 10^18 / 100
                require (100 * fee * arg11 / 10^18 / 100) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                require (100 * fee * arg11 / 10^18 / 100) + tokens[address(arg1)][stor1] >= 100 * fee * arg11 / 10^18 / 100
                tokens[address(arg1)][stor1] += 100 * fee * arg11 / 10^18 / 100
                if stor3:
                    require ext_code.size(stor3)
                    call stor3.tradeComplete(address rg1, uint256 rg2, address rg3, uint256 rg4, address rg5, address rg6, uint256 rg7, uint256 rg8) with:
                         gas gas_remaining - 710 wei
                        args 0, ext_call.return_data[32], 0, 0, arg11 * arg4 / arg2, address(arg7), msg.sender, 100 * fee * arg11 / 10^18 / 100, 0
                    require ext_call.success
            else:
                if ext_call.return_data[32]:
                    require ext_call.return_data[32]
                    require 100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100 * fee * arg11 / 10^18 / 100
                require (100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / 100) + arg11 >= arg11
                require (100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / 100) + arg11 >= 100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / 100
                require (100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / 100) + arg11 + tokens[address(arg1)][address(arg7)] >= tokens[address(arg1)][address(arg7)]
                require tokens[address(arg1)][address(arg7)] >= 0
                tokens[address(arg1)][address(arg7)] = (100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / 100) + arg11 + tokens[address(arg1)][address(arg7)]
                require (100 * fee * arg11 / 10^18 / 100) + arg11 >= arg11
                require (100 * fee * arg11 / 10^18 / 100) + arg11 >= 100 * fee * arg11 / 10^18 / 100
                require (100 * fee * arg11 / 10^18 / 100) + arg11 <= tokens[address(arg1)][msg.sender]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][msg.sender] - (100 * fee * arg11 / 10^18 / 100) - arg11
                require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
                tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
                require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= tokens[address(arg3)][msg.sender]
                require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= arg11 * arg4 / arg2
                tokens[address(arg3)][address(msg.sender)] = (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender]
                require 100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / 100 <= 100 * fee * arg11 / 10^18 / 100
                require (100 * fee * arg11 / 10^18 / 100) - (100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / 100) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                require tokens[address(arg1)][stor1] >= 0
                tokens[address(arg1)][stor1] = (100 * fee * arg11 / 10^18 / 100) - (100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / 100) + tokens[address(arg1)][stor1]
                if stor3:
                    require ext_code.size(stor3)
                    call stor3.tradeComplete(address rg1, uint256 rg2, address rg3, uint256 rg4, address rg5, address rg6, uint256 rg7, uint256 rg8) with:
                         gas gas_remaining - 710 wei
                        args 0, ext_call.return_data[32], 0, 0, arg11 * arg4 / arg2, address(arg7), msg.sender, 100 * fee * arg11 / 10^18 / 100, 100 * fee * arg11 / 10^18 / 100 * ext_call.return_data[32] / 100
                    require ext_call.success
        require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
        require arg11 + orderFills[address(arg7)][hash] >= arg11
        orderFills[address(arg7)][hash] += arg11
        require arg2
        emit Trade(arg1, ext_call.return_data[32], 0, arg11 * arg4 / arg2, address(arg7), msg.sender, arg6);
}



}
