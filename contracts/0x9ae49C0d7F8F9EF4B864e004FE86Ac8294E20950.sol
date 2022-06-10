contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor7;
uint256 stor8;
uint256 stor15;
uint8 stor16;

function _fallback() payable {
    stor7 = 1
    stor8 = 10
    stor15 = 5 * 10^10
    stor16 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[14475 len 20]
    stor0 = code.data[14475 len 20]
    return code.data[162 len 14301]
}



// =====================  Runtime code  =====================


#
#  - tradeWithHint(address arg1, address arg2, uint256 arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, address arg8, bytes arg9)
#  - findBestRateOnlyPermission(address arg1, address arg2, uint256 arg3)
#  - findBestRate(address arg1, address arg2, uint256 arg3)
#
const PERM_HINT = 'PERM'

const PERM_HINT_GET_RATE = 0x8000000000000000000000000000000000000000000000000000000000000000


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
mapping of uint256 stor6;
uint256 negligibleRateDiff;
array of struct reserves;
mapping of uint8 reserveType;
address whiteListContractAddress;
address expectedRateContractAddress;
address feeBurnerContractAddress;
address kyberNetworkProxyContractAddress;
uint256 maxGasPriceValue;
uint8 isEnabled;
mapping of uint256 info;
array of struct reservesPerTokenSrc;
array of struct reservesPerTokenDest;

function infoFields(bytes32 arg1) {
    return info[arg1]
}

function enabled() {
    return bool(isEnabled)
}

function pendingAdmin() {
    return pendingAdminAddress
}

function reservesPerTokenSrc(address arg1, uint256 arg2) {
    require arg2 < reservesPerTokenSrc[arg1].field_0
    return address(reservesPerTokenSrc[arg1][arg2].field_0)
}

function maxGasPrice() {
    return maxGasPriceValue
}

function negligibleRateDiff() {
    return negligibleRateDiff
}

function feeBurnerContract() {
    return feeBurnerContractAddress
}

function expectedRateContract() {
    return expectedRateContractAddress
}

function whiteListContract() {
    return whiteListContractAddress
}

function isEnabled() {
    return bool(isEnabled)
}

function reserveType(address arg1) {
    require reserveType[arg1] <= 2
    return reserveType[arg1]
}

function kyberNetworkProxyContract() {
    return kyberNetworkProxyContractAddress
}

function reserves(uint256 arg1) {
    require arg1 < reserves.length
    return address(reserves[arg1].field_0)
}

function reservesPerTokenDest(address arg1, uint256 arg2) {
    require arg2 < reservesPerTokenDest[arg1].field_0
    return address(reservesPerTokenDest[arg1][arg2].field_0)
}

function maxGasPriceValue() {
    return maxGasPriceValue
}

function info(bytes32 arg1) {
    return info[arg1]
}

function getNumReserves() {
    return reserves.length
}

function admin() {
    return adminAddress
}

function getUserCapInTokenWei(address arg1, address arg2) {
    revert
}

function setInfo(bytes32 arg1, uint256 arg2) {
    require stor2[address(msg.sender)]
    info[arg1] = arg2
}

function _fallback() payable {
    require reserveType[address(msg.sender)] <= 2
    require reserveType[address(msg.sender)]
    emit EtherReceival(msg.value, msg.sender);
}

function setWhiteList(address arg1) {
    require adminAddress == msg.sender
    emit 0x1eae61fd: address(arg1), whiteListContractAddress
    whiteListContractAddress = arg1
}

function transferAdmin(address arg1) {
    require adminAddress == msg.sender
    require arg1
    emit TransferAdminPending(pendingAdminAddress);
    pendingAdminAddress = arg1
}

function setKyberProxy(address arg1) {
    require adminAddress == msg.sender
    require arg1
    kyberNetworkProxyContractAddress = arg1
    emit KyberProxySet(address(arg1), msg.sender);
}

function setFeeBurner(address arg1) {
    require adminAddress == msg.sender
    require arg1
    emit 0x91251c8b: address(arg1), feeBurnerContractAddress
    feeBurnerContractAddress = arg1
}

function claimAdmin() {
    require pendingAdminAddress == msg.sender
    emit AdminClaimed(pendingAdminAddress, adminAddress);
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
}

function setExpectedRate(address arg1) {
    require adminAddress == msg.sender
    require arg1
    emit 0xa2446ac1: address(arg1), expectedRateContractAddress
    expectedRateContractAddress = arg1
}

function transferAdminQuickly(address arg1) {
    require adminAddress == msg.sender
    require arg1
    emit TransferAdminPending(arg1);
    emit AdminClaimed(address(arg1), adminAddress);
    adminAddress = arg1
}

function setParams(uint256 arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg2 <= 10000
    maxGasPriceValue = arg1
    negligibleRateDiff = arg2
    emit KyberNetwrokParamsSet(arg1, arg2);
}

function withdrawEther(uint256 arg1, address arg2) {
    require adminAddress == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EtherWithdraw(arg1, arg2);
}

