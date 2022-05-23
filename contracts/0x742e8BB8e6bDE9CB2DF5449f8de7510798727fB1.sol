contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor7; offset 160
address stor7;
address stor8;

function _fallback() {
    stor0 = msg.sender
    require code.data[7856 len 20]
    require code.data[7824 len 20]
    require code.data[7792 len 20]
    stor8 = code.data[7824 len 20]
    stor0 = code.data[7856 len 20]
    address(stor7.field_0) = code.data[7792 len 20]
    uint8(stor7.field_160) = 1
    return code.data[252 len 7528]
}



// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
mapping of uint256 stor6;
uint8 stor7; offset 160
address kyberNetworkAddress;
address conversionRatesContractAddress;
address sanityRatesContractAddress;
mapping of uint8 stor10;

function pendingAdmin() {
    return pendingAdminAddress
}

function sanityRatesContract() {
    return sanityRatesContractAddress
}

function kyberNetwork() {
    return kyberNetworkAddress
}

function conversionRatesContract() {
    return conversionRatesContractAddress
}

function tradeEnabled() {
    return bool(stor7)
}

function approvedWithdrawAddresses(bytes32 arg1) {
    return bool(stor10[arg1])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    emit DepositToken(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value);
}

function enableTrade() {
    require adminAddress == msg.sender
    stor7 = 1
    emit TradeEnabled(1);
    return 1
}

function disableTrade() {
    require stor3[address(msg.sender)]
    stor7 = 0
    emit TradeEnabled(0);
    return 1
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

function setContracts(address arg1, address arg2, address arg3) {
    require adminAddress == msg.sender
    require arg1
    require arg2
    kyberNetworkAddress = arg1
    conversionRatesContractAddress = arg2
    sanityRatesContractAddress = arg3
    emit SetContractAddresses(address(arg1), address(arg2), arg3);
}

function getBalance(address arg1) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
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

function approveWithdrawAddress(address arg1, address arg2, bool arg3) {
    require adminAddress == msg.sender
    stor10[arg1][arg2] = uint8(arg3)
    emit WithdrawAddressApproved(address(arg1), address(arg2), arg3);
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        stor6[address(arg1)] = 18
    else:
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor6[address(arg1)] = ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2, address arg3) {
    require stor2[address(msg.sender)]
    require stor10[arg1][arg3]
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        call arg3 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg3), arg2
        require ext_call.success
        require ext_call.return_data[0]
    emit WithdrawFunds(address(arg1), arg2, arg3);
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

function getDestQty(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            require arg3 <= 10000000000 * 10^18
            require arg4 <= 1000000 * 10^18
            return (arg4 * arg3 / 10^18)
        if stor6[address(arg1)]:
            require arg3 <= 10000000000 * 10^18
            require arg4 <= 1000000 * 10^18
            if 18 >= stor6[address(arg1)]:
                require -stor6[address(arg1)] + 18 <= 18
                return (10^(-stor6[address(arg1)] + 18) * arg4 * arg3 / 10^18)
            require stor6[address(arg1)] - 18 <= 18
            if 10^18 * 10^(stor6[address(arg1)] - 18):
                return (arg3 * arg4 / 10^18 * 10^(stor6[address(arg1)] - 18))
        else:
            require ext_code.size(arg1)
            call arg1.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require arg3 <= 10000000000 * 10^18
            require arg4 <= 1000000 * 10^18
            if 18 >= ext_call.return_data[0]:
                require -ext_call.return_data[0] + 18 <= 18
                return (10^(-ext_call.return_data[0] + 18) * arg4 * arg3 / 10^18)
            require ext_call.return_data[0] - 18 <= 18
            if 10^18 * 10^(ext_call.return_data[0] - 18):
                return (arg3 * arg4 / 10^18 * 10^(ext_call.return_data[0] - 18))
        revert
    if stor6[address(arg2)]:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            require arg3 <= 10000000000 * 10^18
            require arg4 <= 1000000 * 10^18
            if stor6[address(arg2)] >= 18:
                require stor6[address(arg2)] - 18 <= 18
                return (10^(stor6[address(arg2)] - 18) * arg4 * arg3 / 10^18)
            require -stor6[address(arg2)] + 18 <= 18
            if 10^18 * 10^(-stor6[address(arg2)] + 18):
                return (arg3 * arg4 / 10^18 * 10^(-stor6[address(arg2)] + 18))
        else:
            if stor6[address(arg1)]:
                require arg3 <= 10000000000 * 10^18
                require arg4 <= 1000000 * 10^18
                if stor6[address(arg2)] >= stor6[address(arg1)]:
                    require stor6[address(arg2)] - stor6[address(arg1)] <= 18
                    return (10^(stor6[address(arg2)] - stor6[address(arg1)]) * arg4 * arg3 / 10^18)
                require stor6[address(arg1)] - stor6[address(arg2)] <= 18
                if 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg2)]):
                    return (arg3 * arg4 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg2)]))
            else:
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require arg3 <= 10000000000 * 10^18
                require arg4 <= 1000000 * 10^18
                if stor6[address(arg2)] >= ext_call.return_data[0]:
                    require stor6[address(arg2)] - ext_call.return_data[0] <= 18
                    return (10^(stor6[address(arg2)] - ext_call.return_data[0]) * arg4 * arg3 / 10^18)
                require ext_call.return_data[0] - stor6[address(arg2)] <= 18
                if 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg2)]):
                    return (arg3 * arg4 / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg2)]))
        revert
    require ext_code.size(arg2)
    call arg2.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        require arg3 <= 10000000000 * 10^18
        require arg4 <= 1000000 * 10^18
        if ext_call.return_data[0] >= 18:
            require ext_call.return_data[0] - 18 <= 18
            return (10^(ext_call.return_data[0] - 18) * arg4 * arg3 / 10^18)
        require -ext_call.return_data[0] + 18 <= 18
        require 10^18 * 10^(-ext_call.return_data[0] + 18)
        return (arg3 * arg4 / 10^18 * 10^(-ext_call.return_data[0] + 18))
    if stor6[address(arg1)]:
        require arg3 <= 10000000000 * 10^18
        require arg4 <= 1000000 * 10^18
        if ext_call.return_data[0] >= stor6[address(arg1)]:
            require ext_call.return_data[0] - stor6[address(arg1)] <= 18
            return (10^(ext_call.return_data[0] - stor6[address(arg1)]) * arg4 * arg3 / 10^18)
        require stor6[address(arg1)] - ext_call.return_data[0] <= 18
        require 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0])
        return (arg3 * arg4 / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0]))
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg3 <= 10000000000 * 10^18
    require arg4 <= 1000000 * 10^18
    if ext_call.return_data[0] < ext_call.return_data[0]:
        return (arg3 * arg4 / 10^18)
    return (arg4 * arg3 / 10^18)
}

