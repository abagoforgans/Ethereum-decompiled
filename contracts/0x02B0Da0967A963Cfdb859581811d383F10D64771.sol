contract main {




// =====================  Runtime code  =====================


const getProxyId = Mask(32, 224, sha3(Mask(232, 24, 'MultiAsset(uint256[],bytes[])') >> 24))


address owner;
mapping of address assetProxy;
mapping of uint8 stor2;
array of struct authorities;

function assetProxies(bytes4 arg1) {
    return address(assetProxy[Mask(32, 224, arg1)])
}

function authorities(uint256 arg1) {
    require arg1 < authorities.length
    return address(authorities[arg1].field_0)
}

function getAssetProxy(bytes4 arg1) {
    return address(assetProxy[Mask(32, 224, arg1)])
}

function owner() {
    return owner
}

function authorized(address arg1) {
    return bool(uint8(stor2[arg1]))
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if arg1:
        owner = arg1
}

function addAuthorizedAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if uint8(stor2[address(arg1)]):
        revert with 0, 'TARGET_ALREADY_AUTHORIZED'
    uint8(stor2[address(arg1)]) = 1
    authorities.length++
    address(authorities[authorities.length].field_0) = arg1
    emit AuthorizedAddressAdded(arg1, msg.sender);
}

function registerAssetProxy(address arg1) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    require ext_code.size(arg1)
    call arg1.0xae25532e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(assetProxy[Mask(32, 224, ext_call.return_data[0])]):
        revert with 0, 'ASSET_PROXY_ALREADY_EXISTS'
    address(assetProxy[Mask(32, 224, ext_call.return_data[0])]) = arg1
    emit AssetProxyRegistered(Mask(32, 224, ext_call.return_data[0]), arg1);
}

function removeAuthorizedAddressAtIndex(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if not uint8(stor2[address(arg1)]):
        revert with 0, 'TARGET_NOT_AUTHORIZED'
    if arg2 >= authorities.length:
        revert with 0, 'INDEX_OUT_OF_BOUNDS'
    if address(authorities[arg2].field_0) != arg1:
        revert with 0, 'AUTHORIZED_ADDRESS_MISMATCH'
    uint8(stor2[address(arg1)]) = 0
    require authorities.length - 1 < authorities.length
    require arg2 < authorities.length
    address(authorities[arg2].field_0) = address(authorities[authorities.length].field_0)
    authorities.length--
    if authorities.length > authorities.length - 1:
        idx = authorities.length - 1
        while authorities.length > idx:
            authorities[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit AuthorizedAddressRemoved(arg1, msg.sender);
}

function getAuthorizedAddresses() {
    if not authorities.length:
        mem[(32 * authorities.length) + 128] = 32
        mem[(32 * authorities.length) + 160] = authorities.length
        mem[(32 * authorities.length) + 192 len floor32(authorities.length)] = mem[128 len floor32(authorities.length)]
        return memory
          from (32 * authorities.length) + 128
           len (96 * authorities.length) + 64
    mem[128] = address(authorities.field_0)
    idx = 128
    s = 0
    while (32 * authorities.length) + 96 > idx:
        mem[idx + 32] = address(authorities[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * authorities.length) + 192 len floor32(authorities.length)] = mem[128 len floor32(authorities.length)]
    return Array(len=authorities.length, data=mem[128 len floor32(authorities.length)], mem[(32 * authorities.length) + floor32(authorities.length) + 192 len (32 * authorities.length) - floor32(authorities.length)]), 
}

function removeAuthorizedAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if not uint8(stor2[address(arg1)]):
        revert with 0, 'TARGET_NOT_AUTHORIZED'
    uint8(stor2[address(arg1)]) = 0
    idx = 0
    while idx < authorities.length:
        mem[0] = 3
        if address(authorities[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require authorities.length - 1 < authorities.length
        require idx < authorities.length
        address(authorities[idx].field_0) = address(authorities[authorities.length].field_0)
        authorities.length--
        if authorities.length > authorities.length - 1:
            idx = authorities.length + sha3(3) - 1
            while sha3(3) + authorities.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit AuthorizedAddressRemoved(arg1, msg.sender);
    emit AuthorizedAddressRemoved(arg1, msg.sender);
}

function _fallback() {
    require call.func_hash == 0xa85e59e400000000000000000000000000000000000000000000000000000000
    if not uint256(stor2[msg.sender]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ' ',
                    0x1553454e4445525f4e4f545f415554484f52495a454400000000000000,
                    0
    if cd[(cd[4] + ('cd', 4)[0] + 40)] != cd[(cd[4] + ('cd', 4)[1] + 40)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ' ',
                    0xf4c454e4754485f4d49534d4154434800000000000000000000000000,
                    0
    idx = 0
    s = 0
    t = 0
    while idx < 32 * cd[(cd[4] + ('cd', 4)[0] + 40)]:
        if cd[(idx + cd[4] + ('cd', 4)[0] + 72)] != cd[(idx + cd[4] + ('cd', 4)[0] + 72)] * cd[100] / cd[100]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        ' ',
                        0x1055494e543235365f4f564552464c4f57000000000000000000000000,
                        0
        mem[100] = cd[(idx + cd[4] + ('cd', 4)[0] + 72)] * cd[100]
        if cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72)] < 4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        ' ',
                        0x1e4c454e4754485f475245415445525f5448414e5f335f524551554952,
                        Mask(32, 224, 'ED') >> 224
        if Mask(32, 224, cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 104)]) == t:
            if not s:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            ' ',
                            0x1a41535345545f50524f58595f444f45535f4e4f545f45584953540000,
                            0
            mem[132 len cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72)] + 32] = call.data[cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72 len cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72)] + 32]
            call s with:
               funct call.data[0 len 4]
                 gas gas_remaining wei
                args 128, call.data[36 len 64], cd[(idx + cd[4] + ('cd', 4)[0] + 72)] * cd[100], call.data[cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72 len cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72)] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 32
            s = s
            t = t
            continue 
        mem[164] = 1
        if not uint256(assetProxy[Mask(32, 224, cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 104)])]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        ' ',
                        0x1a41535345545f50524f58595f444f45535f4e4f545f45584953540000,
                        0
        mem[132 len cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72)] + 32] = call.data[cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72 len cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72)] + 32]
        call uint256(assetProxy[Mask(32, 224, cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 104)])]) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args 128, call.data[36 len 64], cd[(idx + cd[4] + ('cd', 4)[0] + 72)] * cd[100], call.data[cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72 len cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 72)] + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 32
        s = uint256(assetProxy[Mask(32, 224, cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 104)])])
        t = Mask(32, 224, cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + idx + 72)] + 104)])
        continue 
}



}
