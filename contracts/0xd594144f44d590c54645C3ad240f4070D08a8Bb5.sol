contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor9;
uint256 stor13;

function _fallback() payable {
    stor9 = 10
    stor13 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[12599 len 20]
    stor0 = code.data[12599 len 20]
    return code.data[145 len 12442]
}



// =====================  Runtime code  =====================


#
#  - getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4)
#
address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
mapping of struct tokenControlInfo;
mapping of struct tokenImbalanceData;
mapping of uint256 stor8;
uint256 validRateDurationInBlocks;
array of struct stor10;
mapping of struct compactData;
array of struct rateUpdateBlock;
uint256 numTokensInCurrentCompactData;
address reserveContractAddress;

function validRateDurationInBlocks() {
    return validRateDurationInBlocks
}

function pendingAdmin() {
    return pendingAdminAddress
}

function numTokensInCurrentCompactData() {
    return numTokensInCurrentCompactData
}

function getTokenBasicData(address arg1) {
    return bool(uint8(compactData[address(arg1)].field_0)), bool(uint8(compactData[address(arg1)].field_8))
}

function getRateUpdateBlock(address arg1) {
    require compactData[address(arg1)].field_256 < rateUpdateBlock.length
    return uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224)
}

function reserveContract() {
    return reserveContractAddress
}

function tokenImbalanceData(address arg1, uint256 arg2) {
    return tokenImbalanceData[arg1][arg2].field_0
}

function getCompactData(address arg1) {
    require uint8(compactData[address(arg1)].field_0)
    require compactData[address(arg1)].field_256 < rateUpdateBlock.length
    require compactData[address(arg1)].field_512 + 18 < 32
    require compactData[address(arg1)].field_256 < rateUpdateBlock.length
    require compactData[address(arg1)].field_512 + 4 < 32
    return compactData[address(arg1)].field_256, 
           compactData[address(arg1)].field_512,
           Mask(8, -(('field', 3, ('stor', ('array', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor11', 11)))), ('name', 'rateUpdateBlock', 12)))), 0) + 256, compactData[address(arg1)].field_512 + 18) << (('field', 3, ('stor', ('array', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor11', 11)))), ('name', 'rateUpdateBlock', 12)))), 0) - 8,
           Mask(8, -(('field', 3, ('stor', ('array', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor11', 11)))), ('name', 'rateUpdateBlock', 12)))), 0) + 256, compactData[address(arg1)].field_512 + 4) << (('field', 3, ('stor', ('array', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor11', 11)))), ('name', 'rateUpdateBlock', 12)))), 0) - 8
}

function getTokenControlInfo(address arg1) {
    return tokenControlInfo[address(arg1)].field_0, 
           tokenControlInfo[address(arg1)].field_256,
           tokenControlInfo[address(arg1)].field_512
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setReserveAddress(address arg1) {
    require adminAddress == msg.sender
    reserveContractAddress = arg1
}

function setValidRateDurationInBlocks(uint256 arg1) {
    require adminAddress == msg.sender
    validRateDurationInBlocks = arg1
}

function getBasicRate(address arg1, bool arg2) {
    if not arg2:
        return compactData[address(arg1)].field_1024
    return compactData[address(arg1)].field_768
}

function transferAdmin(address arg1) {
    require adminAddress == msg.sender
    require arg1
    emit TransferAdminPending(pendingAdminAddress);
    pendingAdminAddress = arg1
}

function disableTokenTrade(address arg1) {
    require stor3[address(msg.sender)]
    require uint8(compactData[address(arg1)].field_0)
    uint8(compactData[address(arg1)].field_8) = 0
}

function claimAdmin() {
    require pendingAdminAddress == msg.sender
    emit AdminClaimed(pendingAdminAddress, adminAddress);
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
}

function transferAdminQuickly(address arg1) {
    require adminAddress == msg.sender
    require arg1
    emit TransferAdminPending(arg1);
    emit AdminClaimed(address(arg1), adminAddress);
    adminAddress = arg1
}

function enableTokenTrade(address arg1) {
    require adminAddress == msg.sender
    require uint8(compactData[address(arg1)].field_0)
    require tokenControlInfo[address(arg1)].field_0
    uint8(compactData[address(arg1)].field_8) = 1
}

function withdrawEther(uint256 arg1, address arg2) {
    require adminAddress == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EtherWithdraw(arg1, arg2);
}

function setTokenControlInfo(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require adminAddress == msg.sender
    tokenControlInfo[address(arg1)].field_0 = arg2
    tokenControlInfo[address(arg1)].field_256 = arg3
    tokenControlInfo[address(arg1)].field_512 = arg4
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require adminAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg3), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenWithdraw(address(arg1), arg2, arg3);
}

