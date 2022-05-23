contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor6;
address stor7;
address stor8;
address stor9;
address stor10;
uint8 stor11; offset 160
address stor11;
uint256 stor12;

function _fallback() payable {
    stor7 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[9076 len 20]
    require code.data[8948 len 20]
    require code.data[8980 len 20]
    require code.data[9012 len 20]
    require code.data[9044 len 20]
    require code.data[9096 len 32] < 10000
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == code.data[9012 len 20]:
        if code.data[9044 len 20] != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if stor6[code.data[9044 len 20]]:
                require stor6[code.data[9044 len 20]] == 18
            else:
                require ext_code.size(code.data[9044 len 20])
                call code.data[9044 len 20].0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] == 18
    else:
        if stor6[code.data[9012 len 20]]:
            require stor6[code.data[9012 len 20]] == 18
        else:
            require ext_code.size(code.data[9012 len 20])
            call code.data[9012 len 20].0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] == 18
        if code.data[9044 len 20] != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if stor6[address(code.data[9032 len 32])]:
                require stor6[address(code.data[9032 len 32])] == 18
            else:
                require ext_code.size(code.data[9044 len 20])
                call code.data[9044 len 20].0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] == 18
    stor8 = code.data[8948 len 20]
    stor9 = code.data[8980 len 20]
    stor10 = code.data[9012 len 20]
    stor0 = code.data[9076 len 20]
    stor12 = code.data[9096 len 32]
    address(stor11.field_0) = code.data[9044 len 20]
    uint8(stor11.field_160) = 1
    require ext_code.size(address(code.data[9000 len 32]))
    call address(code.data[9000 len 32]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args code.data[8980 len 20], 0x8000000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(address(stor11.field_0))
    call address(stor11.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args stor9, 0x8000000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    return code.data[1062 len 7874]
}



// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
address sanityRatesContractAddress;
address kyberNetworkAddress;
address otcAddress;
uint32 stor10;
address wethTokenAddress;
uint8 stor11; offset 160
address tradeTokenAddress;
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
    return address(wethTokenAddress)
}

function kyberNetwork() {
    return kyberNetworkAddress
}

function tradeEnabled() {
    return bool(stor11)
}

function tradeToken() {
    return tradeTokenAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    require address(wethTokenAddress) == msg.sender
}

function enableTrade() {
    require adminAddress == msg.sender
    stor11 = 1
    emit TradeEnabled(1);
    return 1
}

function disableTrade() {
    require stor3[address(msg.sender)]
    stor11 = 0
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

function setOtc(address arg1) {
    require adminAddress == msg.sender
    require arg1
    require ext_code.size(address(wethTokenAddress))
    call address(wethTokenAddress).approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args otcAddress, 0
    require ext_call.success
    require ext_code.size(tradeTokenAddress)
    call tradeTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args otcAddress, 0
    require ext_call.success
    require ext_code.size(address(wethTokenAddress))
    call address(wethTokenAddress).approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(tradeTokenAddress)
    call tradeTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    otcAddress = arg1
    emit OtcSet(arg1);
}

function getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if not stor11:
        return 0
    if tradeTokenAddress != arg1:
        if tradeTokenAddress != arg2:
            return 0
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        require ext_code.size(otcAddress)
        call otcAddress.getBestOffer(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args address(arg2), address(wethTokenAddress)
        require ext_call.success
        require ext_code.size(otcAddress)
        call otcAddress.getOffer(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        if arg3 > ext_call.return_data[64]:
            return 0
    else:
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            return 0
        require ext_code.size(otcAddress)
        call otcAddress.getBestOffer(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args address(wethTokenAddress), arg1
        require ext_call.success
        require ext_code.size(otcAddress)
        call otcAddress.getOffer(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        if arg3 >= 10^18:
            if arg3 > ext_call.return_data[64]:
                return 0
        else:
            if 10^18 > ext_call.return_data[64]:
                return 0
    require ext_call.return_data[64] <= 10000000000 * 10^18
    require ext_call.return_data[0] <= 10000000000 * 10^18
    require ext_call.return_data[64]
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[64] <= 10000000000 * 10^18
    return ((10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[64]) - (feeBps * 10^18 * ext_call.return_data[0] / ext_call.return_data[64]) / 10000)
}

function trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, bool arg6) payable {
    require stor11
    require kyberNetworkAddress == msg.sender
    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require arg3 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if tradeTokenAddress != arg1:
        require tradeTokenAddress == arg3
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
        require ext_code.size(address(wethTokenAddress))
        call address(wethTokenAddress).deposit() with:
           value msg.value wei
             gas gas_remaining - 9710 wei
        require ext_call.success
        require ext_code.size(otcAddress)
        call otcAddress.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(stor10), msg.value, address(arg3), 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
        require ext_call.success
        require ext_call.return_data[0] >= 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
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
        call otcAddress.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args 0, 0, arg2, address(wethTokenAddress), 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
        require ext_call.success
        require ext_call.return_data[0] >= 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
        require ext_code.size(address(wethTokenAddress))
        call address(wethTokenAddress).withdraw(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        call arg4 with:
           value arg5 * arg2 / 10^18 wei
             gas 2300 * is_zero(value) wei
    emit TradeExecute(arg1, 0, address(arg3), arg5 * arg2 / 10^18, arg4, msg.sender);
    return 1
}



}
