contract main {




// =====================  Runtime code  =====================


#
#  - sub_8e1f1f4c(?)
#
const sub_2c59d7c4(?) = 4

const sub_4f285fac(?) = 0

const sub_951244cd(?) = 2

const sub_96fb2f58(?) = 1

const sub_af4561e5(?) = 3

const sub_dc77a7a2(?) = 1

const sub_f9c52c55(?) = 5


address adminAddress;
address pendingAdminAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
address sub_c9042b1eAddress;
address wethAddress;
address kyberNetworkProxyAddress;
mapping of uint256 sub_2ec5e8b9;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function pendingAdmin() payable {
    return pendingAdminAddress
}

function sub_2ec5e8b9(?) payable {
    require calldata.size - 4 >= 64
    return sub_2ec5e8b9[arg1][arg2]
}

function weth() payable {
    return wethAddress
}

function sub_c9042b1e(?) payable {
    return sub_c9042b1eAddress
}

function kyberNetworkProxy() payable {
    return kyberNetworkProxyAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function atleastZero(int256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 0:
        return arg1
    else:
        return 0
}

function claimAdmin() payable {
    if pendingAdminAddress != msg.sender:
        revert with 0, 'admin address cannot be 0'
    emit AdminClaimed(pendingAdminAddress, adminAddress);
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
}

function transferAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 32, 26, 0xfe4f7065726174696f6e206c696d6974656420746f2061646d696e0000000000
    if not arg1:
        revert with 0, 'admin address cannot be 0'
    emit TransferAdminPending(pendingAdminAddress);
    pendingAdminAddress = arg1
}

function transferAdminQuickly(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 32, 26, 0xfe4f7065726174696f6e206c696d6974656420746f2061646d696e0000000000
    if not arg1:
        revert with 0, 'admin address cannot be 0'
    emit TransferAdminPending(arg1);
    emit AdminClaimed(address(arg1), adminAddress);
    adminAddress = arg1
}

function withdrawEther(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 32, 26, 0xfe4f7065726174696f6e206c696d6974656420746f2061646d696e0000000000
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EtherWithdraw(arg1, arg2);
}

function sub_5f0b664d(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.sellerBalances(address arg1, address arg2, uint256 arg3, address arg4) with:
            gas gas_remaining wei
           args 0, 0, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_178139d8(?) payable {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        revert with 0, 'Operation limited to operator'
    require ext_code.size(sub_c9042b1eAddress)
    call sub_c9042b1eAddress.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x8ca99ea4: ext_call.return_data[0], arg1
    return ext_call.return_data[0]
}

function setKyberNetworkProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 32, 26, 0xfe4f7065726174696f6e206c696d6974656420746f2061646d696e0000000000
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6e4b796265724e6574776f726b50726f787920616464726573732063616e6e6f7420626520,
                    mem[201 len 27]
    kyberNetworkProxyAddress = arg1
    emit 0x5c4c43d0: arg1
    return 1
}

function withdrawToken(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 32, 26, 0xfe4f7065726174696f6e206c696d6974656420746f2061646d696e0000000000
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    emit TokenWithdraw(arg2, arg1, arg3);
}

function getAlerters() payable {
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

function addAlerter(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 32, 26, 0xfe4f7065726174696f6e206c696d6974656420746f2061646d696e0000000000
    if stor3[address(arg1)]:
        revert with 0, 'alerter already configured'
    if 50 <= stor5.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x64616c65727465722067726f757020657863656564696e67206d6178696d756d2073697a,
                    mem[200 len 28]
    emit AlerterAdded(address(arg1), 1);
    stor3[address(arg1)] = 1
    stor5.length++
    stor36B6[stor5.length] = arg1
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 32, 26, 0xfe4f7065726174696f6e206c696d6974656420746f2061646d696e0000000000
    if stor2[address(arg1)]:
        revert with 0, 'operator already configured'
    if 50 <= stor4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6f70657261746f722067726f757020657863656564696e67206d6178696d756d2073697a00,
                    mem[201 len 27]
    emit OperatorAdded(address(arg1), 1);
    stor2[address(arg1)] = 1
    stor4.length++
    address(stor4[stor4.length].field_0) = arg1
}

function getOperators() payable {
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

function sub_9d365d77(?) payable {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        revert with 0, 'Operation limited to operator'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_c9042b1eAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Cannot approve deposit'
    require ext_code.size(sub_c9042b1eAddress)
    call sub_c9042b1eAddress.deposit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x3f8bb2cd: ext_call.return_data[0], arg1
    return ext_call.return_data[0]
}

function removeAlerter(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 32, 26, 0xfe4f7065726174696f6e206c696d6974656420746f2061646d696e0000000000
    if not stor3[address(arg1)]:
        revert with 0, 'alerter not configured'
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
        emit AlerterAdded(address(arg1), 0);
}

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 32, 26, 0xfe4f7065726174696f6e206c696d6974656420746f2061646d696e0000000000
    if not stor2[address(arg1)]:
        revert with 0, 'operator not configured'
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

function addFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.getFeeRatio(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not arg1:
        require ext_call.return_data[0] <= ext_call.return_data[32]
        require ext_call.return_data[32] - ext_call.return_data[0] > 0
        if ext_call.return_data[32] - ext_call.return_data[0]:
            return (0 / ext_call.return_data[32] - ext_call.return_data[0])
    else:
        require ext_call.return_data[32] * arg1 / arg1 == ext_call.return_data[32]
        require ext_call.return_data[0] <= ext_call.return_data[32]
        require ext_call.return_data[32] - ext_call.return_data[0] > 0
        if ext_call.return_data[32] - ext_call.return_data[0]:
            return (ext_call.return_data[32] * arg1 / ext_call.return_data[32] - ext_call.return_data[0])
    ('iszero', ('add', ('ext_call.return_data', 32, 32), ('mul', -1, ('ext_call.return_data', 0, 32))))
    revert
}

function sub_f7cf0290(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.buyVolumes(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.sellVolumesCurrent(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.getCurrentAuctionPrice(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= ext_call.return_data[32]
        require ext_call.return_data[32] - ext_call.return_data[0] > 0
        require ext_call.return_data[32] - ext_call.return_data[0]
        if 0 / ext_call.return_data[32] - ext_call.return_data[0] >= 0:
            return arg4 >= 0 / ext_call.return_data[32] - ext_call.return_data[0]
    else:
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] <= ext_call.return_data[32]
        require ext_call.return_data[32] - ext_call.return_data[0] > 0
        require ext_call.return_data[32] - ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] >= 0:
            return arg4 >= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]
    return arg4 >= 0
}

function sub_3a2a22ff(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x744f6e6c7920313820646563696d616c7320746f6b656e732061726520737570706f727465,
                    mem[201 len 27]
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x744f6e6c7920313820646563696d616c7320746f6b656e732061726520737570706f727465,
                    mem[201 len 27]
    require ext_code.size(kyberNetworkProxyAddress)
    if wethAddress == arg1:
        if wethAddress == arg2:
            staticcall kyberNetworkProxyAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3
        else:
            staticcall kyberNetworkProxyAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg2), arg3
    else:
        if wethAddress == arg2:
            staticcall kyberNetworkProxyAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3
        else:
            staticcall kyberNetworkProxyAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], 10^18
}

function sub_198b7007(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.sellerBalances(address arg1, address arg2, uint256 arg3, address arg4) with:
            gas gas_remaining wei
           args 0, 0, address(arg1), arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c9042b1eAddress)
    if ext_call.return_data[0] <= 0:
        staticcall sub_c9042b1eAddress.buyerBalances(address arg1, address arg2, uint256 arg3, address arg4) with:
                gas gas_remaining wei
               args 0, 0, address(arg1), arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return 0
        require ext_code.size(sub_c9042b1eAddress)
        call sub_c9042b1eAddress.claimBuyerFunds(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 0, address(arg1), this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        return 0, ext_call.return_data[0]
    call sub_c9042b1eAddress.claimSellerFunds(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.buyerBalances(address arg1, address arg2, uint256 arg3, address arg4) with:
            gas gas_remaining wei
           args 0, 0, address(arg1), arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return ext_call.return_data[0], 0
    require ext_code.size(sub_c9042b1eAddress)
    call sub_c9042b1eAddress.claimBuyerFunds(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_70349c87(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.getPriceOfTokenInLastAuction(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.thresholdNewAuction() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_c9042b1eAddress)
        staticcall sub_c9042b1eAddress.ethUSDOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUSDETHPrice() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] > 0
        if ext_call.return_data[0] * ext_call.return_data[0]:
            return ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + 1)
    else:
        require ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[32]
        require ext_code.size(sub_c9042b1eAddress)
        staticcall sub_c9042b1eAddress.ethUSDOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUSDETHPrice() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] > 0
        if ext_call.return_data[0] * ext_call.return_data[0]:
            return ((ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 1)
    ('iszero', ('mul', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32)))
    revert
}

function sub_2a259247(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.sellVolumesCurrent(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.getPriceOfTokenInLastAuction(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.thresholdNewAuction() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_c9042b1eAddress)
        staticcall sub_c9042b1eAddress.ethUSDOracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUSDETHPrice() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] > 0
        require ext_call.return_data[0] * ext_call.return_data[0]
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + 1 <= ext_call.return_data[0]:
            return 0
        require ext_call.return_data[0] <= (0 / ext_call.return_data[0] * ext_call.return_data[0]) + 1
        return ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + -ext_call.return_data[0] + 1)
    require ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[32]
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.ethUSDOracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUSDETHPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] * ext_call.return_data[0] > 0
    require ext_call.return_data[0] * ext_call.return_data[0]
    if (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 1 <= ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0] <= (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 1
    return ((ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + -ext_call.return_data[0] + 1)
}

function sub_cda7ed5a(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.sellerBalances(address arg1, address arg2, uint256 arg3, address arg4) with:
            gas gas_remaining wei
           args 0, 0, address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.getCurrentAuctionPrice(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32]:
        if not ext_call.return_data[0]:
            require ext_call.return_data[32] > 0
            require ext_call.return_data[32]
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.sellVolumesCurrent(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.buyVolumes(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[32]
                if (0 / ext_call.return_data[32]) - ext_call.return_data[0] >= 0:
                    if 0 / ext_call.return_data[32] < (0 / ext_call.return_data[32]) - ext_call.return_data[0]:
                        return (0 / ext_call.return_data[32])
                    return ((0 / ext_call.return_data[32]) - ext_call.return_data[0])
            else:
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32]
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0] >= 0:
                    if 0 / ext_call.return_data[32] < (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0]:
                        return (0 / ext_call.return_data[32])
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0])
            if 0 / ext_call.return_data[32] < 0:
                return (0 / ext_call.return_data[32])
        else:
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] > 0
            require ext_call.return_data[32]
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.sellVolumesCurrent(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.buyVolumes(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[32]
                if (0 / ext_call.return_data[32]) - ext_call.return_data[0] >= 0:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32] < (0 / ext_call.return_data[32]) - ext_call.return_data[0]:
                        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32])
                    return ((0 / ext_call.return_data[32]) - ext_call.return_data[0])
            else:
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32]
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0] >= 0:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32] < (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0]:
                        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32])
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32] < 0:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32])
        return 0
    else:
        return 0
}

