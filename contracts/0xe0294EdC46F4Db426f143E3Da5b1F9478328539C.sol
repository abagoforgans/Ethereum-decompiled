contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1291]




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 property;

function getProperty(address arg1, bytes32 arg2) {
    return property[address(arg1)][arg2]
}

function _fallback() payable {
    revert
}

function setProperty(address arg1, bytes32 arg2, bytes32 arg3) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    property[address(arg1)][arg2] = arg3
    emit PropertySet(address(arg1), arg2, arg3);
    return 1
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



}
