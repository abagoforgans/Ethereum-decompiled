contract main {




// =====================  Runtime code  =====================


const getProxyId = Mask(32, 224, sha3(Mask(152, 104, 'ERC20Token(address)') >> 104))


address owner;
mapping of uint8 stor1;
array of struct authorities;

function authorities(uint256 arg1) {
    require arg1 < authorities.length
    return address(authorities[arg1].field_0)
}

function owner() {
    return owner
}

function authorized(address arg1) {
    return bool(uint8(stor1[arg1]))
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
    if uint8(stor1[address(arg1)]):
        revert with 0, 'TARGET_ALREADY_AUTHORIZED'
    uint8(stor1[address(arg1)]) = 1
    authorities.length++
    address(authorities[authorities.length].field_0) = arg1
    emit AuthorizedAddressAdded(arg1, msg.sender);
}

function _fallback() {
    require call.func_hash == 0xa85e59e400000000000000000000000000000000000000000000000000000000
    if not uint256(stor1[msg.sender]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ' ',
                    0x1553454e4445525f4e4f545f415554484f52495a454400000000000000,
                    0
    call ('cd', 4)[0].0x23b872dd with:
         gas gas_remaining wei
        args call.data[36 len 96]
    if not ext_call.success or return_data.size and 32 != return_data.size or ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ' ',
                    0xf5452414e534645525f4641494c454400000000000000000000000000,
                    0
}

function removeAuthorizedAddressAtIndex(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if not uint8(stor1[address(arg1)]):
        revert with 0, 'TARGET_NOT_AUTHORIZED'
    if arg2 >= authorities.length:
        revert with 0, 'INDEX_OUT_OF_BOUNDS'
    if address(authorities[arg2].field_0) != arg1:
        revert with 0, 'AUTHORIZED_ADDRESS_MISMATCH'
    uint8(stor1[address(arg1)]) = 0
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
    if not uint8(stor1[address(arg1)]):
        revert with 0, 'TARGET_NOT_AUTHORIZED'
    uint8(stor1[address(arg1)]) = 0
    idx = 0
    while idx < authorities.length:
        mem[0] = 2
        if address(authorities[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require authorities.length - 1 < authorities.length
        require idx < authorities.length
        address(authorities[idx].field_0) = address(authorities[authorities.length].field_0)
        authorities.length--
        if authorities.length > authorities.length - 1:
            idx = authorities.length + sha3(2) - 1
            while sha3(2) + authorities.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit AuthorizedAddressRemoved(arg1, msg.sender);
    emit AuthorizedAddressRemoved(arg1, msg.sender);
}



}
