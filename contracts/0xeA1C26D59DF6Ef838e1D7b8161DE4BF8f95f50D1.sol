contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[14869 len 20]
    return code.data[84 len 14773]
}



// =====================  Runtime code  =====================


address AMAddress;

function AM() {
    return AMAddress
}

function _fallback() payable {
    revert
}

function sub_02ab72c4(?) {
    require ext_code.size(AMAddress)
    call AMAddress.isServer(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    AMAddress = arg1
}

function sub_dcaa4197(?) {
    require ext_code.size(AMAddress)
    call AMAddress.isServer(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa5c51a00 with:
         gas gas_remaining - 710 wei
        args 0, 0, arg3, arg4, arg5, Mask(16, 240, arg6)
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x92c4b867 with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, 0, arg3, 0, 0
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    emit 0x715169d3: arg2, 0, arg5, arg4, Mask(16, 240, arg6)
}

function sub_e414d2e2(?) {
    require ext_code.size(AMAddress)
    call AMAddress.isServer(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require arg1
    require ext_code.size(arg1)
    call arg1.0xe8ba167 with:
         gas gas_remaining - 710 wei
        args arg2, address(arg4), arg3
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x92c4b867 with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, 0, arg3, arg4, 0
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x2a01a451 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x54fd4d50 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit 0xc9825393: arg2, arg3, address(ext_call.return_data[0]), ext_call.return_data[0]
}

function sub_aa1b6fc6(?) {
    require ext_code.size(AMAddress)
    call AMAddress.isServer(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require arg1
    require ext_code.size(arg1)
    call arg1.0x1529905c with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require Mask(16, 240, ext_call.return_data[0])
    require ext_call.return_data[32]
    require ext_call.return_data[64]
    require ext_code.size(arg1)
    call arg1.0x880a8e54 with:
         gas gas_remaining - 710 wei
        args 0, 0, ext_call.return_data[64], 0, arg4, arg5, arg6
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x92c4b867 with:
         gas gas_remaining - 710 wei
        args 0, 0, ext_call.return_data[64], 0, arg3, 0, 0
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    emit 0x53c94029: arg2, 0, ext_call.return_data[64], arg4, arg5, arg6
}

function sub_0b180e08(?) {
    require ext_code.size(AMAddress)
    call AMAddress.isServer(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require arg1
    create contract with 0 wei
                    code: code.data[10469 len 3162], AMAddress, arg3, arg4 << 248, arg5
    require create.new_address
    require ext_code.size(arg1)
    call arg1.0xc7062df3 with:
         gas gas_remaining - 710 wei
        args arg2, address(create.new_address), arg5
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.getCurrency(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg5
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x92c4b867 with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg5), 0, 0, address(ext_call.return_data[0]), 0
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.getCurrency(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg5
    require ext_call.success
    emit 0x6f9a94a4: arg2, 0, arg4 << 248, arg5, address(ext_call.return_data[0])
}

function sub_a78caf19(?) {
    require ext_code.size(AMAddress)
    call AMAddress.isServer(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require arg1
    create contract with 0 wei
                    code: code.data[13631 len 1099], arg3, AMAddress
    require create.new_address
    require ext_code.size(arg1)
    call arg1.0xe8ba167 with:
         gas gas_remaining - 710 wei
        args arg2, address(create.new_address), arg3
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x2a01a451 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    call arg1.0x2a01a451 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x92c4b867 with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, 0, arg3, address(ext_call.return_data[0]), 0
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x2a01a451 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    emit 0xb6e4c061: arg2, arg3, address(ext_call.return_data[0])
}

function sub_60af3cf9(?) {
    require ext_code.size(AMAddress)
    call AMAddress.isServer(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require arg1
    require ext_code.size(arg3)
    call arg3.0x95d89b41 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg3)
    call arg3.name() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg3)
    call arg3.0x95d89b41 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == arg4
    require ext_code.size(arg1)
    call arg1.0xc7062df3 with:
         gas gas_remaining - 710 wei
        args arg2, address(arg3), arg4
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x92c4b867 with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg4), 0, 0, arg3, 0
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg3)
    call arg3.name() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.getCurrency(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg4
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x54fd4d50 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit 0x3ec6d7d7: arg2, 0, ext_call.return_data[0] << 248, arg4, address(ext_call.return_data[0]), ext_call.return_data[0]
}

function sub_3da4138c(?) {
    require ext_code.size(AMAddress)
    call AMAddress.isServer(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require arg1
    require ext_code.size(arg1)
    call arg1.0xbea0897c with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x2a01a451 with:
         gas gas_remaining - 710 wei
        args arg4
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require arg9
    require arg8 > 0
    require arg6 > 0
    require ext_code.size(arg1)
    call arg1.0x2a01a451 with:
         gas gas_remaining - 710 wei
        args arg4
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require arg7 <= ext_call.return_data[0]
    require arg8 + arg6 >= arg6
    require arg8 + arg6 >= arg8
    require ext_call.return_data[0] - arg7 >= arg8 + arg6
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(arg3), address(arg5), arg6
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(arg3), address(arg9), arg8
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg3)
    call arg3.0x95d89b41 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x92c4b867 with:
         gas gas_remaining - 710 wei
        args 0, 0, ext_call.return_data[28 len 4], arg6, arg4, arg5, arg8
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x2a01a451 with:
         gas gas_remaining - 710 wei
        args arg4
    require ext_call.success
    emit 0xb34e83f6: arg2, 0, address(ext_call.return_data[0]), address(arg5), arg6
}

function sub_a6d1fe49(?) {
    require ext_code.size(AMAddress)
    call AMAddress.isServer(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require arg1
    require ext_code.size(arg1)
    call arg1.0xbea0897c with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x2a01a451 with:
         gas gas_remaining - 710 wei
        args arg7
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require arg11
    require arg10 > 0
    require arg4 > 0
    require ext_code.size(arg1)
    call arg1.getCurrency(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    call arg1.0x2a01a451 with:
         gas gas_remaining - 710 wei
        args arg7
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg9
    require ext_call.success
    require arg8 <= ext_call.return_data[0]
    require ext_call.return_data[0] - arg8 >= arg10
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(arg9), address(arg11), arg10
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.getCurrency(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg5
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.getCurrency(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    if arg4 <= ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).destroyTokensFrom(uint256 arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args arg4, arg5
    else:
        require ext_code.size(arg1)
        call arg1.getCurrency(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args arg3
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args arg5
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).destroyTokensFrom(uint256 arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], arg5
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    if arg12 == 1:
        call arg1.0x92c4b867 with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(arg3), arg4, arg7, arg5, arg10
    else:
        call arg1.getCurrency(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args arg3
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mintTokens(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args arg4
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.getCurrency(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args arg3
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg6), arg4
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0x92c4b867 with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(arg3), arg4, arg7, arg6, arg10
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    emit 0x471ca94a: arg2, 0, arg3, arg4, arg12
}



}
