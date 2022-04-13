contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;

function _fallback() {
    stor1 = code.data[5546 len 20]
    stor2 = code.data[5578 len 20]
    stor3 = msg.sender
    return code.data[118 len 5416]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
address sub_c2fc74b4Address;
address sub_f52c85fdAddress;
address myAddress;

function myAddress() {
    return myAddress
}

function sub_c2fc74b4(?) {
    return sub_c2fc74b4Address
}

function sub_c77911aa(?) {
    return bool(stor0[arg1])
}

function sub_f52c85fd(?) {
    return sub_f52c85fdAddress
}

function sub_097c1e25(?) {
    require myAddress == msg.sender
    selfdestruct(myAddress)
}

function _fallback() payable {
    revert
}

function sub_b2a20cf0(?) {
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0x2ebf1d58 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function transfer(address arg1, address arg2) {
    require stor0[address(arg2)]
    require ext_code.size(arg2)
    call arg2.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.sponsor() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Transfer(address(ext_call.return_data[0]), address(arg1), address(ext_call.return_data[0]), arg2);
    require ext_code.size(arg2)
    call arg2.0xba45b0b8 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
}

function expire(address arg1) {
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0xc8db233e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.issuer() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.sponsor() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit 0x63dbb4a1: address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1
}

function exercise(address arg1) payable {
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0x1b15982a with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.issuer() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.sponsor() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit 0xbf79d66c: address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1
}

function issue(uint256 arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, address arg6) payable {
    mem[64] = 96
    require sub_c2fc74b4Address == msg.sender
    if arg3:
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg1
        require ext_call.success
        require ext_call.return_data[0]
    else:
        require msg.value >= arg1
        if msg.value > arg1:
            call msg.sender with:
               value msg.value - arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    s = 0
    idx = 0
    while idx < 1:
        mem[mem[64] len 2133] = code.data[3240 len 2133]
        mem[mem[64] + 2133] = msg.sender
        mem[mem[64] + 2165] = sub_c2fc74b4Address
        mem[mem[64] + 2197] = arg6
        mem[mem[64] + 2229] = arg1
        mem[mem[64] + 2261] = arg2
        mem[mem[64] + 2293] = arg3
        mem[mem[64] + 2325] = arg4
        mem[mem[64] + 2357] = arg5
        mem[mem[64] + 2389] = sub_f52c85fdAddress
        if not arg3:
            create contract with ('param', 'arg1') wei
                            code: code.data[3240 len 2133], msg.sender, sub_c2fc74b4Address, address(arg6), arg1, arg2, address(arg3), address(arg4), arg5, sub_f52c85fdAddress
        else:
            create contract with 0 wei
                            code: code.data[3240 len 2133], msg.sender, sub_c2fc74b4Address, address(arg6), arg1, arg2, address(arg3), address(arg4), arg5, sub_f52c85fdAddress
        require create.new_address
        mem[0] = address(create.new_address)
        mem[32] = 0
        stor0[address(create.new_address)] = 1
        if arg3:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(create.new_address), arg1
            require ext_call.success
            require ext_call.return_data[0]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = sub_c2fc74b4Address
        mem[mem[64] + 64] = arg6
        mem[mem[64] + 96] = address(create.new_address)
        mem[mem[64] + 128] = arg1
        mem[mem[64] + 160] = arg2
        mem[mem[64] + 192] = arg3
        mem[mem[64] + 224] = arg4
        emit 0xb37a1c53: msg.sender, sub_c2fc74b4Address, address(arg6), address(create.new_address), arg1, arg2, address(arg3), arg4
        s = create.new_address
        idx = idx + 1
        continue 
}

function sub_6b3fc293(?) payable {
    mem[64] = 96
    require sub_c2fc74b4Address == msg.sender
    require arg7 <= 3
    require arg7 >= 1
    if arg3:
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg1 * arg7
        require ext_call.success
        require ext_call.return_data[0]
    else:
        require msg.value >= arg7 * arg1
        if msg.value > arg1 * arg7:
            call msg.sender with:
               value msg.value - (arg7 * arg1) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    s = 0
    idx = 0
    while idx < arg7:
        mem[mem[64] len 2133] = code.data[3240 len 2133]
        mem[mem[64] + 2133] = msg.sender
        mem[mem[64] + 2165] = sub_c2fc74b4Address
        mem[mem[64] + 2197] = arg6
        mem[mem[64] + 2229] = arg1
        mem[mem[64] + 2261] = arg2
        mem[mem[64] + 2293] = arg3
        mem[mem[64] + 2325] = arg4
        mem[mem[64] + 2357] = arg5
        mem[mem[64] + 2389] = sub_f52c85fdAddress
        if not arg3:
            create contract with ('param', 'arg1') wei
                            code: code.data[3240 len 2133], msg.sender, sub_c2fc74b4Address, address(arg6), arg1, arg2, address(arg3), address(arg4), arg5, sub_f52c85fdAddress
        else:
            create contract with 0 wei
                            code: code.data[3240 len 2133], msg.sender, sub_c2fc74b4Address, address(arg6), arg1, arg2, address(arg3), address(arg4), arg5, sub_f52c85fdAddress
        require create.new_address
        mem[0] = address(create.new_address)
        mem[32] = 0
        stor0[address(create.new_address)] = 1
        if arg3:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(create.new_address), arg1
            require ext_call.success
            require ext_call.return_data[0]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = sub_c2fc74b4Address
        mem[mem[64] + 64] = arg6
        mem[mem[64] + 96] = address(create.new_address)
        mem[mem[64] + 128] = arg1
        mem[mem[64] + 160] = arg2
        mem[mem[64] + 192] = arg3
        mem[mem[64] + 224] = arg4
        emit 0xb37a1c53: msg.sender, sub_c2fc74b4Address, address(arg6), address(create.new_address), arg1, arg2, address(arg3), arg4
        s = create.new_address
        idx = idx + 1
        continue 
}



}