function setEnable(bool arg1) {
    require adminAddress == msg.sender
    if arg1:
        require feeBurnerContractAddress
        require expectedRateContractAddress
        require kyberNetworkProxyContractAddress
    isEnabled = uint8(arg1)
    emit KyberNetworkSetEnable(bool(uint8(arg1)));
}

function getBalance(address arg1, address arg2) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
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

function getUserCapInWei(address arg1) {
    if not whiteListContractAddress:
        return 0x8000000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(whiteListContractAddress)
    call whiteListContractAddress.0x6432679f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function getExpectedRateOnlyPermission(address arg1, address arg2, uint256 arg3) {
    require expectedRateContractAddress
    require ext_code.size(expectedRateContractAddress)
    call expectedRateContractAddress.0xd38d2bea with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg2), arg3, 0
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32]
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

function getExpectedRate(address arg1, address arg2, uint256 arg3) {
    require expectedRateContractAddress
    require ext_code.size(expectedRateContractAddress)
    if Mask(1, 255, arg3) <= 0:
        call expectedRateContractAddress.0xd38d2bea with:
             gas gas_remaining - 710 wei
            args 0, 0, address(arg2), arg3, 1
    else:
        call expectedRateContractAddress.0xd38d2bea with:
             gas gas_remaining - 710 wei
            args 0, 0, address(arg2), 2 * arg3, 0
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32]
}

