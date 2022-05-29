contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
address sanityRatesContractAddress;
address mitAddress;
address stor9;
uint32 stor10;
address stor10;
mapping of struct stor11;
array of struct stor12;
mapping of uint256 stor13;
uint8 stor14;
uint256 feeBps;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function feeBps() {
    return feeBps
}

function pendingAdmin() {
    return pendingAdminAddress
}

function sanityRatesContract() {
    return sanityRatesContractAddress
}

function mit() {
    return mitAddress
}

function tradeEnabled() {
    return bool(stor14)
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    require msg.sender == address(stor10)
}

function disableTrade() {
    require stor2[msg.sender]
    stor14 = 0
    emit TradeEnabled(0);
    return 1
}

function enableTrade() {
    require msg.sender == adminAddress
    stor14 = 1
    emit TradeEnabled(1);
    return 1
}

function valueAfterReducingFee(uint256 arg1) {
    require arg1 <= 10000000000 * 10^18
    return ((10000 * arg1) - (feeBps * arg1) / 10000)
}

function setFeeBps(uint256 arg1) {
    require stor2[msg.sender]
    require arg1 < 10000
    emit 0x9c3e70ae: feeBps, arg1
    feeBps = arg1
}

function sub_eb4286cf(?) {
    require msg.sender == adminAddress
    require arg1
    emit 0x7d04e30e: mitAddress, arg1
    mitAddress = arg1
}

function valueBeforeFeesWereReduced(uint256 arg1) {
    require arg1 <= 10000000000 * 10^18
    require -feeBps + 10000
    return (10000 * arg1 / -feeBps + 10000)
}

function transferAdmin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    emit TransferAdminPending(pendingAdminAddress);
    pendingAdminAddress = arg1
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

function sub_e7f273e4(?) {
    require msg.sender == adminAddress
    if not arg3:
        require uint8(stor11[address(arg1)].field_0)
    else:
        if uint8(stor11[address(arg1)].field_0):
            require not arg3
            require uint8(stor11[address(arg1)].field_0)
    require ext_code.size(arg1)
    if arg3:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor9, 0x8000000000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(stor11[address(arg1)].field_0):
            revert with 0, 'add token failed!'
        uint8(stor11[address(arg1)].field_0) = 1
        stor12.length++
        address(stor12[stor12.length].field_0) = arg1
        stor11[address(arg1)].field_256 = stor12.length
        stor13[address(arg1)] = arg2
    else:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor9, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint8(stor11[address(arg1)].field_0):
            revert with 0, 'remove token failed!'
        if stor11[address(arg1)].field_256 < stor12.length - 1:
            require stor12.length - 1 < stor12.length
            require stor11[address(arg1)].field_256 < stor12.length
            address(stor12[stor11[address(arg1)].field_256].field_0) = address(stor12[stor12.length].field_0)
            stor11[address(stor12[stor12.length].field_0)].field_256 = stor11[address(arg1)].field_256
        stor12.length--
        if stor12.length > stor12.length - 1:
            idx = stor12.length - 1
            while stor12.length > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
        uint8(stor11[address(arg1)].field_0) = 0
        stor11[address(arg1)].field_256 = 0
        stor13[address(arg1)] = 0
    emit 0xd1c01151: address(arg1), arg2, arg3
}

function getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if not stor14:
        return 0
    if not uint8(stor11[address(arg1)].field_0):
        if not uint8(stor11[address(arg2)].field_0):
            return 0
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        require ext_code.size(stor9)
        call stor9.getBestOffer(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg2), address(stor10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor9)
        call stor9.getOffer(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if arg3 > ext_call.return_data[64]:
            return 0
    else:
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            return 0
        require ext_code.size(stor9)
        call stor9.getBestOffer(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(stor10), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor9)
        call stor9.getOffer(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if arg3 >= stor13[address(arg1)]:
            if arg3 > ext_call.return_data[64]:
                return 0
        else:
            if stor13[address(arg1)] > ext_call.return_data[64]:
                return 0
    require ext_call.return_data[64] <= 10000000000 * 10^18
    require ext_call.return_data[0] <= 10000000000 * 10^18
    require ext_call.return_data[64]
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[64] <= 10000000000 * 10^18
    return ((10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[64]) - (feeBps * 10^18 * ext_call.return_data[0] / ext_call.return_data[64]) / 10000)
}

function trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, bool arg6) payable {
    if not stor14:
        revert with 0, 'the supplier trade disabled.'
    if mitAddress != msg.sender:
        revert with 0, 'illegal msg sender'
    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require arg3 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if not uint8(stor11[address(arg1)].field_0):
        require uint8(stor11[address(arg3)].field_0)
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
        require ext_code.size(address(stor10))
        call address(stor10).deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor9)
        call stor9.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor10), msg.value, address(arg3), 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg4), arg5 * arg2 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    else:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(stor9)
        call stor9.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 0, arg2, address(stor10), 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 10000 * arg5 * arg2 / 10^18 / -feeBps + 10000
        require ext_code.size(address(stor10))
        call address(stor10).0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg4 with:
           value arg5 * arg2 / 10^18 wei
             gas 2300 * is_zero(value) wei
    emit TradeExecute(address(arg1), arg2, address(arg3), arg5 * arg2 / 10^18, arg4, msg.sender);
    return 1
}

function sub_d1e9fcd5(?) {
    require msg.sender == adminAddress
    require arg1
    require ext_code.size(address(stor10))
    call address(stor10).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor9, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = arg1
    mem[132] = 0
    require ext_code.size(address(stor10))
    call address(stor10).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor12.length:
        idx = 0
        while idx < stor12.length:
            require idx < stor12.length
            _26 = mem[(32 * idx) + 128]
            mem[(32 * stor12.length) + 132] = stor9
            mem[(32 * stor12.length) + 164] = 0
            require ext_code.size(address(_26))
            call address(_26).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor9, 0
            mem[(32 * stor12.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < stor12.length
            _31 = mem[(32 * idx) + 128]
            mem[(32 * stor12.length) + 132] = arg1
            mem[(32 * stor12.length) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_31))
            call address(_31).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * stor12.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        mem[128] = address(stor12.field_0)
        idx = 128
        s = 0
        while (32 * stor12.length) + 96 > idx:
            mem[idx + 32] = address(stor12[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor12.length:
            require idx < stor12.length
            _52 = mem[(32 * idx) + 128]
            mem[(32 * stor12.length) + 132] = stor9
            mem[(32 * stor12.length) + 164] = 0
            require ext_code.size(address(_52))
            call address(_52).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor9, 0
            mem[(32 * stor12.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < stor12.length
            _57 = mem[(32 * idx) + 128]
            mem[(32 * stor12.length) + 132] = arg1
            mem[(32 * stor12.length) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_57))
            call address(_57).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[(32 * stor12.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    emit 0x5e38830f: stor9, arg1
    stor9 = arg1
}



}
