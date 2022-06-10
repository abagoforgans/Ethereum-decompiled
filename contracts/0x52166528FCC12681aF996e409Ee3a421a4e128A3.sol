contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor14;
address stor15;
address stor16;
uint256 stor17;

function _fallback() payable {
    stor14 = 0
    stor17 = 600 * 10^18
    require not msg.value
    stor0 = msg.sender
    require code.data[7651 len 20]
    require code.data[7683 len 20]
    require code.data[7715 len 20]
    require code.data[7735 len 32]
    stor16 = code.data[7715 len 20]
    stor0 = code.data[7651 len 20]
    stor15 = code.data[7683 len 20]
    stor17 = code.data[7735 len 32]
    return code.data[260 len 7379]
}



// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
mapping of uint256 stor6;
mapping of uint256 reserveFeesInBps;
mapping of address reserveKNCWallet;
mapping of uint256 walletFeesInBps;
mapping of uint256 reserveFeeToBurn;
mapping of uint256 feePayedPerReserve;
mapping of uint256 reserveFeeToWallet;
address taxWalletAddress;
uint256 taxFeeBps;
address kncAddress;
address kyberNetworkAddress;
uint256 kncPerEthRatePrecision;

function reserveKNCWallet(address arg1) {
    return reserveKNCWallet[arg1]
}

function reserveFeeToWallet(address arg1, address arg2) {
    return reserveFeeToWallet[arg1][arg2]
}

function pendingAdmin() {
    return pendingAdminAddress
}

function reserveFeeToBurn(address arg1) {
    return reserveFeeToBurn[arg1]
}

function taxWallet() {
    return taxWalletAddress
}

function kncPerEthRatePrecision() {
    return kncPerEthRatePrecision
}

function reserveFeesInBps(address arg1) {
    return reserveFeesInBps[arg1]
}

function taxFeeBps() {
    return taxFeeBps
}

function walletFeesInBps(address arg1) {
    return walletFeesInBps[arg1]
}

function kyberNetwork() {
    return kyberNetworkAddress
}

function feePayedPerReserve(address arg1) {
    return feePayedPerReserve[arg1]
}