function addAlerter(address arg1) {
    require adminAddress == msg.sender
    require not stor3[address(arg1)]
    require stor5.length < 50
    emit AlerterAdded(address(arg1), 1);
    stor3[address(arg1)] = 1
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor5[stor5.length].field_0) = arg1
}

function addOperator(address arg1) {
    require adminAddress == msg.sender
    require not stor2[address(arg1)]
    require stor4.length < 50
    emit OperatorAdded(address(arg1), 1);
    stor2[address(arg1)] = 1
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor4[stor4.length].field_0) = arg1
}

function getAlerters() {
    if stor5.length:
        mem[160] = address(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[192] = address(stor5.field_256)
            idx = 192
            s = 1
            while (32 * stor5.length) + 128 > idx:
                mem[idx + 32] = address(stor5[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 160] = 32
    mem[(32 * stor5.length) + 192] = stor5.length
    mem[(32 * stor5.length) + 224 len floor32(stor5.length)] = mem[160 len floor32(stor5.length)]
    return memory
      from (32 * stor5.length) + 160
       len (96 * stor5.length) + 64
}

function getListedTokens() {
    if stor10.length:
        mem[160] = address(stor10.field_0)
        if (32 * stor10.length) + 32 > 64:
            mem[192] = address(stor10.field_256)
            idx = 192
            s = 1
            while (32 * stor10.length) + 128 > idx:
                mem[idx + 32] = address(stor10[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor10.length) + 160] = 32
    mem[(32 * stor10.length) + 192] = stor10.length
    mem[(32 * stor10.length) + 224 len floor32(stor10.length)] = mem[160 len floor32(stor10.length)]
    return memory
      from (32 * stor10.length) + 160
       len (96 * stor10.length) + 64
}

function removeAlerter(address arg1) {
    require adminAddress == msg.sender
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if address(stor5[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require stor5.length - 1 < stor5.length
        require idx < stor5.length
        address(stor5[idx].field_0) = address(stor5[stor5.length].field_0)
        stor5.length--
        if not stor5.length <= stor5.length - 1:
            idx = stor5.length + sha3(5) - 1
            while sha3(5) + stor5.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit AlerterAdded(address(arg1), 0);
}

function removeOperator(address arg1) {
    require adminAddress == msg.sender
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if address(stor4[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require stor4.length - 1 < stor4.length
        require idx < stor4.length
        address(stor4[idx].field_0) = address(stor4[stor4.length].field_0)
        stor4.length--
        if not stor4.length <= stor4.length - 1:
            idx = stor4.length + sha3(4) - 1
            while sha3(4) + stor4.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit OperatorAdded(address(arg1), 0);
}

function getOperators() {
    if not stor4.length:
        mem[(32 * stor4.length) + 160] = 32
        mem[(32 * stor4.length) + 192] = stor4.length
        mem[(32 * stor4.length) + 224 len floor32(stor4.length)] = mem[160 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 160
           len (96 * stor4.length) + 64
    mem[160] = address(stor4.field_0)
    idx = 160
    s = 0
    while (32 * stor4.length) + 128 > idx:
        mem[idx + 32] = address(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 224 len floor32(stor4.length)] = mem[160 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[160 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 224 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function addToken(address arg1) {
    require adminAddress == msg.sender
    require not uint8(compactData[address(arg1)].field_0)
    uint8(compactData[address(arg1)].field_0) = 1
    stor10.length++
    if not stor10.length <= stor10.length + 1:
        idx = stor10.length + 1
        while stor10.length > idx:
            stor10[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor10[stor10.length].field_0) = arg1
    if not numTokensInCurrentCompactData:
        rateUpdateBlock.length++
        if not rateUpdateBlock.length <= rateUpdateBlock.length + 1:
            idx = rateUpdateBlock.length + 1
            while rateUpdateBlock.length > idx:
                rateUpdateBlock[idx].field_0 = 0
                idx = idx + 1
                continue 
    compactData[address(arg1)].field_256 = rateUpdateBlock.length - 1
    compactData[address(arg1)].field_512 = numTokensInCurrentCompactData
    numTokensInCurrentCompactData = numTokensInCurrentCompactData + 1 % 14
    idx = 0
    while idx < 5:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 7)
        tokenImbalanceData[address(arg1)][idx].field_0 = 1
        idx = idx + 1
        continue 
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        stor8[address(arg1)] = 18
    else:
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor8[address(arg1)] = ext_call.return_data[0]
}

function setCompactData(bytes14[] arg1, bytes14[] arg2, uint256 arg3, uint256[] arg4) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require stor2[address(msg.sender)]
    require arg1.length == arg2.length
    require arg4.length == arg1.length
    require arg3 <= test266151307()
    s = 0
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < rateUpdateBlock.length
        require idx < arg2.length
        require idx < arg1.length
        require idx < arg4.length
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < rateUpdateBlock.length
        mem[0] = 12
        Mask(112, 0, rateUpdateBlock[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]].field_0) = mem[(32 * idx) + 128 len 14]
        Mask(112, 0, rateUpdateBlock[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]].field_112) = mem[(32 * idx) + (32 * arg1.length) + 160 len 14]
        uint32(rateUpdateBlock[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]].field_224) = uint32(arg3)
        s = mem[(32 * idx) + 128 len 14] or Mask(112, 144, mem[(32 * idx) + (32 * arg1.length) + 160]) >> 32 or arg3 << 224
        idx = idx + 1
        continue 
}

function getStepFunctionData(address arg1, uint256 arg2, uint256 arg3) {
    if not arg2:
        return compactData[address(arg1)].field_1280
    if 1 == arg2:
        if arg3 < compactData[address(arg1)].field_1280:
            return stor[arg3 + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'compactData', 11)))].field_0
    else:
        if 2 == arg2:
            return compactData[address(arg1)].field_1536
        if 3 == arg2:
            if arg3 < compactData[address(arg1)].field_1536:
                return stor[arg3 + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'compactData', 11)))].field_0
        else:
            if 4 == arg2:
                return compactData[address(arg1)].field_1792
            if 5 == arg2:
                if arg3 < compactData[address(arg1)].field_1792:
                    return stor[arg3 + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'compactData', 11)))].field_0
            else:
                if 6 == arg2:
                    return compactData[address(arg1)].field_2048
                if 7 == arg2:
                    if arg3 < compactData[address(arg1)].field_2048:
                        return stor[arg3 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'compactData', 11)))].field_0
                else:
                    if 8 == arg2:
                        return compactData[address(arg1)].field_2304
                    if 9 == arg2:
                        if arg3 < compactData[address(arg1)].field_2304:
                            return stor[arg3 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'compactData', 11)))].field_0
                    else:
                        if 10 == arg2:
                            return compactData[address(arg1)].field_2560
                        if 11 == arg2:
                            if arg3 < compactData[address(arg1)].field_2560:
                                return stor[arg3 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'compactData', 11)))].field_0
                        else:
                            if 12 == arg2:
                                return compactData[address(arg1)].field_2816
                            if 13 == arg2:
                                if arg3 < compactData[address(arg1)].field_2816:
                                    return stor[arg3 + ('array', 11, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'compactData', 11)))].field_0
                            else:
                                if 14 == arg2:
                                    return compactData[address(arg1)].field_3072
                                require 15 == arg2
                                if arg3 < compactData[address(arg1)].field_3072:
                                    return stor[arg3 + ('array', 12, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'compactData', 11)))].field_0
    revert
}

