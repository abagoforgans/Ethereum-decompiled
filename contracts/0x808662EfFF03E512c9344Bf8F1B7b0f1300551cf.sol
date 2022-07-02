contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
mapping of struct attribute;
array of address subscriberCount;

function subscriberCount(bytes32 arg1) {
    return uint256(subscriberCount[arg1])
}

function getAttribute(address arg1, bytes32 arg2) {
    return attribute[address(arg1)][arg2].field_0, 
           attribute[address(arg1)][arg2].field_256,
           address(attribute[address(arg1)][arg2].field_512),
           attribute[address(arg1)][arg2].field_768
}

function getAttributeAdminAddr(address arg1, bytes32 arg2) {
    return address(attribute[address(arg1)][arg2].field_512)
}

function getAttributeTimestamp(address arg1, bytes32 arg2) {
    return attribute[address(arg1)][arg2].field_768
}

function hasAttribute(address arg1, bytes32 arg2) {
    return bool(attribute[address(arg1)][arg2].field_0)
}

function owner() {
    return owner
}

function getAttributeValue(address arg1, bytes32 arg2) {
    return attribute[address(arg1)][arg2].field_0
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    pendingOwner = arg1
}

function requireCanBurn(address arg1) {
    require attribute[address(arg1)]['canBurn'].field_0
    require not attribute[address(arg1)]['isBlacklisted'].field_0
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function subscribe(bytes32 arg1, address arg2) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    uint256(subscriberCount[arg1])++
    address(subscriberCount[arg1][uint256(subscriberCount[arg1])]) = arg2
    emit 0x1b268da2: arg1, arg2
}

