contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
address sub_1672c2e5Address;
uint256 quantityFactor;
uint256 minSlippageFactorInBps;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_1672c2e5(?) {
    return sub_1672c2e5Address
}

function pendingAdmin() {
    return pendingAdminAddress
}

function quantityFactor() {
    return quantityFactor
}

function admin() {
    return adminAddress
}

function minSlippageFactorInBps() {
    return minSlippageFactorInBps
}

function _fallback() payable {
    revert
}

function transferAdmin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    emit TransferAdminPending(pendingAdminAddress);
    pendingAdminAddress = arg1
}

function setQuantityFactor(uint256 arg1) {
    require stor2[msg.sender]
    require arg1 <= 100
    emit QuantityFactorSet(quantityFactor, arg1, msg.sender);
    quantityFactor = arg1
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

function setMinSlippageFactor(uint256 arg1) {
    require stor2[msg.sender]
    require 10000 >= minSlippageFactorInBps
    emit MinSlippageFactorSet(arg1, minSlippageFactorInBps, msg.sender);
    minSlippageFactorInBps = arg1
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

function getExpectedRate(address arg1, address arg2, uint256 arg3) {
    require quantityFactor != 0
    require arg3 <= 10000000000 * 10^18
    require arg3 * quantityFactor <= 10000000000 * 10^18
    require ext_code.size(sub_1672c2e5Address)
    call sub_1672c2e5Address.0xb8388aca with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_1672c2e5Address)
    call sub_1672c2e5Address.0xb8388aca with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3 * quantityFactor
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] <= 1000000 * 10^18
    if ext_call.return_data[32] < (10000 * ext_call.return_data[32]) - (minSlippageFactorInBps * ext_call.return_data[32]) / 10000:
        return ext_call.return_data[32], ext_call.return_data[32]
    return ext_call.return_data[32], 
           (10000 * ext_call.return_data[32]) - (minSlippageFactorInBps * ext_call.return_data[32]) / 10000
}



}
