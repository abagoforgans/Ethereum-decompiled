contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender
    return code.data[53 len 2141]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
array of struct versions;
mapping of uint256 versioned;

function versioned(address arg1) {
    return versioned[arg1]
}

function versions(uint256 arg1) {
    require arg1 < versions.length
    return address(versions[arg1].field_0)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function transferToken(address arg1, address arg2, address arg3, uint256 arg4) {
    require versioned[address(msg.sender)]
    if arg2 == arg3:
        return 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function getSpendable(address arg1, address arg2) {
    require versioned[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg2), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function addVersion(address arg1) {
    require owner == msg.sender
    require versioned[address(arg1)] <= 0
    stor1++
    versioned[address(arg1)] = stor1 + 1
    versions.length++
    if not versions.length <= versions.length + 1:
        idx = versions.length + 1
        while versions.length > idx:
            versions[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(versions[versions.length].field_0) = arg1
    emit VersionAdded(stor1, arg1);
}

function removeVersion(address arg1) {
    require owner == msg.sender
    require versioned[address(arg1)]
    require versioned[address(arg1)] > 0
    versioned[address(arg1)] = 0
    idx = 0
    while idx < versions.length:
        mem[0] = 2
        if address(versions[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require versions.length - 1 < versions.length
        require idx < versions.length
        address(versions[idx].field_0) = address(versions[versions.length].field_0)
        versions.length--
        if not versions.length <= versions.length - 1:
            idx = versions.length + sha3(2) - 1
            while sha3(2) + versions.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit VersionRemoved(versioned[address(arg1)], arg1);
    emit VersionRemoved(versioned[address(arg1)], arg1);
}

function getVersions() {
    if not versions.length:
        mem[(32 * versions.length) + 160] = 32
        mem[(32 * versions.length) + 192] = versions.length
        mem[(32 * versions.length) + 224 len floor32(versions.length)] = mem[160 len floor32(versions.length)]
        return memory
          from (32 * versions.length) + 160
           len (96 * versions.length) + 64
    mem[160] = address(versions.field_0)
    idx = 160
    s = 0
    while (32 * versions.length) + 128 > idx:
        mem[idx + 32] = address(versions[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * versions.length) + 224 len floor32(versions.length)] = mem[160 len floor32(versions.length)]
    return Array(len=versions.length, data=mem[160 len floor32(versions.length)], mem[(32 * versions.length) + floor32(versions.length) + 224 len (32 * versions.length) - floor32(versions.length)]), 
}



}
