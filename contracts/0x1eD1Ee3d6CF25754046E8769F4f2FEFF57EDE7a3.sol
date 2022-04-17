contract main {


// =======================  Init code  ======================


uint8 stor0;
uint8 stor0; offset 32
uint32 stor0; offset 8
uint32 stor0; offset 40
address stor4;
address stor7;
address stor8;

function _fallback() payable {
    uint8(stor0.field_0) = 50
    stor0.field_8 % 16777216 = 0
    uint8(stor0.field_32) = 10
    stor0.field_40 % 16777216 = 0
    stor7 = 0x9999997b80f9543671b44d5119a344455e0fbe3c
    require not msg.value
    stor4 = msg.sender
    stor8 = this.address
    return code.data[312 len 11167]
}



// =====================  Runtime code  =====================


const Period = (736 * 3600)


uint32 feeFactor;
uint32 sub_8430a5b7; offset 32
mapping of uint32 sub_b11dcb23;
mapping of uint32 sub_95e10ada;
mapping of address sub_8e7adf45;
address owner;
address factoryAddress;
address sub_1a32ab4eAddress;
address ethTokenAddress;
address sub_0144f989Address;
address sub_1a1bfc47Address;
address sub_0405c357Address;
mapping of uint8 stor11;

function sub_0144f989(?) {
    return sub_0144f989Address
}

function sub_0405c357(?) {
    return sub_0405c357Address
}

function sub_1a1bfc47(?) {
    return sub_1a1bfc47Address
}

function sub_1a32ab4e(?) {
    return sub_1a32ab4eAddress
}

function ethToken() {
    return ethTokenAddress
}

function sub_8430a5b7(?) {
    return sub_8430a5b7
}

function owner() {
    return owner
}

function sub_8e7adf45(?) {
    return sub_8e7adf45[arg1]
}

function sub_95e10ada(?) {
    return sub_95e10ada[arg1]
}

function sub_b11dcb23(?) {
    return sub_b11dcb23[arg1]
}

function factory() {
    return factoryAddress
}

function feeFactor() {
    return feeFactor
}

function _fallback() payable {
  stop
}

function sub_32630fce(?) {
    require msg.sender == owner
    feeFactor = arg1
}

function sub_95ae644f(?) {
    return sha3(address(arg1), arg2, arg3, arg4, arg5)
}

function sub_d08af711(?) {
    require msg.sender == owner
    sub_8430a5b7 = arg1
}

function sub_7a649ff7(?) {
    require msg.sender == owner
    sub_b11dcb23[arg1] = arg2
}

function sub_c5906b4c(?) {
    require msg.sender == owner
    sub_95e10ada[arg1] = arg2
}

function sub_3153d036(?) {
    require msg.sender == owner
    sub_1a32ab4eAddress = arg1
}

function sub_92464e66(?) {
    require msg.sender == owner
    sub_0144f989Address = arg1
}

function sub_bed5d690(?) {
    require msg.sender == owner
    sub_1a1bfc47Address = arg1
}

function sub_f5114958(?) {
    require msg.sender == owner
    sub_0405c357Address = arg1
}

function SetFactory(address arg1) {
    require msg.sender == owner
    factoryAddress = arg1
}

function TransferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    return 1
}

function sub_8cffa29f(?) {
    require msg.sender == owner
    sub_8e7adf45[address(arg1)] = arg2
    return 1
}

function isAuthorized(address arg1) {
    if arg1 == this.address:
        return 1
    else:
        return 0
}

