contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;

function _fallback() {
    stor1 = code.data[2808 len 20]
    stor2 = code.data[2840 len 20]
    stor3 = code.data[2872 len 20]
    return code.data[124 len 2672]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_c47ccc4a(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 0x61737369676e0000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    call arg1.0x7f12caaa with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function sub_590f98dc(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 0x6465706c6f790000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    create contract with 0 wei
                    code: code.data[2158 len 157]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x6dd23b5b with:
         gas gas_remaining - 710 wei
        args stor1, stor2, stor3
    require ext_call.success
    emit 0xbed88547: address(create.new_address)
    return 1
}

function sub_968e8e6e(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 0x6465706c6f790000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    create contract with 0 wei
                    code: code.data[2315 len 157]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x6dd23b5b with:
         gas gas_remaining - 710 wei
        args stor1, stor2, stor3
    require ext_call.success
    emit 0x24cc77a0: address(create.new_address)
    return 1
}

function sub_f26c5396(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 0x6465706c6f790000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    create contract with 0 wei
                    code: code.data[2472 len 157]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x6dd23b5b with:
         gas gas_remaining - 710 wei
        args stor1, stor2, stor3
    require ext_call.success
    emit 0x37af0b99: address(create.new_address)
    return 1
}



}
