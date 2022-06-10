contract main {


// =======================  Init code  ======================


address stor0;
address stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor8 = 2
    stor9 = 50
    require not msg.value
    stor0 = msg.sender
    require code.data[5724 len 20]
    require code.data[5692 len 20]
    stor7 = code.data[5692 len 20]
    stor0 = code.data[5724 len 20]
    return code.data[182 len 5498]
}



// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
mapping of uint256 stor6;
address kyberNetworkAddress;
uint256 quantityFactor;
uint256 worstCaseRateFactorInBps;

function pendingAdmin() {
    return pendingAdminAddress
}

function worstCaseRateFactorInBps() {
    return worstCaseRateFactorInBps
}

function quantityFactor() {
    return quantityFactor
}

function kyberNetwork() {
    return kyberNetworkAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function transferAdmin(address arg1) {
    require adminAddress == msg.sender
    require arg1
    emit TransferAdminPending(pendingAdminAddress);
    pendingAdminAddress = arg1
}

function setQuantityFactor(uint256 arg1) {
    require stor2[address(msg.sender)]
    require arg1 <= 100
    emit QuantityFactorSet(arg1, quantityFactor, msg.sender);
    quantityFactor = arg1
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

function setWorstCaseRateFactor(uint256 arg1) {
    require stor2[address(msg.sender)]
    require arg1 <= 10000
    emit MinSlippageFactorSet(arg1, worstCaseRateFactorInBps, msg.sender);
    worstCaseRateFactorInBps = arg1
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

function getExpectedRate(address arg1, address arg2, uint256 arg3, bool arg4) {
    require quantityFactor != 0
    require arg3 <= 10000000000 * 10^18
    require arg3 * quantityFactor <= 10000000000 * 10^18
    require ext_code.size(kyberNetworkAddress)
    if not arg3:
        if not arg4:
            call kyberNetworkAddress.0x1dc1f78d with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(arg2), 1
            require ext_call.success
            require ext_code.size(kyberNetworkAddress)
            call kyberNetworkAddress.0x1dc1f78d with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(arg2), quantityFactor
        else:
            call kyberNetworkAddress.0xb8388aca with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(arg2), 1
            require ext_call.success
            require ext_code.size(kyberNetworkAddress)
            call kyberNetworkAddress.0xb8388aca with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(arg2), quantityFactor
        require ext_call.success
        if ext_call.return_data[32]:
            require ext_call.return_data[32] <= 1000000 * 10^18
            if ext_call.return_data[32] < (10000 * ext_call.return_data[32]) - (worstCaseRateFactorInBps * ext_call.return_data[32]) / 10000:
                return ext_call.return_data[32], ext_call.return_data[32]
            return ext_call.return_data[32], 
                   (10000 * ext_call.return_data[32]) - (worstCaseRateFactorInBps * ext_call.return_data[32]) / 10000
        require ext_code.size(kyberNetworkAddress)
        call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
             gas gas_remaining - 710 wei
            args 0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 1, arg4
        require ext_call.success
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            require ext_call.return_data[32] <= 1000000 * 10^18
            require ext_code.size(kyberNetworkAddress)
            call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                 gas gas_remaining - 710 wei
                args 0, 4008636142, address(arg2), ext_call.return_data[32] / 10^18, arg4
        else:
            if stor6[address(arg1)]:
                require ext_call.return_data[32] <= 1000000 * 10^18
                if 18 >= stor6[address(arg1)]:
                    require -stor6[address(arg1)] + 18 <= 18
                    require ext_code.size(kyberNetworkAddress)
                    call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                         gas gas_remaining - 710 wei
                        args 0, 4008636142, address(arg2), 10^(-stor6[address(arg1)] + 18) * ext_call.return_data[32] / 10^18, arg4
                else:
                    require stor6[address(arg1)] - 18 <= 18
                    require 10^18 * 10^(stor6[address(arg1)] - 18)
                    require ext_code.size(kyberNetworkAddress)
                    call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                         gas gas_remaining - 710 wei
                        args 0, 4008636142, address(arg2), ext_call.return_data[32] / 10^18 * 10^(stor6[address(arg1)] - 18), arg4
            else:
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[32] <= 1000000 * 10^18
                if 18 >= ext_call.return_data[0]:
                    require -ext_call.return_data[0] + 18 <= 18
                    require ext_code.size(kyberNetworkAddress)
                    call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                         gas gas_remaining - 710 wei
                        args 0, 4008636142, address(arg2), 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[32] / 10^18, arg4
                else:
                    require ext_call.return_data[0] - 18 <= 18
                    require 10^18 * 10^(ext_call.return_data[0] - 18)
                    require ext_code.size(kyberNetworkAddress)
                    call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                         gas gas_remaining - 710 wei
                        args 0, 4008636142, address(arg2), ext_call.return_data[32] / 10^18 * 10^(ext_call.return_data[0] - 18), arg4
    else:
        if not arg4:
            call kyberNetworkAddress.0x1dc1f78d with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(arg2), arg3
            require ext_call.success
            require ext_code.size(kyberNetworkAddress)
            call kyberNetworkAddress.0x1dc1f78d with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(arg2), arg3 * quantityFactor
        else:
            call kyberNetworkAddress.0xb8388aca with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(arg2), arg3
            require ext_call.success
            require ext_code.size(kyberNetworkAddress)
            call kyberNetworkAddress.0xb8388aca with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(arg2), arg3 * quantityFactor
        require ext_call.success
        if ext_call.return_data[32]:
            require ext_call.return_data[32] <= 1000000 * 10^18
            if ext_call.return_data[32] < (10000 * ext_call.return_data[32]) - (worstCaseRateFactorInBps * ext_call.return_data[32]) / 10000:
                return ext_call.return_data[32], ext_call.return_data[32]
            return ext_call.return_data[32], 
                   (10000 * ext_call.return_data[32]) - (worstCaseRateFactorInBps * ext_call.return_data[32]) / 10000
        require ext_code.size(kyberNetworkAddress)
        call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
             gas gas_remaining - 710 wei
            args 0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3, arg4
        require ext_call.success
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            require arg3 <= 10000000000 * 10^18
            require ext_call.return_data[32] <= 1000000 * 10^18
            require ext_code.size(kyberNetworkAddress)
            call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                 gas gas_remaining - 710 wei
                args 0, 4008636142, address(arg2), ext_call.return_data[32] * arg3 / 10^18, arg4
        else:
            if stor6[address(arg1)]:
                require arg3 <= 10000000000 * 10^18
                require ext_call.return_data[32] <= 1000000 * 10^18
                if 18 >= stor6[address(arg1)]:
                    require -stor6[address(arg1)] + 18 <= 18
                    require ext_code.size(kyberNetworkAddress)
                    call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                         gas gas_remaining - 710 wei
                        args 0, 4008636142, address(arg2), 10^(-stor6[address(arg1)] + 18) * ext_call.return_data[32] * arg3 / 10^18, arg4
                else:
                    require stor6[address(arg1)] - 18 <= 18
                    require 10^18 * 10^(stor6[address(arg1)] - 18)
                    require ext_code.size(kyberNetworkAddress)
                    call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                         gas gas_remaining - 710 wei
                        args 0, 4008636142, address(arg2), arg3 * ext_call.return_data[32] / 10^18 * 10^(stor6[address(arg1)] - 18), arg4
            else:
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require arg3 <= 10000000000 * 10^18
                require ext_call.return_data[32] <= 1000000 * 10^18
                if 18 >= ext_call.return_data[0]:
                    require -ext_call.return_data[0] + 18 <= 18
                    require ext_code.size(kyberNetworkAddress)
                    call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                         gas gas_remaining - 710 wei
                        args 0, 4008636142, address(arg2), 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[32] * arg3 / 10^18, arg4
                else:
                    require ext_call.return_data[0] - 18 <= 18
                    require 10^18 * 10^(ext_call.return_data[0] - 18)
                    require ext_code.size(kyberNetworkAddress)
                    call kyberNetworkAddress.searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                         gas gas_remaining - 710 wei
                        args 0, 4008636142, address(arg2), arg3 * ext_call.return_data[32] / 10^18 * 10^(ext_call.return_data[0] - 18), arg4
    require ext_call.success
    require ext_call.return_data[32] * ext_call.return_data[32] / 10^18 <= 1000000 * 10^18
    if ext_call.return_data[32] < (10000 * ext_call.return_data[32] * ext_call.return_data[32] / 10^18) - (worstCaseRateFactorInBps * ext_call.return_data[32] * ext_call.return_data[32] / 10^18) / 10000:
        return ext_call.return_data[32] * ext_call.return_data[32] / 10^18, ext_call.return_data[32]
    return ext_call.return_data[32] * ext_call.return_data[32] / 10^18, 
           (10000 * ext_call.return_data[32] * ext_call.return_data[32] / 10^18) - (worstCaseRateFactorInBps * ext_call.return_data[32] * ext_call.return_data[32] / 10^18) / 10000
}



}