function sub_d54a70e8(?) {
    require ext_code.size(sub_1a1bfc47Address)
    call sub_1a1bfc47Address.getInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 1, arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_9547ab85(?) {
    require ext_code.size(sub_1a1bfc47Address)
    call sub_1a1bfc47Address.getInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 2, sha3(arg1, arg2)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_55027c5a(?) {
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
    require ext_code.size(sub_1a1bfc47Address)
    call sub_1a1bfc47Address.0xbeaaa512 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_78449caf(?) {
    require ext_code.size(sub_1a1bfc47Address)
    call sub_1a1bfc47Address.getInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 1, sha3(address(arg1), arg2, arg3, arg4, arg5)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4df2a77a(?) {
    require ext_code.size(factoryAddress)
    call factoryAddress.0xb72b51cc with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, arg1, arg2 << 224, arg3
    require ext_call.success
    emit 0x8a3ad8aa: msg.sender, ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_b21aab21(?) {
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    require ext_code.size(sub_1a1bfc47Address)
    call sub_1a1bfc47Address.0x8ebfaf13 with:
         gas gas_remaining - 710 wei
        args 1, arg1, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_15ff5d9d(?) {
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    require ext_code.size(sub_1a1bfc47Address)
    call sub_1a1bfc47Address.0x8ebfaf13 with:
         gas gas_remaining - 710 wei
        args 2, sha3(arg1, arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function Withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    if arg1 != ethTokenAddress:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, arg2
    else:
        if sub_0405c357Address:
            call sub_0405c357Address with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
        else:
            call owner with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_e3bbc245(?) {
    require ext_code.size(sub_1a32ab4eAddress)
    call sub_1a32ab4eAddress.getYear(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(sub_1a32ab4eAddress)
    call sub_1a32ab4eAddress.getMonth(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(sub_1a32ab4eAddress)
    call sub_1a32ab4eAddress.getDay(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    return sha3(address(arg1), arg2, ext_call.return_data[0] << 240, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0]))
}

function sub_ef38dca6(?) {
    require ext_code.size(sub_1a32ab4eAddress)
    call sub_1a32ab4eAddress.getYear(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(sub_1a32ab4eAddress)
    call sub_1a32ab4eAddress.getMonth(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(sub_1a32ab4eAddress)
    call sub_1a32ab4eAddress.getDay(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(sub_1a1bfc47Address)
    call sub_1a1bfc47Address.getInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 1, sha3(address(arg1), arg2, ext_call.return_data[0] << 240, ext_call.return_data[0] << 248, uint8(ext_call.return_data[0]))
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_29d8fec9(?) {
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    require ext_code.size(sub_0144f989Address)
    call sub_0144f989Address.0xfe9fbb80 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require bool(ext_call.return_data[0]) == 1
    require ext_code.size(sub_1a32ab4eAddress)
    call sub_1a32ab4eAddress.toTimestamp(uint16 rg1, uint8 rg2, uint8 rg3) with:
         gas gas_remaining - 710 wei
        args arg3 << 240, arg4 << 248, arg5
    require ext_call.success
    require ext_call.return_data[0] < block.timestamp
    if arg6:
        require arg6
        require 10^18 * arg6 / arg6 == 10^18
    require arg7
    if owner != msg.sender:
        require bool(stor11[address(msg.sender)]) == 1
    require ext_code.size(sub_1a1bfc47Address)
    call sub_1a1bfc47Address.0x8ebfaf13 with:
         gas gas_remaining - 710 wei
        args 1, sha3(address(arg1), arg2, arg3 << 240, arg4 << 248, arg5), 10^18 * arg6 / arg7
    require ext_call.success
    require ext_code.size(sub_1a1bfc47Address)
    call sub_1a1bfc47Address.getInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 2, sha3(arg1, arg2)
    require ext_call.success
    if ext_call.return_data[0] > ext_call.return_data[0]:
        if owner != msg.sender:
            require bool(stor11[address(msg.sender)]) == 1
        require ext_code.size(sub_1a1bfc47Address)
        call sub_1a1bfc47Address.0x8ebfaf13 with:
             gas gas_remaining - 710 wei
            args 2, sha3(arg1, arg2), ext_call.return_data[0]
        require ext_call.success
        emit 0x3a54a74a: arg1, arg2, ext_call.return_data[0]
    emit 0x4bce4329: arg3 << 240, arg4 << 248, arg5 << 248, 10^18 * arg6 / arg7, arg1, arg2
    return 1
}



}
