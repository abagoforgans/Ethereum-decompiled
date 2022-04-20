contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint256 stor10;
array of struct stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    stor6.length = 0
    stor7.length = 0
    stor8.length = 0
    require not msg.value
    mem[96 len 832] = code.data[8583 len 832]
    mem[64] = 928
    stor0 = msg.sender
    require code.data[8627 len 20]
    require code.data[8647 len 32] >= block.timestamp
    require code.data[8679 len 32] > 0
    require code.data[9351 len 32] > 0
    require code.data[9383 len 32] > 0
    address(stor2.length) = code.data[8595 len 20]
    address(stor3.length) = code.data[8627 len 20]
    stor4.length = code.data[8647 len 32]
    require ext_code.size(code.data[8595 len 20])
    call code.data[8595 len 20].0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor10 = code.data[8679 len 32] * 10^ext_call.return_data[0]
    stor16 = 24 * 3600 * code.data[9351 len 32]
    mem[960] = 0
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0x313ce567 with:
         gas gas_remaining - 710 wei
    mem[928] = ext_call.return_data[0]
    require ext_call.success
    idx = 0
    s = 0
    while idx < 20:
        stor15.length++
        if not stor15.length > stor15.length + 1:
            mem[0] = 15
            _52 = mem[64]
            mem[64] = mem[64] + 288
            mem[_52] = stor4.length + (s * stor16)
            mem[_52 + 32] = stor4.length + stor16 + (s * stor16)
            mem[_52 + 64] = s
            require idx < 20
            mem[_52 + 96] = mem[(32 * idx) + 224]
            require idx + 1 < 20
            mem[_52 + 128] = mem[(32 * idx + 1) + 224]
            require idx + 2 < 20
            mem[_52 + 160] = mem[(32 * idx + 2) + 224]
            require idx + 3 < 20
            mem[_52 + 192] = mem[(32 * idx + 3) + 224]
            mem[_52 + 224] = code.data[9383 len 32] * 10^ext_call.return_data[0]
            mem[_52 + 256] = 0
            stor15[stor15.length].field_0 = stor4.length + (s * stor16)
            stor15[stor15.length].field_256 = stor4.length + stor16 + (s * stor16)
            stor15[stor15.length].field_512 = s
            stor15[stor15.length].field_768 = mem[_52 + 96]
            stor15[stor15.length].field_1024 = mem[_52 + 128]
            stor15[stor15.length].field_1280 = mem[_52 + 160]
            stor15[stor15.length].field_1536 = mem[_52 + 192]
        else:
            t = sha3(15) + (9 * stor15.length) + 9
            while sha3(15) + (9 * stor15.length) > t:
                stor[t] = 0
                stor1[t] = 0
                uint256(stor2[t]) = 0
                uint256(stor3[t]) = 0
                stor4[t] = 0
                stor5[t] = 0
                stor6[t] = 0
                stor7[t] = 0
                stor8[t] = 0
                t = t + 9
                continue 
            mem[0] = 15
            _82 = mem[64]
            mem[64] = mem[64] + 288
            mem[_82] = stor4.length + (s * stor16)
            mem[_82 + 32] = stor4.length + stor16 + (s * stor16)
            mem[_82 + 64] = s
            require idx < 20
            mem[_82 + 96] = mem[(32 * idx) + 224]
            require idx + 1 < 20
            mem[_82 + 128] = mem[(32 * idx + 1) + 224]
            require idx + 2 < 20
            mem[_82 + 160] = mem[(32 * idx + 2) + 224]
            require idx + 3 < 20
            mem[_82 + 192] = mem[(32 * idx + 3) + 224]
            mem[_82 + 224] = code.data[9383 len 32] * 10^ext_call.return_data[0]
            mem[_82 + 256] = 0
            stor15[stor15.length].field_0 = stor4.length + (s * stor16)
            stor15[stor15.length].field_256 = stor4.length + stor16 + (s * stor16)
            stor15[stor15.length].field_512 = s
            stor15[stor15.length].field_768 = mem[_82 + 96]
            stor15[stor15.length].field_1024 = mem[_82 + 128]
            stor15[stor15.length].field_1280 = mem[_82 + 160]
            stor15[stor15.length].field_1536 = mem[_82 + 192]
        stor15[stor15.length].field_1792 = code.data[9383 len 32] * 10^ext_call.return_data[0]
        stor15[stor15.length].field_2048 = 0
        idx = idx + 4
        s = s + 1
        continue 
    require stor15.length - 1 < stor15.length
    stor5.length = stor15[stor15.length].field_0
    stor17 = 0
    return code.data[1078 len 7505]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;
uint256 CAP;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
address cryptoAgentAddress;
mapping of uint256 tokenAmountOfPeriod;
array of struct stages;
uint256 periodStage;
uint256 stage;