function reclaimEther(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function requireCanMint(address arg1) {
    if attribute[address(arg1)]['isBlacklisted'].field_0:
        revert with 0, 'blacklisted'
    if not attribute[Mask(140, 20, arg1) << 96]['isDepositAddress'].field_0:
        return address(arg1), bool(attribute[address(arg1)]['isRegisteredContract'].field_0)
    return address(attribute[Mask(140, 20, arg1) << 96]['isDepositAddress'].field_0), 
           bool(attribute[address(attribute[Mask(140, 20, arg1) << 96]['isDepositAddress'].field_0)]['isRegisteredContract'].field_0)
}

function reclaimToken(address arg1, address arg2) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function requireCanTransfer(address arg1, address arg2) {
    if attribute[address(arg1)]['isBlacklisted'].field_0:
        revert with 0, 'blacklisted'
    if not attribute[Mask(140, 20, arg2) << 96]['isDepositAddress'].field_0:
        if attribute[address(arg2)]['isBlacklisted'].field_0:
            revert with 0, 'blacklisted'
        return address(arg2), bool(attribute[address(arg2)]['isRegisteredContract'].field_0)
    if attribute[address(attribute[Mask(140, 20, arg2) << 96]['isDepositAddress'].field_0)]['isBlacklisted'].field_0:
        revert with 0, 'blacklisted'
    return address(attribute[Mask(140, 20, arg2) << 96]['isDepositAddress'].field_0), 
           bool(attribute[address(attribute[Mask(140, 20, arg2) << 96]['isDepositAddress'].field_0)]['isRegisteredContract'].field_0)
}

function unsubscribe(bytes32 arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require arg2 < uint256(subscriberCount[arg1])
    require arg2 < uint256(subscriberCount[arg1])
    emit 0xb2323eec: arg1, address(subscriberCount[arg1][arg2])
    require uint256(subscriberCount[arg1]) - 1 < uint256(subscriberCount[arg1])
    require arg2 < uint256(subscriberCount[arg1])
    address(subscriberCount[arg1][arg2]) = address(subscriberCount[arg1][uint256(subscriberCount[arg1])])
    uint256(subscriberCount[arg1])--
    if uint256(subscriberCount[arg1]) > uint256(subscriberCount[arg1]) - 1:
        idx = uint256(subscriberCount[arg1]) - 1
        while uint256(subscriberCount[arg1]) > idx:
            uint256(subscriberCount[arg1][idx]) = 0
            idx = idx + 1
            continue 
}

function requireCanTransferFrom(address arg1, address arg2, address arg3) {
    if attribute[address(arg1)]['isBlacklisted'].field_0:
        revert with 0, 'blacklisted'
    if attribute[address(arg2)]['isBlacklisted'].field_0:
        revert with 0, 'blacklisted'
    if not attribute[Mask(140, 20, arg3) << 96]['isDepositAddress'].field_0:
        if attribute[address(arg3)]['isBlacklisted'].field_0:
            revert with 0, 'blacklisted'
        return address(arg3), bool(attribute[address(arg3)]['isRegisteredContract'].field_0)
    if attribute[address(attribute[Mask(140, 20, arg3) << 96]['isDepositAddress'].field_0)]['isBlacklisted'].field_0:
        revert with 0, 'blacklisted'
    return address(attribute[Mask(140, 20, arg3) << 96]['isDepositAddress'].field_0), 
           bool(attribute[address(attribute[Mask(140, 20, arg3) << 96]['isDepositAddress'].field_0)]['isRegisteredContract'].field_0)
}

function setAttributeValue(address arg1, bytes32 arg2, uint256 arg3) {
    if owner != msg.sender:
        require attribute[address(msg.sender)][sha3(arg2 xor sha3('canWriteTo-'))].field_0
    attribute[address(arg1)][arg2].field_0 = arg3
    attribute[address(arg1)][arg2].field_256 = 0
    address(attribute[address(arg1)][arg2].field_512) = msg.sender
    attribute[address(arg1)][arg2].field_768 = block.timestamp
    emit SetAttribute(arg2, arg3, mem[288], arg1, msg.sender);
    mem[0] = arg2
    idx = uint256(subscriberCount[mem[0]])
    while 0 < idx:
        require idx - 1 < uint256(subscriberCount[arg2])
        mem[0] = sha3(arg2, 3)
        mem[224] = 0xf5be438900000000000000000000000000000000000000000000000000000000
        mem[228] = arg1
        mem[260] = arg2
        mem[292] = arg3
        require ext_code.size(address(subscriberCount[arg2][idx]))
        call address(subscriberCount[arg2][idx]).syncAttributeValue(address arg1, bytes32 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx - 1
        continue 
}

function setAttribute(address arg1, bytes32 arg2, uint256 arg3, bytes32 arg4) {
    if owner != msg.sender:
        require attribute[address(msg.sender)][sha3(arg2 xor sha3('canWriteTo-'))].field_0
    attribute[address(arg1)][arg2].field_0 = arg3
    attribute[address(arg1)][arg2].field_256 = arg4
    address(attribute[address(arg1)][arg2].field_512) = msg.sender
    attribute[address(arg1)][arg2].field_768 = block.timestamp
    emit SetAttribute(arg2, arg3, arg4, arg1, msg.sender);
    mem[0] = arg2
    idx = uint256(subscriberCount[mem[0]])
    while 0 < idx:
        require idx - 1 < uint256(subscriberCount[arg2])
        mem[0] = sha3(arg2, 3)
        mem[224] = 0xf5be438900000000000000000000000000000000000000000000000000000000
        mem[228] = arg1
        mem[260] = arg2
        mem[292] = arg3
        require ext_code.size(address(subscriberCount[arg2][idx]))
        call address(subscriberCount[arg2][idx]).syncAttributeValue(address arg1, bytes32 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx - 1
        continue 
}

function syncAttribute(bytes32 arg1, uint256 arg2, address[] arg3) {
    mem[0] = arg1
    mem[32] = 3
    s = 0
    s = 0
    idx = stor[sha3(mem[0 len 64])]
    while arg2 < idx:
        require idx - 1 < uint256(subscriberCount[arg1])
        mem[0] = sha3(arg1, 3)
        t = 0
        s = arg3.length
        while 0 < s:
            require s - 1 < arg3.length
            mem[0] = arg1
            mem[32] = sha3(address(cd[((32 * s - 1) + arg3 + 36)]), 2)
            mem[96] = 0xf5be438900000000000000000000000000000000000000000000000000000000
            mem[100] = address(cd[((32 * s - 1) + arg3 + 36)])
            mem[132] = arg1
            mem[164] = attribute[address(cd[((32 * s - 1) + arg3 + 36)])][arg1].field_0
            require ext_code.size(address(subscriberCount[arg1][idx]))
            call address(subscriberCount[arg1][idx]).syncAttributeValue(address arg1, bytes32 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(cd[((32 * s - 1) + arg3 + 36)]), arg1, attribute[address(cd[((32 * s - 1) + arg3 + 36)])][arg1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            t = address(cd[((32 * s - 1) + arg3 + 36)])
            s = s - 1
            continue 
        s = s - 1
        s = address(subscriberCount[arg1][idx])
        idx = idx - 1
        continue 
}



}
