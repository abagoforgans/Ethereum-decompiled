contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
address sub_8e71fd8eAddress;

function oracleAddresses(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function sub_8e71fd8e(?) {
    return sub_8e71fd8eAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3fa558f3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 0
    return 0
}

function sub_c9340cbf(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a39acca0(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '', mem[164]
    sub_8e71fd8eAddress = arg1
    stor2 = arg1
    emit 0xf97ef35f: arg1
}

function sub_be5a3e61(?) {
    if not stor1[msg.sender]:
        revert with 0, '', mem[164]
    require ext_code.size(stor2)
    call stor2.0xbe5a3e61 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_39d6d6d2(?) {
    require ext_code.size(stor2)
    staticcall stor2.0x39d6d6d2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b8343a80(?) {
    require ext_code.size(stor2)
    staticcall stor2.0xb8343a80 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_37c07f78(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '', mem[164]
    require ext_code.size(stor2)
    call stor2.0x37c07f78 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d991ed86(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '', mem[164]
    require ext_code.size(stor2)
    call stor2.0xd991ed86 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fe2c13c4(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '', mem[164]
    require ext_code.size(stor2)
    call stor2.0xfe2c13c4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b938835d(?) {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, '', mem[164]
    require ext_code.size(stor2)
    call stor2.0xb938835d with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3bd6cad6(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x3bd6cad6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b6f8184d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0xb6f8184d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_05de6ca4(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor2)
    call stor2.0xe6aad093 with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg1 << 224, arg2 << 224, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d2d4aacd(?) {
    require calldata.size - 4 >= 128
    if not stor1[msg.sender]:
        revert with 0, '', mem[164]
    require ext_code.size(stor2)
    call stor2.0xd2d4aacd with:
         gas gas_remaining wei
        args 0, 0, arg1 << 224, arg2 << 224, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1dd75ffd(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}



}
