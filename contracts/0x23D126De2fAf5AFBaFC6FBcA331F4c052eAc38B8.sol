contract main {




// =====================  Runtime code  =====================


#
#  - onAddition(uint256 arg1, uint256 arg2, bytes arg3)
#
address owner;
array of uint256 snowflakeName;
array of uint256 snowflakeDescription;
uint8 callOnAddition; offset 160
uint8 callOnRemoval; offset 168
address snowflakeAddress;
address stor4;
uint256 stor4;
address stor5;
uint256 stor5;
address stor6;
uint256 hydroStakeUser;
uint256 hydroStakeDelegatedUser;
mapping of struct details;
mapping of uint256 stor10;
mapping of uint256 stor11;

function getDetails(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 'A':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'Z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _48 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _92 = mem[64]
    mem[mem[64]] = arg1.length + _48 - mem[64]
    mem[64] = arg1.length + _48 + 32
    _94 = sha3(mem[_92 + 32 len mem[_92]])
    mem[0] = sha3(mem[_92 + 32 len mem[_92]])
    if not details[mem[0]].field_768:
        revert with 0, 'HydroID is not active.'
    if details[_94].field_776:
        revert with 0, 'HydroID is not active.'
    mem[64] = arg1.length + _48 + ceil32(details[_94][2].length) + 64
    mem[arg1.length + _48 + 64] = details[_94][2].field_0
    idx = arg1.length + _48 + 64
    s = 0
    while arg1.length + _48 + details[_94][2].length + 32 > idx:
        mem[idx + 32] = details[_94][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return details[_94].field_0, 
           details[_94].field_256,
           Array(len=details[_94][2].length, data=mem[arg1.length + _48 + 64 len details[_94][2].length])
}

function getDetails(address arg1) {
    require calldata.size - 4 >= 32
    if not details[stor11[address(arg1)]].field_768:
        revert with 0, 'HydroID is not active.'
    if details[stor11[address(arg1)]].field_776:
        revert with 0, 'HydroID is not active.'
    mem[128] = details[stor11[address(arg1)]][2].field_0
    idx = 128
    s = 0
    while details[stor11[address(arg1)]][2].length + 96 > idx:
        mem[idx + 32] = details[stor11[address(arg1)]][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return details[stor11[address(arg1)]].field_0, 
           Array(len=details[stor11[address(arg1)]][2].length, data=mem[128 len details[stor11[address(arg1)]][2].length])
}

function hydroStakeUser() {
    return hydroStakeUser
}

function hydroStakeDelegatedUser() {
    return hydroStakeDelegatedUser
}

function callOnAddition() {
    return bool(callOnAddition)
}

function snowflakeDescription() {
    return snowflakeDescription[0 len snowflakeDescription.length]
}

function snowflakeName() {
    return snowflakeName[0 len snowflakeName.length]
}

function owner() {
    return owner
}

function callOnRemoval() {
    return bool(callOnRemoval)
}

function hydroIDDestroyed(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 'A':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'Z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _38 = mem[64]
    mem[mem[64]] = arg1.length + _21 - mem[64]
    mem[64] = arg1.length + _21 + 32
    mem[0] = sha3(mem[_38 + 32 len mem[_38]])
    return bool(details[mem[0]].field_776)
}

function snowflakeAddress() {
    return snowflakeAddress
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

function setOldClientRaindropAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setStakes(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 > 222222 * 10^18:
        revert with 0, 'Stake is too high.'
    hydroStakeUser = arg2
    require ext_code.size(address(stor4))
    staticcall address(stor4).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0] / 100:
        revert with 0, 'Stake is too high.'
    hydroStakeDelegatedUser = arg2
}

function setSnowflakeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    snowflakeAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x75d7e4bd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(arg1)
    call arg1.0xa759ee6f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
}

function getDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not details[stor10[arg1]].field_768:
        revert with 0, 'HydroID is not active.'
    if details[stor10[arg1]].field_776:
        revert with 0, 'HydroID is not active.'
    mem[128] = details[stor10[arg1]][2].field_0
    idx = 128
    s = 0
    while details[stor10[arg1]][2].length + 96 > idx:
        mem[idx + 32] = details[stor10[arg1]][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(details[stor10[arg1]][2].length) + 128] = details[stor10[arg1]].field_256
    mem[ceil32(details[stor10[arg1]][2].length) + 160] = 64
    mem[ceil32(details[stor10[arg1]][2].length) + 192] = details[stor10[arg1]][2].length
    if 0 < details[stor10[arg1]][2].length:
        mem[ceil32(details[stor10[arg1]][2].length) + 224] = mem[128]
        mem[ceil32(details[stor10[arg1]][2].length) + 256 len floor32(details[stor10[arg1]][2].length - 1)] = mem[160 len floor32(details[stor10[arg1]][2].length - 1)]
    return details[stor10[arg1]].field_256, 
           Array(len=details[stor10[arg1]][2].length, data=mem[ceil32(details[stor10[arg1]][2].length) + 224 len details[stor10[arg1]][2].length])
}

function checkForOldHydroID(string arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor6)
    staticcall stor6 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor6)
        staticcall stor6 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require 32 <= return_data.size
        require return_data.size >= Mask(32, -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256, 0 + 32 and Mask(32, -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256, 0 <= 4294967296
        if Mask(160, 32, arg1.length) >> 32 != arg2:
            revert with 0, 'This Hydro ID is already claimed by another address.'
}

function hydroIDAvailable(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 'A':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'Z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _38 = mem[64]
    mem[mem[64]] = arg1.length + _21 - mem[64]
    mem[64] = arg1.length + _21 + 32
    mem[0] = sha3(mem[_38 + 32 len mem[_38]])
    return not bool(details[mem[0]].field_768)
}

function onRemoval(uint256 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if snowflakeAddress != msg.sender:
        revert with 0, 'Did not originate from Snowflake.'
    require details[stor10[arg1]].field_768
    require not details[stor10[arg1]].field_776
    mem[ceil32(arg2.length) + 160] = details[stor10[arg1]].field_256
    mem[ceil32(arg2.length) + 128] = 64
    mem[ceil32(arg2.length) + 224] = details[stor10[arg1]][2].field_0
    idx = ceil32(arg2.length) + 224
    s = 0
    while ceil32(arg2.length) + details[stor10[arg1]][2].length + 224 > idx + 32:
        mem[idx + 32] = details[stor10[arg1]][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xdc495584: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], details[stor10[arg1]][2].length, mem[ceil32(arg2.length) + 224 len details[stor10[arg1]][2].length + (floor32(details[stor10[arg1]][2].length - 1) + -details[stor10[arg1]][2].length + 32 % 32)], arg1
    stor11[stor9[stor10[arg1]].field_256] = 0
    stor10[arg1] = 0
    details[stor10[arg1]].field_512 = 0
    if 31 < details[stor10[arg1]][2].length:
        idx = 0
        while details[stor10[arg1]][2].length + 31 / 32 > idx:
            details[stor10[arg1]][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    details[stor10[arg1]].field_256 = 0
    details[stor10[arg1]].field_776 = 1
    mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function hydroIDActive(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 'A':
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 'Z':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _24 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _44 = mem[64]
    mem[mem[64]] = arg1.length + _24 - mem[64]
    mem[64] = arg1.length + _24 + 32
    _46 = sha3(mem[_44 + 32 len mem[_44]])
    mem[0] = sha3(mem[_44 + 32 len mem[_44]])
    if not details[mem[0]].field_768:
        return bool(details[mem[0]].field_768)
    return not bool(details[_46].field_776)
}

function signUp(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(address(stor4))
    staticcall address(stor4).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < hydroStakeUser:
        revert with 0, 'Insufficient staked HYDRO balance.'
    require ext_code.size(address(stor5))
    staticcall address(stor5).getEIN(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2.length <= 2:
        revert with 0, 'HydroID has invalid length.'
    if arg2.length >= 33:
        revert with 0, 'HydroID has invalid length.'
    require ext_code.size(address(stor5))
    staticcall address(stor5).isResolverFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The passed EIN has not set this resolver.'
    require ext_code.size(address(stor5))
    staticcall address(stor5).isAssociatedAddressFor(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The passed address is not associated with the calling Identity.'
    require ext_code.size(stor6)
    staticcall stor6 with:
            gas gas_remaining wei
           args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg2.length:
            mem[ceil32(arg2.length) + 416 len arg2.length] = code.data[10516 len arg2.length]
        mem[ceil32(arg2.length) + 416 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 416] = mem[ceil32(arg2.length) + floor32(arg2.length) + 416] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg2.length
            if Mask(8, 248, mem[ceil32(arg2.length) + idx + 416]) < 'A':
                mem[ceil32(arg2.length) + idx + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) - 256
            else:
                if Mask(8, 248, mem[ceil32(arg2.length) + idx + 416]) > 'Z':
                    mem[ceil32(arg2.length) + idx + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) - 256
                else:
                    mem[ceil32(arg2.length) + idx + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 1)))), 0) - 256
            idx = idx + 1
            continue 
        mem[(2 * ceil32(arg2.length)) + 448 len floor32(arg2.length)] = mem[ceil32(arg2.length) + 416 len floor32(arg2.length)]
        mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32] = mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        if details[mem[ceil32(arg2.length) + 416 len floor32(arg2.length)]][mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 448 len arg2.length % 32]].field_768:
            revert with 0, 'HydroID is unavailable.'
        if stor10[ext_call.return_data[0]]:
            revert with 0, 'EIN is already mapped to a HydroID.'
        if stor11[address(arg1)]:
            revert with 0, 'Address is already mapped to a HydroID.'
        details[mem[ceil32(arg2.length) + 416 len floor32(arg2.length)]][mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 448 len arg2.length % 32]].field_0 = ext_call.return_data[0]
        details[mem[ceil32(arg2.length) + 416 len floor32(arg2.length)]][mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 448 len arg2.length % 32]].field_256 = arg1
        details[mem[ceil32(arg2.length) + 416 len floor32(arg2.length)]][mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 448 len arg2.length % 32]][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        details[mem[ceil32(arg2.length) + 416 len floor32(arg2.length)]][mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 448 len arg2.length % 32]].field_768 = 1
        details[mem[ceil32(arg2.length) + 416 len floor32(arg2.length)]][mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 448 len arg2.length % 32]].field_776 = 0
        details[mem[ceil32(arg2.length) + 416 len floor32(arg2.length)]][mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 448 len arg2.length % 32]].field_784 = 0
        stor10[ext_call.return_data[0]] = sha3(mem[ceil32(arg2.length) + 416 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 448 len arg2.length % 32])
        stor11[address(arg1)] = sha3(mem[ceil32(arg2.length) + 416 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 448 len arg2.length % 32])
    else:
        mem[ceil32(arg2.length) + 128] = 0x4bff500900000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + 132] = 32
        require ext_code.size(stor6)
        staticcall stor6 with:
                gas gas_remaining wei
               args Array(len=arg2.length, data=arg2[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require 32 <= return_data.size
        require bool(return_data.size >= 32)
        if Mask(160, 32, arg2.length) >> 32 != arg1:
            revert with 0, 'This Hydro ID is already claimed by another address.'
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 0
        if arg2.length:
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 416 len arg2.length] = code.data[10516 len arg2.length]
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 416 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 416] = mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 416] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg2.length
            if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(return_data.size) + idx + 416]) < 'A':
                mem[ceil32(arg2.length) + ceil32(return_data.size) + idx + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
            else:
                if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(return_data.size) + idx + 416]) > 'Z':
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + idx + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 32))), 0) - 256
                else:
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + idx + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')), ('var', 0)), 1)))), 0) - 256
            idx = idx + 1
            continue 
        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len floor32(arg2.length)] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 416 len floor32(arg2.length)]
        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32] = mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        if details[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len arg2.length + ceil32(arg2.length)]].field_768:
            revert with 0, 'HydroID is unavailable.'
        if stor10[ext_call.return_data[0]]:
            revert with 0, 'EIN is already mapped to a HydroID.'
        if stor11[address(arg1)]:
            revert with 0, 'Address is already mapped to a HydroID.'
        details[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len arg2.length + ceil32(arg2.length)]].field_0 = ext_call.return_data[0]
        details[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len arg2.length + ceil32(arg2.length)]].field_256 = arg1
        details[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len arg2.length + ceil32(arg2.length)]][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        details[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len arg2.length + ceil32(arg2.length)]].field_768 = 1
        details[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len arg2.length + ceil32(arg2.length)]].field_776 = 0
        details[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len arg2.length + ceil32(arg2.length)]].field_784 = 0
        stor10[ext_call.return_data[0]] = sha3(mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len arg2.length + ceil32(arg2.length)])
        stor11[address(arg1)] = sha3(mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 448 len arg2.length + ceil32(arg2.length)])
    emit 0x2036b1da: Array(len=arg2.length, data=arg2[all]), address(arg1), ext_call.return_data[0]
}



}
