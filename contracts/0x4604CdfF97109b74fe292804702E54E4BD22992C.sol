contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
mapping of struct stor2;

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
  stop
}

function sub_dc535af9(?) {
    require calldata.size - 4 >= 64
    return (stor2[arg1].field_256 == arg2)
}

function renounceWhitelistAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function sub_bafa7361(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == this.address)
}

function sub_da4e3022(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if stor2[arg1].field_0:
        return (stor2[arg1].field_0 == arg2)
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).previousOwner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg2:
        return (stor2[arg1].field_0 == arg2)
    return 1
}

function sub_3fb56671(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not stor2[arg1].field_0:
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).previousOwner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == arg2:
            return 1
    if stor2[arg1].field_0 == arg2:
        return True
    return (stor2[arg1].field_256 == arg2)
}

function call(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1 != stor1
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    require ext_call.success
}

function sub_01ce02e4(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 != msg.sender:
            require stor2[arg1].field_256 == msg.sender
    else:
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).previousOwner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            if stor2[arg1].field_0 != msg.sender:
                require stor2[arg1].field_256 == msg.sender
    stor2[arg1].field_0 = arg2
    emit 0xaa5b9ebe: arg1, arg2
}

function sub_64e27f87(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 != msg.sender:
            require stor2[arg1].field_256 == msg.sender
    else:
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).previousOwner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            if stor2[arg1].field_0 != msg.sender:
                require stor2[arg1].field_256 == msg.sender
    stor2[arg1].field_256 = arg2
    emit 0xf4d445ed: arg1, arg2
}

function sub_bc131541(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 != msg.sender:
            require stor2[arg1].field_256 == msg.sender
    else:
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).previousOwner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            if stor2[arg1].field_0 != msg.sender:
                require stor2[arg1].field_256 == msg.sender
    stor2[arg1].field_0 = 0
    stor2[arg1].field_256 = 0
    require ext_code.size(stor1)
    call stor1.transfer(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe5cb1c5c: arg1, arg2
}

function sub_8c520e50(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _51 = mem[(32 * idx) + 128]
        require ext_code.size(stor1)
        staticcall stor1.entries(bytes32 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require address(ext_call.return_data[0]) == this.address
        require ext_code.size(stor1)
        staticcall stor1.entries(bytes32 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if stor2[_51].field_0:
            if stor2[_51].field_0 != msg.sender:
                require stor2[_51].field_256 == msg.sender
        else:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).previousOwner() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                if stor2[_51].field_0 != msg.sender:
                    require stor2[_51].field_256 == msg.sender
        mem[0] = _51
        mem[32] = 2
        stor2[_51].field_0 = arg2
        emit 0xaa5b9ebe: _51, arg2
        idx = idx + 1
        continue 
}

function sub_66747977(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _51 = mem[(32 * idx) + 128]
        require ext_code.size(stor1)
        staticcall stor1.entries(bytes32 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require address(ext_call.return_data[0]) == this.address
        require ext_code.size(stor1)
        staticcall stor1.entries(bytes32 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if stor2[_51].field_0:
            if stor2[_51].field_0 != msg.sender:
                require stor2[_51].field_256 == msg.sender
        else:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).previousOwner() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                if stor2[_51].field_0 != msg.sender:
                    require stor2[_51].field_256 == msg.sender
        mem[0] = _51
        mem[32] = 2
        stor2[_51].field_256 = arg2
        emit 0xf4d445ed: _51, arg2
        idx = idx + 1
        continue 
}

function sub_3a538569(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 != msg.sender:
            require stor2[arg1].field_256 == msg.sender
    else:
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).previousOwner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            if stor2[arg1].field_0 != msg.sender:
                require stor2[arg1].field_256 == msg.sender
    stor2[arg1].field_0 = arg2
    emit 0xaa5b9ebe: arg1, arg2
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(stor1)
    staticcall stor1.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 != msg.sender:
            require stor2[arg1].field_256 == msg.sender
    else:
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).previousOwner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            if stor2[arg1].field_0 != msg.sender:
                require stor2[arg1].field_256 == msg.sender
    stor2[arg1].field_256 = arg3
    emit 0xf4d445ed: arg1, arg3
}



}
