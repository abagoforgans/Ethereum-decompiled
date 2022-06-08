contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor6;
address stor7;
address stor8;
address stor9;
address stor10;
uint8 stor13;
uint256 stor14;

function _fallback() payable {
    stor7 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[9000 len 20]
    require code.data[8904 len 20]
    require code.data[8936 len 20]
    require code.data[8968 len 20]
    require code.data[9020 len 32] < 10000
    if code.data[8968 len 20] != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if stor6[code.data[8968 len 20]]:
            require stor6[code.data[8968 len 20]] == 18
        else:
            require ext_code.size(code.data[8968 len 20])
            call code.data[8968 len 20].0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] == 18
    stor8 = code.data[8904 len 20]
    stor9 = code.data[8936 len 20]
    stor10 = code.data[8968 len 20]
    stor0 = code.data[9000 len 20]
    stor14 = code.data[9020 len 32]
    stor13 = 1
    require ext_code.size(address(code.data[8956 len 32]))
    call address(code.data[8956 len 32]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args code.data[8936 len 20], 0x8000000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0]
    return code.data[784 len 8108]
}



// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
mapping of uint256 stor6;
address sanityRatesContractAddress;
address kyberNetworkAddress;
address otcAddress;
address wethTokenAddress;
mapping of uint8 stor11;
mapping of uint256 tokenMinSrcAmount;
uint8 stor13;
uint256 feeBps;

function feeBps() {
    return feeBps
}

function pendingAdmin() {
    return pendingAdminAddress
}

function otc() {
    return otcAddress
}

function sanityRatesContract() {
    return sanityRatesContractAddress
}

function wethToken() {
    return wethTokenAddress
}

function tokenMinSrcAmount(address arg1) {
    return tokenMinSrcAmount[arg1]
}

function kyberNetwork() {
    return kyberNetworkAddress
}

function tradeEnabled() {
    return bool(stor13)
}

function isTokenListed(address arg1) {
    return bool(stor11[arg1])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    require wethTokenAddress == msg.sender
}

function enableTrade() {
    require adminAddress == msg.sender
    stor13 = 1
    emit TradeEnabled(1);
    return 1
}

function disableTrade() {
    require stor3[address(msg.sender)]
    stor13 = 0
    emit TradeEnabled(0);
    return 1
}

function valueAfterReducingFee(uint256 arg1) {
    require arg1 <= 10000000000 * 10^18
    return ((10000 * arg1) - (feeBps * arg1) / 10000)
}

function setFeeBps(uint256 arg1) {
    require adminAddress == msg.sender
    require arg1 < 10000
    feeBps = arg1
    emit FeeBpsSet(arg1);
}

function setKyberNetwork(address arg1) {
    require adminAddress == msg.sender
    require arg1
    kyberNetworkAddress = arg1
    emit KyberNetworkSet(arg1);
}

function valueBeforeFeesWereReduced(uint256 arg1) {
    require arg1 <= 10000000000 * 10^18
    require -feeBps + 10000
    return (10000 * arg1 / -feeBps + 10000)
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

function getBalance(address arg1, address arg2) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
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

function delistToken(address arg1) {
    require adminAddress == msg.sender
    require stor11[address(arg1)]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args otcAddress, 0
    require ext_call.success
    require ext_call.return_data[0]
    stor11[address(arg1)] = 0
    tokenMinSrcAmount[address(arg1)] = 0
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

function listToken(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg1
    require not stor11[address(arg1)]
    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if stor6[address(arg1)]:
            require stor6[address(arg1)] == 18
        else:
            require ext_code.size(arg1)
            call arg1.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] == 18
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args otcAddress, 0x8000000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0]
    stor11[address(arg1)] = 1
    tokenMinSrcAmount[address(arg1)] = arg2
}

function getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if not stor13:
        return 0
    if not stor11[address(arg1)]:
        if not stor11[address(arg2)]:
            return 0
        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            return 0
    else:
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not stor11[address(arg2)]:
                return 0
            if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                return 0
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        require ext_code.size(otcAddress)
        call otcAddress.getBestOffer(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args address(arg2), wethTokenAddress
        require ext_call.success
        require ext_code.size(otcAddress)
        call otcAddress.getOffer(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        mem[96 len 128] = ext_call.return_data[0 len 128]
        require ext_call.success
        s = 1
        idx = mem[160]
        t = mem[96]
        u = ext_call.return_data[0]
        while arg3 > idx:
            require ext_code.size(otcAddress)
            call otcAddress.getWorseOffer(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args u
            require ext_call.success
            if not ext_call.return_data[0]:
                require arg3 > 0
                return 0
            if s + 1 > 7:
                require arg3 > 0
                return 0
            mem[224] = 0
            require ext_code.size(otcAddress)
            call otcAddress.getOffer(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            mem[96 len 128] = ext_call.return_data[0 len 128]
            require ext_call.success
            s = s + 1
            idx = ext_call.return_data[64]
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            continue 
    else:
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            return 0
        require ext_code.size(otcAddress)
        call otcAddress.getBestOffer(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args wethTokenAddress, arg1
        require ext_call.success
        require ext_code.size(otcAddress)
        call otcAddress.getOffer(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        mem[96 len 128] = ext_call.return_data[0 len 128]
        require ext_call.success
        if arg3 >= tokenMinSrcAmount[address(arg1)]:
            s = 1
            idx = mem[160]
            t = mem[96]
            u = ext_call.return_data[0]
            while arg3 > idx:
                require ext_code.size(otcAddress)
                call otcAddress.getWorseOffer(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args u
                require ext_call.success
                if not ext_call.return_data[0]:
                    require arg3 > 0
                    return 0
                if s + 1 > 7:
                    require arg3 > 0
                    return 0
                mem[224] = 0
                require ext_code.size(otcAddress)
                call otcAddress.getOffer(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0]
                mem[96 len 128] = ext_call.return_data[0 len 128]
                require ext_call.success
                s = s + 1
                idx = ext_call.return_data[64]
                t = ext_call.return_data[0]
                u = ext_call.return_data[0]
                continue 
        else:
            s = 1
            idx = mem[160]
            t = mem[96]
            u = ext_call.return_data[0]
            while tokenMinSrcAmount[address(arg1)] > idx:
                require ext_code.size(otcAddress)
                call otcAddress.getWorseOffer(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args u
                require ext_call.success
                if not ext_call.return_data[0]:
                    require tokenMinSrcAmount[address(arg1)] > 0
                    return 0
                if s + 1 > 7:
                    require tokenMinSrcAmount[address(arg1)] > 0
                    return 0
                mem[224] = 0
                require ext_code.size(otcAddress)
                call otcAddress.getOffer(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0]
                mem[96 len 128] = ext_call.return_data[0 len 128]
                require ext_call.success
                s = s + 1
                idx = ext_call.return_data[64]
                t = ext_call.return_data[0]
                u = ext_call.return_data[0]
                continue 
    require idx <= 10000000000 * 10^18
    require t <= 10000000000 * 10^18
    require idx
    require 10^18 * t / idx <= 10000000000 * 10^18
    return ((10000 * 10^18 * t / idx) - (feeBps * 10^18 * t / idx) / 10000)
}

function trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, bool arg6) payable {
    require stor13
    require kyberNetworkAddress == msg.sender
    if not stor11[address(arg1)]:
        require stor11[address(arg3)]
        require arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    else:
        if arg3 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require stor11[address(arg3)]
            require arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if arg6:
        require arg5 > 0
        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require not msg.value
        else:
            require arg2 == msg.value
    require arg2 <= 10000000000 * 10^18
    require arg5 <= 1000000 * 10^18
    require arg5 * arg2 / 10^18 > 0
    require arg5 * arg2 / 10^18 <= 10000000000 * 10^18
    require -feeBps + 10000
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        require ext_code.size(wethTokenAddress)
        call wethTokenAddress.0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
        require ext_call.success
        require ext_code.size(otcAddress)
        call otcAddress.getBestOffer(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args address(arg3), wethTokenAddress
        require ext_call.success
        require ext_code.size(otcAddress)
        call otcAddress.getOffer(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        mem[96 len 128] = ext_call.return_data[0 len 128]
        require ext_call.success
        s = 1
        idx = mem[160]
        t = mem[96]
        u = ext_call.return_data[0]
        while arg2 > idx:
            require ext_code.size(otcAddress)
            call otcAddress.getWorseOffer(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args u
            require ext_call.success
            if not ext_call.return_data[0]:
                require arg2 > 10000000000 * 10^18
                revert
            if s + 1 > 7:
                require arg2 > 10000000000 * 10^18
                revert
            mem[224] = 0
            require ext_code.size(otcAddress)
            call otcAddress.getOffer(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            mem[96 len 128] = ext_call.return_data[0 len 128]
            require ext_call.success
            s = s + 1
            idx = ext_call.return_data[64]
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            continue 
        require arg2 <= 10000000000 * 10^18
        require t <= 10000000000 * 10^18
        require idx
        require arg2 * t / idx == uint128(arg2 * t / idx)
        require ext_code.size(otcAddress)
        call otcAddress.take(bytes32 arg1, uint128 arg2) with:
             gas gas_remaining - 710 wei
            args u, uint128(arg2 * t / idx)
        require ext_call.success
        require arg2 * t / idx >= 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg4), arg5 * arg2 / 10^18
        require ext_call.success
        require ext_call.return_data[0]
    else:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(otcAddress)
        call otcAddress.getBestOffer(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args wethTokenAddress, arg1
        require ext_call.success
        require ext_code.size(otcAddress)
        call otcAddress.getOffer(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        mem[96 len 128] = ext_call.return_data[0 len 128]
        require ext_call.success
        s = 1
        idx = mem[160]
        t = mem[96]
        u = ext_call.return_data[0]
        while arg2 > idx:
            require ext_code.size(otcAddress)
            call otcAddress.getWorseOffer(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args u
            require ext_call.success
            if not ext_call.return_data[0]:
                require arg2 > 10000000000 * 10^18
                revert
            if s + 1 > 7:
                require arg2 > 10000000000 * 10^18
                revert
            mem[224] = 0
            require ext_code.size(otcAddress)
            call otcAddress.getOffer(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            mem[96 len 128] = ext_call.return_data[0 len 128]
            require ext_call.success
            s = s + 1
            idx = ext_call.return_data[64]
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            continue 
        require arg2 <= 10000000000 * 10^18
        require t <= 10000000000 * 10^18
        require idx
        require arg2 * t / idx == uint128(arg2 * t / idx)
        require ext_code.size(otcAddress)
        call otcAddress.take(bytes32 arg1, uint128 arg2) with:
             gas gas_remaining - 710 wei
            args u, uint128(arg2 * t / idx)
        require ext_call.success
        require arg2 * t / idx >= 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
        require ext_code.size(wethTokenAddress)
        call wethTokenAddress.0x2e1a7d4d with:
             gas gas_remaining - 710 wei
            args (arg2 * t / idx)
        require ext_call.success
        call arg4 with:
           value arg5 * arg2 / 10^18 wei
             gas 2300 * is_zero(value) wei
    emit TradeExecute(address(arg1), arg2, address(arg3), arg5 * arg2 / 10^18, arg4, msg.sender);
    return 1
}



}
