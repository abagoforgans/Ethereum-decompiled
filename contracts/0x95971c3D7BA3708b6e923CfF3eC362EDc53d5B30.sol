contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    require code.data[5563 len 20]
    stor3 = code.data[5563 len 20]
    stor5 = 1
    return code.data[137 len 5414]
}



// =====================  Runtime code  =====================


const isTransferAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) = 1


address contractOwner;
address pendingContractOwner;
mapping of uint8 stor2;
address stor3;
address stor4;
uint256 stor5;
mapping of struct stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;

function pendingContractOwner() {
    return pendingContractOwner
}

function oracles(address arg1) {
    return bool(stor2[arg1])
}

function contractOwner() {
    return contractOwner
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function init(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    stor4 = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function getUserBalance(bytes32 arg1) {
    if not stor8[arg1]:
        return 0
    require 1 <= stor5
    if stor8[arg1] > stor5 - 1:
        return stor6[stor5][6][arg1].field_0
    return stor6[stor8[arg1]][6][arg1].field_0
}

function addOracles(address[] arg1) {
    if contractOwner != msg.sender:
        return 0
    s = 0
    idx = 0
    while idx < arg1.length:
        if address(cd[((32 * idx) + arg1 + 36)]) != 0:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            if not stor2[address(cd[((32 * idx) + arg1 + 36)])]:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
                mem[96] = address(cd[((32 * idx) + arg1 + 36)])
                emit OracleAdded(address(cd[((32 * idx) + arg1 + 36)]));
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 1
}

function removeOracles(address[] arg1) {
    if contractOwner != msg.sender:
        return 0
    s = 0
    idx = 0
    while idx < arg1.length:
        if address(cd[((32 * idx) + arg1 + 36)]) != 0:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            if stor2[address(cd[((32 * idx) + arg1 + 36)])]:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                stor2[address(cd[((32 * idx) + arg1 + 36)])] = 0
                mem[96] = address(cd[((32 * idx) + arg1 + 36)])
                emit OracleRemoved(address(cd[((32 * idx) + arg1 + 36)]));
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 1
}

function getLockedUserBalance(bytes32 arg1) {
    mem[0] = arg1
    mem[32] = 9
    s = 0
    s = 1
    t = stor[sha3(mem[0 len 64])]
    while s <= t:
        if stor9[arg1][1][s] > block.timestamp:
            mem[0] = stor9[arg1][1][s]
            mem[32] = sha3(arg1, 9) + 2
            if stor9[arg1][2][stor9[arg1][1][s]] >= 0:
                s = stor9[arg1][1][s]
                s = s + 1
                t = t
                continue 
        else:
            stor9[arg1][1][s] = stor9[arg1][1][t]
            stor9[arg1][1][t] = 0
            mem[0] = stor9[arg1][1][s]
            mem[32] = sha3(arg1, 9) + 2
            stor9[arg1][2][stor9[arg1][1][s]] = 0
            if 1 <= t:
                s = stor9[arg1][1][s]
                s = s + 1
                t = t - 1
                continue 
        revert
    stor9[arg1] = t
    return 0
}

function withdrawnTokens(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if contractOwner != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_23))
        call address(_23).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_23))
            call address(_23).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _23
        idx = idx + 1
        continue 
    return 1
}

