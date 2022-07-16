contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[86 len 3032]
}



// =====================  Runtime code  =====================


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
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function addAuthorizedAddress(address arg1) {
    require msg.sender == owner
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    authorities.length++
    if not authorities.length <= authorities.length + 1:
        idx = authorities.length + 1
        while authorities.length > idx:
            authorities[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(authorities[authorities.length].field_0) = arg1
    emit LogAuthorizedAddressAdded(arg1, msg.sender);
}

function removeAuthorizedAddress(address arg1) {
    require msg.sender == owner
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
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
        if not authorities.length <= authorities.length - 1:
            idx = sha3(2) + authorities.length - 1
            while sha3(2) + authorities.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit LogAuthorizedAddressRemoved(arg1, msg.sender);
    emit LogAuthorizedAddressRemoved(arg1, msg.sender);
}

function getAuthorizedAddresses() {
    if not authorities.length:
        mem[(32 * authorities.length) + 160] = 32
        mem[(32 * authorities.length) + 192] = authorities.length
        mem[(32 * authorities.length) + 224 len floor32(authorities.length)] = mem[160 len floor32(authorities.length)]
        return memory
          from (32 * authorities.length) + 160
           len (96 * authorities.length) + 64
    mem[160] = address(authorities.field_0)
    idx = 160
    s = 0
    while (32 * authorities.length) + 128 > idx:
        mem[idx + 32] = address(authorities[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * authorities.length) + 224 len floor32(authorities.length)] = mem[160 len floor32(authorities.length)]
    return Array(len=authorities.length, data=mem[160 len floor32(authorities.length)], mem[(32 * authorities.length) + floor32(authorities.length) + 224 len (32 * authorities.length) - floor32(authorities.length)]), 
}



}