function setBaseRate(address[] arg1, uint256[] arg2, uint256[] arg3, bytes14[] arg4, bytes14[] arg5, uint256 arg6, uint256[] arg7) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = arg7.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require stor2[address(msg.sender)]
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    require arg5.length == arg4.length
    require arg5.length == arg7.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require uint8(compactData[mem[(32 * idx) + 140 len 20]].field_0)
        require idx < arg2.length
        require idx < arg1.length
        compactData[mem[(32 * idx) + 140 len 20]].field_768 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        compactData[mem[(32 * idx) + 140 len 20]].field_1024 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        idx = idx + 1
        continue 
    require stor2[address(msg.sender)]
    require arg4.length == arg5.length
    require arg7.length == arg4.length
    require arg6 <= test266151307()
    s = 0
    idx = 0
    while idx < arg7.length:
        require idx < arg7.length
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288] < rateUpdateBlock.length
        require idx < arg5.length
        require idx < arg4.length
        require idx < arg7.length
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288] < rateUpdateBlock.length
        mem[0] = 12
        Mask(112, 0, rateUpdateBlock[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]].field_0) = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 14]
        Mask(112, 0, rateUpdateBlock[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]].field_112) = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 14]
        uint32(rateUpdateBlock[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]].field_224) = uint32(arg6)
        s = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 14] or Mask(112, 144, mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]) >> 32 or arg6 << 224
        idx = idx + 1
        continue 
}