function getTotalBmcDaysAmount(uint256 arg1) {
    if stor6[stor5].field_0:
        if not stor6[stor5][7][stor6[stor5].field_0].field_0:
            return 0
        if stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= arg1 / 24 * 3600:
            if not stor6[stor5].field_512:
                if (arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256:
                    return ((arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
            else:
                if stor6[stor5].field_512:
                    if (arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (arg1 / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600):
                        if (arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256:
                            return ((arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
    else:
        if not stor6[stor5].field_768:
            return 0
        if stor6[stor5].field_768 / 24 * 3600 <= arg1 / 24 * 3600:
            if not stor6[stor5].field_512:
                if (arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256:
                    return ((arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
            else:
                if stor6[stor5].field_512:
                    if (arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (arg1 / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600):
                        if (arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256:
                            return ((arg1 / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
    revert
}

function addDistributionPeriod() {
    require stor4 == msg.sender
    require stor5 + 1 >= stor5
    stor7[block.timestamp] = stor5
    if stor6[stor5].field_0:
        if not stor6[stor5][7][stor6[stor5].field_0].field_0:
            stor6[stor5 + 1].field_768 = block.timestamp
            stor6[stor5 + 1].field_512 = stor6[stor5].field_512
            stor6[stor5 + 1].field_256 = 0
        else:
            require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
            if stor6[stor5].field_512:
                require stor6[stor5].field_512
                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
            stor6[stor5 + 1].field_768 = block.timestamp
            stor6[stor5 + 1].field_512 = stor6[stor5].field_512
            stor6[stor5 + 1].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
    else:
        if not stor6[stor5].field_768:
            stor6[stor5 + 1].field_768 = block.timestamp
            stor6[stor5 + 1].field_512 = stor6[stor5].field_512
            stor6[stor5 + 1].field_256 = 0
        else:
            require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
            if stor6[stor5].field_512:
                require stor6[stor5].field_512
                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
            stor6[stor5 + 1].field_768 = block.timestamp
            stor6[stor5 + 1].field_512 = stor6[stor5].field_512
            stor6[stor5 + 1].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
    stor5++
    return 1
}

function getLockedUserDeposits(bytes32 arg1) {
    if 192 < (32 * stor9[arg1]) + 192:
        mem[(32 * stor9[arg1]) + 192] = stor9[arg1]
        s = 0
        idx = 1
        s = 0
        while idx < stor9[arg1]:
            mem[0] = idx
            mem[32] = sha3(arg1, 9) + 1
            if stor9[arg1][1][idx] <= block.timestamp:
                s = stor9[arg1][1][idx]
                idx = idx + 1
                s = s
                continue 
            require s < stor9[arg1]
            mem[(32 * s) + 192] = stor9[arg1][1][idx]
            mem[0] = stor9[arg1][1][idx]
            mem[32] = sha3(arg1, 9) + 2
            require s < mem[(32 * stor9[arg1]) + 192]
            mem[(32 * stor9[arg1]) + (32 * s) + 224] = stor9[arg1][2][stor9[arg1][1][idx]]
            s = stor9[arg1][1][idx]
            idx = idx + 1
            s = s + 1
            continue 
        mem[(64 * stor9[arg1]) + 224] = 64
        mem[(64 * stor9[arg1]) + 288] = stor9[arg1]
        mem[(64 * stor9[arg1]) + 320 len floor32(stor9[arg1])] = mem[192 len floor32(stor9[arg1])]
        mem[(64 * stor9[arg1]) + 256] = (32 * stor9[arg1]) + 96
        mem[(98 * stor9[arg1]) + 320] = mem[(32 * stor9[arg1]) + 192]
        mem[(98 * stor9[arg1]) + 352 len floor32(mem[(32 * stor9[arg1]) + 192])] = mem[(32 * stor9[arg1]) + 224 len floor32(mem[(32 * stor9[arg1]) + 192])]
        return memory
          from (64 * stor9[arg1]) + 224
           len (32 * mem[(32 * stor9[arg1]) + 192]) + (161 * stor9[arg1]) + 128
    mem[192] = stor9[arg1]
    s = 0
    idx = 1
    s = 0
    while idx < stor9[arg1]:
        mem[0] = idx
        mem[32] = sha3(arg1, 9) + 1
        if stor9[arg1][1][idx] <= block.timestamp:
            s = stor9[arg1][1][idx]
            idx = idx + 1
            s = s
            continue 
        require s < stor9[arg1]
        mem[(32 * s) + 192] = stor9[arg1][1][idx]
        mem[0] = stor9[arg1][1][idx]
        mem[32] = sha3(arg1, 9) + 2
        require s < mem[192]
        mem[(32 * s) + 224] = stor9[arg1][2][stor9[arg1][1][idx]]
        s = stor9[arg1][1][idx]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * stor9[arg1]) + 224] = 64
    mem[(32 * stor9[arg1]) + 288] = stor9[arg1]
    mem[(32 * stor9[arg1]) + 320 len floor32(stor9[arg1])] = mem[192 len floor32(stor9[arg1])]
    mem[(32 * stor9[arg1]) + 256] = (32 * stor9[arg1]) + 96
    mem[(64 * stor9[arg1]) + 320] = mem[192]
    mem[(64 * stor9[arg1]) + 352 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
    return Array(len=stor9[arg1], data=mem[192 len floor32(stor9[arg1])], mem[(32 * stor9[arg1]) + floor32(stor9[arg1]) + 320 len (32 * stor9[arg1]) + (32 * mem[192]) + -floor32(stor9[arg1]) + 32]), 
           (32 * stor9[arg1]) + 96
}

function deposit(bytes32 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    if not stor2[address(msg.sender)]:
        return 0
    require arg1
    require arg2
    require arg3 < arg2
    require ext_code.size(stor3)
    call stor3.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        return 108001
    if not stor8[arg1]:
        stor6[stor5][4][arg1].field_0 = 0
    else:
        if stor8[arg1] <= stor5:
            require (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0 >= stor6[stor8[arg1]][4][arg1].field_0
            stor6[stor5][4][arg1].field_0 = (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0
        else:
            require (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0 >= stor6[stor5][4][arg1].field_0
            stor6[stor5][4][arg1].field_0 = (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0
    if stor6[stor5].field_0:
        if not stor6[stor5][7][stor6[stor5].field_0].field_0:
            stor6[stor5].field_256 = 0
        else:
            require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
            if stor6[stor5].field_512:
                require stor6[stor5].field_512
                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
            stor6[stor5].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
    else:
        if not stor6[stor5].field_768:
            stor6[stor5].field_256 = 0
        else:
            require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
            if stor6[stor5].field_512:
                require stor6[stor5].field_512
                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
            stor6[stor5].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
    require arg2 - arg3 + stor6[stor5].field_512 >= stor6[stor5].field_512
    stor6[stor5].field_512 = arg2 - arg3 + stor6[stor5].field_512
    if not stor8[arg1]:
        require stor6[stor5].field_0 + 1 >= stor6[stor5].field_0
        stor6[stor5].field_0++
        stor6[stor5][7][stor6[stor5].field_0 + 1].field_0 = block.timestamp
        require arg2 - arg3 >= 0
        stor6[stor5][6][arg1].field_0 = arg2 - arg3
    else:
        require 1 <= stor5
        require stor6[stor5].field_0 + 1 >= stor6[stor5].field_0
        stor6[stor5].field_0++
        stor6[stor5][7][stor6[stor5].field_0 + 1].field_0 = block.timestamp
        if stor8[arg1] > stor5 - 1:
            require arg2 - arg3 + stor6[stor5][6][arg1].field_0 >= stor6[stor5][6][arg1].field_0
            stor6[stor5][6][arg1].field_0 = arg2 - arg3 + stor6[stor5][6][arg1].field_0
        else:
            require arg2 - arg3 + stor6[stor8[arg1]][6][arg1].field_0 >= stor6[stor8[arg1]][6][arg1].field_0
            stor6[stor5][6][arg1].field_0 = arg2 - arg3 + stor6[stor8[arg1]][6][arg1].field_0
    stor6[stor5][5][arg1].field_0 = stor6[stor5].field_0 + 1
    if arg5 > block.timestamp:
        if not stor9[arg1][2][arg5]:
            require stor9[arg1] + 1 >= stor9[arg1]
            stor9[arg1]++
            stor9[arg1][1][stor9[arg1] + 1] = arg5
        require arg2 - arg3 + stor9[arg1][2][arg5] >= stor9[arg1][2][arg5]
        stor9[arg1][2][arg5] = arg2 - arg3 + stor9[arg1][2][arg5]
    stor8[arg1] = stor5
    stor6[stor5].field_768 = 0
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    if arg4:
        if arg3:
            require ext_code.size(stor3)
            call stor3.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg4), arg3
            require ext_call.success
            require ext_call.return_data[0]
    emit TreasuryDeposited(arg1, arg2 - arg3, arg5);
    return 1
}

function withdraw(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, address arg5) {
    if not stor2[address(msg.sender)]:
        return 0
    require arg1
    require arg2
    require arg4 < arg2
    if not stor8[arg1]:
        mem[0] = arg1
        mem[32] = 9
        s = 0
        s = 1
        t = stor[sha3(mem[0 len 64])]
        while s <= t:
            if stor9[arg1][1][s] > block.timestamp:
                mem[0] = stor9[arg1][1][s]
                mem[32] = sha3(arg1, 9) + 2
                if stor9[arg1][2][stor9[arg1][1][s]] >= 0:
                    s = stor9[arg1][1][s]
                    s = s + 1
                    t = t
                    continue 
            else:
                stor9[arg1][1][s] = stor9[arg1][1][t]
                stor9[arg1][1][t] = 0
                mem[0] = stor9[arg1][1][s]
                mem[32] = sha3(arg1, 9) + 2
                stor9[arg1][2][stor9[arg1][1][s]] = 0
                if 1 <= t:
                    s = stor9[arg1][1][s]
                    s = s + 1
                    t = t - 1
                    continue 
            revert
        stor9[arg1] = t
        require 0 >= arg2
        if not stor8[arg1]:
            stor6[stor5][4][arg1].field_0 = 0
        else:
            if stor8[arg1] <= stor5:
                require (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0 >= stor6[stor8[arg1]][4][arg1].field_0
                stor6[stor5][4][arg1].field_0 = (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0
            else:
                require (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0 >= stor6[stor5][4][arg1].field_0
                stor6[stor5][4][arg1].field_0 = (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0
        if stor6[stor5].field_0:
            if not stor6[stor5][7][stor6[stor5].field_0].field_0:
                stor6[stor5].field_256 = 0
            else:
                require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
                if stor6[stor5].field_512:
                    require stor6[stor5].field_512
                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                stor6[stor5].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
        else:
            if not stor6[stor5].field_768:
                stor6[stor5].field_256 = 0
            else:
                require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
                if stor6[stor5].field_512:
                    require stor6[stor5].field_512
                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                stor6[stor5].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
        require arg2 <= stor6[stor5].field_512
        stor6[stor5].field_512 -= arg2
        require stor6[stor5].field_0 + 1 >= stor6[stor5].field_0
        stor6[stor5][7][stor6[stor5].field_0 + 1].field_0 = block.timestamp
        stor6[stor5][5][arg1].field_0 = stor6[stor5].field_0 + 1
        require arg2 <= 0
        stor6[stor5][6][arg1].field_0 = -arg2
    else:
        require 1 <= stor5
        mem[0] = arg1
        mem[32] = 9
        s = 0
        s = 1
        t = stor[sha3(mem[0 len 64])]
        while s <= t:
            if stor9[arg1][1][s] > block.timestamp:
                mem[0] = stor9[arg1][1][s]
                mem[32] = sha3(arg1, 9) + 2
                if stor9[arg1][2][stor9[arg1][1][s]] >= 0:
                    s = stor9[arg1][1][s]
                    s = s + 1
                    t = t
                    continue 
            else:
                stor9[arg1][1][s] = stor9[arg1][1][t]
                stor9[arg1][1][t] = 0
                mem[0] = stor9[arg1][1][s]
                mem[32] = sha3(arg1, 9) + 2
                stor9[arg1][2][stor9[arg1][1][s]] = 0
                if 1 <= t:
                    s = stor9[arg1][1][s]
                    s = s + 1
                    t = t - 1
                    continue 
            revert
        stor9[arg1] = t
        if stor8[arg1] > stor5 - 1:
            require 0 <= stor6[stor5][6][arg1].field_0
            require stor6[stor5][6][arg1].field_0 >= arg2
            if not stor8[arg1]:
                stor6[stor5][4][arg1].field_0 = 0
            else:
                if stor8[arg1] <= stor5:
                    require (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0 >= stor6[stor8[arg1]][4][arg1].field_0
                    stor6[stor5][4][arg1].field_0 = (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0
                else:
                    require (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0 >= stor6[stor5][4][arg1].field_0
                    stor6[stor5][4][arg1].field_0 = (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0
            if stor6[stor5].field_0:
                if not stor6[stor5][7][stor6[stor5].field_0].field_0:
                    stor6[stor5].field_256 = 0
                else:
                    require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
                    if stor6[stor5].field_512:
                        require stor6[stor5].field_512
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                    stor6[stor5].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
            else:
                if not stor6[stor5].field_768:
                    stor6[stor5].field_256 = 0
                else:
                    require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
                    if stor6[stor5].field_512:
                        require stor6[stor5].field_512
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                    stor6[stor5].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
            require arg2 <= stor6[stor5].field_512
            stor6[stor5].field_512 -= arg2
            require stor6[stor5].field_0 + 1 >= stor6[stor5].field_0
            stor6[stor5][7][stor6[stor5].field_0 + 1].field_0 = block.timestamp
            stor6[stor5][5][arg1].field_0 = stor6[stor5].field_0 + 1
            require arg2 <= stor6[stor5][6][arg1].field_0
            stor6[stor5][6][arg1].field_0 -= arg2
        else:
            require 0 <= stor6[stor8[arg1]][6][arg1].field_0
            require stor6[stor8[arg1]][6][arg1].field_0 >= arg2
            if not stor8[arg1]:
                stor6[stor5][4][arg1].field_0 = 0
            else:
                if stor8[arg1] <= stor5:
                    require (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0 >= stor6[stor8[arg1]][4][arg1].field_0
                    stor6[stor5][4][arg1].field_0 = (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0
                else:
                    require (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0 >= stor6[stor5][4][arg1].field_0
                    stor6[stor5][4][arg1].field_0 = (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0
            if stor6[stor5].field_0:
                if not stor6[stor5][7][stor6[stor5].field_0].field_0:
                    stor6[stor5].field_256 = 0
                else:
                    require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
                    if stor6[stor5].field_512:
                        require stor6[stor5].field_512
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                    stor6[stor5].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
            else:
                if not stor6[stor5].field_768:
                    stor6[stor5].field_256 = 0
                else:
                    require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
                    if stor6[stor5].field_512:
                        require stor6[stor5].field_512
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                    stor6[stor5].field_256 = (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256
            require arg2 <= stor6[stor5].field_512
            stor6[stor5].field_512 -= arg2
            require stor6[stor5].field_0 + 1 >= stor6[stor5].field_0
            stor6[stor5][7][stor6[stor5].field_0 + 1].field_0 = block.timestamp
            stor6[stor5][5][arg1].field_0 = stor6[stor5].field_0 + 1
            require arg2 <= stor6[stor8[arg1]][6][arg1].field_0
            stor6[stor5][6][arg1].field_0 = stor6[stor8[arg1]][6][arg1].field_0 - arg2
    stor6[stor5].field_0++
    stor8[arg1] = stor5
    stor6[stor5].field_768 = 0
    if arg5:
        if arg4:
            require ext_code.size(stor3)
            call stor3.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg5), arg4
            require ext_call.success
            require ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg3), arg2 - arg4
    require ext_call.success
    require ext_call.return_data[0]
    emit TreasuryWithdrawn(arg1, arg2 - arg4);
    return 1
}

function getSharesPercentForPeriod(bytes32 arg1, uint256 arg2) {
    if not arg2:
        if not stor8[arg1]:
            if stor6[stor5].field_0:
                if stor6[stor5][7][stor6[stor5].field_0].field_0:
                    require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
                    if stor6[stor5].field_512:
                        require stor6[stor5].field_512
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                    if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                        return (0 / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
            else:
                if stor6[stor5].field_768:
                    require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
                    if stor6[stor5].field_512:
                        require stor6[stor5].field_512
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                    if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                        return (0 / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
        else:
            if stor8[arg1] <= stor5:
                require (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0 >= stor6[stor8[arg1]][4][arg1].field_0
                if stor6[stor5].field_0:
                    if stor6[stor5][7][stor6[stor5].field_0].field_0:
                        require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
                        if stor6[stor5].field_512:
                            require stor6[stor5].field_512
                            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                        if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                            return ((10000 * block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (10000 * stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + (10000 * stor6[stor8[arg1]][4][arg1].field_0) / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
                else:
                    if stor6[stor5].field_768:
                        require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
                        if stor6[stor5].field_512:
                            require stor6[stor5].field_512
                            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                        if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                            return ((10000 * block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (10000 * stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + (10000 * stor6[stor8[arg1]][4][arg1].field_0) / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
            else:
                require (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0 >= stor6[stor5][4][arg1].field_0
                if stor6[stor5].field_0:
                    if stor6[stor5][7][stor6[stor5].field_0].field_0:
                        require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
                        if stor6[stor5].field_512:
                            require stor6[stor5].field_512
                            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                        if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                            return ((10000 * block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (10000 * stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + (10000 * stor6[stor5][4][arg1].field_0) / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
                else:
                    if stor6[stor5].field_768:
                        require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
                        if stor6[stor5].field_512:
                            require stor6[stor5].field_512
                            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
                        require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                        if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                            return ((10000 * block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (10000 * stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + (10000 * stor6[stor5][4][arg1].field_0) / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
    else:
        if stor7[arg2]:
            if arg2:
                if not stor8[arg1]:
                    if stor6[stor7[arg2]].field_0:
                        if stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0:
                            require stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 <= arg2 / 24 * 3600
                            if stor6[stor7[arg2]].field_512:
                                require stor6[stor7[arg2]].field_512
                                require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) / stor6[stor7[arg2]].field_512 == (arg2 / 24 * 3600) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600)
                            require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256 >= stor6[stor7[arg2]].field_256
                            if (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256:
                                return (0 / (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256)
                    else:
                        if stor6[stor7[arg2]].field_768:
                            require stor6[stor7[arg2]].field_768 / 24 * 3600 <= arg2 / 24 * 3600
                            if stor6[stor7[arg2]].field_512:
                                require stor6[stor7[arg2]].field_512
                                require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) / stor6[stor7[arg2]].field_512 == (arg2 / 24 * 3600) - (stor6[stor7[arg2]].field_768 / 24 * 3600)
                            require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256 >= stor6[stor7[arg2]].field_256
                            if (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256:
                                return (0 / (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256)
                else:
                    if stor8[arg1] <= stor7[arg2]:
                        require (arg2 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0 >= stor6[stor8[arg1]][4][arg1].field_0
                        if stor6[stor7[arg2]].field_0:
                            if stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0:
                                require stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 <= arg2 / 24 * 3600
                                if stor6[stor7[arg2]].field_512:
                                    require stor6[stor7[arg2]].field_512
                                    require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) / stor6[stor7[arg2]].field_512 == (arg2 / 24 * 3600) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600)
                                require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256 >= stor6[stor7[arg2]].field_256
                                if (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256:
                                    return ((10000 * arg2 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (10000 * stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + (10000 * stor6[stor8[arg1]][4][arg1].field_0) / (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256)
                        else:
                            if stor6[stor7[arg2]].field_768:
                                require stor6[stor7[arg2]].field_768 / 24 * 3600 <= arg2 / 24 * 3600
                                if stor6[stor7[arg2]].field_512:
                                    require stor6[stor7[arg2]].field_512
                                    require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) / stor6[stor7[arg2]].field_512 == (arg2 / 24 * 3600) - (stor6[stor7[arg2]].field_768 / 24 * 3600)
                                require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256 >= stor6[stor7[arg2]].field_256
                                if (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256:
                                    return ((10000 * arg2 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (10000 * stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + (10000 * stor6[stor8[arg1]][4][arg1].field_0) / (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256)
                    else:
                        require (arg2 / 24 * 3600 * stor6[stor7[arg2]][6][arg1].field_0) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]][6][arg1].field_0) + stor6[stor7[arg2]][4][arg1].field_0 >= stor6[stor7[arg2]][4][arg1].field_0
                        if stor6[stor7[arg2]].field_0:
                            if stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0:
                                require stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 <= arg2 / 24 * 3600
                                if stor6[stor7[arg2]].field_512:
                                    require stor6[stor7[arg2]].field_512
                                    require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) / stor6[stor7[arg2]].field_512 == (arg2 / 24 * 3600) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600)
                                require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256 >= stor6[stor7[arg2]].field_256
                                if (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256:
                                    return ((10000 * arg2 / 24 * 3600 * stor6[stor7[arg2]][6][arg1].field_0) - (10000 * stor6[stor7[arg2]][7][stor6[stor7[arg2]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]][6][arg1].field_0) + (10000 * stor6[stor7[arg2]][4][arg1].field_0) / (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]][7][stor6[stor7[arg2]].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256)
                        else:
                            if stor6[stor7[arg2]].field_768:
                                require stor6[stor7[arg2]].field_768 / 24 * 3600 <= arg2 / 24 * 3600
                                if stor6[stor7[arg2]].field_512:
                                    require stor6[stor7[arg2]].field_512
                                    require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) / stor6[stor7[arg2]].field_512 == (arg2 / 24 * 3600) - (stor6[stor7[arg2]].field_768 / 24 * 3600)
                                require (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256 >= stor6[stor7[arg2]].field_256
                                if (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256:
                                    return ((10000 * arg2 / 24 * 3600 * stor6[stor7[arg2]][6][arg1].field_0) - (10000 * stor6[stor7[arg2]][7][stor6[stor7[arg2]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor7[arg2]][6][arg1].field_0) + (10000 * stor6[stor7[arg2]][4][arg1].field_0) / (arg2 / 24 * 3600 * stor6[stor7[arg2]].field_512) - (stor6[stor7[arg2]].field_768 / 24 * 3600 * stor6[stor7[arg2]].field_512) + stor6[stor7[arg2]].field_256)
            else:
                if not stor8[arg1]:
                    if stor6[stor5].field_0:
                        if stor6[stor5][7][stor6[stor5].field_0].field_0:
                            require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
                            if stor6[stor5].field_512:
                                require stor6[stor5].field_512
                                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
                            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                            if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                                return (0 / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
                    else:
                        if stor6[stor5].field_768:
                            require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
                            if stor6[stor5].field_512:
                                require stor6[stor5].field_512
                                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
                            require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                            if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                                return (0 / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
                else:
                    if stor8[arg1] <= stor5:
                        require (block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + stor6[stor8[arg1]][4][arg1].field_0 >= stor6[stor8[arg1]][4][arg1].field_0
                        if stor6[stor5].field_0:
                            if stor6[stor5][7][stor6[stor5].field_0].field_0:
                                require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
                                if stor6[stor5].field_512:
                                    require stor6[stor5].field_512
                                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
                                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                                if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                                    return ((10000 * block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (10000 * stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + (10000 * stor6[stor8[arg1]][4][arg1].field_0) / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
                        else:
                            if stor6[stor5].field_768:
                                require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
                                if stor6[stor5].field_512:
                                    require stor6[stor5].field_512
                                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
                                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                                if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                                    return ((10000 * block.timestamp / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) - (10000 * stor6[stor8[arg1]][7][stor6[stor8[arg1]][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor8[arg1]][6][arg1].field_0) + (10000 * stor6[stor8[arg1]][4][arg1].field_0) / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
                    else:
                        require (block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + stor6[stor5][4][arg1].field_0 >= stor6[stor5][4][arg1].field_0
                        if stor6[stor5].field_0:
                            if stor6[stor5][7][stor6[stor5].field_0].field_0:
                                require stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 <= block.timestamp / 24 * 3600
                                if stor6[stor5].field_512:
                                    require stor6[stor5].field_512
                                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600)
                                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                                if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                                    return ((10000 * block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (10000 * stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + (10000 * stor6[stor5][4][arg1].field_0) / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5][7][stor6[stor5].field_0].field_0 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
                        else:
                            if stor6[stor5].field_768:
                                require stor6[stor5].field_768 / 24 * 3600 <= block.timestamp / 24 * 3600
                                if stor6[stor5].field_512:
                                    require stor6[stor5].field_512
                                    require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) / stor6[stor5].field_512 == (block.timestamp / 24 * 3600) - (stor6[stor5].field_768 / 24 * 3600)
                                require (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256 >= stor6[stor5].field_256
                                if (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256:
                                    return ((10000 * block.timestamp / 24 * 3600 * stor6[stor5][6][arg1].field_0) - (10000 * stor6[stor5][7][stor6[stor5][5][arg1].field_0].field_0 / 24 * 3600 * stor6[stor5][6][arg1].field_0) + (10000 * stor6[stor5][4][arg1].field_0) / (block.timestamp / 24 * 3600 * stor6[stor5].field_512) - (stor6[stor5].field_768 / 24 * 3600 * stor6[stor5].field_512) + stor6[stor5].field_256)
    return 0
}



}