function endsAt() {
    return stor5.length
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function cryptoAgent() {
    return cryptoAgentAddress
}

function weiRaised() {
    return stor7.length
}

function tokensSold() {
    return stor6.length
}

function periodStage() {
    return periodStage
}

function stages(uint256 arg1) {
    require arg1 < stages.length
    return stages[arg1].field_0, 
           stages[arg1].field_256,
           stages[arg1].field_512,
           stages[arg1].field_768,
           stages[arg1].field_1024,
           stages[arg1].field_1280,
           stages[arg1].field_1536,
           stages[arg1].field_1792,
           stages[arg1].field_2048
}

function owner() {
    return owner
}

function multisigWallet() {
    return address(stor3.length)
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function tokenAmountOfPeriod(uint256 arg1, address arg2) {
    return tokenAmountOfPeriod[arg1][arg2]
}

function startsAt() {
    return stor4.length
}

function finalized() {
    return bool(stor9)
}

function halted() {
    return bool(uint8(stor1.length.field_160))
}

function stage() {
    return stage
}

function newOwner() {
    return address(stor1.length)
}

function investorCount() {
    return stor8.length
}

function CAP() {
    return CAP
}

function token() {
    return address(stor2.length)
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function halt() {
    require owner == msg.sender
    uint8(stor1.length.field_160) = 1
}

function setToken(address arg1) {
    require owner == msg.sender
    require arg1
    address(stor2.length) = arg1
}

function setMultisig(address arg1) {
    require owner == msg.sender
    require arg1
    address(stor3.length) = arg1
}

function setCryptoAgent(address arg1) {
    require owner == msg.sender
    require not stor9
    cryptoAgentAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    address(stor1.length) = arg1
}

function unhalt() {
    require owner == msg.sender
    require uint8(stor1.length.field_160)
    uint8(stor1.length.field_160) = 0
}

function isCrowdsaleFull() {
    if stor6.length < CAP:
        if block.timestamp < stor5.length:
            return 0
    return 1
}

function isBreakingCap(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    if arg2 + arg1 > CAP:
        return 1
    else:
        return 0
}

function acceptOwnership() {
    if address(stor1.length) == msg.sender:
        emit OwnershipTransferred(owner, address(stor1.length));
        owner = address(stor1.length)
}

function setEndsAt(uint256 arg1) {
    require owner == msg.sender
    require not stor9
    require arg1 >= block.timestamp
    stor5.length = arg1
    emit EndsAtChanged(arg1);
}

function getState() {
    if stor9:
        return 5
    if not address(stor2.length):
        return 1
    if not address(stor3.length):
        return 1
    if block.timestamp < stor4.length:
        return 1
    if block.timestamp <= stor5.length:
        if block.timestamp >= stor4.length:
            if stor6.length < CAP:
                if block.timestamp < stor5.length:
                    return 2
    if stor6.length < CAP:
        if block.timestamp < stor5.length:
            return 4
    return 3
}

function finalize() {
    require not stor9
    require address(stor2.length)
    require address(stor3.length)
    require block.timestamp >= stor4.length
    if block.timestamp <= stor5.length:
        if block.timestamp >= stor4.length:
            if stor6.length < CAP:
                require block.timestamp >= stor5.length
    if stor6.length < CAP:
        require block.timestamp >= stor5.length
    require owner == msg.sender
    require not uint8(stor1.length.field_160)
    require block.timestamp >= stor5.length + periodStage
    require not stor9
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0x5f412d4f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor9 = 1
}

function distributionOfTokens() {
    require not uint8(stor1.length.field_160)
    require block.timestamp >= stor5.length
    require not stor9
    idx = 0
    s = 0
    while idx < stages.length:
        mem[0] = msg.sender
        mem[32] = sha3(stages[idx].field_512, 14)
        if not tokenAmountOfPeriod[stor15[idx].field_512][address(msg.sender)]:
            idx = idx + 1
            s = s
            continue 
        require idx < stages.length
        require stages[idx].field_1792 - stages[idx].field_2048 <= stages[idx].field_1792
        require idx < stages.length
        if stages[idx].field_1792 - stages[idx].field_2048:
            require stages[idx].field_1792 - stages[idx].field_2048
            require (stages[idx].field_1792 * tokenAmountOfPeriod[stor15[idx].field_512][address(msg.sender)]) - (stages[idx].field_2048 * tokenAmountOfPeriod[stor15[idx].field_512][address(msg.sender)]) / stages[idx].field_1792 - stages[idx].field_2048 == tokenAmountOfPeriod[stor15[idx].field_512][address(msg.sender)]
        require idx < stages.length
        require stages[idx].field_2048
        require ((stages[idx].field_1792 * tokenAmountOfPeriod[stor15[idx].field_512][address(msg.sender)]) - (stages[idx].field_2048 * tokenAmountOfPeriod[stor15[idx].field_512][address(msg.sender)]) / stages[idx].field_2048) + s >= s
        require idx < stages.length
        mem[0] = msg.sender
        mem[32] = sha3(stages[idx].field_512, 14)
        tokenAmountOfPeriod[stor15[idx].field_512][address(msg.sender)] = 0
        idx = idx + 1
        s = ((stages[idx].field_1792 * tokenAmountOfPeriod[stor15[idx].field_512][address(msg.sender)]) - (stages[idx].field_2048 * tokenAmountOfPeriod[stor15[idx].field_512][address(msg.sender)]) / stages[idx].field_2048) + s
        continue 
    require s > 0
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, s
    require ext_call.success
    emit DistributedTokens(msg.sender, s);
}

function setBasePrice(uint256[20] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    mem[64] = 736
    mem[96 len 640] = call.data[4 len 640]
    require owner == msg.sender
    periodStage = 24 * 3600 * cd[676]
    stages.length = 0
    mem[0] = 15
    idx = 0
    while 9 * stages.length > idx:
        stages[idx].field_0 = 0
        stages[idx].field_256 = 0
        stages[idx].field_512 = 0
        stages[idx].field_768 = 0
        stages[idx].field_1024 = 0
        stages[idx].field_1280 = 0
        stages[idx].field_1536 = 0
        stages[idx].field_1792 = 0
        stages[idx].field_2048 = 0
        idx = idx + 9
        continue 
    idx = 0
    s = 0
    while idx < 20:
        stages.length++
        if not stages.length > stages.length + 1:
            mem[0] = 15
            _68 = mem[64]
            mem[64] = mem[64] + 288
            mem[_68] = cd[644] + (periodStage * s)
            mem[_68 + 32] = cd[644] + periodStage + (s * periodStage)
            mem[_68 + 64] = s
            require idx < 20
            mem[_68 + 96] = mem[(32 * idx) + 96]
            require idx + 1 < 20
            mem[_68 + 128] = mem[(32 * idx + 1) + 96]
            require idx + 2 < 20
            mem[_68 + 160] = mem[(32 * idx + 2) + 96]
            require idx + 3 < 20
            mem[_68 + 192] = mem[(32 * idx + 3) + 96]
            mem[_68 + 224] = cd[708] * 10^cd[740]
            mem[_68 + 256] = 0
            stages[stages.length].field_0 = cd[644] + (periodStage * s)
            stages[stages.length].field_256 = cd[644] + periodStage + (s * periodStage)
            stages[stages.length].field_512 = s
            stages[stages.length].field_768 = mem[_68 + 96]
            stages[stages.length].field_1024 = mem[_68 + 128]
            stages[stages.length].field_1280 = mem[_68 + 160]
            stages[stages.length].field_1536 = mem[_68 + 192]
        else:
            t = sha3(15) + (9 * stages.length) + 9
            while sha3(15) + (9 * stages.length) > t:
                stor[t] = 0
                stor1[t].field_0 = 0
                uint256(stor2[t]) = 0
                uint256(stor3[t]) = 0
                stor4[t] = 0
                stor5[t] = 0
                stor6[t] = 0
                stor7[t] = 0
                stor8[t] = 0
                t = t + 9
                continue 
            mem[0] = 15
            _98 = mem[64]
            mem[64] = mem[64] + 288
            mem[_98] = cd[644] + (periodStage * s)
            mem[_98 + 32] = cd[644] + periodStage + (s * periodStage)
            mem[_98 + 64] = s
            require idx < 20
            mem[_98 + 96] = mem[(32 * idx) + 96]
            require idx + 1 < 20
            mem[_98 + 128] = mem[(32 * idx + 1) + 96]
            require idx + 2 < 20
            mem[_98 + 160] = mem[(32 * idx + 2) + 96]
            require idx + 3 < 20
            mem[_98 + 192] = mem[(32 * idx + 3) + 96]
            mem[_98 + 224] = cd[708] * 10^cd[740]
            mem[_98 + 256] = 0
            stages[stages.length].field_0 = cd[644] + (periodStage * s)
            stages[stages.length].field_256 = cd[644] + periodStage + (s * periodStage)
            stages[stages.length].field_512 = s
            stages[stages.length].field_768 = mem[_98 + 96]
            stages[stages.length].field_1024 = mem[_98 + 128]
            stages[stages.length].field_1280 = mem[_98 + 160]
            stages[stages.length].field_1536 = mem[_98 + 192]
        stages[stages.length].field_1792 = cd[708] * 10^cd[740]
        stages[stages.length].field_2048 = 0
        idx = idx + 4
        s = s + 1
        continue 
    require stages.length - 1 < stages.length
    stor5.length = stages[stages.length].field_0
    stage = 0
}

function investOtherCrypto(address arg1, uint256 arg2) {
    require cryptoAgentAddress == msg.sender
    require not uint8(stor1.length.field_160)
    require arg2 > 0
    require not stor9
    require address(stor2.length)
    require address(stor3.length)
    require block.timestamp >= stor4.length
    if block.timestamp > stor5.length:
        require stor6.length < CAP
        require block.timestamp < stor5.length
        revert
    else:
        if block.timestamp < stor4.length:
            require stor6.length < CAP
            require block.timestamp < stor5.length
            revert
        else:
            if stor6.length >= CAP:
                require stor6.length < CAP
                require block.timestamp < stor5.length
                revert
            else:
                if block.timestamp < stor5.length:
                    idx = 0
                    while idx < stages.length:
                        mem[0] = 15
                        if block.timestamp < stages[idx].field_0:
                            idx = idx + 1
                            continue 
                        else:
                            require idx < stages.length
                            mem[0] = 15
                            if block.timestamp >= stages[idx].field_256:
                                idx = idx + 1
                                continue 
                            else:
                                require idx < stages.length
                                stage = stages[idx].field_512
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if arg2 > 10 * 10^18:
                                    if arg2 > 50 * 10^18:
                                        if arg2 > 300 * 10^18:
                                            require stages[idx].field_512 < stages.length
                                            require stages[stages[idx].field_512].field_1536
                                            require arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536 > 0
                                            require stage < stages.length
                                            require stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) >= arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                            require stage < stages.length
                                            require stages[stor17].field_1792 >= stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536)
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOfPeriod[stor17][address(arg1)] >= tokenAmountOfPeriod[stor17][address(arg1)]
                                            tokenAmountOfPeriod[stor17][address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                            require stage < stages.length
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                            require stage < stages.length
                                            stages[stor17].field_2048 += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                            if stages[stor17].field_1792 != stages[stor17].field_2048:
                                                if investedAmountOf[address(arg1)]:
                                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require arg2 + stor7.length >= stor7.length
                                                    stor7.length += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stor6.length >= stor6.length
                                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_call.success
                                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536);
                                                else:
                                                    stor8.length++
                                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require arg2 + stor7.length >= stor7.length
                                                    stor7.length += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stor6.length >= stor6.length
                                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_call.success
                                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536);
                                            else:
                                                require stage >= 0
                                                require stage < stages.length
                                                stages[stor17].field_256 = block.timestamp
                                                s = stage + 1
                                                t = 0
                                                while s < stages.length:
                                                    stages[s].field_0 = block.timestamp + (periodStage * t)
                                                    mem[0] = 15
                                                    stages[s].field_256 = block.timestamp + periodStage + (t * periodStage)
                                                    s = s + 1
                                                    t = t + 1
                                                    continue 
                                                require stages.length - 1 < stages.length
                                                stor5.length = stages[stages.length].field_0
                                                if investedAmountOf[address(arg1)]:
                                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require arg2 + stor7.length >= stor7.length
                                                    stor7.length += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stor6.length >= stor6.length
                                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_call.success
                                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536);
                                                else:
                                                    stor8.length++
                                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require arg2 + stor7.length >= stor7.length
                                                    stor7.length += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stor6.length >= stor6.length
                                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_call.success
                                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536);
                                        else:
                                            require stages[idx].field_512 < stages.length
                                            require stages[stages[idx].field_512].field_1280
                                            require arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280 > 0
                                            require stage < stages.length
                                            require stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) >= arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                            require stage < stages.length
                                            require stages[stor17].field_1792 >= stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280)
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOfPeriod[stor17][address(arg1)] >= tokenAmountOfPeriod[stor17][address(arg1)]
                                            tokenAmountOfPeriod[stor17][address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                            require stage < stages.length
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                            require stage < stages.length
                                            stages[stor17].field_2048 += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                            if stages[stor17].field_1792 != stages[stor17].field_2048:
                                                if investedAmountOf[address(arg1)]:
                                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require arg2 + stor7.length >= stor7.length
                                                    stor7.length += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stor6.length >= stor6.length
                                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_call.success
                                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280);
                                                else:
                                                    stor8.length++
                                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require arg2 + stor7.length >= stor7.length
                                                    stor7.length += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stor6.length >= stor6.length
                                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_call.success
                                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280);
                                            else:
                                                require stage >= 0
                                                require stage < stages.length
                                                stages[stor17].field_256 = block.timestamp
                                                s = stage + 1
                                                t = 0
                                                while s < stages.length:
                                                    stages[s].field_0 = block.timestamp + (periodStage * t)
                                                    mem[0] = 15
                                                    stages[s].field_256 = block.timestamp + periodStage + (t * periodStage)
                                                    s = s + 1
                                                    t = t + 1
                                                    continue 
                                                require stages.length - 1 < stages.length
                                                stor5.length = stages[stages.length].field_0
                                                if investedAmountOf[address(arg1)]:
                                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require arg2 + stor7.length >= stor7.length
                                                    stor7.length += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stor6.length >= stor6.length
                                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_call.success
                                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280);
                                                else:
                                                    stor8.length++
                                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                    investedAmountOf[address(arg1)] += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require arg2 + stor7.length >= stor7.length
                                                    stor7.length += arg2
                                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stor6.length >= stor6.length
                                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_call.success
                                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280);
                                    else:
                                        require stages[idx].field_512 < stages.length
                                        require stages[stages[idx].field_512].field_1024
                                        require arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024 > 0
                                        require stage < stages.length
                                        require stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) >= arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                        require stage < stages.length
                                        require stages[stor17].field_1792 >= stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024)
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOfPeriod[stor17][address(arg1)] >= tokenAmountOfPeriod[stor17][address(arg1)]
                                        tokenAmountOfPeriod[stor17][address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                        require stage < stages.length
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                        require stage < stages.length
                                        stages[stor17].field_2048 += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                        if stages[stor17].field_1792 != stages[stor17].field_2048:
                                            if investedAmountOf[address(arg1)]:
                                                require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += arg2
                                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require arg2 + stor7.length >= stor7.length
                                                stor7.length += arg2
                                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stor6.length >= stor6.length
                                                stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_code.size(address(stor2.length))
                                                call address(stor2.length).0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_call.success
                                                emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024);
                                            else:
                                                stor8.length++
                                                require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += arg2
                                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require arg2 + stor7.length >= stor7.length
                                                stor7.length += arg2
                                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stor6.length >= stor6.length
                                                stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_code.size(address(stor2.length))
                                                call address(stor2.length).0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_call.success
                                                emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024);
                                        else:
                                            require stage >= 0
                                            require stage < stages.length
                                            stages[stor17].field_256 = block.timestamp
                                            s = stage + 1
                                            t = 0
                                            while s < stages.length:
                                                stages[s].field_0 = block.timestamp + (periodStage * t)
                                                mem[0] = 15
                                                stages[s].field_256 = block.timestamp + periodStage + (t * periodStage)
                                                s = s + 1
                                                t = t + 1
                                                continue 
                                            require stages.length - 1 < stages.length
                                            stor5.length = stages[stages.length].field_0
                                            if investedAmountOf[address(arg1)]:
                                                require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += arg2
                                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require arg2 + stor7.length >= stor7.length
                                                stor7.length += arg2
                                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stor6.length >= stor6.length
                                                stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_code.size(address(stor2.length))
                                                call address(stor2.length).0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_call.success
                                                emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024);
                                            else:
                                                stor8.length++
                                                require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                                investedAmountOf[address(arg1)] += arg2
                                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                                tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require arg2 + stor7.length >= stor7.length
                                                stor7.length += arg2
                                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stor6.length >= stor6.length
                                                stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_code.size(address(stor2.length))
                                                call address(stor2.length).0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_call.success
                                                emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024);
                                else:
                                    require stages[idx].field_512 < stages.length
                                    require stages[stages[idx].field_512].field_768
                                    require arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768 > 0
                                    require stage < stages.length
                                    require stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) >= arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                    require stage < stages.length
                                    require stages[stor17].field_1792 >= stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768)
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOfPeriod[stor17][address(arg1)] >= tokenAmountOfPeriod[stor17][address(arg1)]
                                    tokenAmountOfPeriod[stor17][address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                    require stage < stages.length
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                    require stage < stages.length
                                    stages[stor17].field_2048 += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                    if stages[stor17].field_1792 != stages[stor17].field_2048:
                                        if investedAmountOf[address(arg1)]:
                                            require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += arg2
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require arg2 + stor7.length >= stor7.length
                                            stor7.length += arg2
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stor6.length >= stor6.length
                                            stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_code.size(address(stor2.length))
                                            call address(stor2.length).0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_call.success
                                            emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768);
                                        else:
                                            stor8.length++
                                            require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += arg2
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require arg2 + stor7.length >= stor7.length
                                            stor7.length += arg2
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stor6.length >= stor6.length
                                            stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_code.size(address(stor2.length))
                                            call address(stor2.length).0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_call.success
                                            emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768);
                                    else:
                                        require stage >= 0
                                        require stage < stages.length
                                        stages[stor17].field_256 = block.timestamp
                                        s = stage + 1
                                        t = 0
                                        while s < stages.length:
                                            stages[s].field_0 = block.timestamp + (periodStage * t)
                                            mem[0] = 15
                                            stages[s].field_256 = block.timestamp + periodStage + (t * periodStage)
                                            s = s + 1
                                            t = t + 1
                                            continue 
                                        require stages.length - 1 < stages.length
                                        stor5.length = stages[stages.length].field_0
                                        if investedAmountOf[address(arg1)]:
                                            require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += arg2
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require arg2 + stor7.length >= stor7.length
                                            stor7.length += arg2
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stor6.length >= stor6.length
                                            stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_code.size(address(stor2.length))
                                            call address(stor2.length).0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_call.success
                                            emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768);
                                        else:
                                            stor8.length++
                                            require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                            investedAmountOf[address(arg1)] += arg2
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                            tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require arg2 + stor7.length >= stor7.length
                                            stor7.length += arg2
                                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stor6.length >= stor6.length
                                            stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_code.size(address(stor2.length))
                                            call address(stor2.length).0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_call.success
                                            emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768);
                    require stages.length - 1 < stages.length
                    stage = stages[stages.length].field_0
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if arg2 > 10 * 10^18:
                        if arg2 > 50 * 10^18:
                            if arg2 > 300 * 10^18:
                                require stages[stages.length].field_0 < stages.length
                                require stages[stages[stages.length].field_0].field_1536
                                require arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536 > 0
                                require stage < stages.length
                                require stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) >= arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                require stage < stages.length
                                require stages[stor17].field_1792 >= stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536)
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOfPeriod[stor17][address(arg1)] >= tokenAmountOfPeriod[stor17][address(arg1)]
                                tokenAmountOfPeriod[stor17][address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                require stage < stages.length
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                require stage < stages.length
                                stages[stor17].field_2048 += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                if stages[stor17].field_1792 != stages[stor17].field_2048:
                                    if investedAmountOf[address(arg1)]:
                                        require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require arg2 + stor7.length >= stor7.length
                                        stor7.length += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stor6.length >= stor6.length
                                        stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_call.success
                                        emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536);
                                    else:
                                        stor8.length++
                                        require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require arg2 + stor7.length >= stor7.length
                                        stor7.length += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stor6.length >= stor6.length
                                        stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_call.success
                                        emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536);
                                else:
                                    require stage >= 0
                                    require stage < stages.length
                                    stages[stor17].field_256 = block.timestamp
                                    idx = stage + 1
                                    s = 0
                                    while idx < stages.length:
                                        stages[idx].field_0 = block.timestamp + (periodStage * s)
                                        mem[0] = 15
                                        stages[idx].field_256 = block.timestamp + periodStage + (s * periodStage)
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    require stages.length - 1 < stages.length
                                    stor5.length = stages[stages.length].field_0
                                    if investedAmountOf[address(arg1)]:
                                        require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require arg2 + stor7.length >= stor7.length
                                        stor7.length += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stor6.length >= stor6.length
                                        stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_call.success
                                        emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536);
                                    else:
                                        stor8.length++
                                        require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require arg2 + stor7.length >= stor7.length
                                        stor7.length += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stor6.length >= stor6.length
                                        stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_call.success
                                        emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536);
                            else:
                                require stages[stages.length].field_0 < stages.length
                                require stages[stages[stages.length].field_0].field_1280
                                require arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280 > 0
                                require stage < stages.length
                                require stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) >= arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                require stage < stages.length
                                require stages[stor17].field_1792 >= stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280)
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOfPeriod[stor17][address(arg1)] >= tokenAmountOfPeriod[stor17][address(arg1)]
                                tokenAmountOfPeriod[stor17][address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                require stage < stages.length
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                require stage < stages.length
                                stages[stor17].field_2048 += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                if stages[stor17].field_1792 != stages[stor17].field_2048:
                                    if investedAmountOf[address(arg1)]:
                                        require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require arg2 + stor7.length >= stor7.length
                                        stor7.length += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stor6.length >= stor6.length
                                        stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_call.success
                                        emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280);
                                    else:
                                        stor8.length++
                                        require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require arg2 + stor7.length >= stor7.length
                                        stor7.length += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stor6.length >= stor6.length
                                        stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_call.success
                                        emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280);
                                else:
                                    require stage >= 0
                                    require stage < stages.length
                                    stages[stor17].field_256 = block.timestamp
                                    idx = stage + 1
                                    s = 0
                                    while idx < stages.length:
                                        stages[idx].field_0 = block.timestamp + (periodStage * s)
                                        mem[0] = 15
                                        stages[idx].field_256 = block.timestamp + periodStage + (s * periodStage)
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    require stages.length - 1 < stages.length
                                    stor5.length = stages[stages.length].field_0
                                    if investedAmountOf[address(arg1)]:
                                        require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require arg2 + stor7.length >= stor7.length
                                        stor7.length += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stor6.length >= stor6.length
                                        stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_call.success
                                        emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280);
                                    else:
                                        stor8.length++
                                        require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                        investedAmountOf[address(arg1)] += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                        tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require arg2 + stor7.length >= stor7.length
                                        stor7.length += arg2
                                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stor6.length >= stor6.length
                                        stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_call.success
                                        emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280);
                        else:
                            require stages[stages.length].field_0 < stages.length
                            require stages[stages[stages.length].field_0].field_1024
                            require arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024 > 0
                            require stage < stages.length
                            require stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) >= arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                            require stage < stages.length
                            require stages[stor17].field_1792 >= stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024)
                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOfPeriod[stor17][address(arg1)] >= tokenAmountOfPeriod[stor17][address(arg1)]
                            tokenAmountOfPeriod[stor17][address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                            require stage < stages.length
                            require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stages[stor17].field_2048 >= stages[stor17].field_2048
                            require stage < stages.length
                            stages[stor17].field_2048 += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                            if stages[stor17].field_1792 != stages[stor17].field_2048:
                                if investedAmountOf[address(arg1)]:
                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                    investedAmountOf[address(arg1)] += arg2
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require arg2 + stor7.length >= stor7.length
                                    stor7.length += arg2
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stor6.length >= stor6.length
                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_call.success
                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024);
                                else:
                                    stor8.length++
                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                    investedAmountOf[address(arg1)] += arg2
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require arg2 + stor7.length >= stor7.length
                                    stor7.length += arg2
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stor6.length >= stor6.length
                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_call.success
                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024);
                            else:
                                require stage >= 0
                                require stage < stages.length
                                stages[stor17].field_256 = block.timestamp
                                idx = stage + 1
                                s = 0
                                while idx < stages.length:
                                    stages[idx].field_0 = block.timestamp + (periodStage * s)
                                    mem[0] = 15
                                    stages[idx].field_256 = block.timestamp + periodStage + (s * periodStage)
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                require stages.length - 1 < stages.length
                                stor5.length = stages[stages.length].field_0
                                if investedAmountOf[address(arg1)]:
                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                    investedAmountOf[address(arg1)] += arg2
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require arg2 + stor7.length >= stor7.length
                                    stor7.length += arg2
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stor6.length >= stor6.length
                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_call.success
                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024);
                                else:
                                    stor8.length++
                                    require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                    investedAmountOf[address(arg1)] += arg2
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                    tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require arg2 + stor7.length >= stor7.length
                                    stor7.length += arg2
                                    require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stor6.length >= stor6.length
                                    stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_call.success
                                    emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024);
                    else:
                        require stages[stages.length].field_0 < stages.length
                        require stages[stages[stages.length].field_0].field_768
                        require arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768 > 0
                        require stage < stages.length
                        require stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) >= arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                        require stage < stages.length
                        require stages[stor17].field_1792 >= stages[stor17].field_2048 + (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768)
                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOfPeriod[stor17][address(arg1)] >= tokenAmountOfPeriod[stor17][address(arg1)]
                        tokenAmountOfPeriod[stor17][address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                        require stage < stages.length
                        require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stages[stor17].field_2048 >= stages[stor17].field_2048
                        require stage < stages.length
                        stages[stor17].field_2048 += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                        if stages[stor17].field_1792 != stages[stor17].field_2048:
                            if investedAmountOf[address(arg1)]:
                                require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += arg2
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require arg2 + stor7.length >= stor7.length
                                stor7.length += arg2
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stor6.length >= stor6.length
                                stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_call.success
                                emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768);
                            else:
                                stor8.length++
                                require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += arg2
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require arg2 + stor7.length >= stor7.length
                                stor7.length += arg2
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stor6.length >= stor6.length
                                stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_call.success
                                emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768);
                        else:
                            require stage >= 0
                            require stage < stages.length
                            stages[stor17].field_256 = block.timestamp
                            idx = stage + 1
                            s = 0
                            while idx < stages.length:
                                stages[idx].field_0 = block.timestamp + (periodStage * s)
                                mem[0] = 15
                                stages[idx].field_256 = block.timestamp + periodStage + (s * periodStage)
                                idx = idx + 1
                                s = s + 1
                                continue 
                            require stages.length - 1 < stages.length
                            stor5.length = stages[stages.length].field_0
                            if investedAmountOf[address(arg1)]:
                                require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += arg2
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require arg2 + stor7.length >= stor7.length
                                stor7.length += arg2
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stor6.length >= stor6.length
                                stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_call.success
                                emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768);
                            else:
                                stor8.length++
                                require arg2 + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                                investedAmountOf[address(arg1)] += arg2
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                                tokenAmountOf[address(arg1)] += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require arg2 + stor7.length >= stor7.length
                                stor7.length += arg2
                                require (arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stor6.length >= stor6.length
                                stor6.length += arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_call.success
                                emit InvestedOtherCrypto(address(arg1), arg2, arg2 * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768);
                else:
                    require stor6.length < CAP
                    require block.timestamp < stor5.length
                    revert
}

