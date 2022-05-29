contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
mapping of uint256 stor6;
uint256 negligibleRateDiff;
array of struct suppliers;
mapping of uint8 stor9;
address whiteListContractAddress;
address expectedRateContractAddress;
mapping of uint8 stor12;
uint256 maxGasPrice;
uint256 stor14;
uint8 stor15;
mapping of uint256 info;
mapping of uint8 stor17;
uint256 quoteKey;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function perSupplierListedPairs(address arg1, bytes32 arg2) {
    return bool(stor17[arg1][arg2])
}

function getNumSuppliers() {
    return suppliers.length
}

function enabled() {
    return bool(stor15)
}

function pendingAdmin() {
    return pendingAdminAddress
}

function maxGasPrice() {
    return maxGasPrice
}

function isSupplier(address arg1) {
    return bool(stor9[arg1])
}

function negligibleRateDiff() {
    return negligibleRateDiff
}

function expectedRateContract() {
    return expectedRateContractAddress
}

function whiteListContract() {
    return whiteListContractAddress
}

function info(bytes32 arg1) {
    return info[arg1]
}

function suppliers(uint256 arg1) {
    require arg1 < suppliers.length
    return address(suppliers[arg1].field_0)
}

function getQuoteKey() {
    require stor2[msg.sender]
    return quoteKey
}

function admin() {
    return adminAddress
}

function setInfo(bytes32 arg1, uint256 arg2) {
    require stor2[msg.sender]
    info[arg1] = arg2
}

function _fallback() payable {
    require stor9[msg.sender]
    emit EtherReceival(msg.value, msg.sender);
}

function setQuoteKey(uint256 arg1) {
    require stor2[msg.sender]
    if arg1 <= 0:
        revert with 0, 'quoteKey must greater than 0!'
    quoteKey = arg1
}

function transferAdmin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    emit TransferAdminPending(pendingAdminAddress);
    pendingAdminAddress = arg1
}

function setEnable(bool arg1) {
    require msg.sender == adminAddress
    if arg1:
        require whiteListContractAddress
        require expectedRateContractAddress
    stor15 = uint8(arg1)
}

function claimAdmin() {
    require msg.sender == pendingAdminAddress
    emit AdminClaimed(pendingAdminAddress, adminAddress);
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
}

function transferAdminQuickly(address arg1) {
    require msg.sender == adminAddress
    require arg1
    emit TransferAdminPending(arg1);
    emit AdminClaimed(address(arg1), adminAddress);
    adminAddress = arg1
}

function addQuoter(address arg1) {
    require msg.sender == adminAddress
    require not stor3[address(arg1)]
    require 50 > stor5.length
    emit QuoterAdded(address(arg1), 1);
    stor3[address(arg1)] = 1
    stor5.length++
    stor36B6[stor5.length] = arg1
}

function setValidateCodeTokens(address arg1, bool arg2) {
    require msg.sender == adminAddress
    if not arg2:
        require stor12[address(arg1)]
        stor12[address(arg1)] = 0
    else:
        require not stor12[address(arg1)]
        stor12[address(arg1)] = 1
}

function addOperator(address arg1) {
    require msg.sender == adminAddress
    require not stor2[address(arg1)]
    require 50 > stor4.length
    emit OperatorAdded(address(arg1), 1);
    stor2[address(arg1)] = 1
    stor4.length++
    address(stor4[stor4.length].field_0) = arg1
}

function withdrawEther(uint256 arg1, address arg2) {
    require msg.sender == adminAddress
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EtherWithdraw(arg1, arg2);
}

function getUserCapInWei(address arg1) {
    require ext_code.size(whiteListContractAddress)
    call whiteListContractAddress.0x6432679f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setParams(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == adminAddress
    require arg1
    require arg2
    require arg4 <= 10000
    require arg5 > 1
    require arg5 < 256
    whiteListContractAddress = arg1
    expectedRateContractAddress = arg2
    maxGasPrice = arg3
    negligibleRateDiff = arg4
    stor14 = arg5
}

function getBalance(address arg1, address arg2) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenWithdraw(address(arg1), arg2, arg3);
}

