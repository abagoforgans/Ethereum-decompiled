contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_15970cae;
array of struct lockedTokens;
array of uint256 sub_87ac8ac0;
mapping of uint256 privateSale;
mapping of uint8 stor5;
address tokenAddress;

function sub_15970cae(?) {
    return sub_15970cae
}

function lockedTokens(address arg1, uint256 arg2) {
    require arg2 < lockedTokens[arg1].field_0
    return lockedTokens[arg1][arg2].field_0
}

function sub_58259694(?) {
    return bool(stor5[arg1])
}

function sub_87ac8ac0(?) {
    require arg1 < sub_87ac8ac0.length
    return sub_87ac8ac0[arg1]
}

function owner() {
    return owner
}

function privateSale(address arg1) {
    return privateSale[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokensReadyForRelease(uint256 arg1) {
    require arg1 < sub_87ac8ac0.length
    if sub_87ac8ac0[arg1] >= block.timestamp:
        return 0
    return 1
}

function setPrivateSaleAgent(address arg1, bool arg2) {
    require msg.sender == owner
    stor5[address(arg1)] = uint8(arg2)
    emit PrivateSaleAgentChanged(address(arg1), arg2);
}

function updatePrivateSaleWithMonthlyLockupByIndex(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if not stor5[address(msg.sender)]:
        require msg.sender == owner
    require arg1
    require arg4 > 0
    require arg2 < sub_87ac8ac0.length
    require privateSale[address(arg1)] > 0
    require arg2 < sub_87ac8ac0.length
    require sub_87ac8ac0[arg2] >= block.timestamp
    require arg2 < lockedTokens[address(arg1)].field_0
    lockedTokens[address(arg1)][arg2].field_0 = arg3
    require privateSale[address(arg1)] <= sub_15970cae
    sub_15970cae -= privateSale[address(arg1)]
    privateSale[address(arg1)] = arg4
    require sub_15970cae + arg4 >= sub_15970cae
    sub_15970cae += arg4
    emit UpdateLockedTokens(arg4, arg2, arg3, arg1);
}

function releaseLockedTokensByIndex(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 < sub_87ac8ac0.length
    require sub_87ac8ac0[arg2] < block.timestamp
    require arg2 < lockedTokens[address(arg1)].field_0
    if lockedTokens[address(arg1)][arg2].field_0 > 0:
        require arg2 < lockedTokens[address(arg1)].field_0
        lockedTokens[address(arg1)][arg2].field_0 = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), lockedTokens[address(arg1)][arg2].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function releaseLockedTokens(address arg1) {
    s = 0
    t = 0
    idx = 0
    while idx < sub_87ac8ac0.length:
        mem[0] = 3
        if sub_87ac8ac0[idx] >= block.timestamp:
            s = s
            t = sub_87ac8ac0[idx]
            idx = idx + 1
            continue 
        mem[32] = 2
        require idx < lockedTokens[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 2)
        if lockedTokens[address(arg1)][idx].field_0 > 0:
            mem[32] = 2
            require idx < lockedTokens[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 2)
            lockedTokens[address(arg1)][idx].field_0 = 0
            mem[100] = arg1
            mem[132] = lockedTokens[address(arg1)][idx].field_0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), lockedTokens[address(arg1)][idx].field_0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        s = lockedTokens[address(arg1)][idx].field_0
        t = sub_87ac8ac0[idx]
        idx = idx + 1
        continue 
}

function getLockedTokensPerUser(address arg1) {
    if not lockedTokens[address(arg1)].field_0:
        mem[(32 * lockedTokens[address(arg1)].field_0) + 128] = 32
        mem[(32 * lockedTokens[address(arg1)].field_0) + 160] = lockedTokens[address(arg1)].field_0
        mem[(32 * lockedTokens[address(arg1)].field_0) + 192 len floor32(lockedTokens[address(arg1)].field_0)] = mem[128 len floor32(lockedTokens[address(arg1)].field_0)]
        return memory
          from (32 * lockedTokens[address(arg1)].field_0) + 128
           len (96 * lockedTokens[address(arg1)].field_0) + 64
    mem[128] = lockedTokens[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * lockedTokens[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = lockedTokens[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * lockedTokens[address(arg1)].field_0) + 192 len floor32(lockedTokens[address(arg1)].field_0)] = mem[128 len floor32(lockedTokens[address(arg1)].field_0)]
    return Array(len=lockedTokens[address(arg1)].field_0, data=mem[128 len floor32(lockedTokens[address(arg1)].field_0)], mem[(32 * lockedTokens[address(arg1)].field_0) + floor32(lockedTokens[address(arg1)].field_0) + 192 len (32 * lockedTokens[address(arg1)].field_0) - floor32(lockedTokens[address(arg1)].field_0)]), 
}

function claimLockedTokens() {
    s = 0
    t = 0
    idx = 0
    while idx < sub_87ac8ac0.length:
        mem[0] = 3
        if sub_87ac8ac0[idx] >= block.timestamp:
            s = s
            t = sub_87ac8ac0[idx]
            idx = idx + 1
            continue 
        mem[32] = 2
        require idx < lockedTokens[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 2)
        if lockedTokens[address(msg.sender)][idx].field_0 > 0:
            mem[32] = 2
            require idx < lockedTokens[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 2)
            lockedTokens[address(msg.sender)][idx].field_0 = 0
            mem[100] = msg.sender
            mem[132] = lockedTokens[address(msg.sender)][idx].field_0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, lockedTokens[address(msg.sender)][idx].field_0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        s = lockedTokens[address(msg.sender)][idx].field_0
        t = sub_87ac8ac0[idx]
        idx = idx + 1
        continue 
}

function addPrivateSaleWithMonthlyLockup(address arg1, uint256[] arg2, uint256 arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not stor5[address(msg.sender)]:
        require msg.sender == owner
    require arg1
    require arg3 > 0
    require arg2.length == sub_87ac8ac0.length
    require privateSale[address(arg1)] <= 0
    lockedTokens[address(arg1)].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while lockedTokens[address(arg1)].field_0 > idx:
            lockedTokens[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            lockedTokens[address(arg1)][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while lockedTokens[address(arg1)].field_0 > idx:
            lockedTokens[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    privateSale[address(arg1)] = arg3
    require sub_15970cae + arg3 >= sub_15970cae
    sub_15970cae += arg3
    mem[(32 * arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit AddLockedTokens(arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 224 len (32 * arg2.length) - floor32(arg2.length)]), arg1);
}

function getTotalLockedTokensPerUser(address arg1) {
    if lockedTokens[address(arg1)].field_0:
        mem[128] = lockedTokens[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * lockedTokens[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = lockedTokens[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < sub_87ac8ac0.length:
        require idx < lockedTokens[address(arg1)].field_0
        idx = idx + 1
        s = s + mem[(32 * idx) + 128]
        continue 
    return (s * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length * sub_87ac8ac0.length)
}



}
