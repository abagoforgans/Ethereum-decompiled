contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor6;
address stor7;
uint256 stor17;

function _fallback() payable {
    stor17 = 0
    require not msg.value
    stor0 = msg.sender
    require stor0 == msg.sender
    require code.data[9102 len 20]
    emit TransferAdminPending(code.data[9102 len 20]);
    emit AdminClaimed(code.data[9102 len 20], stor0);
    stor0 = address(code.data[9090 len 32])
    stor7 = address(code.data[9122 len 32])
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(code.data[9122 len 32]):
        stor6[address(code.data[9122 len 32])] = 18
    else:
        require ext_code.size(address(code.data[9122 len 32]))
        call address(code.data[9122 len 32]).0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor6[address(code.data[9122 len 32])] = ext_call.return_data[0]
    if stor7 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if stor6[stor7]:
            require stor6[stor7] <= 18
        else:
            require ext_code.size(stor7)
            call stor7.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= 18
    return code.data[918 len 8172]
}



// =====================  Runtime code  =====================


#
#  - pE(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - buyRate(uint256 arg1, uint256 arg2)
#  - sellRateZeroQuantity(uint256 arg1)
#  - deltaTFunc(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - compactFraction(uint256 arg1, uint256 arg2, uint256 arg3)
#  - getRateWithE(address arg1, bool arg2, uint256 arg3, uint256 arg4)
#  - sellRate(uint256 arg1, uint256 arg2, uint256 arg3)
#  - deltaEFunc(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#  - exp(uint256 arg1, uint256 arg2, uint256 arg3)
#  - getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4)
#  - buyRateZeroQuantity(uint256 arg1)
#
const BIG_NUMBER = 0x100000000000000000000000000000000000000000000000000


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
mapping of uint256 stor6;
address tokenAddress;
address reserveContractAddress;
uint256 numFpBits;
uint256 formulaPrecision;
uint256 rInFp;
uint256 pMinInFp;
uint256 maxEthCapBuyInFp;
uint256 maxEthCapSellInFp;
uint256 maxQtyInFp;
uint256 feeInBps;
uint256 collectedFeesInTwei;
uint256 maxBuyRateInPrecision;
uint256 minBuyRateInPrecision;
uint256 maxSellRateInPrecision;
uint256 minSellRateInPrecision;

function maxSellRateInPrecision() {
    return maxSellRateInPrecision
}

function pendingAdmin() {
    return pendingAdminAddress
}

function maxEthCapSellInFp() {
    return maxEthCapSellInFp
}

function collectedFeesInTwei() {
    return collectedFeesInTwei
}

function rInFp() {
    return rInFp
}

function maxEthCapBuyInFp() {
    return maxEthCapBuyInFp
}

function formulaPrecision() {
    return formulaPrecision
}

function numFpBits() {
    return numFpBits
}

function feeInBps() {
    return feeInBps
}

function reserveContract() {
    return reserveContractAddress
}

function maxBuyRateInPrecision() {
    return maxBuyRateInPrecision
}

function minSellRateInPrecision() {
    return minSellRateInPrecision
}

function pMinInFp() {
    return pMinInFp
}

function maxQtyInFp() {
    return maxQtyInFp
}

function admin() {
    return adminAddress
}