function addReserve(address arg1, bool arg2) {
    require stor2[address(msg.sender)]
    require reserveType[address(arg1)] <= 2
    require not reserveType[address(arg1)]
    reserves.length++
    if not reserves.length <= reserves.length + 1:
        idx = reserves.length + 1
        while reserves.length > idx:
            reserves[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(reserves[reserves.length].field_0) = arg1
    if arg2:
        reserveType[address(arg1)] = 2
    else:
        reserveType[address(arg1)] = 1
    emit 0x4d99ce7c: 1, arg2, arg1
    return 1
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

function getOperators() {
    if stor4.length:
        mem[160] = address(stor4.field_0)
        if (32 * stor4.length) + 32 > 64:
            mem[192] = address(stor4.field_256)
            idx = 192
            s = 1
            while (32 * stor4.length) + 128 > idx:
                mem[idx + 32] = address(stor4[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor4.length) + 160] = 32
    mem[(32 * stor4.length) + 192] = stor4.length
    mem[(32 * stor4.length) + 224 len floor32(stor4.length)] = mem[160 len floor32(stor4.length)]
    return memory
      from (32 * stor4.length) + 160
       len (96 * stor4.length) + 64
}

function removeReserve(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)]
    require reserveType[address(arg1)] <= 2
    require reserveType[address(arg1)]
    require arg2 < reserves.length
    require address(reserves[arg2].field_0) == arg1
    reserveType[address(arg1)] = 0
    require reserves.length - 1 < reserves.length
    require arg2 < reserves.length
    address(reserves[arg2].field_0) = address(reserves[reserves.length].field_0)
    reserves.length--
    if not reserves.length <= reserves.length - 1:
        idx = reserves.length - 1
        while reserves.length > idx:
            reserves[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x861f07ab: arg1
    return 1
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

function getReserves() {
    if not reserves.length:
        mem[(32 * reserves.length) + 160] = 32
        mem[(32 * reserves.length) + 192] = reserves.length
        mem[(32 * reserves.length) + 224 len floor32(reserves.length)] = mem[160 len floor32(reserves.length)]
        return memory
          from (32 * reserves.length) + 160
           len (96 * reserves.length) + 64
    mem[160] = address(reserves.field_0)
    idx = 160
    s = 0
    while (32 * reserves.length) + 128 > idx:
        mem[idx + 32] = address(reserves[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * reserves.length) + 224 len floor32(reserves.length)] = mem[160 len floor32(reserves.length)]
    return Array(len=reserves.length, data=mem[160 len floor32(reserves.length)], mem[(32 * reserves.length) + floor32(reserves.length) + 224 len (32 * reserves.length) - floor32(reserves.length)]), 
}

function listPairForReserve(address arg1, address arg2, bool arg3, bool arg4, bool arg5) {
    require stor2[address(msg.sender)]
    require reserveType[address(arg1)] <= 2
    require reserveType[address(arg1)]
    if arg3:
        idx = 0
        while idx < reservesPerTokenDest[address(arg2)].field_0:
            mem[0] = sha3(address(arg2), 19)
            if address(reservesPerTokenDest[address(arg2)][idx].field_0) != arg1:
                idx = idx + 1
                continue 
            if arg5:
                if idx == reservesPerTokenDest[address(arg2)].field_0:
                    reservesPerTokenDest[address(arg2)].field_0++
                    if not reservesPerTokenDest[address(arg2)].field_0 <= reservesPerTokenDest[address(arg2)].field_0 + 1:
                        idx = reservesPerTokenDest[address(arg2)].field_0 + sha3(sha3(address(arg2), 19)) + 1
                        while sha3(sha3(address(arg2), 19)) + reservesPerTokenDest[address(arg2)].field_0 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    address(reservesPerTokenDest[address(arg2)][reservesPerTokenDest[address(arg2)].field_0].field_0) = arg1
            else:
                require reservesPerTokenDest[address(arg2)].field_0 - 1 < reservesPerTokenDest[address(arg2)].field_0
                require idx < reservesPerTokenDest[address(arg2)].field_0
                address(reservesPerTokenDest[address(arg2)][idx].field_0) = address(reservesPerTokenDest[address(arg2)][reservesPerTokenDest[address(arg2)].field_0].field_0)
                reservesPerTokenDest[address(arg2)].field_0--
                if not reservesPerTokenDest[address(arg2)].field_0 <= reservesPerTokenDest[address(arg2)].field_0 - 1:
                    s = reservesPerTokenDest[address(arg2)].field_0 + sha3(sha3(address(arg2), 19)) - 1
                    while sha3(sha3(address(arg2), 19)) + reservesPerTokenDest[address(arg2)].field_0 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                if arg5:
                    if idx == reservesPerTokenDest[address(arg2)].field_0:
                        reservesPerTokenDest[address(arg2)].field_0++
                        if not reservesPerTokenDest[address(arg2)].field_0 <= reservesPerTokenDest[address(arg2)].field_0 + 1:
                            idx = reservesPerTokenDest[address(arg2)].field_0 + sha3(sha3(address(arg2), 19)) + 1
                            while sha3(sha3(address(arg2), 19)) + reservesPerTokenDest[address(arg2)].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        address(reservesPerTokenDest[address(arg2)][reservesPerTokenDest[address(arg2)].field_0].field_0) = arg1
            emit ListReservePairs(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg2), arg5, arg1);
            if arg4:
                idx = 0
                while idx < reservesPerTokenSrc[address(arg2)].field_0:
                    mem[0] = sha3(address(arg2), 18)
                    if address(reservesPerTokenSrc[address(arg2)][idx].field_0) != arg1:
                        idx = idx + 1
                        continue 
                    if arg5:
                        if idx == reservesPerTokenSrc[address(arg2)].field_0:
                            reservesPerTokenSrc[address(arg2)].field_0++
                            if not reservesPerTokenSrc[address(arg2)].field_0 <= reservesPerTokenSrc[address(arg2)].field_0 + 1:
                                idx = reservesPerTokenSrc[address(arg2)].field_0 + sha3(sha3(address(arg2), 18)) + 1
                                while sha3(sha3(address(arg2), 18)) + reservesPerTokenSrc[address(arg2)].field_0 > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            address(reservesPerTokenSrc[address(arg2)][reservesPerTokenSrc[address(arg2)].field_0].field_0) = arg1
                        require ext_code.size(arg2)
                        if not arg5:
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                        else:
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
                    else:
                        require reservesPerTokenSrc[address(arg2)].field_0 - 1 < reservesPerTokenSrc[address(arg2)].field_0
                        require idx < reservesPerTokenSrc[address(arg2)].field_0
                        address(reservesPerTokenSrc[address(arg2)][idx].field_0) = address(reservesPerTokenSrc[address(arg2)][reservesPerTokenSrc[address(arg2)].field_0].field_0)
                        reservesPerTokenSrc[address(arg2)].field_0--
                        if not reservesPerTokenSrc[address(arg2)].field_0 <= reservesPerTokenSrc[address(arg2)].field_0 - 1:
                            s = reservesPerTokenSrc[address(arg2)].field_0 + sha3(sha3(address(arg2), 18)) - 1
                            while sha3(sha3(address(arg2), 18)) + reservesPerTokenSrc[address(arg2)].field_0 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        if not arg5:
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                        else:
                            if idx == reservesPerTokenSrc[address(arg2)].field_0:
                                reservesPerTokenSrc[address(arg2)].field_0++
                                if not reservesPerTokenSrc[address(arg2)].field_0 <= reservesPerTokenSrc[address(arg2)].field_0 + 1:
                                    idx = reservesPerTokenSrc[address(arg2)].field_0 + sha3(sha3(address(arg2), 18)) + 1
                                    while sha3(sha3(address(arg2), 18)) + reservesPerTokenSrc[address(arg2)].field_0 > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                                address(reservesPerTokenSrc[address(arg2)][reservesPerTokenSrc[address(arg2)].field_0].field_0) = arg1
                            require ext_code.size(arg2)
                            if not arg5:
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 0
                            else:
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit ListReservePairs(address(arg2), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg5, arg1);
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        stor6[address(arg2)] = 18
                    else:
                        require ext_code.size(arg2)
                        call arg2.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        stor6[address(arg2)] = ext_call.return_data[0]
                    return 1
                if not arg5:
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                else:
                    if idx == reservesPerTokenSrc[address(arg2)].field_0:
                        reservesPerTokenSrc[address(arg2)].field_0++
                        if not reservesPerTokenSrc[address(arg2)].field_0 <= reservesPerTokenSrc[address(arg2)].field_0 + 1:
                            idx = reservesPerTokenSrc[address(arg2)].field_0 + sha3(sha3(address(arg2), 18)) + 1
                            while sha3(sha3(address(arg2), 18)) + reservesPerTokenSrc[address(arg2)].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        address(reservesPerTokenSrc[address(arg2)][reservesPerTokenSrc[address(arg2)].field_0].field_0) = arg1
                    require ext_code.size(arg2)
                    if not arg5:
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                    else:
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
                require ext_call.success
                require ext_call.return_data[0]
                emit ListReservePairs(address(arg2), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg5, arg1);
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                stor6[address(arg2)] = 18
            else:
                require ext_code.size(arg2)
                call arg2.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                stor6[address(arg2)] = ext_call.return_data[0]
            return 1
        if arg5:
            if idx == reservesPerTokenDest[address(arg2)].field_0:
                reservesPerTokenDest[address(arg2)].field_0++
                if not reservesPerTokenDest[address(arg2)].field_0 <= reservesPerTokenDest[address(arg2)].field_0 + 1:
                    idx = reservesPerTokenDest[address(arg2)].field_0 + 1
                    while reservesPerTokenDest[address(arg2)].field_0 > idx:
                        reservesPerTokenDest[address(arg2)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                address(reservesPerTokenDest[address(arg2)][reservesPerTokenDest[address(arg2)].field_0].field_0) = arg1
        emit ListReservePairs(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg2), arg5, arg1);
    if arg4:
        idx = 0
        while idx < reservesPerTokenSrc[address(arg2)].field_0:
            mem[0] = sha3(address(arg2), 18)
            if address(reservesPerTokenSrc[address(arg2)][idx].field_0) != arg1:
                idx = idx + 1
                continue 
            if arg5:
                if idx == reservesPerTokenSrc[address(arg2)].field_0:
                    reservesPerTokenSrc[address(arg2)].field_0++
                    if not reservesPerTokenSrc[address(arg2)].field_0 <= reservesPerTokenSrc[address(arg2)].field_0 + 1:
                        idx = reservesPerTokenSrc[address(arg2)].field_0 + sha3(sha3(address(arg2), 18)) + 1
                        while sha3(sha3(address(arg2), 18)) + reservesPerTokenSrc[address(arg2)].field_0 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    address(reservesPerTokenSrc[address(arg2)][reservesPerTokenSrc[address(arg2)].field_0].field_0) = arg1
                require ext_code.size(arg2)
                if not arg5:
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                else:
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
            else:
                require reservesPerTokenSrc[address(arg2)].field_0 - 1 < reservesPerTokenSrc[address(arg2)].field_0
                require idx < reservesPerTokenSrc[address(arg2)].field_0
                address(reservesPerTokenSrc[address(arg2)][idx].field_0) = address(reservesPerTokenSrc[address(arg2)][reservesPerTokenSrc[address(arg2)].field_0].field_0)
                reservesPerTokenSrc[address(arg2)].field_0--
                if not reservesPerTokenSrc[address(arg2)].field_0 <= reservesPerTokenSrc[address(arg2)].field_0 - 1:
                    s = reservesPerTokenSrc[address(arg2)].field_0 + sha3(sha3(address(arg2), 18)) - 1
                    while sha3(sha3(address(arg2), 18)) + reservesPerTokenSrc[address(arg2)].field_0 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                if not arg5:
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                else:
                    if idx == reservesPerTokenSrc[address(arg2)].field_0:
                        reservesPerTokenSrc[address(arg2)].field_0++
                        if not reservesPerTokenSrc[address(arg2)].field_0 <= reservesPerTokenSrc[address(arg2)].field_0 + 1:
                            idx = reservesPerTokenSrc[address(arg2)].field_0 + sha3(sha3(address(arg2), 18)) + 1
                            while sha3(sha3(address(arg2), 18)) + reservesPerTokenSrc[address(arg2)].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        address(reservesPerTokenSrc[address(arg2)][reservesPerTokenSrc[address(arg2)].field_0].field_0) = arg1
                    require ext_code.size(arg2)
                    if not arg5:
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                    else:
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
            require ext_call.success
            require ext_call.return_data[0]
            emit ListReservePairs(address(arg2), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg5, arg1);
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                stor6[address(arg2)] = 18
            else:
                require ext_code.size(arg2)
                call arg2.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                stor6[address(arg2)] = ext_call.return_data[0]
            return 1
        if not arg5:
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
        else:
            if idx == reservesPerTokenSrc[address(arg2)].field_0:
                reservesPerTokenSrc[address(arg2)].field_0++
                if not reservesPerTokenSrc[address(arg2)].field_0 <= reservesPerTokenSrc[address(arg2)].field_0 + 1:
                    idx = reservesPerTokenSrc[address(arg2)].field_0 + 1
                    while reservesPerTokenSrc[address(arg2)].field_0 > idx:
                        reservesPerTokenSrc[address(arg2)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                address(reservesPerTokenSrc[address(arg2)][reservesPerTokenSrc[address(arg2)].field_0].field_0) = arg1
            require ext_code.size(arg2)
            if not arg5:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
            else:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
        require ext_call.success
        require ext_call.return_data[0]
        emit ListReservePairs(address(arg2), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg5, arg1);
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        stor6[address(arg2)] = 18
    else:
        require ext_code.size(arg2)
        call arg2.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor6[address(arg2)] = ext_call.return_data[0]
    return 1
}

function searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) {
    if arg1 == arg2:
        if 0 < reserves.length:
            return address(reserves.field_0), 10^18
    else:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            if not reservesPerTokenDest[address(arg2)].field_0:
                if not reservesPerTokenDest[address(arg2)].field_0:
                    if 0 < reserves.length:
                        return address(reserves.field_0), 0
                else:
                    if 224 < (32 * reservesPerTokenDest[address(arg2)].field_0) + 224:
                        mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 224] = reservesPerTokenDest[address(arg2)].field_0
                        if 32 * reservesPerTokenDest[address(arg2)].field_0 < 64 * reservesPerTokenDest[address(arg2)].field_0:
                            mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 256] = reservesPerTokenDest[address(arg2)].field_0
                            idx = 0
                            while idx < reservesPerTokenDest[address(arg2)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        _359 = mem[(32 * idx) + 224]
                                        mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 292] = arg1
                                        mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 324] = arg2
                                        mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 356] = arg3
                                        mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 388] = block.number
                                        require ext_code.size(address(_359))
                                        call address(_359).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 288] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < reservesPerTokenDest[address(arg2)].field_0:
                                            mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                _440 = mem[(32 * idx) + 224]
                                                mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 292] = arg1
                                                mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 324] = arg2
                                                mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 356] = arg3
                                                mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 388] = block.number
                                                require ext_code.size(address(_440))
                                                call address(_440).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(98 * reservesPerTokenDest[address(arg2)].field_0) + 288] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                    mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        else:
                            mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 256] = reservesPerTokenDest[address(arg2)].field_0
                            idx = 0
                            while idx < reservesPerTokenDest[address(arg2)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        _363 = mem[(32 * idx) + 224]
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 292] = arg1
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 324] = arg2
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 356] = arg3
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 388] = block.number
                                        require ext_code.size(address(_363))
                                        call address(_363).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 288] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 224]:
                                            mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                            if idx < mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 224]:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 224]:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                _445 = mem[(32 * idx) + 224]
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 292] = arg1
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 324] = arg2
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 356] = arg3
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 388] = block.number
                                                require ext_code.size(address(_445))
                                                call address(_445).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 288] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 224]:
                                                    mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                                    if idx < mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 224]:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 224]:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        if 0 < reservesPerTokenDest[address(arg2)].field_0:
                            return mem[236 len 20], 0
                    else:
                        mem[224] = reservesPerTokenDest[address(arg2)].field_0
                        if 256 < (32 * reservesPerTokenDest[address(arg2)].field_0) + 256:
                            mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 256] = reservesPerTokenDest[address(arg2)].field_0
                            idx = 0
                            while idx < reservesPerTokenDest[address(arg2)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        _367 = mem[(32 * idx) + 224]
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 292] = arg1
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 324] = arg2
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 356] = arg3
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 388] = block.number
                                        require ext_code.size(address(_367))
                                        call address(_367).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 288] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < reservesPerTokenDest[address(arg2)].field_0:
                                            mem[(32 * idx) + 256] = ext_call.return_data[0]
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                _450 = mem[(32 * idx) + 224]
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 292] = arg1
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 324] = arg2
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 356] = arg3
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 388] = block.number
                                                require ext_code.size(address(_450))
                                                call address(_450).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(64 * reservesPerTokenDest[address(arg2)].field_0) + 288] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                    mem[(32 * idx) + 256] = ext_call.return_data[0]
                                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        else:
                            mem[256] = reservesPerTokenDest[address(arg2)].field_0
                            idx = 0
                            while idx < reservesPerTokenDest[address(arg2)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        _371 = mem[(32 * idx) + 224]
                                        mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 292] = arg1
                                        mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 324] = arg2
                                        mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 356] = arg3
                                        mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 388] = block.number
                                        require ext_code.size(address(_371))
                                        call address(_371).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 288] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < reservesPerTokenDest[address(arg2)].field_0:
                                            mem[(32 * idx) + 256] = ext_call.return_data[0]
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                _455 = mem[(32 * idx) + 224]
                                                mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 292] = arg1
                                                mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 324] = arg2
                                                mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 356] = arg3
                                                mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 388] = block.number
                                                require ext_code.size(address(_455))
                                                call address(_455).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 288] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                    mem[(32 * idx) + 256] = ext_call.return_data[0]
                                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        if 0 < reservesPerTokenDest[address(arg2)].field_0:
                            return address(reservesPerTokenDest[address(arg2)].field_0), 0
                    ('ge', 0, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'reservesPerTokenDest', 19)))))
            else:
                mem[224] = address(reservesPerTokenDest[address(arg2)].field_0)
                idx = 224
                s = 0
                while (32 * reservesPerTokenDest[address(arg2)].field_0) + 192 > idx:
                    mem[idx + 32] = address(reservesPerTokenDest[address(arg2)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not reservesPerTokenDest[address(arg2)].field_0:
                    if 0 < reserves.length:
                        return address(reserves.field_0), 0
                else:
                    if msize < (32 * reservesPerTokenDest[address(arg2)].field_0) + 224:
                        mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + 224] = reservesPerTokenDest[address(arg2)].field_0
                        _msize = max(0, floor32((32 * reservesPerTokenDest[address(arg2)].field_0) - 1))
                        mem[_msize + 288] = reservesPerTokenDest[address(arg2)].field_0
                        idx = 0
                        while idx < reservesPerTokenDest[address(arg2)].field_0:
                            if arg4:
                                if idx < reservesPerTokenDest[address(arg2)].field_0:
                                    mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 36] = arg1
                                    mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 68] = arg2
                                    mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 100] = arg3
                                    mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 132] = block.number
                                    require ext_code.size(mem[(32 * idx) + 236 len 20])
                                    call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), address(arg2), arg3, block.number
                                    mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 32] = ext_call.return_data[0]
                                    require ext_call.success
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                        if idx < reservesPerTokenDest[address(arg2)].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                idx = idx + 1
                                                continue 
                            else:
                                if idx < reservesPerTokenDest[address(arg2)].field_0:
                                    mem[0] = mem[(32 * idx) + 236 len 20]
                                    mem[32] = 10
                                    if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                        if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                            idx = idx + 1
                                            continue 
                                        if idx < reservesPerTokenDest[address(arg2)].field_0:
                                            mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 36] = arg1
                                            mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 68] = arg2
                                            mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 100] = arg3
                                            mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 132] = block.number
                                            require ext_code.size(mem[(32 * idx) + 236 len 20])
                                            call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), address(arg2), arg3, block.number
                                            mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 32] = ext_call.return_data[0]
                                            require ext_call.success
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                mem[(32 * reservesPerTokenDest[address(arg2)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                                if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                        idx = idx + 1
                                                        continue 
                            revert
                    else:
                        _msize = max(0, floor32((32 * reservesPerTokenDest[address(arg2)].field_0) - 1))
                        mem[_msize + 288] = reservesPerTokenDest[address(arg2)].field_0
                        if max(0, floor32((32 * reservesPerTokenDest[address(arg2)].field_0) - 1)) + 288 < (max(0, floor32((32 * reservesPerTokenDest[address(arg2)].field_0) - 1)) + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0):
                            idx = 0
                            while idx < reservesPerTokenDest[address(arg2)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 68] = arg1
                                        mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 100] = arg2
                                        mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 132] = arg3
                                        mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 164] = block.number
                                        require ext_code.size(mem[(32 * idx) + 236 len 20])
                                        call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 64] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < mem[_msize + 288]:
                                            mem[(_msize + 288) + (32 * idx) + 32] = ext_call.return_data[0]
                                            if idx < mem[_msize + 288]:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < mem[_msize + 288]:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 68] = arg1
                                                mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 100] = arg2
                                                mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 132] = arg3
                                                mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 164] = block.number
                                                require ext_code.size(mem[(32 * idx) + 236 len 20])
                                                call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(_msize + 288) + (64 * reservesPerTokenDest[address(arg2)].field_0) + 64] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < mem[_msize + 288]:
                                                    mem[(_msize + 288) + (32 * idx) + 32] = ext_call.return_data[0]
                                                    if idx < mem[_msize + 288]:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < mem[_msize + 288]:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        else:
                            idx = 0
                            while idx < reservesPerTokenDest[address(arg2)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 68] = arg1
                                        mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 100] = arg2
                                        mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 132] = arg3
                                        mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 164] = block.number
                                        require ext_code.size(mem[(32 * idx) + 236 len 20])
                                        call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 64] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < mem[_msize + 288]:
                                            mem[(_msize + 288) + (32 * idx) + 32] = ext_call.return_data[0]
                                            if idx < mem[_msize + 288]:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < mem[_msize + 288]:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenDest[address(arg2)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenDest[address(arg2)].field_0:
                                                mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 68] = arg1
                                                mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 100] = arg2
                                                mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 132] = arg3
                                                mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 164] = block.number
                                                require ext_code.size(mem[(32 * idx) + 236 len 20])
                                                call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(_msize + 288) + (32 * reservesPerTokenDest[address(arg2)].field_0) + 64] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < mem[_msize + 288]:
                                                    mem[(_msize + 288) + (32 * idx) + 32] = ext_call.return_data[0]
                                                    if idx < mem[_msize + 288]:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < mem[_msize + 288]:
                                                            idx = idx + 1
                                                            continue 
                                revert
                    if 0 < reservesPerTokenDest[address(arg2)].field_0:
                        return mem[236 len 20], 0
        else:
            if not reservesPerTokenSrc[address(arg1)].field_0:
                if not reservesPerTokenSrc[address(arg1)].field_0:
                    if 0 < reserves.length:
                        return address(reserves.field_0), 0
                else:
                    if 224 < (32 * reservesPerTokenSrc[address(arg1)].field_0) + 224:
                        mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 224] = reservesPerTokenSrc[address(arg1)].field_0
                        if 32 * reservesPerTokenSrc[address(arg1)].field_0 < 64 * reservesPerTokenSrc[address(arg1)].field_0:
                            mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 256] = reservesPerTokenSrc[address(arg1)].field_0
                            idx = 0
                            while idx < reservesPerTokenSrc[address(arg1)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        _375 = mem[(32 * idx) + 224]
                                        mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 292] = arg1
                                        mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 324] = arg2
                                        mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 356] = arg3
                                        mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 388] = block.number
                                        require ext_code.size(address(_375))
                                        call address(_375).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 288] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                            mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                _460 = mem[(32 * idx) + 224]
                                                mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 292] = arg1
                                                mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 324] = arg2
                                                mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 356] = arg3
                                                mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 388] = block.number
                                                require ext_code.size(address(_460))
                                                call address(_460).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(98 * reservesPerTokenSrc[address(arg1)].field_0) + 288] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                    mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        else:
                            mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 256] = reservesPerTokenSrc[address(arg1)].field_0
                            idx = 0
                            while idx < reservesPerTokenSrc[address(arg1)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        _379 = mem[(32 * idx) + 224]
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 292] = arg1
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 324] = arg2
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 356] = arg3
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 388] = block.number
                                        require ext_code.size(address(_379))
                                        call address(_379).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 288] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 224]:
                                            mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                            if idx < mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 224]:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 224]:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                _465 = mem[(32 * idx) + 224]
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 292] = arg1
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 324] = arg2
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 356] = arg3
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 388] = block.number
                                                require ext_code.size(address(_465))
                                                call address(_465).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 288] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 224]:
                                                    mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                                    if idx < mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 224]:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 224]:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        if 0 < reservesPerTokenSrc[address(arg1)].field_0:
                            return mem[236 len 20], 0
                    else:
                        mem[224] = reservesPerTokenSrc[address(arg1)].field_0
                        if 256 < (32 * reservesPerTokenSrc[address(arg1)].field_0) + 256:
                            mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 256] = reservesPerTokenSrc[address(arg1)].field_0
                            idx = 0
                            while idx < reservesPerTokenSrc[address(arg1)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        _383 = mem[(32 * idx) + 224]
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 292] = arg1
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 324] = arg2
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 356] = arg3
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 388] = block.number
                                        require ext_code.size(address(_383))
                                        call address(_383).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 288] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                            mem[(32 * idx) + 256] = ext_call.return_data[0]
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                _470 = mem[(32 * idx) + 224]
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 292] = arg1
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 324] = arg2
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 356] = arg3
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 388] = block.number
                                                require ext_code.size(address(_470))
                                                call address(_470).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(64 * reservesPerTokenSrc[address(arg1)].field_0) + 288] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                    mem[(32 * idx) + 256] = ext_call.return_data[0]
                                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        else:
                            mem[256] = reservesPerTokenSrc[address(arg1)].field_0
                            idx = 0
                            while idx < reservesPerTokenSrc[address(arg1)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        _387 = mem[(32 * idx) + 224]
                                        mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 292] = arg1
                                        mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 324] = arg2
                                        mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 356] = arg3
                                        mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 388] = block.number
                                        require ext_code.size(address(_387))
                                        call address(_387).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 288] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                            mem[(32 * idx) + 256] = ext_call.return_data[0]
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                _475 = mem[(32 * idx) + 224]
                                                mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 292] = arg1
                                                mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 324] = arg2
                                                mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 356] = arg3
                                                mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 388] = block.number
                                                require ext_code.size(address(_475))
                                                call address(_475).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 288] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                    mem[(32 * idx) + 256] = ext_call.return_data[0]
                                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        if 0 < reservesPerTokenSrc[address(arg1)].field_0:
                            return address(reservesPerTokenSrc[address(arg1)].field_0), 0
                    ('ge', 0, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'reservesPerTokenSrc', 18)))))
            else:
                mem[224] = address(reservesPerTokenSrc[address(arg1)].field_0)
                idx = 224
                s = 0
                while (32 * reservesPerTokenSrc[address(arg1)].field_0) + 192 > idx:
                    mem[idx + 32] = address(reservesPerTokenSrc[address(arg1)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not reservesPerTokenSrc[address(arg1)].field_0:
                    if 0 < reserves.length:
                        return address(reserves.field_0), 0
                else:
                    if msize < (32 * reservesPerTokenSrc[address(arg1)].field_0) + 224:
                        mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + 224] = reservesPerTokenSrc[address(arg1)].field_0
                        _msize = max(32, floor32((32 * reservesPerTokenSrc[address(arg1)].field_0) - 1) + 32, 32 * reservesPerTokenSrc[address(arg1)].field_0)
                        mem[_msize + 256] = reservesPerTokenSrc[address(arg1)].field_0
                        idx = 0
                        while idx < reservesPerTokenSrc[address(arg1)].field_0:
                            if arg4:
                                if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                    mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 36] = arg1
                                    mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 68] = arg2
                                    mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 100] = arg3
                                    mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 132] = block.number
                                    require ext_code.size(mem[(32 * idx) + 236 len 20])
                                    call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), address(arg2), arg3, block.number
                                    mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 32] = ext_call.return_data[0]
                                    require ext_call.success
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                        if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                idx = idx + 1
                                                continue 
                            else:
                                if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                    mem[0] = mem[(32 * idx) + 236 len 20]
                                    mem[32] = 10
                                    if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                        if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                            idx = idx + 1
                                            continue 
                                        if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                            mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 36] = arg1
                                            mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 68] = arg2
                                            mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 100] = arg3
                                            mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 132] = block.number
                                            require ext_code.size(mem[(32 * idx) + 236 len 20])
                                            call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), address(arg2), arg3, block.number
                                            mem[(_msize + 256) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 32] = ext_call.return_data[0]
                                            require ext_call.success
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                mem[(32 * reservesPerTokenSrc[address(arg1)].field_0) + (32 * idx) + 256] = ext_call.return_data[0]
                                                if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                        idx = idx + 1
                                                        continue 
                            revert
                    else:
                        _msize = max(0, floor32((32 * reservesPerTokenSrc[address(arg1)].field_0) - 1))
                        mem[_msize + 288] = reservesPerTokenSrc[address(arg1)].field_0
                        if max(0, floor32((32 * reservesPerTokenSrc[address(arg1)].field_0) - 1)) + 288 < (max(0, floor32((32 * reservesPerTokenSrc[address(arg1)].field_0) - 1)) + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0):
                            idx = 0
                            while idx < reservesPerTokenSrc[address(arg1)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 68] = arg1
                                        mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 100] = arg2
                                        mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 132] = arg3
                                        mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 164] = block.number
                                        require ext_code.size(mem[(32 * idx) + 236 len 20])
                                        call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 64] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < mem[_msize + 288]:
                                            mem[(_msize + 288) + (32 * idx) + 32] = ext_call.return_data[0]
                                            if idx < mem[_msize + 288]:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < mem[_msize + 288]:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 68] = arg1
                                                mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 100] = arg2
                                                mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 132] = arg3
                                                mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 164] = block.number
                                                require ext_code.size(mem[(32 * idx) + 236 len 20])
                                                call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(_msize + 288) + (64 * reservesPerTokenSrc[address(arg1)].field_0) + 64] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < mem[_msize + 288]:
                                                    mem[(_msize + 288) + (32 * idx) + 32] = ext_call.return_data[0]
                                                    if idx < mem[_msize + 288]:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < mem[_msize + 288]:
                                                            idx = idx + 1
                                                            continue 
                                revert
                        else:
                            idx = 0
                            while idx < reservesPerTokenSrc[address(arg1)].field_0:
                                if arg4:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 68] = arg1
                                        mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 100] = arg2
                                        mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 132] = arg3
                                        mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 164] = block.number
                                        require ext_code.size(mem[(32 * idx) + 236 len 20])
                                        call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, block.number
                                        mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 64] = ext_call.return_data[0]
                                        require ext_call.success
                                        if idx < mem[_msize + 288]:
                                            mem[(_msize + 288) + (32 * idx) + 32] = ext_call.return_data[0]
                                            if idx < mem[_msize + 288]:
                                                if ext_call.return_data[0] <= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if idx < mem[_msize + 288]:
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                        mem[0] = mem[(32 * idx) + 236 len 20]
                                        mem[32] = 10
                                        if reserveType[mem[(32 * idx) + 236 len 20]] <= 2:
                                            if reserveType[mem[(32 * idx) + 236 len 20]] == 2:
                                                idx = idx + 1
                                                continue 
                                            if idx < reservesPerTokenSrc[address(arg1)].field_0:
                                                mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 68] = arg1
                                                mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 100] = arg2
                                                mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 132] = arg3
                                                mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 164] = block.number
                                                require ext_code.size(mem[(32 * idx) + 236 len 20])
                                                call mem[(32 * idx) + 236 len 20].getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), address(arg2), arg3, block.number
                                                mem[(_msize + 288) + (32 * reservesPerTokenSrc[address(arg1)].field_0) + 64] = ext_call.return_data[0]
                                                require ext_call.success
                                                if idx < mem[_msize + 288]:
                                                    mem[(_msize + 288) + (32 * idx) + 32] = ext_call.return_data[0]
                                                    if idx < mem[_msize + 288]:
                                                        if ext_call.return_data[0] <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                        if idx < mem[_msize + 288]:
                                                            idx = idx + 1
                                                            continue 
                                revert
                    if 0 < reservesPerTokenSrc[address(arg1)].field_0:
                        return mem[236 len 20], 0
    revert
}



}
