contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 2445]




// =====================  Runtime code  =====================


const consumeOperation(bytes32 arg1, uint256 arg2) = 1


address stor0;

function _fallback() payable {
    revert
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

function migrate(address arg1, address arg2) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'deploy', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    call arg1.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x681232ad with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xb72ceab8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[2245 len 157]
    require create.new_address
    require ext_code.size(arg1)
    call arg1.0x4525f804 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xd613be0a with:
         gas gas_remaining - 710 wei
        args address(create.new_address)
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x4525f804 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xcb9fa366 with:
         gas gas_remaining - 710 wei
        args address(arg2), bool(ext_call.return_data[0])
    require ext_call.success
    emit Migrated(address(arg1), address(create.new_address));
    return 1
}



}
