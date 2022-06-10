contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address sub_ff55c4f9Address;
address sub_bb13202dAddress;
address oracleAddress;
uint256 sub_4ea665f4;

function sub_4ea665f4(?) {
    return sub_4ea665f4
}

function oracle() {
    return oracleAddress
}

function sub_bb13202d(?) {
    return sub_bb13202dAddress
}

function sub_ff55c4f9(?) {
    return sub_ff55c4f9Address
}

function _fallback() payable {
    revert
}

function emitErrorCode(uint256 arg1) {
    emit 0x9e0713b4: arg1, msg.sender
}

function getEventsHistory() {
    if stor1:
        return stor1
    return this.address
}

function sub_f3a8f7dd(?) {
    emit 0x3e4421ca: address(arg2), arg3, msg.sender, arg1, arg4
}

function sub_2637cd7d(?) {
    if this.address == msg.sender:
        stor0 = arg1
        return 1
    if stor0:
        require ext_code.size(stor0)
        call stor0.0xb7009613 with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            stor0 = arg1
            return 1
    emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
    return 0
}

function sub_ff83e606(?) {
    if this.address == msg.sender:
        sub_4ea665f4 = arg1
        return 1
    if stor0:
        require ext_code.size(stor0)
        call stor0.0xb7009613 with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            sub_4ea665f4 = arg1
            return 1
    emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
    return 0
}

function sub_4ad45afe(?) {
    if this.address == msg.sender:
        sub_bb13202dAddress = arg1
        return 1
    if stor0:
        require ext_code.size(stor0)
        call stor0.0xb7009613 with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            sub_bb13202dAddress = arg1
            return 1
    emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
    return 0
}

function sub_473b56d8(?) {
    if msg.sender != this.address:
        if not stor0:
            emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
            return 0
        require ext_code.size(stor0)
        call stor0.0xb7009613 with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
            return 0
    if not arg1:
        revert with 0, 'USER_FACTORY_INVALID_ADDRESS'
    sub_ff55c4f9Address = arg1
    return 1
}

function setupEventsHistory(address arg1) {
    if msg.sender != this.address:
        if not stor0:
            emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
            return 0
        require ext_code.size(stor0)
        call stor0.0xb7009613 with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
            return 0
    if not arg1:
        revert with 0, 'USER_FACTORY_INVALID_ADDRESS'
    stor1 = arg1
    return 1
}

function setOracleAddress(address arg1) {
    if msg.sender != this.address:
        if not stor0:
            emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
            return 0
        require ext_code.size(stor0)
        call stor0.0xb7009613 with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
            return 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Oracle should not be equal to 0x0'
    oracleAddress = arg1
    return 1
}

function sub_723d21b5(?) {
    if msg.sender != this.address:
        if not stor0:
            emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
            return 0
        require ext_code.size(stor0)
        call stor0.0xb7009613 with:
             gas gas_remaining wei
            args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            emit code.data[8487 len 32]: this.address, msg.sender, call.func_hash
            return 0
    require ext_code.size(arg1)
    call arg1.0x2f71ed9c with:
         gas gas_remaining wei
        args sub_ff55c4f9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e280e449(?) payable {
    mem[(32 * arg3.length) + 128 len 4642] = code.data[3845 len 4642]
    mem[(32 * arg3.length) + 4770] = arg1
    mem[(32 * arg3.length) + 4802] = sub_bb13202dAddress
    mem[(32 * arg3.length) + 4834] = sub_ff55c4f9Address
    create contract with 0 wei
                    code: code.data[3845 len 4642], address(arg1), sub_bb13202dAddress, sub_ff55c4f9Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x93d0ad41 with:
         gas gas_remaining wei
        args oracleAddress, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)]), sub_4ea665f4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ff55c4f9Address)
    call sub_ff55c4f9Address.0x5724e81f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x8c2229be with:
             gas gas_remaining wei
            args address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).getUserProxy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1:
        require ext_code.size(stor1)
        call stor1.0xf3a8f7dd with:
             gas gas_remaining wei
            args address(create.new_address), address(ext_call.return_data[0]), sub_bb13202dAddress, arg1
    else:
        require ext_code.size(this.address)
        call this.address.0xf3a8f7dd with:
             gas gas_remaining wei
            args address(create.new_address), address(ext_call.return_data[0]), sub_bb13202dAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