function sub_8e3e5dab(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c9042b1eAddress)
    staticcall sub_c9042b1eAddress.getAuctionStart(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == 1:
        require ext_code.size(sub_c9042b1eAddress)
        staticcall sub_c9042b1eAddress.sellVolumesCurrent(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c9042b1eAddress)
        staticcall sub_c9042b1eAddress.getPriceOfTokenInLastAuction(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(sub_c9042b1eAddress)
        staticcall sub_c9042b1eAddress.thresholdNewAuction() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.ethUSDOracle() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getUSDETHPrice() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] > 0
            require ext_call.return_data[0] * ext_call.return_data[0]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + 1 <= ext_call.return_data[0]:
                return 1
            require ext_call.return_data[0] <= (0 / ext_call.return_data[0] * ext_call.return_data[0]) + 1
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + -ext_call.return_data[0] + 1 <= 0:
                return 1
        else:
            require ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[32]
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.ethUSDOracle() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getUSDETHPrice() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] > 0
            require ext_call.return_data[0] * ext_call.return_data[0]
            if (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 1 <= ext_call.return_data[0]:
                return 1
            require ext_call.return_data[0] <= (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 1
            if (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + -ext_call.return_data[0] + 1 <= 0:
                return 1
    else:
        if ext_call.return_data[0] <= block.timestamp:
            if block.timestamp - ext_call.return_data[0] > 24 * 3600:
                return 5
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.getAuctionIndex(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.closingPrices(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32]:
                return 4
            return 3
        require ext_code.size(sub_c9042b1eAddress)
        staticcall sub_c9042b1eAddress.sellVolumesCurrent(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c9042b1eAddress)
        staticcall sub_c9042b1eAddress.getPriceOfTokenInLastAuction(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(sub_c9042b1eAddress)
        staticcall sub_c9042b1eAddress.thresholdNewAuction() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.ethUSDOracle() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getUSDETHPrice() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] > 0
            require ext_call.return_data[0] * ext_call.return_data[0]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + 1 <= ext_call.return_data[0]:
                return 2
            require ext_call.return_data[0] <= (0 / ext_call.return_data[0] * ext_call.return_data[0]) + 1
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + -ext_call.return_data[0] + 1 <= 0:
                return 2
        else:
            require ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[32]
            require ext_code.size(sub_c9042b1eAddress)
            staticcall sub_c9042b1eAddress.ethUSDOracle() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getUSDETHPrice() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[0] * ext_call.return_data[0] > 0
            require ext_call.return_data[0] * ext_call.return_data[0]
            if (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 1 <= ext_call.return_data[0]:
                return 2
            require ext_call.return_data[0] <= (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + 1
            if (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + -ext_call.return_data[0] + 1 <= 0:
                return 2
    return 0
}



}
