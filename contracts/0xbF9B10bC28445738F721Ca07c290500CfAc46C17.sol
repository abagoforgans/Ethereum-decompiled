contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 1901]




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert 
}

function sub_57202bfd(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 'assign', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    call arg1.0xcb9fa366 with:
         gas gas_remaining - 50 wei
        args address(arg2), arg3
    require ext_call.success
    emit 0xa9e1ee75: arg1, arg2
    return 1
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function deploy() {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 'deploy', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    create contract with 0 wei
                    code: code.data[1550 len 154]
    require create.new_address
    create contract with 0 wei
                    code: code.data[1704 len 154]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf8a6c595 with:
         gas gas_remaining - 50 wei
        args address(create.new_address)
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x4525f804 with:
         gas gas_remaining - 50 wei
        args address(create.new_address), 0
    require ext_call.success
    emit Deployed(address(create.new_address), address(create.new_address));
    return 1
}

function sub_a6ec80e2(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 'deploy', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    create contract with 0 wei
                    code: code.data[1550 len 154]
    require create.new_address
    create contract with 0 wei
                    code: code.data[1704 len 154]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf8a6c595 with:
         gas gas_remaining - 50 wei
        args address(create.new_address)
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x4525f804 with:
         gas gas_remaining - 50 wei
        args address(create.new_address), arg1
    require ext_call.success
    emit Deployed(address(create.new_address), address(create.new_address));
    return 1
}



}