function getExpectedRate(address arg1, address arg2, uint256 arg3) {
    require expectedRateContractAddress
    require ext_code.size(expectedRateContractAddress)
    call expectedRateContractAddress.0x809a9e55 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function getQuoters() {
    if stor5.length:
        mem[128] = address(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = address(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = address(stor5[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return memory
      from (32 * stor5.length) + 128
       len (96 * stor5.length) + 64
}

function removeQuoter(address arg1) {
    require msg.sender == adminAddress
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
        if stor5.length > stor5.length - 1:
            idx = stor5.length + sha3(5) - 1
            while sha3(5) + stor5.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit QuoterAdded(address(arg1), 0);
}

function getSuppliers() {
    if suppliers.length:
        mem[128] = address(suppliers.field_0)
        if (32 * suppliers.length) + 32 > 64:
            mem[160] = address(suppliers.field_256)
            idx = 160
            s = 1
            while (32 * suppliers.length) + 96 > idx:
                mem[idx + 32] = address(suppliers[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * suppliers.length) + 128] = 32
    mem[(32 * suppliers.length) + 160] = suppliers.length
    mem[(32 * suppliers.length) + 192 len floor32(suppliers.length)] = mem[128 len floor32(suppliers.length)]
    return memory
      from (32 * suppliers.length) + 128
       len (96 * suppliers.length) + 64
}

function removeOperator(address arg1) {
    require msg.sender == adminAddress
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
        if stor4.length > stor4.length - 1:
            idx = stor4.length + sha3(4) - 1
            while sha3(4) + stor4.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit OperatorAdded(address(arg1), 0);
}

function getOperators() {
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = address(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 192 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function addSupplier(address arg1, bool arg2) {
    require msg.sender == adminAddress
    if not arg2:
        stor9[address(arg1)] = 0
        idx = 0
        while idx < suppliers.length:
            mem[0] = 8
            if address(suppliers[idx].field_0) != arg1:
                idx = idx + 1
                continue 
            require suppliers.length - 1 < suppliers.length
            require idx < suppliers.length
            address(suppliers[idx].field_0) = address(suppliers[suppliers.length].field_0)
            suppliers.length--
            if suppliers.length > suppliers.length - 1:
                idx = suppliers.length + sha3(8) - 1
                while sha3(8) + suppliers.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit AddSupplier(address(arg1), 0);
    else:
        require not stor9[address(arg1)]
        suppliers.length++
        address(suppliers[suppliers.length].field_0) = arg1
        stor9[address(arg1)] = 1
        emit AddSupplier(address(arg1), 1);
}

function findBestRate(address arg1, address arg2, uint256 arg3) {
    idx = 0
    while idx < suppliers.length:
        mem[(64 * suppliers.length) + 160] = address(arg1)
        mem[(64 * suppliers.length) + 180] = address(arg2)
        mem[0] = sha3(arg1, arg2)
        mem[32] = sha3(address(suppliers[idx].field_0), 17)
        if not stor17[address(stor8[idx].field_0)][('map', ('param', 'arg1'), ('param', 'arg2'))]:
            idx = idx + 1
            continue 
        require idx < suppliers.length
        mem[0] = 8
        mem[(64 * suppliers.length) + 164] = arg1
        mem[(64 * suppliers.length) + 196] = arg2
        mem[(64 * suppliers.length) + 228] = arg3
        mem[(64 * suppliers.length) + 260] = block.number
        require ext_code.size(address(suppliers[idx].field_0))
        call address(suppliers[idx].field_0).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3, block.number
        mem[(64 * suppliers.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < suppliers.length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        require idx < suppliers.length
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        require idx < suppliers.length
        idx = idx + 1
        continue 
    return 0
}

function listPairForSupplier(address arg1, address arg2, address arg3, bool arg4) {
    require msg.sender == adminAddress
    stor17[address(arg1)][('map', ('param', 'arg2'), ('param', 'arg3'))] = uint8(arg4)
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        stor6[address(arg2)] = 18
    else:
        require ext_code.size(arg2)
        if not arg4:
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 0
        else:
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
            stor6[address(arg2)] = 18
        else:
            require ext_code.size(arg2)
            call arg2.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor6[address(arg2)] = ext_call.return_data[0]
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
        stor6[address(arg3)] = 18
    else:
        require ext_code.size(arg3)
        call arg3.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor6[address(arg3)] = ext_call.return_data[0]
    emit ListSupplierPairs(address(arg1), address(arg2), address(arg3), arg4);
}

function trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes32 arg9) payable {
    require stor15
    if stor12[address(arg1)]:
        require arg8 <= block.number
        require block.number - arg8 <= stor14
        require arg9 == sha3(arg7, arg8, quoteKey)
    else:
        if stor12[address(arg3)]:
            require arg8 <= block.number
            require block.number - arg8 <= stor14
            require arg9 == sha3(arg7, arg8, quoteKey)
    require arg2 < 10000000000 * 10^18
    require arg2
    require arg4
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        require arg2 == msg.value
    else:
        require not msg.value
        require ext_code.size(arg1)
        call arg1.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg2
    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if arg3 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require ext_code.size(arg3)
        call arg3.0x70a08231 with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require block.gasprice <= maxGasPrice
    idx = 0
    while idx < suppliers.length:
        mem[(64 * suppliers.length) + 160] = address(arg1)
        mem[(64 * suppliers.length) + 180] = address(arg3)
        mem[0] = sha3(arg1, arg3)
        mem[32] = sha3(address(suppliers[idx].field_0), 17)
        if not stor17[address(stor8[idx].field_0)][('map', ('param', 'arg1'), ('param', 'arg3'))]:
            idx = idx + 1
            continue 
        require idx < suppliers.length
        mem[0] = 8
        mem[(64 * suppliers.length) + 164] = arg1
        mem[(64 * suppliers.length) + 196] = arg3
        mem[(64 * suppliers.length) + 228] = arg2
        mem[(64 * suppliers.length) + 260] = block.number
        require ext_code.size(address(suppliers[idx].field_0))
        call address(suppliers[idx].field_0).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg1), address(arg3), arg2, block.number
        mem[(64 * suppliers.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < suppliers.length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        require idx < suppliers.length
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        require idx < suppliers.length
        idx = idx + 1
        continue 
    require 0 >= suppliers.length
    revert
}



}