function getSrcQty(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            require arg3 <= 10000000000 * 10^18
            require arg4 <= 1000000 * 10^18
            if arg4:
                return ((10^18 * arg3) + arg4 - 1 / arg4)
        else:
            if stor6[address(arg1)]:
                require arg3 <= 10000000000 * 10^18
                require arg4 <= 1000000 * 10^18
                if stor6[address(arg1)] < 18:
                    require -stor6[address(arg1)] + 18 <= 18
                    if arg4 * 10^(-stor6[address(arg1)] + 18):
                        return ((10^18 * arg3) + (arg4 * 10^(-stor6[address(arg1)] + 18)) - 1 / arg4 * 10^(-stor6[address(arg1)] + 18))
                else:
                    require stor6[address(arg1)] - 18 <= 18
                    if arg4:
                        return ((10^18 * arg3 * 10^(stor6[address(arg1)] - 18)) + arg4 - 1 / arg4)
            else:
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require arg3 <= 10000000000 * 10^18
                require arg4 <= 1000000 * 10^18
                if ext_call.return_data[0] < 18:
                    require -ext_call.return_data[0] + 18 <= 18
                    if arg4 * 10^(-ext_call.return_data[0] + 18):
                        return ((10^18 * arg3) + (arg4 * 10^(-ext_call.return_data[0] + 18)) - 1 / arg4 * 10^(-ext_call.return_data[0] + 18))
                else:
                    require ext_call.return_data[0] - 18 <= 18
                    if arg4:
                        return ((10^18 * arg3 * 10^(ext_call.return_data[0] - 18)) + arg4 - 1 / arg4)
    else:
        if stor6[address(arg2)]:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                require arg3 <= 10000000000 * 10^18
                require arg4 <= 1000000 * 10^18
                if 18 < stor6[address(arg2)]:
                    require stor6[address(arg2)] - 18 <= 18
                    if arg4 * 10^(stor6[address(arg2)] - 18):
                        return ((10^18 * arg3) + (arg4 * 10^(stor6[address(arg2)] - 18)) - 1 / arg4 * 10^(stor6[address(arg2)] - 18))
                else:
                    require -stor6[address(arg2)] + 18 <= 18
                    if arg4:
                        return ((10^18 * arg3 * 10^(-stor6[address(arg2)] + 18)) + arg4 - 1 / arg4)
            else:
                if stor6[address(arg1)]:
                    require arg3 <= 10000000000 * 10^18
                    require arg4 <= 1000000 * 10^18
                    if stor6[address(arg1)] < stor6[address(arg2)]:
                        require stor6[address(arg2)] - stor6[address(arg1)] <= 18
                        if arg4 * 10^(stor6[address(arg2)] - stor6[address(arg1)]):
                            return ((10^18 * arg3) + (arg4 * 10^(stor6[address(arg2)] - stor6[address(arg1)])) - 1 / arg4 * 10^(stor6[address(arg2)] - stor6[address(arg1)]))
                    else:
                        require stor6[address(arg1)] - stor6[address(arg2)] <= 18
                        if arg4:
                            return ((10^18 * arg3 * 10^(stor6[address(arg1)] - stor6[address(arg2)])) + arg4 - 1 / arg4)
                else:
                    require ext_code.size(arg1)
                    call arg1.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require arg3 <= 10000000000 * 10^18
                    require arg4 <= 1000000 * 10^18
                    if ext_call.return_data[0] < stor6[address(arg2)]:
                        require stor6[address(arg2)] - ext_call.return_data[0] <= 18
                        if arg4 * 10^(stor6[address(arg2)] - ext_call.return_data[0]):
                            return ((10^18 * arg3) + (arg4 * 10^(stor6[address(arg2)] - ext_call.return_data[0])) - 1 / arg4 * 10^(stor6[address(arg2)] - ext_call.return_data[0]))
                    else:
                        require ext_call.return_data[0] - stor6[address(arg2)] <= 18
                        if arg4:
                            return ((10^18 * arg3 * 10^(ext_call.return_data[0] - stor6[address(arg2)])) + arg4 - 1 / arg4)
        else:
            require ext_code.size(arg2)
            call arg2.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                require arg3 <= 10000000000 * 10^18
                require arg4 <= 1000000 * 10^18
                if 18 < ext_call.return_data[0]:
                    require ext_call.return_data[0] - 18 <= 18
                    if arg4 * 10^(ext_call.return_data[0] - 18):
                        return ((10^18 * arg3) + (arg4 * 10^(ext_call.return_data[0] - 18)) - 1 / arg4 * 10^(ext_call.return_data[0] - 18))
                else:
                    require -ext_call.return_data[0] + 18 <= 18
                    if arg4:
                        return ((10^18 * arg3 * 10^(-ext_call.return_data[0] + 18)) + arg4 - 1 / arg4)
            else:
                if stor6[address(arg1)]:
                    require arg3 <= 10000000000 * 10^18
                    require arg4 <= 1000000 * 10^18
                    if stor6[address(arg1)] < ext_call.return_data[0]:
                        require ext_call.return_data[0] - stor6[address(arg1)] <= 18
                        if arg4 * 10^(ext_call.return_data[0] - stor6[address(arg1)]):
                            return ((10^18 * arg3) + (arg4 * 10^(ext_call.return_data[0] - stor6[address(arg1)])) - 1 / arg4 * 10^(ext_call.return_data[0] - stor6[address(arg1)]))
                    else:
                        require stor6[address(arg1)] - ext_call.return_data[0] <= 18
                        if arg4:
                            return ((10^18 * arg3 * 10^(stor6[address(arg1)] - ext_call.return_data[0])) + arg4 - 1 / arg4)
                else:
                    require ext_code.size(arg1)
                    call arg1.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require arg3 <= 10000000000 * 10^18
                    require arg4 <= 1000000 * 10^18
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        if arg4 * 10^0:
                            return ((10^18 * arg3) + arg4 - 1 / arg4)
                    else:
                        if arg4:
                            return ((10^18 * arg3) + arg4 - 1 / arg4)
    revert
}

function trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, bool arg6) payable {
    require stor7
    require kyberNetworkAddress == msg.sender
    if arg6:
        require arg5 > 0
        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require not msg.value
        else:
            require arg2 == msg.value
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            require arg2 <= 10000000000 * 10^18
            require arg5 <= 1000000 * 10^18
            require arg5 * arg2 / 10^18 > 0
            require ext_code.size(conversionRatesContractAddress)
            if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                call conversionRatesContractAddress.0xc6fd2103 with:
                     gas gas_remaining - 710 wei
                    args 0, 0, -arg2, 0, block.number
            else:
                call conversionRatesContractAddress.0xc6fd2103 with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg5 * arg2 / 10^18, 0, block.number
            require ext_call.success
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    call arg4 with:
                       value arg5 * arg2 / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TradeExecute(address(arg1), arg2, address(arg3), arg5 * arg2 / 10^18, arg4, msg.sender);
                else:
                    require ext_code.size(arg3)
                    call arg3.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg4), arg5 * arg2 / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TradeExecute(arg1, 0, address(arg3), arg5 * arg2 / 10^18, arg4, msg.sender);
            else:
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), arg2
                require ext_call.success
                require ext_call.return_data[0]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                    call arg4 with:
                       value arg5 * arg2 / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require ext_code.size(arg3)
                    call arg3.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg4), arg5 * arg2 / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                emit TradeExecute(arg1, 0, address(arg3), arg5 * arg2 / 10^18, arg4, msg.sender);
        else:
            if stor6[address(arg1)]:
                require arg2 <= 10000000000 * 10^18
                require arg5 <= 1000000 * 10^18
                if 18 >= stor6[address(arg1)]:
                    require -stor6[address(arg1)] + 18 <= 18
                    require 10^(-stor6[address(arg1)] + 18) * arg5 * arg2 / 10^18 > 0
                    require ext_code.size(conversionRatesContractAddress)
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, -arg2, 0, block.number
                    else:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, 10^(-stor6[address(arg1)] + 18) * arg5 * arg2 / 10^18, 0, block.number
                    require ext_call.success
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value 10^(-stor6[address(arg1)] + 18) * arg5 * arg2 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TradeExecute(address(arg1), arg2, address(arg3), 10^(-stor6[address(arg1)] + 18) * arg5 * arg2 / 10^18, arg4, msg.sender);
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), 10^(-stor6[address(arg1)] + 18) * arg5 * arg2 / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TradeExecute(arg1, 0, address(arg3), 10^(-stor6[address(arg1)] + 18) * arg5 * arg2 / 10^18, arg4, msg.sender);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), arg2
                        require ext_call.success
                        require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value 10^(-stor6[address(arg1)] + 18) * arg5 * arg2 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), 10^(-stor6[address(arg1)] + 18) * arg5 * arg2 / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), 10^(-stor6[address(arg1)] + 18) * arg5 * arg2 / 10^18, arg4, msg.sender);
                else:
                    require stor6[address(arg1)] - 18 <= 18
                    require 10^18 * 10^(stor6[address(arg1)] - 18)
                    require arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - 18) > 0
                    require ext_code.size(conversionRatesContractAddress)
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, -arg2, 0, block.number
                    else:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - 18), 0, block.number
                    require ext_call.success
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - 18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TradeExecute(address(arg1), arg2, address(arg3), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - 18), arg4, msg.sender);
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - 18)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - 18), arg4, msg.sender);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), arg2
                        require ext_call.success
                        require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - 18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - 18)
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - 18), arg4, msg.sender);
            else:
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require arg2 <= 10000000000 * 10^18
                require arg5 <= 1000000 * 10^18
                if 18 >= ext_call.return_data[0]:
                    require -ext_call.return_data[0] + 18 <= 18
                    require 10^(-ext_call.return_data[0] + 18) * arg5 * arg2 / 10^18 > 0
                    require ext_code.size(conversionRatesContractAddress)
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, -arg2, 0, block.number
                    else:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, 10^(-ext_call.return_data[0] + 18) * arg5 * arg2 / 10^18, 0, block.number
                    require ext_call.success
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), arg2
                        require ext_call.success
                        require ext_call.return_data[0]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                        call arg4 with:
                           value 10^(-ext_call.return_data[0] + 18) * arg5 * arg2 / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require ext_code.size(arg3)
                        call arg3.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg4), 10^(-ext_call.return_data[0] + 18) * arg5 * arg2 / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                    emit TradeExecute(arg1, 0, address(arg3), 10^(-ext_call.return_data[0] + 18) * arg5 * arg2 / 10^18, arg4, msg.sender);
                else:
                    require ext_call.return_data[0] - 18 <= 18
                    require 10^18 * 10^(ext_call.return_data[0] - 18)
                    require arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - 18) > 0
                    require ext_code.size(conversionRatesContractAddress)
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, -arg2, 0, block.number
                    else:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - 18), 0, block.number
                    require ext_call.success
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), arg2
                        require ext_call.success
                        require ext_call.return_data[0]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                        call arg4 with:
                           value arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - 18) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require ext_code.size(arg3)
                        call arg3.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg4), arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - 18)
                        require ext_call.success
                        require ext_call.return_data[0]
                    emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - 18), arg4, msg.sender);
    else:
        if stor6[address(arg3)]:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                require arg2 <= 10000000000 * 10^18
                require arg5 <= 1000000 * 10^18
                if stor6[address(arg3)] >= 18:
                    require stor6[address(arg3)] - 18 <= 18
                    require 10^(stor6[address(arg3)] - 18) * arg5 * arg2 / 10^18 > 0
                    require ext_code.size(conversionRatesContractAddress)
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, -arg2, 0, block.number
                    else:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, 10^(stor6[address(arg3)] - 18) * arg5 * arg2 / 10^18, 0, block.number
                    require ext_call.success
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value 10^(stor6[address(arg3)] - 18) * arg5 * arg2 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TradeExecute(address(arg1), arg2, address(arg3), 10^(stor6[address(arg3)] - 18) * arg5 * arg2 / 10^18, arg4, msg.sender);
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), 10^(stor6[address(arg3)] - 18) * arg5 * arg2 / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TradeExecute(arg1, 0, address(arg3), 10^(stor6[address(arg3)] - 18) * arg5 * arg2 / 10^18, arg4, msg.sender);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), arg2
                        require ext_call.success
                        require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value 10^(stor6[address(arg3)] - 18) * arg5 * arg2 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), 10^(stor6[address(arg3)] - 18) * arg5 * arg2 / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), 10^(stor6[address(arg3)] - 18) * arg5 * arg2 / 10^18, arg4, msg.sender);
                else:
                    require -stor6[address(arg3)] + 18 <= 18
                    require 10^18 * 10^(-stor6[address(arg3)] + 18)
                    require arg2 * arg5 / 10^18 * 10^(-stor6[address(arg3)] + 18) > 0
                    require ext_code.size(conversionRatesContractAddress)
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, -arg2, 0, block.number
                    else:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, arg2 * arg5 / 10^18 * 10^(-stor6[address(arg3)] + 18), 0, block.number
                    require ext_call.success
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value arg2 * arg5 / 10^18 * 10^(-stor6[address(arg3)] + 18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TradeExecute(address(arg1), arg2, address(arg3), arg2 * arg5 / 10^18 * 10^(-stor6[address(arg3)] + 18), arg4, msg.sender);
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), arg2 * arg5 / 10^18 * 10^(-stor6[address(arg3)] + 18)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(-stor6[address(arg3)] + 18), arg4, msg.sender);
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), arg2
                        require ext_call.success
                        require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value arg2 * arg5 / 10^18 * 10^(-stor6[address(arg3)] + 18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), arg2 * arg5 / 10^18 * 10^(-stor6[address(arg3)] + 18)
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(-stor6[address(arg3)] + 18), arg4, msg.sender);
            else:
                if stor6[address(arg1)]:
                    require arg2 <= 10000000000 * 10^18
                    require arg5 <= 1000000 * 10^18
                    if stor6[address(arg3)] >= stor6[address(arg1)]:
                        require stor6[address(arg3)] - stor6[address(arg1)] <= 18
                        require 10^(stor6[address(arg3)] - stor6[address(arg1)]) * arg5 * arg2 / 10^18 > 0
                        require ext_code.size(conversionRatesContractAddress)
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, -arg2, 0, block.number
                        else:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, 10^(stor6[address(arg3)] - stor6[address(arg1)]) * arg5 * arg2 / 10^18, 0, block.number
                        require ext_call.success
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                                call arg4 with:
                                   value 10^(stor6[address(arg3)] - stor6[address(arg1)]) * arg5 * arg2 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit TradeExecute(address(arg1), arg2, address(arg3), 10^(stor6[address(arg3)] - stor6[address(arg1)]) * arg5 * arg2 / 10^18, arg4, msg.sender);
                            else:
                                require ext_code.size(arg3)
                                call arg3.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg4), 10^(stor6[address(arg3)] - stor6[address(arg1)]) * arg5 * arg2 / 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TradeExecute(arg1, 0, address(arg3), 10^(stor6[address(arg3)] - stor6[address(arg1)]) * arg5 * arg2 / 10^18, arg4, msg.sender);
                        else:
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), arg2
                            require ext_call.success
                            require ext_call.return_data[0]
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                                call arg4 with:
                                   value 10^(stor6[address(arg3)] - stor6[address(arg1)]) * arg5 * arg2 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require ext_code.size(arg3)
                                call arg3.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg4), 10^(stor6[address(arg3)] - stor6[address(arg1)]) * arg5 * arg2 / 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                            emit TradeExecute(arg1, 0, address(arg3), 10^(stor6[address(arg3)] - stor6[address(arg1)]) * arg5 * arg2 / 10^18, arg4, msg.sender);
                    else:
                        require stor6[address(arg1)] - stor6[address(arg3)] <= 18
                        require 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)])
                        require arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)]) > 0
                        require ext_code.size(conversionRatesContractAddress)
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, -arg2, 0, block.number
                        else:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)]), 0, block.number
                        require ext_call.success
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                                call arg4 with:
                                   value arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)]) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit TradeExecute(address(arg1), arg2, address(arg3), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)]), arg4, msg.sender);
                            else:
                                require ext_code.size(arg3)
                                call arg3.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg4), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)])
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)]), arg4, msg.sender);
                        else:
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), arg2
                            require ext_call.success
                            require ext_call.return_data[0]
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                                call arg4 with:
                                   value arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)]) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                require ext_code.size(arg3)
                                call arg3.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg4), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)])
                                require ext_call.success
                                require ext_call.return_data[0]
                            emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg3)]), arg4, msg.sender);
                else:
                    require ext_code.size(arg1)
                    call arg1.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require arg2 <= 10000000000 * 10^18
                    require arg5 <= 1000000 * 10^18
                    if stor6[address(arg3)] >= ext_call.return_data[0]:
                        require stor6[address(arg3)] - ext_call.return_data[0] <= 18
                        require 10^(stor6[address(arg3)] - ext_call.return_data[0]) * arg5 * arg2 / 10^18 > 0
                        require ext_code.size(conversionRatesContractAddress)
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, -arg2, 0, block.number
                        else:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, 10^(stor6[address(arg3)] - ext_call.return_data[0]) * arg5 * arg2 / 10^18, 0, block.number
                        require ext_call.success
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), arg2
                            require ext_call.success
                            require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value 10^(stor6[address(arg3)] - ext_call.return_data[0]) * arg5 * arg2 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), 10^(stor6[address(arg3)] - ext_call.return_data[0]) * arg5 * arg2 / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), 10^(stor6[address(arg3)] - ext_call.return_data[0]) * arg5 * arg2 / 10^18, arg4, msg.sender);
                    else:
                        require ext_call.return_data[0] - stor6[address(arg3)] <= 18
                        require 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg3)])
                        require arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg3)]) > 0
                        require ext_code.size(conversionRatesContractAddress)
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, -arg2, 0, block.number
                        else:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg3)]), 0, block.number
                        require ext_call.success
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), arg2
                            require ext_call.success
                            require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg3)]) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg3)])
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg3)]), arg4, msg.sender);
        else:
            require ext_code.size(arg3)
            call arg3.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                require arg2 <= 10000000000 * 10^18
                require arg5 <= 1000000 * 10^18
                if ext_call.return_data[0] >= 18:
                    require ext_call.return_data[0] - 18 <= 18
                    require 10^(ext_call.return_data[0] - 18) * arg5 * arg2 / 10^18 > 0
                    require ext_code.size(conversionRatesContractAddress)
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, -arg2, 0, block.number
                    else:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, 10^(ext_call.return_data[0] - 18) * arg5 * arg2 / 10^18, 0, block.number
                    require ext_call.success
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), arg2
                        require ext_call.success
                        require ext_call.return_data[0]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                        call arg4 with:
                           value 10^(ext_call.return_data[0] - 18) * arg5 * arg2 / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require ext_code.size(arg3)
                        call arg3.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg4), 10^(ext_call.return_data[0] - 18) * arg5 * arg2 / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                    emit TradeExecute(arg1, 0, address(arg3), 10^(ext_call.return_data[0] - 18) * arg5 * arg2 / 10^18, arg4, msg.sender);
                else:
                    require -ext_call.return_data[0] + 18 <= 18
                    require 10^18 * 10^(-ext_call.return_data[0] + 18)
                    require arg2 * arg5 / 10^18 * 10^(-ext_call.return_data[0] + 18) > 0
                    require ext_code.size(conversionRatesContractAddress)
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, -arg2, 0, block.number
                    else:
                        call conversionRatesContractAddress.0xc6fd2103 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, arg2 * arg5 / 10^18 * 10^(-ext_call.return_data[0] + 18), 0, block.number
                    require ext_call.success
                    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), arg2
                        require ext_call.success
                        require ext_call.return_data[0]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                        call arg4 with:
                           value arg2 * arg5 / 10^18 * 10^(-ext_call.return_data[0] + 18) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require ext_code.size(arg3)
                        call arg3.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg4), arg2 * arg5 / 10^18 * 10^(-ext_call.return_data[0] + 18)
                        require ext_call.success
                        require ext_call.return_data[0]
                    emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(-ext_call.return_data[0] + 18), arg4, msg.sender);
            else:
                if stor6[address(arg1)]:
                    require arg2 <= 10000000000 * 10^18
                    require arg5 <= 1000000 * 10^18
                    if ext_call.return_data[0] >= stor6[address(arg1)]:
                        require ext_call.return_data[0] - stor6[address(arg1)] <= 18
                        require 10^(ext_call.return_data[0] - stor6[address(arg1)]) * arg5 * arg2 / 10^18 > 0
                        require ext_code.size(conversionRatesContractAddress)
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, -arg2, 0, block.number
                        else:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, 10^(ext_call.return_data[0] - stor6[address(arg1)]) * arg5 * arg2 / 10^18, 0, block.number
                        require ext_call.success
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), arg2
                            require ext_call.success
                            require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value 10^(ext_call.return_data[0] - stor6[address(arg1)]) * arg5 * arg2 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), 10^(ext_call.return_data[0] - stor6[address(arg1)]) * arg5 * arg2 / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), 10^(ext_call.return_data[0] - stor6[address(arg1)]) * arg5 * arg2 / 10^18, arg4, msg.sender);
                    else:
                        require stor6[address(arg1)] - ext_call.return_data[0] <= 18
                        require 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0])
                        require arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0]) > 0
                        require ext_code.size(conversionRatesContractAddress)
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, -arg2, 0, block.number
                        else:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0]), 0, block.number
                        require ext_call.success
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), arg2
                            require ext_call.success
                            require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0]) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0])
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0]), arg4, msg.sender);
                else:
                    require ext_code.size(arg1)
                    call arg1.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require arg2 <= 10000000000 * 10^18
                    require arg5 <= 1000000 * 10^18
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        require arg2 * arg5 / 10^18 * 10^0 > 0
                        require ext_code.size(conversionRatesContractAddress)
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, -arg2, 0, block.number
                        else:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, arg2 * arg5 / 10^18, 0, block.number
                        require ext_call.success
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), arg2
                            require ext_call.success
                            require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value arg2 * arg5 / 10^18 * 10^0 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), arg2 * arg5 / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), arg2 * arg5 / 10^18, arg4, msg.sender);
                    else:
                        require 10^0 * arg5 * arg2 / 10^18 > 0
                        require ext_code.size(conversionRatesContractAddress)
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, -arg2, 0, block.number
                        else:
                            call conversionRatesContractAddress.0xc6fd2103 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, arg5 * arg2 / 10^18, 0, block.number
                        require ext_call.success
                        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), arg2
                            require ext_call.success
                            require ext_call.return_data[0]
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                            call arg4 with:
                               value 10^0 * arg5 * arg2 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            require ext_code.size(arg3)
                            call arg3.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), arg5 * arg2 / 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                        emit TradeExecute(arg1, 0, address(arg3), arg5 * arg2 / 10^18, arg4, msg.sender);
    return 1
}

function getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if stor7:
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(conversionRatesContractAddress)
            call conversionRatesContractAddress.0xb8e9c22e with:
                 gas gas_remaining - 710 wei
                args 0, 0, arg4, 1, arg3
            require ext_call.success
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                    require arg3 <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        if eth.balance(this.address) >= ext_call.return_data[0] * arg3 / 10^18:
                            if not sanityRatesContractAddress:
                                return ext_call.return_data[0]
                            require ext_code.size(sanityRatesContractAddress)
                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg2)
                        call arg2.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= ext_call.return_data[0] * arg3 / 10^18:
                            if not sanityRatesContractAddress:
                                return ext_call.return_data[0]
                            require ext_code.size(sanityRatesContractAddress)
                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                return ext_call.return_data[0]
                else:
                    if stor6[address(arg1)]:
                        require arg3 <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        if 18 >= stor6[address(arg1)]:
                            require -stor6[address(arg1)] + 18 <= 18
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                if eth.balance(this.address) >= 10^(-stor6[address(arg1)] + 18) * ext_call.return_data[0] * arg3 / 10^18:
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg2)
                                call arg2.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] >= 10^(-stor6[address(arg1)] + 18) * ext_call.return_data[0] * arg3 / 10^18:
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                        else:
                            require stor6[address(arg1)] - 18 <= 18
                            require 10^18 * 10^(stor6[address(arg1)] - 18)
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - 18):
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg2)
                                call arg2.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - 18):
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        call arg1.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require arg3 <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        if 18 >= ext_call.return_data[0]:
                            require -ext_call.return_data[0] + 18 <= 18
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                if eth.balance(this.address) >= 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg3 / 10^18:
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg2)
                                call arg2.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] >= 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg3 / 10^18:
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                        else:
                            require ext_call.return_data[0] - 18 <= 18
                            require 10^18 * 10^(ext_call.return_data[0] - 18)
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18):
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg2)
                                call arg2.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18):
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
            else:
                if stor6[address(arg2)]:
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                        require arg3 <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        if stor6[address(arg2)] >= 18:
                            require stor6[address(arg2)] - 18 <= 18
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                if eth.balance(this.address) >= 10^(stor6[address(arg2)] - 18) * ext_call.return_data[0] * arg3 / 10^18:
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg2)
                                call arg2.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] >= 10^(stor6[address(arg2)] - 18) * ext_call.return_data[0] * arg3 / 10^18:
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                        else:
                            require -stor6[address(arg2)] + 18 <= 18
                            require 10^18 * 10^(-stor6[address(arg2)] + 18)
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(-stor6[address(arg2)] + 18):
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg2)
                                call arg2.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(-stor6[address(arg2)] + 18):
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                    else:
                        if stor6[address(arg1)]:
                            require arg3 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if stor6[address(arg2)] >= stor6[address(arg1)]:
                                require stor6[address(arg2)] - stor6[address(arg1)] <= 18
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= 10^(stor6[address(arg2)] - stor6[address(arg1)]) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 10^(stor6[address(arg2)] - stor6[address(arg1)]) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                            else:
                                require stor6[address(arg1)] - stor6[address(arg2)] <= 18
                                require 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg2)])
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg2)]):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg2)]):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                        else:
                            require ext_code.size(arg1)
                            call arg1.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require arg3 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if stor6[address(arg2)] >= ext_call.return_data[0]:
                                require stor6[address(arg2)] - ext_call.return_data[0] <= 18
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= 10^(stor6[address(arg2)] - ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 10^(stor6[address(arg2)] - ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                            else:
                                require ext_call.return_data[0] - stor6[address(arg2)] <= 18
                                require 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg2)])
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg2)]):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg2)]):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                else:
                    require ext_code.size(arg2)
                    call arg2.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                        require arg3 <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        if ext_call.return_data[0] >= 18:
                            require ext_call.return_data[0] - 18 <= 18
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                if eth.balance(this.address) >= 10^(ext_call.return_data[0] - 18) * ext_call.return_data[0] * arg3 / 10^18:
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg2)
                                call arg2.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] >= 10^(ext_call.return_data[0] - 18) * ext_call.return_data[0] * arg3 / 10^18:
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                        else:
                            require -ext_call.return_data[0] + 18 <= 18
                            require 10^18 * 10^(-ext_call.return_data[0] + 18)
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18):
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg2)
                                call arg2.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18):
                                    if not sanityRatesContractAddress:
                                        return ext_call.return_data[0]
                                    require ext_code.size(sanityRatesContractAddress)
                                    call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                    else:
                        if stor6[address(arg1)]:
                            require arg3 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if ext_call.return_data[0] >= stor6[address(arg1)]:
                                require ext_call.return_data[0] - stor6[address(arg1)] <= 18
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= 10^(ext_call.return_data[0] - stor6[address(arg1)]) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 10^(ext_call.return_data[0] - stor6[address(arg1)]) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                            else:
                                require stor6[address(arg1)] - ext_call.return_data[0] <= 18
                                require 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0])
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0]):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0]):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                        else:
                            require ext_code.size(arg1)
                            call arg1.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require arg3 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^0:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^0:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                            else:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= 10^0 * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 10^0 * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
        else:
            if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(conversionRatesContractAddress)
                call conversionRatesContractAddress.0xb8e9c22e with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg4, 0, arg3
                require ext_call.success
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                        require arg3 <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            if eth.balance(this.address) >= ext_call.return_data[0] * arg3 / 10^18:
                                if not sanityRatesContractAddress:
                                    return ext_call.return_data[0]
                                require ext_code.size(sanityRatesContractAddress)
                                call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return ext_call.return_data[0]
                        else:
                            require ext_code.size(arg2)
                            call arg2.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            if ext_call.return_data[0] >= ext_call.return_data[0] * arg3 / 10^18:
                                if not sanityRatesContractAddress:
                                    return ext_call.return_data[0]
                                require ext_code.size(sanityRatesContractAddress)
                                call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return ext_call.return_data[0]
                    else:
                        if stor6[address(arg1)]:
                            require arg3 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if 18 >= stor6[address(arg1)]:
                                require -stor6[address(arg1)] + 18 <= 18
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= 10^(-stor6[address(arg1)] + 18) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 10^(-stor6[address(arg1)] + 18) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                            else:
                                require stor6[address(arg1)] - 18 <= 18
                                require 10^18 * 10^(stor6[address(arg1)] - 18)
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - 18):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - 18):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                        else:
                            require ext_code.size(arg1)
                            call arg1.0x313ce567 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require arg3 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if 18 >= ext_call.return_data[0]:
                                require -ext_call.return_data[0] + 18 <= 18
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                            else:
                                require ext_call.return_data[0] - 18 <= 18
                                require 10^18 * 10^(ext_call.return_data[0] - 18)
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                else:
                    if stor6[address(arg2)]:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                            require arg3 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if stor6[address(arg2)] >= 18:
                                require stor6[address(arg2)] - 18 <= 18
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= 10^(stor6[address(arg2)] - 18) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 10^(stor6[address(arg2)] - 18) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                            else:
                                require -stor6[address(arg2)] + 18 <= 18
                                require 10^18 * 10^(-stor6[address(arg2)] + 18)
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(-stor6[address(arg2)] + 18):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(-stor6[address(arg2)] + 18):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                        else:
                            if stor6[address(arg1)]:
                                require arg3 <= 10000000000 * 10^18
                                require ext_call.return_data[0] <= 1000000 * 10^18
                                if stor6[address(arg2)] >= stor6[address(arg1)]:
                                    require stor6[address(arg2)] - stor6[address(arg1)] <= 18
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                        if eth.balance(this.address) >= 10^(stor6[address(arg2)] - stor6[address(arg1)]) * ext_call.return_data[0] * arg3 / 10^18:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if ext_call.return_data[0] >= 10^(stor6[address(arg2)] - stor6[address(arg1)]) * ext_call.return_data[0] * arg3 / 10^18:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                else:
                                    require stor6[address(arg1)] - stor6[address(arg2)] <= 18
                                    require 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg2)])
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                        if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg2)]):
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - stor6[address(arg2)]):
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg1)
                                call arg1.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require arg3 <= 10000000000 * 10^18
                                require ext_call.return_data[0] <= 1000000 * 10^18
                                if stor6[address(arg2)] >= ext_call.return_data[0]:
                                    require stor6[address(arg2)] - ext_call.return_data[0] <= 18
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                        if eth.balance(this.address) >= 10^(stor6[address(arg2)] - ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / 10^18:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if ext_call.return_data[0] >= 10^(stor6[address(arg2)] - ext_call.return_data[0]) * ext_call.return_data[0] * arg3 / 10^18:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                else:
                                    require ext_call.return_data[0] - stor6[address(arg2)] <= 18
                                    require 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg2)])
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                        if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg2)]):
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor6[address(arg2)]):
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg2)
                        call arg2.0x313ce567 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                            require arg3 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if ext_call.return_data[0] >= 18:
                                require ext_call.return_data[0] - 18 <= 18
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= 10^(ext_call.return_data[0] - 18) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 10^(ext_call.return_data[0] - 18) * ext_call.return_data[0] * arg3 / 10^18:
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                            else:
                                require -ext_call.return_data[0] + 18 <= 18
                                require 10^18 * 10^(-ext_call.return_data[0] + 18)
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                    if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                                else:
                                    require ext_code.size(arg2)
                                    call arg2.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18):
                                        if not sanityRatesContractAddress:
                                            return ext_call.return_data[0]
                                        require ext_code.size(sanityRatesContractAddress)
                                        call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                        else:
                            if stor6[address(arg1)]:
                                require arg3 <= 10000000000 * 10^18
                                require ext_call.return_data[0] <= 1000000 * 10^18
                                if ext_call.return_data[0] >= stor6[address(arg1)]:
                                    require ext_call.return_data[0] - stor6[address(arg1)] <= 18
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                        if eth.balance(this.address) >= 10^(ext_call.return_data[0] - stor6[address(arg1)]) * ext_call.return_data[0] * arg3 / 10^18:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if ext_call.return_data[0] >= 10^(ext_call.return_data[0] - stor6[address(arg1)]) * ext_call.return_data[0] * arg3 / 10^18:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                else:
                                    require stor6[address(arg1)] - ext_call.return_data[0] <= 18
                                    require 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0])
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                        if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0]):
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^(stor6[address(arg1)] - ext_call.return_data[0]):
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                            else:
                                require ext_code.size(arg1)
                                call arg1.0x313ce567 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require arg3 <= 10000000000 * 10^18
                                require ext_call.return_data[0] <= 1000000 * 10^18
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                        if eth.balance(this.address) >= arg3 * ext_call.return_data[0] / 10^18 * 10^0:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if ext_call.return_data[0] >= arg3 * ext_call.return_data[0] / 10^18 * 10^0:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                                        if eth.balance(this.address) >= 10^0 * ext_call.return_data[0] * arg3 / 10^18:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if ext_call.return_data[0] >= 10^0 * ext_call.return_data[0] * arg3 / 10^18:
                                            if not sanityRatesContractAddress:
                                                return ext_call.return_data[0]
                                            require ext_code.size(sanityRatesContractAddress)
                                            call sanityRatesContractAddress.getSanityRate(address arg1, address arg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), arg2
                                            require ext_call.success
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                return ext_call.return_data[0]
        return 0
    else:
        return 0
}



}
