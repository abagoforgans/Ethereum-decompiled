contract main {




// =====================  Runtime code  =====================


address owner;
uint256 DEPOSIT;
uint256 sub_b38e40ba;
uint256 sub_6b954bef;
uint256 sub_d149dde8;
uint256 sub_3a984bc5;
uint256 sub_2c78a525;
uint256 sub_00c6fa28;
address kycContractAddress;
address DBAddress;
address sub_3c8410a2Address;
address sub_75bf9f6dAddress;
address lotteryAddress;
address sub_62d0412dAddress;
address adminAddress;
address sub_5f9fa9d0Address;
mapping of uint256 sub_f2a0f30f;
mapping of uint8 stor17;

function sub_00c6fa28(?) {
    return sub_00c6fa28
}

function sub_2c78a525(?) {
    return sub_2c78a525
}

function sub_3a984bc5(?) {
    return sub_3a984bc5
}

function lotteryAddress() {
    return lotteryAddress
}

function sub_3c8410a2(?) {
    return sub_3c8410a2Address
}

function DB() {
    return DBAddress
}

function sub_5f9fa9d0(?) {
    return sub_5f9fa9d0Address
}

function sub_62d0412d(?) {
    return sub_62d0412dAddress
}

function sub_6b954bef(?) {
    return sub_6b954bef
}

function kycContract() {
    return kycContractAddress
}

function sub_75bf9f6d(?) {
    return sub_75bf9f6dAddress
}

function owner() {
    return owner
}

function sub_b38e40ba(?) {
    return sub_b38e40ba
}

function sub_d149dde8(?) {
    return sub_d149dde8
}

function DEPOSIT() {
    return DEPOSIT
}

function sub_f2a0f30f(?) {
    return sub_f2a0f30f[address(arg1)]
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_686ed41d(?) {
    require msg.sender == sub_5f9fa9d0Address
    sub_5f9fa9d0Address = arg1
}

function sub_f435eb0c(?) {
    require msg.sender == sub_3c8410a2Address
    require arg1 > 0
    sub_00c6fa28 = arg1
    emit 0xe6742f54: arg1
}

function sub_cd891e28(?) {
    require msg.sender == sub_3c8410a2Address
    sub_f2a0f30f[address(arg1)] = 0
    emit 0x1dc273b9: address(arg1), 0
}

function sub_b173483d(?) {
    require msg.sender == sub_5f9fa9d0Address
    emit 0xc27edff3: kycContractAddress, arg1
    kycContractAddress = arg1
}

function sub_67bd3816(?) {
    require msg.sender == sub_5f9fa9d0Address
    emit 0x8c88205f: sub_3c8410a2Address, arg1
    sub_3c8410a2Address = arg1
}

function sub_de0c9c86(?) {
    require msg.sender == sub_5f9fa9d0Address
    emit 0x129b156b: sub_75bf9f6dAddress, arg1
    sub_75bf9f6dAddress = arg1
}

function setLotteryAddress(address arg1) {
    require msg.sender == sub_5f9fa9d0Address
    emit 0x1cc3edef: lotteryAddress, arg1
    lotteryAddress = arg1
}

function sub_e141f10f(?) {
    require msg.sender == adminAddress
    sub_f2a0f30f[address(arg3)]++
    if sub_f2a0f30f[address(arg3)] == sub_00c6fa28:
        emit 0x8d105505: arg3, arg1, arg2
}

function sub_50c20810(?) {
    require ext_code.size(kycContractAddress)
    call kycContractAddress.0x8b95d9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function sub_fa2c4b2b(?) {
    require msg.sender == sub_5f9fa9d0Address
    sub_62d0412dAddress = arg2
    adminAddress = arg3
    DBAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x195cfdfe with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04a54d9b(?) {
    require msg.sender == sub_3c8410a2Address
    require ext_code.size(DBAddress)
    call DBAddress.0xbe55e97 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor17[arg1]:
        require ext_call.return_data[0]
    sub_b38e40ba = arg2
    require ext_code.size(DBAddress)
    call DBAddress.0x5e9660 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x725d9bd8: arg2, arg1, ext_call.return_data[0]
}

function sub_118360b9(?) {
    require msg.sender == sub_3c8410a2Address
    require ext_code.size(DBAddress)
    call DBAddress.0xbe55e97 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor17[arg1]:
        require ext_call.return_data[0]
    sub_6b954bef = arg2
    require ext_code.size(DBAddress)
    call DBAddress.0x5e9660 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x76b0482c: arg2, arg1, ext_call.return_data[0]
}

function sub_7db8fd68(?) {
    require msg.sender == sub_3c8410a2Address
    require ext_code.size(DBAddress)
    call DBAddress.0xbe55e97 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor17[arg1]:
        require ext_call.return_data[0]
    sub_d149dde8 = arg2
    require ext_code.size(DBAddress)
    call DBAddress.0x5e9660 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xe963c352: arg2, arg1, ext_call.return_data[0]
}

function sub_ef8d5259(?) {
    require msg.sender == sub_3c8410a2Address
    require arg2 > 0
    require ext_code.size(DBAddress)
    call DBAddress.0xbe55e97 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor17[arg1]:
        require ext_call.return_data[0]
    DEPOSIT = arg2
    require ext_code.size(DBAddress)
    call DBAddress.0x5e9660 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xf6e96005: arg2, arg1, ext_call.return_data[0]
}

function start(uint256 arg1) {
    require msg.sender == adminAddress
    stor17[arg1] = 1
    require ext_code.size(DBAddress)
    call DBAddress.0x5e9660 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(DBAddress)
    call DBAddress.setConfig(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) with:
         gas gas_remaining wei
        args 0, uint32(arg1), ext_call.return_data[0], DEPOSIT, sub_b38e40ba, sub_6b954bef, sub_d149dde8, sub_3a984bc5, sub_2c78a525
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8b67ce4e(?) {
    require msg.sender == sub_3c8410a2Address
    require arg2 > 0
    require arg3 > 0
    require arg3 <= arg2
    require ext_code.size(DBAddress)
    call DBAddress.0xbe55e97 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor17[arg1]:
        require ext_call.return_data[0]
    sub_3a984bc5 = arg2
    sub_2c78a525 = arg3
    require ext_code.size(DBAddress)
    call DBAddress.0x5e9660 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x650f4f88: arg2, arg3, arg1, ext_call.return_data[0]
}

function sub_971823e9(?) {
    require msg.sender == sub_3c8410a2Address
    require ext_code.size(DBAddress)
    call DBAddress.0xbe55e97 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor17[arg1]:
        require ext_call.return_data[0]
    sub_b38e40ba = arg2
    sub_6b954bef = arg3
    sub_d149dde8 = arg4
    require ext_code.size(DBAddress)
    call DBAddress.0x5e9660 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x725d9bd8: arg2, arg1, ext_call.return_data[0]
    require ext_code.size(DBAddress)
    call DBAddress.0x5e9660 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x76b0482c: arg3, arg1, ext_call.return_data[0]
    require ext_code.size(DBAddress)
    call DBAddress.0x5e9660 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xe963c352: arg4, arg1, ext_call.return_data[0]
}



}
