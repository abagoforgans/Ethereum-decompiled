contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
mapping of uint8 stor2;
array of address stor3;
mapping of uint8 stor4;
array of address stor5;
mapping of uint8 stor6;
array of address stor7;
bool stor9;
uint256 stor9; offset 1
uint256 stor9;
address tokenAddress;
address treasuryAddress;
uint256 weiRaised;
uint256 stor13;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor4[address(arg1)])
}

function weiRaised() {
    return weiRaised
}

function treasury() {
    return treasuryAddress
}

function owner() {
    return owner
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor2[address(arg1)])
}

function token() {
    return tokenAddress
}

function isConverter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor6[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function renounceConverter() {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit 0xebba5edf: msg.sender
}

function renounceWhitelisted() {
    require msg.sender
    require stor4[address(msg.sender)]
    stor4[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    require msg.sender
    require stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor2[address(msg.sender)]:
        revert with 0, 'Only Whitelist Admin'
    require arg1
    require stor4[address(arg1)]
    stor4[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor2[address(msg.sender)]:
        revert with 0, 'Only Whitelist Admin'
    require arg1
    require not stor4[address(arg1)]
    stor4[address(arg1)] = 1
    stor5.length++
    stor5[stor5.length] = arg1
    emit WhitelistedAdded(arg1);
}

function closePeriod() {
    require msg.sender
    if not stor6[address(msg.sender)]:
        revert with 0, 'Only Converter'
    require -uint256(stor9.field_0) + 1 < stor8.length
    if not uint8(stor8[uint256(stor9.field_0)].field_768):
        revert with 0, 'Please convert old period first.'
    require -uint256(stor9.field_0) + 1 < stor8.length
    uint8(stor8[uint256(stor9.field_0)].field_768) = 0
    bool(stor9.field_0) = bool(uint256(stor9.field_0) + 1)
    uint255(stor9.field_1) = 0
}

function addConverter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor6[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Only Converter or Owner'
    if stor7.length >= 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not more than 20 admins are allowed'
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    stor7.length++
    address(stor7[stor7.length]) = arg1
    emit 0xa0a15804: arg1
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Only Whitelist Admin or Owner'
    if stor3.length >= 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not more than 20 admins are allowed'
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    stor3.length++
    stor3[stor3.length] = arg1
    emit WhitelistAdminAdded(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    stor3.length++
    stor3[stor3.length] = arg1
    emit WhitelistAdminAdded(arg1);
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    stor7.length++
    address(stor7[stor7.length]) = arg1
    emit 0xa0a15804: arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function committedBalance(address arg1) {
    require calldata.size - 4 >= 32
    require -uint256(stor9.field_0) + 1 < stor8.length
    require uint256(stor9.field_0) < stor8.length
    require -uint256(stor9.field_0) + 1 < stor8.length
    if not uint8(stor8[uint256(stor9.field_0)].field_768):
        return (stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(arg1)].field_0 + stor[(3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 2][address(arg1)].field_0)
    return stor[(3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 2][address(arg1)].field_0
}

function resetWhitelist() {
    require msg.sender == owner
    require owner
    require stor6[stor1]
    idx = 0
    while idx < stor7.length:
        mem[0] = address(stor7[idx])
        mem[32] = 6
        stor6[address(stor7[idx])] = 0
        idx = idx + 1
        continue 
    stor7.length = 0
    if stor7.length > 0:
        idx = 0
        while stor7.length > idx:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    require owner
    require not stor6[stor1]
    stor6[stor1] = 1
    stor7.length++
    address(stor7[stor7.length]) = owner
}

function commit() payable {
    stor0++
    if msg.value <= 0:
        revert with 0, 'You need to give some money'
    require msg.sender
    require stor4[address(msg.sender)]
    require msg.sender
    require msg.value
    require uint256(stor9.field_0) < stor8.length
    require uint256(stor9.field_0) < stor8.length
    if stor[(3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 2][address(msg.sender)].field_0:
    else:
        if stor8[uint256(stor9.field_0)].field_256 >= stor13:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The limit of investors for this period has been reached.'
        require uint256(stor9.field_0) < stor8.length
        stor8[uint256(stor9.field_0)].field_256++
        address(stor[sha3((3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 1) + stor8[uint256(stor9.field_0)].field_256].field_0) = msg.sender
    stor[(3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 2][address(msg.sender)].field_0 += msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    emit Committed(msg.value, msg.sender);
    call treasuryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}

function convert(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor6[address(msg.sender)]:
        revert with 0, 'Only Converter'
    require -uint256(stor9.field_0) + 1 < stor8.length
    if uint8(stor8[uint256(stor9.field_0)].field_768):
        revert with 0, 'You already converted'
    require -uint256(stor9.field_0) + 1 < stor8.length
    if var32003 >= stor8[uint256(stor9.field_0)].field_1024:
        stor8[uint256(stor9.field_0)].field_1024 = 0
        if stor8[uint256(stor9.field_0)].field_1024 > 0:
            idx = 0
            while stor8[uint256(stor9.field_0)].field_1024 > idx:
                stor[idx + sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4)].field_0 = 0
                idx = idx + 1
                continue 
        require -uint256(stor9.field_0) + 1 < stor8.length
        uint8(stor8[uint256(stor9.field_0)].field_768) = 1
    require var34001 < stor8[uint256(stor9.field_0)].field_1024
    require -uint256(stor9.field_0) + 1 < stor8.length
    mem[0] = address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0)
    emit Payout(address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0), arg1 * stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0)].field_0);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0), arg1 * stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0)].field_0
    mem[96] = ext_call.return_data[0]
    s = var34001
    while ext_call.success:
        require return_data.size >= 32
        require mem[96]
        require -uint256(stor9.field_0) + 1 < stor8.length
        stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + s].field_0)].field_0 = 0
        require -uint256(stor9.field_0) + 1 < stor8.length
        if s + 1 >= stor8[uint256(stor9.field_0)].field_1024:
            stor8[uint256(stor9.field_0)].field_1024 = 0
            if stor8[uint256(stor9.field_0)].field_1024 > 0:
                mem[0] = (-3 * uint256(stor9.field_0)) + sha3(8) + 4
                idx = sha3(mem[0])
                while sha3((-3 * uint256(stor9.field_0)) + sha3(8) + 4) + stor8[uint256(stor9.field_0)].field_1024 > idx:
                    stor[idx] = 0
                    require s < stor8[uint256(stor9.field_0)].field_1024
                    require -uint256(stor9.field_0) + 1 < stor8.length
                    mem[0] = address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + s].field_0)
                    mem[32] = (-3 * uint256(stor9.field_0)) + sha3(8) + 5
                    emit Payout(address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + s].field_0), arg1 * stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0)].field_0);
                    mem[100] = address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + s].field_0)
                    mem[132] = arg1 * stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0)].field_0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + s].field_0), arg1 * stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0)].field_0
                    mem[96] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
            require -uint256(stor9.field_0) + 1 < stor8.length
            uint8(stor8[uint256(stor9.field_0)].field_768) = 1
        require s + 1 < stor8[uint256(stor9.field_0)].field_1024
        require -uint256(stor9.field_0) + 1 < stor8.length
        mem[0] = address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + s].field_256)
        mem[32] = (-3 * uint256(stor9.field_0)) + sha3(8) + 5
        emit Payout(address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + s].field_256), arg1 * stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0)].field_0);
        mem[100] = address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + s].field_256)
        mem[132] = arg1 * stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0)].field_0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + s].field_256), arg1 * stor[(-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 5][address(stor[sha3((-3 * uint256(stor9.field_0)) + ('name', 'stor8', 8) + 4) + var34001].field_0)].field_0
        mem[96] = ext_call.return_data[0]
        s = s + 1
        continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
