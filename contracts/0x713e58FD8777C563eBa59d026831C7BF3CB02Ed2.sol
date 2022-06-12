contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address stor3;

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function sub_a47a8204(?) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(stor3)
    staticcall stor3.tag() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.cups(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(stor3)
    staticcall stor3.axe() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] / 2 < 0:
            revert with 0, 'ds-math-add-overflow'
        if ext_call.return_data[0]:
            return (ext_call.return_data[0] / 2 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                revert with 0, 'ds-math-mul-overflow'
            if (ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[64] * ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            if (ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if ((ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 < (ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'ds-math-add-overflow'
            if 1000000000 * 10^18 * ((ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18 / 1000000000 * 10^18 != ((ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if (1000000000 * 10^18 * ((ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * ((ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'ds-math-add-overflow'
            if ext_call.return_data[0]:
                return ((1000000000 * 10^18 * ((ext_call.return_data[64] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    revert
}



}