function setQtyStepFunction(address arg1, int256[] arg2, int256[] arg3, int256[] arg4, int256[] arg5) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require stor2[address(msg.sender)]
    require arg2.length == arg3.length
    require arg4.length == arg5.length
    require arg2.length <= 10
    require arg4.length <= 10
    require uint8(compactData[address(arg1)].field_0)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 96
    compactData[address(arg1)].field_1280 = arg2.length
    if not arg2.length:
        idx = 0
        while compactData[address(arg1)].field_1280 > idx:
            compactData[address(arg1)][idx + 5].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            compactData[address(arg1)][s + 5].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while compactData[address(arg1)].field_1280 > idx:
            compactData[address(arg1)][idx + 5].field_0 = 0
            idx = idx + 1
            continue 
    compactData[address(arg1)].field_1536 = arg3.length
    if not arg3.length:
        idx = 0
        while compactData[address(arg1)].field_1536 > idx:
            compactData[address(arg1)][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + 160
        while (32 * arg2.length) + (32 * arg3.length) + 160 > idx:
            compactData[address(arg1)][s + 6].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while compactData[address(arg1)].field_1536 > idx:
            compactData[address(arg1)][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    compactData[address(arg1)].field_1792 = arg4.length
    if not arg4.length:
        idx = 0
        while compactData[address(arg1)].field_1792 > idx:
            compactData[address(arg1)][idx + 7].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + (32 * arg3.length) + 192
        while (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192 > idx:
            compactData[address(arg1)][s + 7].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while compactData[address(arg1)].field_1792 > idx:
            compactData[address(arg1)][idx + 7].field_0 = 0
            idx = idx + 1
            continue 
    compactData[address(arg1)].field_2048 = arg5.length
    if not arg5.length:
        idx = 0
        while compactData[address(arg1)].field_2048 > idx:
            compactData[address(arg1)][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
        while (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 > idx:
            compactData[address(arg1)][s + 8].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
        while compactData[address(arg1)].field_2048 > idx:
            compactData[address(arg1)][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
}

function setImbalanceStepFunction(address arg1, int256[] arg2, int256[] arg3, int256[] arg4, int256[] arg5) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require stor2[address(msg.sender)]
    require arg2.length == arg3.length
    require arg4.length == arg5.length
    require arg2.length <= 10
    require arg4.length <= 10
    require uint8(compactData[address(arg1)].field_0)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 96
    compactData[address(arg1)].field_2304 = arg2.length
    if not arg2.length:
        idx = 0
        while compactData[address(arg1)].field_2304 > idx:
            compactData[address(arg1)][idx + 9].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            compactData[address(arg1)][s + 9].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while compactData[address(arg1)].field_2304 > idx:
            compactData[address(arg1)][idx + 9].field_0 = 0
            idx = idx + 1
            continue 
    compactData[address(arg1)].field_2560 = arg3.length
    if not arg3.length:
        idx = 0
        while compactData[address(arg1)].field_2560 > idx:
            compactData[address(arg1)][idx + 10].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + 160
        while (32 * arg2.length) + (32 * arg3.length) + 160 > idx:
            compactData[address(arg1)][s + 10].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while compactData[address(arg1)].field_2560 > idx:
            compactData[address(arg1)][idx + 10].field_0 = 0
            idx = idx + 1
            continue 
    compactData[address(arg1)].field_2816 = arg4.length
    if not arg4.length:
        idx = 0
        while compactData[address(arg1)].field_2816 > idx:
            compactData[address(arg1)][idx + 11].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + (32 * arg3.length) + 192
        while (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192 > idx:
            compactData[address(arg1)][s + 11].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while compactData[address(arg1)].field_2816 > idx:
            compactData[address(arg1)][idx + 11].field_0 = 0
            idx = idx + 1
            continue 
    compactData[address(arg1)].field_3072 = arg5.length
    if not arg5.length:
        idx = 0
        while compactData[address(arg1)].field_3072 > idx:
            compactData[address(arg1)][idx + 12].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
        while (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 > idx:
            compactData[address(arg1)][s + 12].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
        while compactData[address(arg1)].field_3072 > idx:
            compactData[address(arg1)][idx + 12].field_0 = 0
            idx = idx + 1
            continue 
}

function recordImbalance(address arg1, int256 arg2, uint256 arg3, uint256 arg4) {
    require reserveContractAddress == msg.sender
    if arg3:
        require tokenControlInfo[address(arg1)].field_0
        mem[352] = ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
        mem[384] = uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_64)
        if uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_64) != arg4:
            mem[64] = 608
            s = 480
            idx = 0
            s = 0
            while idx < 5:
                mem[0] = idx
                mem[32] = sha3(address(arg1), 7)
                _125 = mem[64]
                mem[64] = mem[64] + 128
                mem[_125] = 0
                mem[_125 + 32] = 0
                mem[_125 + 64] = 0
                mem[_125 + 96] = 0
                _129 = mem[64]
                mem[64] = mem[64] + 128
                mem[_129] = ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                mem[_129 + 32] = uint64(tokenImbalanceData[address(arg1)][idx].field_64)
                mem[_129 + 64] = ('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                mem[_129 + 96] = uint64(tokenImbalanceData[address(arg1)][idx].field_192)
                if uint64(tokenImbalanceData[address(arg1)][idx].field_64) > arg4:
                    if uint64(tokenImbalanceData[address(arg1)][idx].field_192) == arg3:
                        if uint64(tokenImbalanceData[address(arg1)][idx].field_64) >= 0:
                            if uint64(tokenImbalanceData[address(arg1)][idx].field_64) != arg4:
                                s = _129
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                s = _129
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            s = _129
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        s = _129
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if uint64(tokenImbalanceData[address(arg1)][idx].field_64) < arg3:
                        if uint64(tokenImbalanceData[address(arg1)][idx].field_192) == arg3:
                            if uint64(tokenImbalanceData[address(arg1)][idx].field_64) >= 0:
                                if uint64(tokenImbalanceData[address(arg1)][idx].field_64) != arg4:
                                    s = _129
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    s = _129
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                s = _129
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            s = _129
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint64(tokenImbalanceData[address(arg1)][idx].field_192) == arg3:
                            if uint64(tokenImbalanceData[address(arg1)][idx].field_64) >= 0:
                                if uint64(tokenImbalanceData[address(arg1)][idx].field_64) != arg4:
                                    s = _129
                                    idx = idx + 1
                                    s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                                    continue 
                                else:
                                    s = _129
                                    idx = idx + 1
                                    s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                                    continue 
                            else:
                                s = _129
                                idx = idx + 1
                                s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                                continue 
                        else:
                            s = _129
                            idx = idx + 1
                            s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                            continue 
            require arg2 / tokenControlInfo[address(arg1)].field_0 < 9223372036854775808
            require arg2 / tokenControlInfo[address(arg1)].field_0 > -9223372036854775808
            require arg4 < 18446744073709551616
            require s + (arg2 / tokenControlInfo[address(arg1)].field_0) < 9223372036854775808
            require s + (arg2 / tokenControlInfo[address(arg1)].field_0) > -9223372036854775808
            require arg3 < 18446744073709551616
            uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_0) = uint64(arg2 / tokenControlInfo[address(arg1)].field_0)
            Mask(192, 0, tokenImbalanceData[address(arg1)][arg4 % 5].field_64) = Mask(192, 0, arg4)
            uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_128) = uint64(s + (arg2 / tokenControlInfo[address(arg1)].field_0))
            uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) = uint64(arg3)
        else:
            if uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) == arg3:
                require ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0) < 9223372036854775808
                require ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0) > -9223372036854775808
                require uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_64) < 18446744073709551616
                require ('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0) < 9223372036854775808
                require ('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0) > -9223372036854775808
                require uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) < 18446744073709551616
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_0) = uint64(('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0))
                Mask(192, 0, tokenImbalanceData[address(arg1)][arg4 % 5].field_64) = uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_64)
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_128) = uint64(('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0))
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) = uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192)
            else:
                mem[64] = 608
                require arg3 <= arg4
                s = 480
                idx = 0
                s = 0
                while idx < 5:
                    mem[0] = idx
                    mem[32] = sha3(address(arg1), 7)
                    _126 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_126] = 0
                    mem[_126 + 32] = 0
                    mem[_126 + 64] = 0
                    mem[_126 + 96] = 0
                    _131 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_131] = ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                    mem[_131 + 32] = uint64(tokenImbalanceData[address(arg1)][idx].field_64)
                    mem[_131 + 64] = ('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                    mem[_131 + 96] = uint64(tokenImbalanceData[address(arg1)][idx].field_192)
                    if uint64(tokenImbalanceData[address(arg1)][idx].field_64) > arg4:
                        s = _131
                        idx = idx + 1
                        s = s
                        continue 
                    if uint64(tokenImbalanceData[address(arg1)][idx].field_64) < arg3:
                        s = _131
                        idx = idx + 1
                        s = s
                        continue 
                    s = _131
                    idx = idx + 1
                    s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                    continue 
                mem[352] = mem[352] + (arg2 / tokenControlInfo[address(arg1)].field_0)
                require mem[352] < 9223372036854775808
                require mem[352] > -9223372036854775808
                require mem[384] < 18446744073709551616
                require s + (arg2 / tokenControlInfo[address(arg1)].field_0) < 9223372036854775808
                require s + (arg2 / tokenControlInfo[address(arg1)].field_0) > -9223372036854775808
                require arg3 < 18446744073709551616
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_0) = mem[376 len 8]
                Mask(192, 0, tokenImbalanceData[address(arg1)][arg4 % 5].field_64) = mem[392 len 24]
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_128) = uint64(s + (arg2 / tokenControlInfo[address(arg1)].field_0))
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) = uint64(arg3)
    else:
        require compactData[address(arg1)].field_256 < rateUpdateBlock.length
        require tokenControlInfo[address(arg1)].field_0
        mem[352] = ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
        mem[384] = uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_64)
        if uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_64) != arg4:
            mem[64] = 608
            s = 480
            idx = 0
            s = 0
            while idx < 5:
                mem[0] = idx
                mem[32] = sha3(address(arg1), 7)
                _127 = mem[64]
                mem[64] = mem[64] + 128
                mem[_127] = 0
                mem[_127 + 32] = 0
                mem[_127 + 64] = 0
                mem[_127 + 96] = 0
                _132 = mem[64]
                mem[64] = mem[64] + 128
                mem[_132] = ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                mem[_132 + 32] = uint64(tokenImbalanceData[address(arg1)][idx].field_64)
                mem[_132 + 64] = ('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                mem[_132 + 96] = uint64(tokenImbalanceData[address(arg1)][idx].field_192)
                if uint64(tokenImbalanceData[address(arg1)][idx].field_64) > arg4:
                    if uint64(tokenImbalanceData[address(arg1)][idx].field_192) == uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224):
                        if uint64(tokenImbalanceData[address(arg1)][idx].field_64) >= 0:
                            if uint64(tokenImbalanceData[address(arg1)][idx].field_64) != arg4:
                                s = _132
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                s = _132
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            s = _132
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        s = _132
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if uint64(tokenImbalanceData[address(arg1)][idx].field_64) < uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224):
                        if uint64(tokenImbalanceData[address(arg1)][idx].field_192) == uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224):
                            if uint64(tokenImbalanceData[address(arg1)][idx].field_64) >= 0:
                                if uint64(tokenImbalanceData[address(arg1)][idx].field_64) != arg4:
                                    s = _132
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    s = _132
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                s = _132
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            s = _132
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint64(tokenImbalanceData[address(arg1)][idx].field_192) == uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224):
                            if uint64(tokenImbalanceData[address(arg1)][idx].field_64) >= 0:
                                if uint64(tokenImbalanceData[address(arg1)][idx].field_64) != arg4:
                                    s = _132
                                    idx = idx + 1
                                    s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                                    continue 
                                else:
                                    s = _132
                                    idx = idx + 1
                                    s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                                    continue 
                            else:
                                s = _132
                                idx = idx + 1
                                s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                                continue 
                        else:
                            s = _132
                            idx = idx + 1
                            s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                            continue 
            require arg2 / tokenControlInfo[address(arg1)].field_0 < 9223372036854775808
            require arg2 / tokenControlInfo[address(arg1)].field_0 > -9223372036854775808
            require arg4 < 18446744073709551616
            require s + (arg2 / tokenControlInfo[address(arg1)].field_0) < 9223372036854775808
            require s + (arg2 / tokenControlInfo[address(arg1)].field_0) > -9223372036854775808
            require uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224) < 18446744073709551616
            uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_0) = uint64(arg2 / tokenControlInfo[address(arg1)].field_0)
            Mask(192, 0, tokenImbalanceData[address(arg1)][arg4 % 5].field_64) = Mask(192, 0, arg4)
            uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_128) = uint64(s + (arg2 / tokenControlInfo[address(arg1)].field_0))
            uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) = uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224)
        else:
            if uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) == uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224):
                require ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0) < 9223372036854775808
                require ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0) > -9223372036854775808
                require uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_64) < 18446744073709551616
                require ('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0) < 9223372036854775808
                require ('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0) > -9223372036854775808
                require uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) < 18446744073709551616
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_0) = uint64(('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0))
                Mask(192, 0, tokenImbalanceData[address(arg1)][arg4 % 5].field_64) = uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_64)
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_128) = uint64(('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('mod', ('param', 'arg4'), 5), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7))))))) + (arg2 / tokenControlInfo[address(arg1)].field_0))
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) = uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192)
            else:
                mem[64] = 608
                require uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224) <= arg4
                s = 480
                idx = 0
                s = 0
                while idx < 5:
                    mem[0] = idx
                    mem[32] = sha3(address(arg1), 7)
                    _128 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_128] = 0
                    mem[_128 + 32] = 0
                    mem[_128 + 64] = 0
                    mem[_128 + 96] = 0
                    _134 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_134] = ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                    mem[_134 + 32] = uint64(tokenImbalanceData[address(arg1)][idx].field_64)
                    mem[_134 + 64] = ('signextend', 7, ('type', 64, ('field', 128, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                    mem[_134 + 96] = uint64(tokenImbalanceData[address(arg1)][idx].field_192)
                    if uint64(tokenImbalanceData[address(arg1)][idx].field_64) > arg4:
                        s = _134
                        idx = idx + 1
                        s = s
                        continue 
                    if uint64(tokenImbalanceData[address(arg1)][idx].field_64) < uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224):
                        s = _134
                        idx = idx + 1
                        s = s
                        continue 
                    s = _134
                    idx = idx + 1
                    s = s + ('signextend', 7, ('type', 64, ('field', 0, ('stor', ('map', ('var', 0), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenImbalanceData', 7)))))))
                    continue 
                mem[352] = mem[352] + (arg2 / tokenControlInfo[address(arg1)].field_0)
                require mem[352] < 9223372036854775808
                require mem[352] > -9223372036854775808
                require mem[384] < 18446744073709551616
                require s + (arg2 / tokenControlInfo[address(arg1)].field_0) < 9223372036854775808
                require s + (arg2 / tokenControlInfo[address(arg1)].field_0) > -9223372036854775808
                require uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224) < 18446744073709551616
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_0) = mem[376 len 8]
                Mask(192, 0, tokenImbalanceData[address(arg1)][arg4 % 5].field_64) = mem[392 len 24]
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_128) = uint64(s + (arg2 / tokenControlInfo[address(arg1)].field_0))
                uint64(tokenImbalanceData[address(arg1)][arg4 % 5].field_192) = uint32(rateUpdateBlock[stor11[address(arg1)].field_256].field_224)
}



}
