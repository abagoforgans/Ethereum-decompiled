contract main {




// =====================  Runtime code  =====================


#
#  - sub_1562c491(?)
#  - trade(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6)
#  - sub_f8821efa(?)
#
address sub_6621ebfbAddress;
address sub_aad3e5ccAddress;
address kyberNetworkProxyAddress;
uint32 stor3;
address wethAddress;
address owner;
address adminAddress;
uint256 sub_aca85118;
uint256 sub_405b8453;
uint256 dailyAdminAllowance;
uint256 lastAllowancePaymentTimestamp;
mapping of struct claims;
uint256 sub_3c22d7d5;
uint256 sub_6d2b5fd5;

function sub_3c22d7d5(?) {
    return sub_3c22d7d5
}

function weth() {
    return address(wethAddress)
}

function sub_405b8453(?) {
    return sub_405b8453
}

function lastAllowancePaymentTimestamp() {
    return lastAllowancePaymentTimestamp
}

function sub_6621ebfb(?) {
    return sub_6621ebfbAddress
}

function sub_6d2b5fd5(?) {
    return sub_6d2b5fd5
}

function dailyAdminAllowance() {
    return dailyAdminAllowance
}

function owner() {
    return owner
}

function claims(uint256 arg1) {
    require calldata.size - 4 >= 32
    return claims[arg1].field_0, 
           claims[arg1].field_256,
           claims[arg1].field_512,
           claims[arg1].field_768,
           claims[arg1].field_1024,
           claims[arg1].field_1280,
           claims[arg1].field_1536
}

function sub_aad3e5cc(?) {
    return sub_aad3e5ccAddress
}

function sub_aca85118(?) {
    return sub_aca85118
}

function kyberNetworkProxy() {
    return kyberNetworkProxyAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    require msg.sender == address(wethAddress)
}

function sub_ed2cdeff(?) {
    require msg.sender == owner
    require sub_3c22d7d5 < sub_6d2b5fd5
    sub_3c22d7d5++
}

function sub_520e9f70(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    dailyAdminAllowance = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    adminAddress = arg1
}

function sub_705c4bff(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_aca85118 = arg1
    sub_405b8453 = arg2
}

function canClaim() {
    if sub_3c22d7d5 == sub_6d2b5fd5:
        return 0
    require ext_code.size(sub_6621ebfbAddress)
    staticcall sub_6621ebfbAddress.getAuctionIndex(address arg1, address arg2) with:
            gas gas_remaining wei
           args claims[stor11].field_256, claims[stor11].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] != claims[stor11].field_0
}

function sub_989c8f5e(?) {
    require ext_code.size(address(wethAddress))
    staticcall address(wethAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < dailyAdminAllowance:
        return ext_call.return_data[0] >= dailyAdminAllowance
    return block.timestamp - lastAllowancePaymentTimestamp >= 24 * 3600
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Withdrawal(ext_call.return_data[0], block.timestamp, arg1);
    return bool(ext_call.return_data[0])
}

function sub_ee072426(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6621ebfbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_aad3e5ccAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberNetworkProxyAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b63c154d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6621ebfbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_aad3e5ccAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberNetworkProxyAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function requestAllowance() {
    if adminAddress != msg.sender:
        require msg.sender == owner
    require ext_code.size(address(wethAddress))
    staticcall address(wethAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= dailyAdminAllowance
    require block.timestamp - lastAllowancePaymentTimestamp >= 24 * 3600
    lastAllowancePaymentTimestamp = block.timestamp
    require ext_code.size(address(wethAddress))
    call address(wethAddress).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args dailyAdminAllowance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call adminAddress with:
       value dailyAdminAllowance wei
         gas 2300 * is_zero(value) wei
    emit 0x56de51cb: dailyAdminAllowance, block.timestamp
}

function sub_c7e9ba8b(?) {
    require calldata.size - 4 >= 128
    if arg1:
        require arg1 == 1
        require ext_code.size(kyberNetworkProxyAddress)
        staticcall kyberNetworkProxyAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(arg2), address(arg4), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        return (ext_call.return_data[0] / 10^13)
    require ext_code.size(sub_aad3e5ccAddress)
    staticcall sub_aad3e5ccAddress.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg4), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 100000 * ext_call.return_data[0] / 100000 == ext_call.return_data[0]
    if arg3:
        return (100000 * ext_call.return_data[0] / arg3)
    else:
        return 0
}

function sub_dd53d657(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    mem[96 len arg2.length] = arg2[all]
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if not bool(ext_call.success) % 32:
        return memory
          from 96
           len bool(ext_call.success) + 96
    mem[floor32(bool(ext_call.success)) + 192] = Mask(-(8 * -(bool(ext_call.success) % 32) + 32) + 256, 0, mem[floor32(bool(ext_call.success)) + 192])
    return memory
      from 96
       len floor32(bool(ext_call.success)) + 128
}

function depositToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6621ebfbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_aad3e5ccAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberNetworkProxyAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6621ebfbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_aad3e5ccAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberNetworkProxyAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Deposit(arg3, block.timestamp, arg1);
    return bool(ext_call.return_data[0])
}

function claim() {
    if adminAddress != msg.sender:
        require msg.sender == owner
    require sub_3c22d7d5 != sub_6d2b5fd5
    require ext_code.size(sub_6621ebfbAddress)
    staticcall sub_6621ebfbAddress.getAuctionIndex(address arg1, address arg2) with:
            gas gas_remaining wei
           args claims[stor11].field_256, claims[stor11].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] != claims[stor11].field_0
    require ext_code.size(sub_6621ebfbAddress)
    call sub_6621ebfbAddress.claimBuyerFunds(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, claims[stor11].field_256, claims[stor11].field_512, this.address, claims[stor11].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_6621ebfbAddress)
        call sub_6621ebfbAddress.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args claims[stor11].field_256, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if claims[stor11].field_768 != claims[stor11].field_256:
            if not claims[stor11].field_1536:
                require ext_code.size(sub_aad3e5ccAddress)
                call sub_aad3e5ccAddress.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, claims[stor11].field_256, ext_call.return_data[0], claims[stor11].field_512, 0
            else:
                require claims[stor11].field_1536 == 1
                require ext_code.size(kyberNetworkProxyAddress)
                call kyberNetworkProxyAddress.swapTokenToToken(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, claims[stor11].field_256, ext_call.return_data[0], claims[stor11].field_512, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    sub_3c22d7d5++
    emit 0x63a011bd: claims[stor11].field_1024, ext_call.return_data[0] + claims[stor11].field_1280, block.timestamp, claims[stor11].field_256, claims[stor11].field_512, claims[stor11].field_768
}

function depositEther(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6621ebfbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_aad3e5ccAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberNetworkProxyAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6621ebfbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_aad3e5ccAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberNetworkProxyAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(wethAddress))
    call address(wethAddress).deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if address(wethAddress) == arg1:
        emit Deposit(msg.value, block.timestamp, address(wethAddress));
        return msg.value
    if not arg3:
        require ext_code.size(sub_aad3e5ccAddress)
        call sub_aad3e5ccAddress.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor3), msg.value, address(arg1), 0
    else:
        require arg3 == 1
        require ext_code.size(kyberNetworkProxyAddress)
        call kyberNetworkProxyAddress.swapTokenToToken(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor3), msg.value, address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Deposit(ext_call.return_data[0], block.timestamp, arg1);
    return ext_call.return_data[0]
}



}