function knc() {
    return kncAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setTaxInBps(uint256 arg1) {
    require adminAddress == msg.sender
    require arg1 < 10000
    taxFeeBps = arg1
    emit TaxFeesSet(arg1);
}

function setTaxWallet(address arg1) {
    require adminAddress == msg.sender
    require arg1
    taxWalletAddress = arg1
    emit TaxWalletSet(arg1);
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

function setWalletFees(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg2 < 10000
    walletFeesInBps[address(arg1)] = arg2
    emit WalletFeesSet(address(arg1), arg2);
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

function setReserveData(address arg1, uint256 arg2, address arg3) {
    require stor2[address(msg.sender)]
    require arg2 < 100
    require arg3
    reserveFeesInBps[address(arg1)] = arg2
    reserveKNCWallet[address(arg1)] = arg3
    emit ReserveDataSet(address(arg1), arg2, arg3);
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

function sendFeeToWallet(address arg1, address arg2) {
    require reserveFeeToWallet[address(arg2)][address(arg1)] > 1
    reserveFeeToWallet[address(arg2)][address(arg1)] = 1
    require ext_code.size(kncAddress)
    call kncAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args reserveKNCWallet[address(arg2)], address(arg1), reserveFeeToWallet[address(arg2)][address(arg1)] - 1
    require ext_call.success
    require ext_call.return_data[0]
    feePayedPerReserve[address(arg2)] = reserveFeeToWallet[address(arg2)][address(arg1)] + feePayedPerReserve[address(arg2)] - 1
    emit SendWalletFees(address(arg2), msg.sender, arg1);
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

function setKNCRate() {
    require ext_code.size(kyberNetworkAddress)
    call kyberNetworkAddress.0x809a9e55 with:
         gas gas_remaining - 710 wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, kncAddress, 10^18
    require ext_call.success
    require ext_code.size(kyberNetworkAddress)
    call kyberNetworkAddress.0x809a9e55 with:
         gas gas_remaining - 710 wei
        args kncAddress, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^18
    require ext_call.success
    require ext_call.return_data[0] * ext_call.return_data[0] < 2000000000000000000 * 10^18
    require ext_call.return_data[0] * ext_call.return_data[0] > 500000000000000000 * 10^18
    require ext_call.return_data[0] <= 1000000 * 10^18
    kncPerEthRatePrecision = ext_call.return_data[0]
    emit KNCRateSet(ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], msg.sender);
}

function burnReserveFees(address arg1) {
    require reserveFeeToBurn[address(arg1)] > 2
    reserveFeeToBurn[address(arg1)] = 1
    if not taxWalletAddress:
        require ext_code.size(kncAddress)
        call kncAddress.0x79cc6790 with:
             gas gas_remaining - 710 wei
            args reserveKNCWallet[address(arg1)], reserveFeeToBurn[address(arg1)] - 1
        require ext_call.success
        require ext_call.return_data[0]
        feePayedPerReserve[address(arg1)] = reserveFeeToBurn[address(arg1)] + feePayedPerReserve[address(arg1)] - 1
        emit BurnAssignedFees(msg.sender, reserveFeeToBurn[address(arg1)] - 1, arg1);
    else:
        if not taxFeeBps:
            require ext_code.size(kncAddress)
            call kncAddress.0x79cc6790 with:
                 gas gas_remaining - 710 wei
                args reserveKNCWallet[address(arg1)], reserveFeeToBurn[address(arg1)] - 1
            require ext_call.success
            require ext_call.return_data[0]
            feePayedPerReserve[address(arg1)] = reserveFeeToBurn[address(arg1)] + feePayedPerReserve[address(arg1)] - 1
            emit BurnAssignedFees(msg.sender, reserveFeeToBurn[address(arg1)] - 1, arg1);
        else:
            require reserveFeeToBurn[address(arg1)] - 1 > -taxFeeBps + (reserveFeeToBurn[address(arg1)] * taxFeeBps) / 10000
            require ext_code.size(kncAddress)
            if -taxFeeBps + (reserveFeeToBurn[address(arg1)] * taxFeeBps) / 10000 > 0:
                call kncAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args reserveKNCWallet[address(arg1)], taxWalletAddress, -taxFeeBps + (reserveFeeToBurn[address(arg1)] * taxFeeBps) / 10000
                require ext_call.success
                require ext_call.return_data[0]
                emit SendTaxFee(msg.sender, taxWalletAddress, -taxFeeBps + (reserveFeeToBurn[address(arg1)] * taxFeeBps) / 10000, arg1);
            call kncAddress.0x79cc6790 with:
                 gas gas_remaining - 710 wei
                args reserveKNCWallet[address(arg1)], reserveFeeToBurn[address(arg1)] + -(-taxFeeBps + (reserveFeeToBurn[address(arg1)] * taxFeeBps) / 10000) - 1
            require ext_call.success
            require ext_call.return_data[0]
            feePayedPerReserve[address(arg1)] = reserveFeeToBurn[address(arg1)] + feePayedPerReserve[address(arg1)] - 1
            emit BurnAssignedFees(msg.sender, reserveFeeToBurn[address(arg1)] + -(-taxFeeBps + (reserveFeeToBurn[address(arg1)] * taxFeeBps) / 10000) - 1, arg1);
}

function handleFees(uint256 arg1, address arg2, address arg3) {
    require kyberNetworkAddress == msg.sender
    require arg1 <= 10000000000 * 10^18
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == kncAddress:
        require arg1 <= 10000000000 * 10^18
        require kncPerEthRatePrecision <= 1000000 * 10^18
        require kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 >= kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
        if kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000 > 0:
            reserveFeeToWallet[address(arg2)][address(arg3)] += kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
            emit AssignFeeToWallet(address(arg2), address(arg3), kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000);
        if (kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000) - (kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) > 0:
            emit AssignBurnFees(address(arg2), (kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000) - (kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000));
            reserveFeeToBurn[address(arg2)] = (kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000) - (kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) + reserveFeeToBurn[address(arg2)]
    else:
        if stor6[stor15]:
            require arg1 <= 10000000000 * 10^18
            require kncPerEthRatePrecision <= 1000000 * 10^18
            if stor6[stor15] >= 18:
                require stor6[stor15] - 18 <= 18
                require 10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 >= 10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
                if 10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000 > 0:
                    reserveFeeToWallet[address(arg2)][address(arg3)] += 10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
                    emit AssignFeeToWallet(address(arg2), address(arg3), 10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000);
                if (10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000) - (10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) > 0:
                    emit AssignBurnFees(address(arg2), (10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000) - (10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000));
                    reserveFeeToBurn[address(arg2)] = (10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000) - (10^(stor6[stor15] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) + reserveFeeToBurn[address(arg2)]
            else:
                require -stor6[stor15] + 18 <= 18
                require 10^18 * 10^(-stor6[stor15] + 18)
                require arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000 >= arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
                if arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000 > 0:
                    reserveFeeToWallet[address(arg2)][address(arg3)] += arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
                    emit AssignFeeToWallet(address(arg2), address(arg3), arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000);
                if (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000) - (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) > 0:
                    emit AssignBurnFees(address(arg2), (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000) - (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000));
                    reserveFeeToBurn[address(arg2)] = (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000) - (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-stor6[stor15] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) + reserveFeeToBurn[address(arg2)]
        else:
            require ext_code.size(kncAddress)
            call kncAddress.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require arg1 <= 10000000000 * 10^18
            require kncPerEthRatePrecision <= 1000000 * 10^18
            if ext_call.return_data[0] >= 18:
                require ext_call.return_data[0] - 18 <= 18
                require 10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 >= 10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
                if 10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000 > 0:
                    reserveFeeToWallet[address(arg2)][address(arg3)] += 10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
                    emit AssignFeeToWallet(address(arg2), address(arg3), 10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000);
                if (10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000) - (10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) > 0:
                    emit AssignBurnFees(address(arg2), (10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000) - (10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000));
                    reserveFeeToBurn[address(arg2)] = (10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000) - (10^(ext_call.return_data[0] - 18) * kncPerEthRatePrecision * arg1 / 10^18 * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) + reserveFeeToBurn[address(arg2)]
            else:
                require -ext_call.return_data[0] + 18 <= 18
                require 10^18 * 10^(-ext_call.return_data[0] + 18)
                require arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000 >= arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
                if arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000 > 0:
                    reserveFeeToWallet[address(arg2)][address(arg3)] += arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000
                    emit AssignFeeToWallet(address(arg2), address(arg3), arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000);
                if (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000) - (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) > 0:
                    emit AssignBurnFees(address(arg2), (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000) - (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000));
                    reserveFeeToBurn[address(arg2)] = (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000) - (arg1 * kncPerEthRatePrecision / 10^18 * 10^(-ext_call.return_data[0] + 18) * reserveFeesInBps[address(arg2)] / 10000 * walletFeesInBps[address(arg3)] / 10000) + reserveFeeToBurn[address(arg2)]
    return 1
}



}