function minBuyRateInPrecision() {
    return minBuyRateInPrecision
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function abs(int256 arg1) {
    if arg1 >= 0:
        return arg1
    return -arg1
}

function fromWeiToFp(uint256 arg1) {
    require arg1 <= 10000000000 * 10^18
    return (arg1 * formulaPrecision / 10^18)
}

function checkMultOverflow(uint256 arg1, uint256 arg2) {
    if arg2:
        return arg1 * arg2 / arg2 != arg1
    else:
        return 0
}

function resetCollectedFees() {
    require adminAddress == msg.sender
    collectedFeesInTwei = 0
    emit CollectedFeesReset(collectedFeesInTwei);
}

function setReserveAddress(address arg1) {
    require adminAddress == msg.sender
    reserveContractAddress = arg1
    emit ReserveAddressSet(arg1);
}

function calcCollectedFee(uint256 arg1) {
    require arg1 <= 10000000000 * 10^18
    require -feeInBps + 10000
    return (arg1 * feeInBps / -feeInBps + 10000)
}

function valueAfterReducingFee(uint256 arg1) {
    require arg1 <= 0x100000000000000000000000000000000000000000000000000
    return ((10000 * arg1) - (feeInBps * arg1) / 10000)
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

function rateAfterValidation(uint256 arg1, bool arg2) {
    if not arg2:
        if arg1 <= maxSellRateInPrecision:
            if arg1 >= minSellRateInPrecision:
                if arg1 <= 1000000 * 10^18:
                    return arg1
    else:
        if arg1 <= maxBuyRateInPrecision:
            if arg1 >= minBuyRateInPrecision:
                if arg1 <= 1000000 * 10^18:
                    return arg1
    return 0
}

function countLeadingZeros(uint256 arg1, uint256 arg2) {
    idx = 255
    s = 0x8000000000000000000000000000000000000000000000000000000000000000
    while idx >= 0:
        require s
        if arg2 * s / s != arg2:
            idx = idx - 1
            s = s / 2
            continue 
        require arg2 * s
        if arg1 / arg2 * s <= 0:
            idx = idx - 1
            s = s / 2
            continue 
        return idx
    return -1
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

function log2ForSmallNumber(uint256 arg1, uint256 arg2) {
    require arg1 >= 2^arg2
    require arg1 <= 2 * 2^arg2
    require arg2 < 125
    idx = arg2
    s = 2^arg2
    t = 0
    u = arg1
    while idx > 0:
        require 2^arg2
        if u * u / 2^arg2 < 2 * 2^arg2:
            idx = idx - 1
            s = s / 2
            t = t
            u = u * u / 2^arg2
            continue 
        idx = idx - 1
        s = s / 2
        t = (s / 2) + t
        u = u * u / 2^arg2 / 2
        continue 
    return t
}

function fromTweiToFp(uint256 arg1) {
    require arg1 <= 10000000000 * 10^18
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == tokenAddress:
        return (arg1 * formulaPrecision / 10^18)
    if stor6[stor7]:
        if 10^stor6[stor7]:
            return (arg1 * formulaPrecision / 10^stor6[stor7])
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if 10^ext_call.return_data[0]:
            return (arg1 * formulaPrecision / 10^ext_call.return_data[0])
    revert
}

function recordImbalance(address arg1, int256 arg2, uint256 arg3, uint256 arg4) {
    require reserveContractAddress == msg.sender
    if arg2 <= 0:
        if arg2 >= 0:
            collectedFeesInTwei += arg2 * feeInBps / 10000
        else:
            collectedFeesInTwei += -1 * arg2 * feeInBps / 10000
    else:
        if arg2 >= 0:
            require arg2 <= 10000000000 * 10^18
            require -feeInBps + 10000
            collectedFeesInTwei += arg2 * feeInBps / -feeInBps + 10000
        else:
            require -arg2 <= 10000000000 * 10^18
            require -feeInBps + 10000
            collectedFeesInTwei += -1 * arg2 * feeInBps / -feeInBps + 10000
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

function setLiquidityParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require adminAddress == msg.sender
    require arg3 < 256
    require formulaPrecision <= 10000000000 * 10^18
    require arg6 < 10000
    require arg8 < arg7
    rInFp = arg1
    pMinInFp = arg2
    formulaPrecision = 2^arg3
    maxQtyInFp = 10000000000 * 10^18 * formulaPrecision / 10^18
    numFpBits = arg3
    require arg4 <= 10000000000 * 10^18
    maxEthCapBuyInFp = arg4 * formulaPrecision / 10^18
    require arg5 <= 10000000000 * 10^18
    maxEthCapSellInFp = arg5 * formulaPrecision / 10^18
    feeInBps = arg6
    require arg8
    maxBuyRateInPrecision = 1000000000000000000 * 10^18 / arg8
    require arg7
    minBuyRateInPrecision = 1000000000000000000 * 10^18 / arg7
    maxSellRateInPrecision = arg7
    minSellRateInPrecision = arg8
    emit LiquidityParamsSet(rInFp, pMinInFp, numFpBits, maxEthCapBuyInFp, maxEthCapSellInFp, feeInBps, formulaPrecision, maxQtyInFp, maxBuyRateInPrecision, 1000000000000000000 * 10^18 / arg7, arg7, arg8);
}

function logBase2(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg1 > arg2:
        idx = 255
        s = 0x8000000000000000000000000000000000000000000000000000000000000000
        while idx >= 0:
            require s
            if arg2 * s / s != arg2:
                idx = idx - 1
                s = s / 2
                continue 
            require arg2 * s
            if arg1 / arg2 * s <= 0:
                idx = idx - 1
                s = s / 2
                continue 
            if 2^arg3:
                require arg1 * 2^arg3 / 2^arg3 == arg1
            if 2^arg3:
                require idx * 2^arg3 / 2^arg3 == idx
            if arg2:
                require 2^idx * arg2 / arg2 == 2^idx
            require arg2 * 2^idx
            require 2^arg3 * arg1 / arg2 * 2^idx >= 2^arg3
            require 2^arg3 * arg1 / arg2 * 2^idx <= 2 * 2^arg3
            require arg3 < 125
            s = arg3
            t = 2^arg3
            u = 0
            v = 2^arg3 * arg1 / arg2 * 2^idx
            while s > 0:
                require 2^arg3
                if v * v / 2^arg3 < 2 * 2^arg3:
                    s = s - 1
                    t = t / 2
                    u = u
                    v = v * v / 2^arg3
                    continue 
                s = s - 1
                t = t / 2
                u = (t / 2) + u
                v = v * v / 2^arg3 / 2
                continue 
            require 2^arg3 * idx <= 0x100000000000000000000000000000000000000000000000000
            require u <= 0x100000000000000000000000000000000000000000000000000
            return ((idx * 2^arg3) + u)
        if 2^arg3:
            require arg1 * 2^arg3 / 2^arg3 == arg1
        if 2^arg3:
            require -2^arg3 / 2^arg3 == -1
        if arg2:
            require not 0 / arg2
        revert
    if 2^arg3:
        require arg1 * 2^arg3 / 2^arg3 == arg1
    if 2^arg3:
        require not 0 / 2^arg3
    if arg2:
        require arg2 / arg2 == 1
    require arg2
    require 2^arg3 * arg1 / arg2 >= 2^arg3
    require 2^arg3 * arg1 / arg2 <= 2 * 2^arg3
    require arg3 < 125
    idx = arg3
    s = 2^arg3
    t = 0
    u = 2^arg3 * arg1 / arg2
    while idx > 0:
        require 2^arg3
        if u * u / 2^arg3 < 2 * 2^arg3:
            idx = idx - 1
            s = s / 2
            t = t
            u = u * u / 2^arg3
            continue 
        idx = idx - 1
        s = s / 2
        t = (s / 2) + t
        u = u * u / 2^arg3 / 2
        continue 
    require t <= 0x100000000000000000000000000000000000000000000000000
    return t
}

function ln(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg1 > arg2:
        idx = 255
        s = 0x8000000000000000000000000000000000000000000000000000000000000000
        while idx >= 0:
            require s
            if arg2 * s / s != arg2:
                idx = idx - 1
                s = s / 2
                continue 
            require arg2 * s
            if arg1 / arg2 * s <= 0:
                idx = idx - 1
                s = s / 2
                continue 
            if 2^arg3:
                require arg1 * 2^arg3 / 2^arg3 == arg1
            if 2^arg3:
                require idx * 2^arg3 / 2^arg3 == idx
            if arg2:
                require 2^idx * arg2 / arg2 == 2^idx
            require arg2 * 2^idx
            require 2^arg3 * arg1 / arg2 * 2^idx >= 2^arg3
            require 2^arg3 * arg1 / arg2 * 2^idx <= 2 * 2^arg3
            require arg3 < 125
            s = arg3
            t = 2^arg3
            u = 0
            v = 2^arg3 * arg1 / arg2 * 2^idx
            while s > 0:
                require 2^arg3
                if v * v / 2^arg3 < 2 * 2^arg3:
                    s = s - 1
                    t = t / 2
                    u = u
                    v = v * v / 2^arg3
                    continue 
                s = s - 1
                t = t / 2
                u = (t / 2) + u
                v = v * v / 2^arg3 / 2
                continue 
            require 2^arg3 * idx <= 0x100000000000000000000000000000000000000000000000000
            require u <= 0x100000000000000000000000000000000000000000000000000
            if (idx * 2^arg3) + u:
                require (6931471805599453094172 * idx * 2^arg3) + (6931471805599453094172 * u) / (idx * 2^arg3) + u == 6931471805599453094172
            return ((6931471805599453094172 * idx * 2^arg3) + (6931471805599453094172 * u) / 10000 * 10^18)
        if 2^arg3:
            require arg1 * 2^arg3 / 2^arg3 == arg1
        if 2^arg3:
            require -2^arg3 / 2^arg3 == -1
        if arg2:
            require not 0 / arg2
        revert
    if 2^arg3:
        require arg1 * 2^arg3 / 2^arg3 == arg1
    if 2^arg3:
        require not 0 / 2^arg3
    if arg2:
        require arg2 / arg2 == 1
    require arg2
    require 2^arg3 * arg1 / arg2 >= 2^arg3
    require 2^arg3 * arg1 / arg2 <= 2 * 2^arg3
    require arg3 < 125
    idx = arg3
    s = 2^arg3
    t = 0
    u = 2^arg3 * arg1 / arg2
    while idx > 0:
        require 2^arg3
        if u * u / 2^arg3 < 2 * 2^arg3:
            idx = idx - 1
            s = s / 2
            t = t
            u = u * u / 2^arg3
            continue 
        idx = idx - 1
        s = s / 2
        t = (s / 2) + t
        u = u * u / 2^arg3 / 2
        continue 
    require t <= 0x100000000000000000000000000000000000000000000000000
    if t:
        require 6931471805599453094172 * t / t == 6931471805599453094172
    return (6931471805599453094172 * t / 10000 * 10^18)
}



}