function _fallback() payable {
    require not uint8(stor1.length.field_160)
    require msg.value > 0
    require not stor9
    require address(stor2.length)
    require address(stor3.length)
    require block.timestamp >= stor4.length
    if block.timestamp > stor5.length:
        require stor6.length < CAP
        require block.timestamp < stor5.length
        revert
    else:
        if block.timestamp < stor4.length:
            require stor6.length < CAP
            require block.timestamp < stor5.length
            revert
        else:
            if stor6.length >= CAP:
                require stor6.length < CAP
                require block.timestamp < stor5.length
                revert
            else:
                if block.timestamp < stor5.length:
                    idx = 0
                    while idx < stages.length:
                        mem[0] = 15
                        if block.timestamp < stages[idx].field_0:
                            idx = idx + 1
                            continue 
                        else:
                            require idx < stages.length
                            mem[0] = 15
                            if block.timestamp >= stages[idx].field_256:
                                idx = idx + 1
                                continue 
                            else:
                                require idx < stages.length
                                stage = stages[idx].field_512
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if msg.value > 10 * 10^18:
                                    if msg.value > 50 * 10^18:
                                        if msg.value > 300 * 10^18:
                                            require stages[idx].field_512 < stages.length
                                            require stages[stages[idx].field_512].field_1536
                                            require msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536 > 0
                                            require stage < stages.length
                                            require stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) >= msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                            require stage < stages.length
                                            require stages[stor17].field_1792 >= stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536)
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOfPeriod[stor17][address(msg.sender)] >= tokenAmountOfPeriod[stor17][address(msg.sender)]
                                            tokenAmountOfPeriod[stor17][address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                            require stage < stages.length
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                            require stage < stages.length
                                            stages[stor17].field_2048 += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                            if stages[stor17].field_1792 != stages[stor17].field_2048:
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require msg.value + stor7.length >= stor7.length
                                                    stor7.length += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stor6.length >= stor6.length
                                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_call.success
                                                    call address(stor3.length) with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536);
                                                else:
                                                    stor8.length++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require msg.value + stor7.length >= stor7.length
                                                    stor7.length += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stor6.length >= stor6.length
                                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_call.success
                                                    call address(stor3.length) with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536);
                                            else:
                                                require stage >= 0
                                                require stage < stages.length
                                                stages[stor17].field_256 = block.timestamp
                                                s = stage + 1
                                                t = 0
                                                while s < stages.length:
                                                    stages[s].field_0 = block.timestamp + (periodStage * t)
                                                    mem[0] = 15
                                                    stages[s].field_256 = block.timestamp + periodStage + (t * periodStage)
                                                    s = s + 1
                                                    t = t + 1
                                                    continue 
                                                require stages.length - 1 < stages.length
                                                stor5.length = stages[stages.length].field_0
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require msg.value + stor7.length >= stor7.length
                                                    stor7.length += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stor6.length >= stor6.length
                                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_call.success
                                                    call address(stor3.length) with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536);
                                                else:
                                                    stor8.length++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require msg.value + stor7.length >= stor7.length
                                                    stor7.length += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536) + stor6.length >= stor6.length
                                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536
                                                    require ext_call.success
                                                    call address(stor3.length) with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1536);
                                        else:
                                            require stages[idx].field_512 < stages.length
                                            require stages[stages[idx].field_512].field_1280
                                            require msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280 > 0
                                            require stage < stages.length
                                            require stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) >= msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                            require stage < stages.length
                                            require stages[stor17].field_1792 >= stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280)
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOfPeriod[stor17][address(msg.sender)] >= tokenAmountOfPeriod[stor17][address(msg.sender)]
                                            tokenAmountOfPeriod[stor17][address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                            require stage < stages.length
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                            require stage < stages.length
                                            stages[stor17].field_2048 += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                            if stages[stor17].field_1792 != stages[stor17].field_2048:
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require msg.value + stor7.length >= stor7.length
                                                    stor7.length += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stor6.length >= stor6.length
                                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_call.success
                                                    call address(stor3.length) with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280);
                                                else:
                                                    stor8.length++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require msg.value + stor7.length >= stor7.length
                                                    stor7.length += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stor6.length >= stor6.length
                                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_call.success
                                                    call address(stor3.length) with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280);
                                            else:
                                                require stage >= 0
                                                require stage < stages.length
                                                stages[stor17].field_256 = block.timestamp
                                                s = stage + 1
                                                t = 0
                                                while s < stages.length:
                                                    stages[s].field_0 = block.timestamp + (periodStage * t)
                                                    mem[0] = 15
                                                    stages[s].field_256 = block.timestamp + periodStage + (t * periodStage)
                                                    s = s + 1
                                                    t = t + 1
                                                    continue 
                                                require stages.length - 1 < stages.length
                                                stor5.length = stages[stages.length].field_0
                                                if investedAmountOf[address(msg.sender)]:
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require msg.value + stor7.length >= stor7.length
                                                    stor7.length += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stor6.length >= stor6.length
                                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_call.success
                                                    call address(stor3.length) with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280);
                                                else:
                                                    stor8.length++
                                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                    investedAmountOf[address(msg.sender)] += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require msg.value + stor7.length >= stor7.length
                                                    stor7.length += msg.value
                                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280) + stor6.length >= stor6.length
                                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_code.size(address(stor2.length))
                                                    call address(stor2.length).0x40c10f19 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280
                                                    require ext_call.success
                                                    call address(stor3.length) with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1280);
                                    else:
                                        require stages[idx].field_512 < stages.length
                                        require stages[stages[idx].field_512].field_1024
                                        require msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024 > 0
                                        require stage < stages.length
                                        require stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) >= msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                        require stage < stages.length
                                        require stages[stor17].field_1792 >= stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024)
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOfPeriod[stor17][address(msg.sender)] >= tokenAmountOfPeriod[stor17][address(msg.sender)]
                                        tokenAmountOfPeriod[stor17][address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                        require stage < stages.length
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                        require stage < stages.length
                                        stages[stor17].field_2048 += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                        if stages[stor17].field_1792 != stages[stor17].field_2048:
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require msg.value + stor7.length >= stor7.length
                                                stor7.length += msg.value
                                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stor6.length >= stor6.length
                                                stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_code.size(address(stor2.length))
                                                call address(stor2.length).0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_call.success
                                                call address(stor3.length) with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024);
                                            else:
                                                stor8.length++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require msg.value + stor7.length >= stor7.length
                                                stor7.length += msg.value
                                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stor6.length >= stor6.length
                                                stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_code.size(address(stor2.length))
                                                call address(stor2.length).0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_call.success
                                                call address(stor3.length) with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024);
                                        else:
                                            require stage >= 0
                                            require stage < stages.length
                                            stages[stor17].field_256 = block.timestamp
                                            s = stage + 1
                                            t = 0
                                            while s < stages.length:
                                                stages[s].field_0 = block.timestamp + (periodStage * t)
                                                mem[0] = 15
                                                stages[s].field_256 = block.timestamp + periodStage + (t * periodStage)
                                                s = s + 1
                                                t = t + 1
                                                continue 
                                            require stages.length - 1 < stages.length
                                            stor5.length = stages[stages.length].field_0
                                            if investedAmountOf[address(msg.sender)]:
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require msg.value + stor7.length >= stor7.length
                                                stor7.length += msg.value
                                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stor6.length >= stor6.length
                                                stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_code.size(address(stor2.length))
                                                call address(stor2.length).0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_call.success
                                                call address(stor3.length) with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024);
                                            else:
                                                stor8.length++
                                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require msg.value + stor7.length >= stor7.length
                                                stor7.length += msg.value
                                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024) + stor6.length >= stor6.length
                                                stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_code.size(address(stor2.length))
                                                call address(stor2.length).0x40c10f19 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024
                                                require ext_call.success
                                                call address(stor3.length) with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_1024);
                                else:
                                    require stages[idx].field_512 < stages.length
                                    require stages[stages[idx].field_512].field_768
                                    require msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768 > 0
                                    require stage < stages.length
                                    require stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) >= msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                    require stage < stages.length
                                    require stages[stor17].field_1792 >= stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768)
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOfPeriod[stor17][address(msg.sender)] >= tokenAmountOfPeriod[stor17][address(msg.sender)]
                                    tokenAmountOfPeriod[stor17][address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                    require stage < stages.length
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                    require stage < stages.length
                                    stages[stor17].field_2048 += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                    if stages[stor17].field_1792 != stages[stor17].field_2048:
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require msg.value + stor7.length >= stor7.length
                                            stor7.length += msg.value
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stor6.length >= stor6.length
                                            stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_code.size(address(stor2.length))
                                            call address(stor2.length).0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_call.success
                                            call address(stor3.length) with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768);
                                        else:
                                            stor8.length++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require msg.value + stor7.length >= stor7.length
                                            stor7.length += msg.value
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stor6.length >= stor6.length
                                            stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_code.size(address(stor2.length))
                                            call address(stor2.length).0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_call.success
                                            call address(stor3.length) with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768);
                                    else:
                                        require stage >= 0
                                        require stage < stages.length
                                        stages[stor17].field_256 = block.timestamp
                                        s = stage + 1
                                        t = 0
                                        while s < stages.length:
                                            stages[s].field_0 = block.timestamp + (periodStage * t)
                                            mem[0] = 15
                                            stages[s].field_256 = block.timestamp + periodStage + (t * periodStage)
                                            s = s + 1
                                            t = t + 1
                                            continue 
                                        require stages.length - 1 < stages.length
                                        stor5.length = stages[stages.length].field_0
                                        if investedAmountOf[address(msg.sender)]:
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require msg.value + stor7.length >= stor7.length
                                            stor7.length += msg.value
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stor6.length >= stor6.length
                                            stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_code.size(address(stor2.length))
                                            call address(stor2.length).0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_call.success
                                            call address(stor3.length) with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768);
                                        else:
                                            stor8.length++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require msg.value + stor7.length >= stor7.length
                                            stor7.length += msg.value
                                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768) + stor6.length >= stor6.length
                                            stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_code.size(address(stor2.length))
                                            call address(stor2.length).0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768
                                            require ext_call.success
                                            call address(stor3.length) with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[idx].field_512].field_768);
                    require stages.length - 1 < stages.length
                    stage = stages[stages.length].field_0
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if msg.value > 10 * 10^18:
                        if msg.value > 50 * 10^18:
                            if msg.value > 300 * 10^18:
                                require stages[stages.length].field_0 < stages.length
                                require stages[stages[stages.length].field_0].field_1536
                                require msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536 > 0
                                require stage < stages.length
                                require stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) >= msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                require stage < stages.length
                                require stages[stor17].field_1792 >= stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536)
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOfPeriod[stor17][address(msg.sender)] >= tokenAmountOfPeriod[stor17][address(msg.sender)]
                                tokenAmountOfPeriod[stor17][address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                require stage < stages.length
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                require stage < stages.length
                                stages[stor17].field_2048 += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                if stages[stor17].field_1792 != stages[stor17].field_2048:
                                    if investedAmountOf[address(msg.sender)]:
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require msg.value + stor7.length >= stor7.length
                                        stor7.length += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stor6.length >= stor6.length
                                        stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_call.success
                                        call address(stor3.length) with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536);
                                    else:
                                        stor8.length++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require msg.value + stor7.length >= stor7.length
                                        stor7.length += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stor6.length >= stor6.length
                                        stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_call.success
                                        call address(stor3.length) with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536);
                                else:
                                    require stage >= 0
                                    require stage < stages.length
                                    stages[stor17].field_256 = block.timestamp
                                    idx = stage + 1
                                    s = 0
                                    while idx < stages.length:
                                        stages[idx].field_0 = block.timestamp + (periodStage * s)
                                        mem[0] = 15
                                        stages[idx].field_256 = block.timestamp + periodStage + (s * periodStage)
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    require stages.length - 1 < stages.length
                                    stor5.length = stages[stages.length].field_0
                                    if investedAmountOf[address(msg.sender)]:
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require msg.value + stor7.length >= stor7.length
                                        stor7.length += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stor6.length >= stor6.length
                                        stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_call.success
                                        call address(stor3.length) with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536);
                                    else:
                                        stor8.length++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require msg.value + stor7.length >= stor7.length
                                        stor7.length += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536) + stor6.length >= stor6.length
                                        stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536
                                        require ext_call.success
                                        call address(stor3.length) with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1536);
                            else:
                                require stages[stages.length].field_0 < stages.length
                                require stages[stages[stages.length].field_0].field_1280
                                require msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280 > 0
                                require stage < stages.length
                                require stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) >= msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                require stage < stages.length
                                require stages[stor17].field_1792 >= stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280)
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOfPeriod[stor17][address(msg.sender)] >= tokenAmountOfPeriod[stor17][address(msg.sender)]
                                tokenAmountOfPeriod[stor17][address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                require stage < stages.length
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stages[stor17].field_2048 >= stages[stor17].field_2048
                                require stage < stages.length
                                stages[stor17].field_2048 += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                if stages[stor17].field_1792 != stages[stor17].field_2048:
                                    if investedAmountOf[address(msg.sender)]:
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require msg.value + stor7.length >= stor7.length
                                        stor7.length += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stor6.length >= stor6.length
                                        stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_call.success
                                        call address(stor3.length) with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280);
                                    else:
                                        stor8.length++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require msg.value + stor7.length >= stor7.length
                                        stor7.length += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stor6.length >= stor6.length
                                        stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_call.success
                                        call address(stor3.length) with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280);
                                else:
                                    require stage >= 0
                                    require stage < stages.length
                                    stages[stor17].field_256 = block.timestamp
                                    idx = stage + 1
                                    s = 0
                                    while idx < stages.length:
                                        stages[idx].field_0 = block.timestamp + (periodStage * s)
                                        mem[0] = 15
                                        stages[idx].field_256 = block.timestamp + periodStage + (s * periodStage)
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    require stages.length - 1 < stages.length
                                    stor5.length = stages[stages.length].field_0
                                    if investedAmountOf[address(msg.sender)]:
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require msg.value + stor7.length >= stor7.length
                                        stor7.length += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stor6.length >= stor6.length
                                        stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_call.success
                                        call address(stor3.length) with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280);
                                    else:
                                        stor8.length++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require msg.value + stor7.length >= stor7.length
                                        stor7.length += msg.value
                                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280) + stor6.length >= stor6.length
                                        stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280
                                        require ext_call.success
                                        call address(stor3.length) with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1280);
                        else:
                            require stages[stages.length].field_0 < stages.length
                            require stages[stages[stages.length].field_0].field_1024
                            require msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024 > 0
                            require stage < stages.length
                            require stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) >= msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                            require stage < stages.length
                            require stages[stor17].field_1792 >= stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024)
                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOfPeriod[stor17][address(msg.sender)] >= tokenAmountOfPeriod[stor17][address(msg.sender)]
                            tokenAmountOfPeriod[stor17][address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                            require stage < stages.length
                            require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stages[stor17].field_2048 >= stages[stor17].field_2048
                            require stage < stages.length
                            stages[stor17].field_2048 += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                            if stages[stor17].field_1792 != stages[stor17].field_2048:
                                if investedAmountOf[address(msg.sender)]:
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require msg.value + stor7.length >= stor7.length
                                    stor7.length += msg.value
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stor6.length >= stor6.length
                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_call.success
                                    call address(stor3.length) with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024);
                                else:
                                    stor8.length++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require msg.value + stor7.length >= stor7.length
                                    stor7.length += msg.value
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stor6.length >= stor6.length
                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_call.success
                                    call address(stor3.length) with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024);
                            else:
                                require stage >= 0
                                require stage < stages.length
                                stages[stor17].field_256 = block.timestamp
                                idx = stage + 1
                                s = 0
                                while idx < stages.length:
                                    stages[idx].field_0 = block.timestamp + (periodStage * s)
                                    mem[0] = 15
                                    stages[idx].field_256 = block.timestamp + periodStage + (s * periodStage)
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                require stages.length - 1 < stages.length
                                stor5.length = stages[stages.length].field_0
                                if investedAmountOf[address(msg.sender)]:
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require msg.value + stor7.length >= stor7.length
                                    stor7.length += msg.value
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stor6.length >= stor6.length
                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_call.success
                                    call address(stor3.length) with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024);
                                else:
                                    stor8.length++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require msg.value + stor7.length >= stor7.length
                                    stor7.length += msg.value
                                    require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024) + stor6.length >= stor6.length
                                    stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024
                                    require ext_call.success
                                    call address(stor3.length) with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_1024);
                    else:
                        require stages[stages.length].field_0 < stages.length
                        require stages[stages[stages.length].field_0].field_768
                        require msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768 > 0
                        require stage < stages.length
                        require stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) >= msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                        require stage < stages.length
                        require stages[stor17].field_1792 >= stages[stor17].field_2048 + (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768)
                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOfPeriod[stor17][address(msg.sender)] >= tokenAmountOfPeriod[stor17][address(msg.sender)]
                        tokenAmountOfPeriod[stor17][address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                        require stage < stages.length
                        require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stages[stor17].field_2048 >= stages[stor17].field_2048
                        require stage < stages.length
                        stages[stor17].field_2048 += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                        if stages[stor17].field_1792 != stages[stor17].field_2048:
                            if investedAmountOf[address(msg.sender)]:
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require msg.value + stor7.length >= stor7.length
                                stor7.length += msg.value
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stor6.length >= stor6.length
                                stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_call.success
                                call address(stor3.length) with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768);
                            else:
                                stor8.length++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require msg.value + stor7.length >= stor7.length
                                stor7.length += msg.value
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stor6.length >= stor6.length
                                stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_call.success
                                call address(stor3.length) with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768);
                        else:
                            require stage >= 0
                            require stage < stages.length
                            stages[stor17].field_256 = block.timestamp
                            idx = stage + 1
                            s = 0
                            while idx < stages.length:
                                stages[idx].field_0 = block.timestamp + (periodStage * s)
                                mem[0] = 15
                                stages[idx].field_256 = block.timestamp + periodStage + (s * periodStage)
                                idx = idx + 1
                                s = s + 1
                                continue 
                            require stages.length - 1 < stages.length
                            stor5.length = stages[stages.length].field_0
                            if investedAmountOf[address(msg.sender)]:
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require msg.value + stor7.length >= stor7.length
                                stor7.length += msg.value
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stor6.length >= stor6.length
                                stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_call.success
                                call address(stor3.length) with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768);
                            else:
                                stor8.length++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require msg.value + stor7.length >= stor7.length
                                stor7.length += msg.value
                                require (msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768) + stor6.length >= stor6.length
                                stor6.length += msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768
                                require ext_call.success
                                call address(stor3.length) with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit Invested(msg.sender, msg.value, msg.value * 10^ext_call.return_data[0] / stages[stages[stages.length].field_0].field_768);
                else:
                    require stor6.length < CAP
                    require block.timestamp < stor5.length
                    revert
}



}
