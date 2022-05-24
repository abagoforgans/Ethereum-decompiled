contract main {




// =====================  Runtime code  =====================


#
#  - sub_f77b2462(?)
#
address owner;
address dataContractAddress;

function dataContract() {
    return dataContractAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function setDataContract(address arg1) {
    require msg.sender == owner
    dataContractAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b393b31c(?) {
    require dataContractAddress
    require ext_code.size(dataContractAddress)
    call dataContractAddress.0xb393b31c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_91efe98c(?) {
    require dataContractAddress
    require ext_code.size(dataContractAddress)
    call dataContractAddress.0x91efe98c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_c7b6350c(?) {
    require msg.sender == owner
    require arg1
    require ext_code.size(dataContractAddress)
    call dataContractAddress.0xc7b6350c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_d4f9955b(?) {
    require msg.sender == owner
    require arg1
    require arg2
    require ext_code.size(dataContractAddress)
    call dataContractAddress.0xd4f9955b with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_5c170508(?) {
    require msg.sender == owner
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_4cf02335(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require arg2
    require arg3
    require arg4
    require dataContractAddress
    require ext_code.size(dataContractAddress)
    call dataContractAddress.0xb393b31c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg4:
        require arg2 == msg.value
        call ext_call.return_data[12 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg4)
        call arg4.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    mem[ceil32(arg1.length) + 128] = 0x33fbc1dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 516 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(dataContractAddress)
        call dataContractAddress.0x33fbc1dd with:
             gas gas_remaining wei
            args 352, arg2, 0, arg3, msg.sender, address(arg4), arg5, arg6, address(arg7), arg8, 1, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 516] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 548 len arg1.length % 32]
        require ext_code.size(dataContractAddress)
        call dataContractAddress.0x33fbc1dd with:
             gas gas_remaining wei
            args 352, arg2, 0, arg3, msg.sender, address(arg4), arg5, arg6, address(arg7), arg8, 1, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 516 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_dd751db4(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 96
    require msg.sender == owner
    mem[ceil32(arg1.length) + 800] = 0
    mem[ceil32(arg1.length) + 832] = 0x7a51011600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 836] = 32
    mem[ceil32(arg1.length) + 868] = arg1.length
    mem[ceil32(arg1.length) + 900 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(dataContractAddress)
    call dataContractAddress.0x7a510116 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 832 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 832
    require return_data.size >= 352
    require mem[ceil32(arg1.length) + 832 len 4], 0 <= 4294967296
    require mem[ceil32(arg1.length) + 832 len 4], 0 + 32 <= return_data.size
    require return_data.size >= mem[ceil32(arg1.length) + mem[ceil32(arg1.length) + 832 len 4], 0 + 832] + mem[ceil32(arg1.length) + 832 len 4], 0 + 32 and mem[ceil32(arg1.length) + mem[ceil32(arg1.length) + 832 len 4], 0 + 832] <= 4294967296
    require mem[ceil32(arg1.length) + 972 len 20]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 1348 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(dataContractAddress)
        call dataContractAddress.0xf0c56606 with:
             gas gas_remaining wei
            args 128, 32, arg1.length, mem[ceil32(arg1.length) + 900 len 28], arg2, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 1348] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + -(arg1.length % 32) + 1380 len arg1.length % 32]
        require ext_code.size(dataContractAddress)
        call dataContractAddress.0xf0c56606 with:
             gas gas_remaining wei
            args 128, 32, arg1.length, mem[ceil32(arg1.length) + 900 len 28], arg2, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 1348 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a8b1232b(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 96
    mem[ceil32(arg1.length) + 800] = 0
    mem[ceil32(arg1.length) + 832] = 0x7a51011600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 836] = 32
    mem[ceil32(arg1.length) + 868] = arg1.length
    mem[ceil32(arg1.length) + 900 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(dataContractAddress)
    call dataContractAddress.0x7a510116 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 832 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 832
    require return_data.size >= 352
    require mem[ceil32(arg1.length) + 832 len 4], 0 <= 4294967296
    require mem[ceil32(arg1.length) + 832 len 4], 0 + 32 <= return_data.size
    require return_data.size >= mem[ceil32(arg1.length) + mem[ceil32(arg1.length) + 832 len 4], 0 + 832] + mem[ceil32(arg1.length) + 832 len 4], 0 + 32 and mem[ceil32(arg1.length) + mem[ceil32(arg1.length) + 832 len 4], 0 + 832] <= 4294967296
    if mem[ceil32(arg1.length) + 972 len 20] != msg.sender:
        require msg.sender == owner
    else:
        if not mem[ceil32(arg1.length) + 1152]:
            require msg.sender == owner
    require dataContractAddress
    require ext_code.size(dataContractAddress)
    call dataContractAddress.0xb393b31c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    require 32, Mask(224, 32, arg1.length) >> 32 > uint32(arg1.length), mem[ceil32(arg1.length) + 900 len 28]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xde32527a with:
         gas gas_remaining wei
        args address(mem[ceil32(arg1.length) + 992]), msg.sender, 32, Mask(224, 32, arg1.length) >> 32 - uint32(arg1.length), mem[ceil32(arg1.length) + 900 len 28]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 1348 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(dataContractAddress)
        call dataContractAddress.0xf0c56606 with:
             gas gas_remaining wei
            args 128, 32, Mask(224, 32, arg1.length) >> 32, 32, Mask(224, 32, arg1.length) >> 32, 0, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 1348] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + -(arg1.length % 32) + 1380 len arg1.length % 32]
        require ext_code.size(dataContractAddress)
        call dataContractAddress.0xf0c56606 with:
             gas gas_remaining wei
            args 128, 32, Mask(224, 32, arg1.length) >> 32, 32, Mask(224, 32, arg1.length) >> 32, 0, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 1348 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
