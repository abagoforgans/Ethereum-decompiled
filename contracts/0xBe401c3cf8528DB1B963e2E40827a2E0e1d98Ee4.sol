contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor6;
array of struct stor7;
address stor8;
uint256 stor10;

function _fallback() payable {
    stor10 = 3000
    require not msg.value
    mem[96 len 64] = code.data[8345 len 64]
    mem[64] = 160
    stor0 = msg.sender
    require code.data[8357 len 20]
    require code.data[8389 len 20]
    stor6 = code.data[8357 len 20]
    stor0 = code.data[8389 len 20]
    idx = 0
    while idx < 4:
        _44 = mem[64]
        mem[64] = mem[64] + 32
        mem[_44] = 0
        _45 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 0
            stor7.length++
            mem[0] = 7
            if not stor7.length > stor7.length + 1:
                _50 = mem[64] + 32
                mem[64] = mem[64] + 96
                mem[_50] = _45
                mem[_50 + 32] = 0
                _52 = mem[_45]
                uint256(stor7[stor7.length].field_0) = mem[_45]
                mem[0] = (2 * stor7.length) + sha3(7)
                if not _52:
                    s = sha3((2 * stor7.length) + sha3(7))
                    while sha3((2 * stor7.length) + sha3(7)) + uint256(stor7[stor7.length].field_0) > s:
                        address(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((2 * stor7.length) + sha3(7))
                    s = _45 + 32
                    while _45 + (32 * _52) + 32 > s:
                        address(stor[t]) = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((2 * stor7.length) + sha3(7)) + (Mask(251, 0, (32 * _52) + 31) >> 5)
                    while sha3((2 * stor7.length) + sha3(7)) + uint256(stor7[stor7.length].field_0) > s:
                        address(stor[s]) = 0
                        s = s + 1
                        continue 
            else:
                s = sha3(mem[0]) + (2 * stor7.length + 1)
                while sha3(7) + (2 * stor7.length) > s:
                    uint256(stor[s]) = 0
                    mem[0] = s
                    t = sha3(s)
                    while sha3(s) + uint256(stor[s]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                    stor1[s] = 0
                    s = s + 2
                    continue 
                mem[0] = 7
                _90 = mem[64] + 32
                mem[64] = mem[64] + 96
                mem[_90] = _45
                mem[_90 + 32] = 0
                _92 = mem[_45]
                uint256(stor7[stor7.length].field_0) = mem[_45]
                mem[0] = (2 * stor7.length) + sha3(7)
                if not _92:
                    s = sha3((2 * stor7.length) + sha3(7))
                    while sha3((2 * stor7.length) + sha3(7)) + uint256(stor7[stor7.length].field_0) > s:
                        address(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((2 * stor7.length) + sha3(7))
                    s = _45 + 32
                    while _45 + (32 * _92) + 32 > s:
                        address(stor[t]) = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((2 * stor7.length) + sha3(7)) + (Mask(251, 0, (32 * _92) + 31) >> 5)
                    while sha3((2 * stor7.length) + sha3(7)) + uint256(stor7[stor7.length].field_0) > s:
                        address(stor[s]) = 0
                        s = s + 1
                        continue 
        else:
            _47 = msize
            mem[msize] = 0
            stor7.length++
            mem[0] = 7
            if not stor7.length > stor7.length + 1:
                mem[64] = _47 + 96
                mem[_47 + 32] = _47
                mem[_47 + 64] = 0
                _58 = mem[_47]
                uint256(stor7[stor7.length].field_0) = mem[_47]
                mem[0] = (2 * stor7.length) + sha3(7)
                if not _58:
                    s = sha3((2 * stor7.length) + sha3(7))
                    while sha3((2 * stor7.length) + sha3(7)) + uint256(stor7[stor7.length].field_0) > s:
                        address(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((2 * stor7.length) + sha3(7))
                    s = _47 + 32
                    while _47 + (32 * _58) + 32 > s:
                        address(stor[t]) = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((2 * stor7.length) + sha3(7)) + (Mask(251, 0, (32 * _58) + 31) >> 5)
                    while sha3((2 * stor7.length) + sha3(7)) + uint256(stor7[stor7.length].field_0) > s:
                        address(stor[s]) = 0
                        s = s + 1
                        continue 
            else:
                s = sha3(mem[0]) + (2 * stor7.length + 1)
                while sha3(7) + (2 * stor7.length) > s:
                    uint256(stor[s]) = 0
                    mem[0] = s
                    t = sha3(s)
                    while sha3(s) + uint256(stor[s]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                    stor1[s] = 0
                    s = s + 2
                    continue 
                mem[0] = 7
                mem[64] = _47 + 96
                mem[_47 + 32] = _47
                mem[_47 + 64] = 0
                _97 = mem[_47]
                uint256(stor7[stor7.length].field_0) = mem[_47]
                mem[0] = (2 * stor7.length) + sha3(7)
                if not _97:
                    s = sha3((2 * stor7.length) + sha3(7))
                    while sha3((2 * stor7.length) + sha3(7)) + uint256(stor7[stor7.length].field_0) > s:
                        address(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((2 * stor7.length) + sha3(7))
                    s = _47 + 32
                    while _47 + (32 * _97) + 32 > s:
                        address(stor[t]) = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((2 * stor7.length) + sha3(7)) + (Mask(251, 0, (32 * _97) + 31) >> 5)
                    while sha3((2 * stor7.length) + sha3(7)) + uint256(stor7[stor7.length].field_0) > s:
                        address(stor[s]) = 0
                        s = s + 1
                        continue 
        uint256(stor7[stor7.length].field_256) = 0
        idx = idx + 1
        continue 
    require address(code.data[8345 len 32])
    stor8 = address(code.data[8345 len 32])
    return code.data[778 len 7567]
}



// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
address wrappedContractAddress;
address feeBurnerContractAddress;
array of struct stor9;
uint256 feeSharingBps;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;
uint256 stor16;
address stor17;
address stor18;
uint256 stor19;
address stor20;
uint256 stor21;

function pendingAdmin() {
    return pendingAdminAddress
}

function feeBurnerContract() {
    return feeBurnerContractAddress
}

function feeSharingBps() {
    return feeSharingBps
}

function wrappedContract() {
    return wrappedContractAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function getKNCRateRange() {
    return stor11, stor12
}

function setFeeSharingValue(uint256 arg1) {
    require adminAddress == msg.sender
    require arg1 < 10000
    feeSharingBps = arg1
}

function transferAdmin(address arg1) {
    require adminAddress == msg.sender
    require arg1
    emit TransferAdminPending(pendingAdminAddress);
    pendingAdminAddress = arg1
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

function withdrawEther(uint256 arg1, address arg2) {
    require adminAddress == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EtherWithdraw(arg1, arg2);
}

function claimWrappedContractAdmin() {
    require stor2[address(msg.sender)]
    require ext_code.size(wrappedContractAddress)
    call wrappedContractAddress.0x77f50f97 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function transferWrappedContractAdmin(address arg1) {
    require adminAddress == msg.sender
    require ext_code.size(wrappedContractAddress)
    call wrappedContractAddress.0x75829def with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function setKNCPerEthRate(uint256 arg1) {
    require stor2[address(msg.sender)]
    require arg1 >= stor11
    require arg1 <= stor12
    require ext_code.size(feeBurnerContractAddress)
    call feeBurnerContractAddress.setKNCRate(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
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

function getPendingTaxData() {
    require 3 < stor7.length
    if uint256(stor7.field_1536):
        idx = 192
        s = 0
        while (32 * uint256(stor7.field_1536)) + 160 > idx:
            mem[idx + 32] = address(stor7[s + 6].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return stor20, stor21, uint256(stor7.field_1792)
}

function getPendingWalletFeeData() {
    require 2 < stor7.length
    if uint256(stor7.field_1024):
        idx = 192
        s = 0
        while (32 * uint256(stor7.field_1024)) + 160 > idx:
            mem[idx + 32] = address(stor7[s + 4].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return stor18, stor19, uint256(stor7.field_1280)
}

function getPendingAddReserveData() {
    require 1 < stor7.length
    if uint256(stor7.field_512):
        idx = 192
        s = 0
        while (32 * uint256(stor7.field_512)) + 160 > idx:
            mem[idx + 32] = address(stor7[s + 2].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return stor15, stor16, stor17, uint256(stor7.field_768)
}

function getPendingKNCRateRange() {
    require 0 < stor7.length
    if uint256(stor7.field_0):
        idx = 192
        s = 0
        while (32 * uint256(stor7.field_0)) + 160 > idx:
            mem[idx + 32] = address(stor[s + sha3(('name', 'stor7', 7))].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return stor13, stor14, uint256(stor7.field_256)
}

function setPendingWalletFee(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)]
    require arg1
    require arg2 > 0
    stor18 = arg1
    stor19 = arg2
    require 2 < stor7.length
    uint256(stor7.field_1280)++
    uint256(stor7.field_1024) = 0
    if not uint256(stor7.field_1024) <= 0:
        idx = 0
        while uint256(stor7.field_1024) > idx:
            stor7[idx + 4].field_0 = 0
            idx = idx + 1
            continue 
}

function setPendingTaxParameters(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)]
    require arg1
    require arg2 > 0
    stor20 = arg1
    stor21 = arg2
    require 3 < stor7.length
    uint256(stor7.field_1792)++
    uint256(stor7.field_1536) = 0
    if not uint256(stor7.field_1536) <= 0:
        idx = 0
        while uint256(stor7.field_1536) > idx:
            stor7[idx + 6].field_0 = 0
            idx = idx + 1
            continue 
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

function setPendingKNCRateRange(uint256 arg1, uint256 arg2) {
    require stor2[address(msg.sender)]
    require arg1 < arg2
    require arg1 > 0
    require 0 < stor7.length
    uint256(stor7.field_256)++
    uint256(stor7.field_0) = 0
    if not uint256(stor7.field_0) <= 0:
        idx = 0
        while uint256(stor7.field_0) > idx:
            stor[idx + sha3(('name', 'stor7', 7))].field_0 = 0
            idx = idx + 1
            continue 
    stor13 = arg1
    stor14 = arg2
}

function setPendingReserveData(address arg1, uint256 arg2, address arg3) {
    require stor2[address(msg.sender)]
    require arg1
    require arg3
    require arg2 > 0
    stor15 = arg1
    stor16 = arg2
    stor17 = arg3
    require 1 < stor7.length
    uint256(stor7.field_768)++
    uint256(stor7.field_512) = 0
    if not uint256(stor7.field_512) <= 0:
        idx = 0
        while uint256(stor7.field_512) > idx:
            stor7[idx + 2].field_0 = 0
            idx = idx + 1
            continue 
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

function getFeeSharingWallets() {
    if stor9.length:
        mem[160] = address(stor9.field_0)
        if (32 * stor9.length) + 32 > 64:
            mem[192] = address(stor9.field_256)
            idx = 192
            s = 1
            while (32 * stor9.length) + 128 > idx:
                mem[idx + 32] = address(stor9[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor9.length) + 160] = 32
    mem[(32 * stor9.length) + 192] = stor9.length
    mem[(32 * stor9.length) + 224 len floor32(stor9.length)] = mem[160 len floor32(stor9.length)]
    return memory
      from (32 * stor9.length) + 160
       len (96 * stor9.length) + 64
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

function registerWalletForFeeSharing(address arg1) {
    require ext_code.size(feeBurnerContractAddress)
    call feeBurnerContractAddress.walletFeesInBps(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(feeBurnerContractAddress)
    call feeBurnerContractAddress.setWalletFees(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), feeSharingBps
    require ext_call.success
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            stor9[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length].field_0) = arg1
    emit WalletRegisteredForFeeSharing(msg.sender, arg1);
}

function getAddReserveSignatures() {
    require 1 < stor7.length
    if not uint256(stor7.field_512):
        mem[(32 * uint256(stor7.field_512)) + 192] = 32
        mem[(32 * uint256(stor7.field_512)) + 224] = uint256(stor7.field_512)
        mem[(32 * uint256(stor7.field_512)) + 256 len floor32(uint256(stor7.field_512))] = mem[192 len floor32(uint256(stor7.field_512))]
        return memory
          from (32 * uint256(stor7.field_512)) + 192
           len (96 * uint256(stor7.field_512)) + 64
    mem[192] = address(stor7[2].field_0)
    idx = 192
    s = 0
    while (32 * uint256(stor7.field_512)) + 160 > idx:
        mem[idx + 32] = address(stor7[s + 2].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor7.field_512)) + 256 len floor32(uint256(stor7.field_512))] = mem[192 len floor32(uint256(stor7.field_512))]
    return Array(len=uint256(stor7.field_512), data=mem[192 len floor32(uint256(stor7.field_512))], mem[(32 * uint256(stor7.field_512)) + floor32(uint256(stor7.field_512)) + 256 len (32 * uint256(stor7.field_512)) - floor32(uint256(stor7.field_512))]), 
}

function getKNCRateRangeSignatures() {
    require 0 < stor7.length
    if not uint256(stor7.field_0):
        mem[(32 * uint256(stor7.field_0)) + 192] = 32
        mem[(32 * uint256(stor7.field_0)) + 224] = uint256(stor7.field_0)
        mem[(32 * uint256(stor7.field_0)) + 256 len floor32(uint256(stor7.field_0))] = mem[192 len floor32(uint256(stor7.field_0))]
        return memory
          from (32 * uint256(stor7.field_0)) + 192
           len (96 * uint256(stor7.field_0)) + 64
    mem[192] = address(stor[sha3(('name', 'stor7', 7))].field_0)
    idx = 192
    s = 0
    while (32 * uint256(stor7.field_0)) + 160 > idx:
        mem[idx + 32] = address(stor[s + sha3(('name', 'stor7', 7))].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor7.field_0)) + 256 len floor32(uint256(stor7.field_0))] = mem[192 len floor32(uint256(stor7.field_0))]
    return Array(len=uint256(stor7.field_0), data=mem[192 len floor32(uint256(stor7.field_0))], mem[(32 * uint256(stor7.field_0)) + floor32(uint256(stor7.field_0)) + 256 len (32 * uint256(stor7.field_0)) - floor32(uint256(stor7.field_0))]), 
}

function getTaxDataSignatures() {
    require 3 < stor7.length
    if not uint256(stor7.field_1536):
        mem[(32 * uint256(stor7.field_1536)) + 192] = 32
        mem[(32 * uint256(stor7.field_1536)) + 224] = uint256(stor7.field_1536)
        mem[(32 * uint256(stor7.field_1536)) + 256 len floor32(uint256(stor7.field_1536))] = mem[192 len floor32(uint256(stor7.field_1536))]
        return memory
          from (32 * uint256(stor7.field_1536)) + 192
           len (96 * uint256(stor7.field_1536)) + 64
    mem[192] = address(stor7[6].field_0)
    idx = 192
    s = 0
    while (32 * uint256(stor7.field_1536)) + 160 > idx:
        mem[idx + 32] = address(stor7[s + 6].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor7.field_1536)) + 256 len floor32(uint256(stor7.field_1536))] = mem[192 len floor32(uint256(stor7.field_1536))]
    return Array(len=uint256(stor7.field_1536), data=mem[192 len floor32(uint256(stor7.field_1536))], mem[(32 * uint256(stor7.field_1536)) + floor32(uint256(stor7.field_1536)) + 256 len (32 * uint256(stor7.field_1536)) - floor32(uint256(stor7.field_1536))]), 
}

function getWalletFeeSignatures() {
    require 2 < stor7.length
    if not uint256(stor7.field_1024):
        mem[(32 * uint256(stor7.field_1024)) + 192] = 32
        mem[(32 * uint256(stor7.field_1024)) + 224] = uint256(stor7.field_1024)
        mem[(32 * uint256(stor7.field_1024)) + 256 len floor32(uint256(stor7.field_1024))] = mem[192 len floor32(uint256(stor7.field_1024))]
        return memory
          from (32 * uint256(stor7.field_1024)) + 192
           len (96 * uint256(stor7.field_1024)) + 64
    mem[192] = address(stor7[4].field_0)
    idx = 192
    s = 0
    while (32 * uint256(stor7.field_1024)) + 160 > idx:
        mem[idx + 32] = address(stor7[s + 4].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor7.field_1024)) + 256 len floor32(uint256(stor7.field_1024))] = mem[192 len floor32(uint256(stor7.field_1024))]
    return Array(len=uint256(stor7.field_1024), data=mem[192 len floor32(uint256(stor7.field_1024))], mem[(32 * uint256(stor7.field_1024)) + floor32(uint256(stor7.field_1024)) + 256 len (32 * uint256(stor7.field_1024)) - floor32(uint256(stor7.field_1024))]), 
}

function approveKNCRateRange(uint256 arg1) {
    require stor2[address(msg.sender)]
    require 0 < stor7.length
    require uint256(stor7.field_256) == arg1
    require 0 < stor7.length
    require 0 < stor7.length
    if var17003 < uint256(stor7.field_0):
        require var19001 < uint256(stor7.field_0)
        require address(stor[sha3(('name', 'stor7', 7)) + var19001].field_0) != msg.sender
        require 0 < stor7.length
        idx = var19001
        while idx + 1 < uint256(stor7.field_0):
            require 0 < stor7.length
            require idx + 1 < uint256(stor7.field_0)
            require address(stor[sha3(('name', 'stor7', 7)) + idx].field_256) != msg.sender
            require 0 < stor7.length
            mem[0] = 7
            idx = idx + 1
            continue 
    uint256(stor7.field_0)++
    if not uint256(stor7.field_0) <= uint256(stor7.field_0) + 1:
        idx = uint256(stor7.field_0) + 1
        while uint256(stor7.field_0) > idx:
            stor[idx + sha3(('name', 'stor7', 7))].field_0 = 0
            idx = idx + 1
            continue 
    address(stor[sha3(('name', 'stor7', 7)) + uint256(stor7.field_0)].field_0) = msg.sender
    require 0 < stor7.length
    if uint256(stor7.field_0) == stor4.length:
        stor11 = stor13
        stor12 = stor14
}

function approveWalletFeeData(uint256 arg1) {
    require stor2[address(msg.sender)]
    require 2 < stor7.length
    require uint256(stor7.field_1280) == arg1
    require 2 < stor7.length
    require 2 < stor7.length
    if var17003 < uint256(stor7.field_1024):
        require var19001 < uint256(stor7.field_1024)
        require address(stor7[var19001 + 4].field_0) != msg.sender
        require 2 < stor7.length
        idx = var19001
        while idx + 1 < uint256(stor7.field_1024):
            require 2 < stor7.length
            require idx + 1 < uint256(stor7.field_1024)
            require address(stor7[idx + 4].field_256) != msg.sender
            require 2 < stor7.length
            mem[0] = 7
            idx = idx + 1
            continue 
    uint256(stor7.field_1024)++
    if not uint256(stor7.field_1024) <= uint256(stor7.field_1024) + 1:
        idx = uint256(stor7.field_1024) + 1
        while uint256(stor7.field_1024) > idx:
            stor7[idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    address(stor[('array', 4, ('name', 'stor7', 7)) + uint256(stor7.field_1024)].field_0) = msg.sender
    require 2 < stor7.length
    if uint256(stor7.field_1024) == stor4.length:
        require ext_code.size(feeBurnerContractAddress)
        call feeBurnerContractAddress.setWalletFees(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args stor18, stor19
        require ext_call.success
}

function approveAddReserveData(uint256 arg1) {
    require stor2[address(msg.sender)]
    require 1 < stor7.length
    require uint256(stor7.field_768) == arg1
    require 1 < stor7.length
    require 1 < stor7.length
    if var17003 < uint256(stor7.field_512):
        require var19001 < uint256(stor7.field_512)
        require address(stor7[var19001 + 2].field_0) != msg.sender
        require 1 < stor7.length
        idx = var19001
        while idx + 1 < uint256(stor7.field_512):
            require 1 < stor7.length
            require idx + 1 < uint256(stor7.field_512)
            require address(stor7[idx + 2].field_256) != msg.sender
            require 1 < stor7.length
            mem[0] = 7
            idx = idx + 1
            continue 
    uint256(stor7.field_512)++
    if not uint256(stor7.field_512) <= uint256(stor7.field_512) + 1:
        idx = uint256(stor7.field_512) + 1
        while uint256(stor7.field_512) > idx:
            stor7[idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    address(stor[('array', 2, ('name', 'stor7', 7)) + uint256(stor7.field_512)].field_0) = msg.sender
    require 1 < stor7.length
    if uint256(stor7.field_512) == stor4.length:
        require ext_code.size(feeBurnerContractAddress)
        call feeBurnerContractAddress.setReserveData(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining - 710 wei
            args stor15, stor16, stor17
        require ext_call.success
}

function approveTaxData(uint256 arg1) {
    require stor2[address(msg.sender)]
    require 3 < stor7.length
    require uint256(stor7.field_1792) == arg1
    require 3 < stor7.length
    require 3 < stor7.length
    if var17003 < uint256(stor7.field_1536):
        require var19001 < uint256(stor7.field_1536)
        require address(stor7[var19001 + 6].field_0) != msg.sender
        require 3 < stor7.length
        idx = var19001
        while idx + 1 < uint256(stor7.field_1536):
            require 3 < stor7.length
            require idx + 1 < uint256(stor7.field_1536)
            require address(stor7[idx + 6].field_256) != msg.sender
            require 3 < stor7.length
            mem[0] = 7
            idx = idx + 1
            continue 
    uint256(stor7.field_1536)++
    if not uint256(stor7.field_1536) <= uint256(stor7.field_1536) + 1:
        idx = uint256(stor7.field_1536) + 1
        while uint256(stor7.field_1536) > idx:
            stor7[idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    address(stor[('array', 6, ('name', 'stor7', 7)) + uint256(stor7.field_1536)].field_0) = msg.sender
    require 3 < stor7.length
    if uint256(stor7.field_1536) == stor4.length:
        require ext_code.size(feeBurnerContractAddress)
        call feeBurnerContractAddress.setTaxInBps(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args stor21
        require ext_call.success
        require ext_code.size(feeBurnerContractAddress)
        call feeBurnerContractAddress.setTaxWallet(address arg1) with:
             gas gas_remaining - 710 wei
            args stor20
        require ext_call.success
}



}
