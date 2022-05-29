contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createProxy(address arg1, address arg2) {
    create contract with 0 wei
                    code: code.data[1239 len 2855], address(arg2)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit ProxyCreated(address(create.new_address));
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeAdmin(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function createProxyAndCall(address arg1, address arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len 2855] = code.data[1239 len 2855]
    mem[ceil32(arg3.length) + 2983] = arg2
    create contract with 0 wei
                    code: code.data[1239 len 2855], arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit ProxyCreated(address(create.new_address));
    mem[ceil32(arg3.length) + 128] = 0x8f28397000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeAdmin(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call address(create.new_address).mem[ceil32(arg3.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call address(create.new_address).mem[ceil32(arg3.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return address(create.new_address)
}



}
