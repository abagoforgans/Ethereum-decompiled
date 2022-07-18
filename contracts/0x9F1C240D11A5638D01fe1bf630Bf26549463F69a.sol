contract main {




// =====================  Runtime code  =====================


#
#  - purchase(uint256 arg1, uint256 arg2, address arg3)
#
const sub_89d6e86f(?) = 28 * 10^16

const sub_e30fc019(?) = 28 * 10^12

const ROLE_WHITELISTED = ''


address owner;
address sub_7d9527d6Address;
address sub_e43e9de0Address;
address sub_dede553fAddress;
address transmuterAddress;
address withdrawerAddress;
address prizePoolAddress;
mapping of uint256 uint;
uint32 currentPrizePool;

function totalCrabTraded() {
    return sub_9684ebba.length
}

function currentPrizePool() {
    return Mask(32, 224, currentPrizePool)
}

function prizePool() {
    return prizePoolAddress
}

function transmuter() {
    return transmuterAddress
}

function sub_7d9527d6(?) {
    return sub_7d9527d6Address
}

function owner() {
    return owner
}

function getUint(bytes4 arg1) {
    return uint[Mask(32, 224, arg1)]
}

function sub_9684ebba(?) {
    require arg1 < sub_9684ebba.length
    return sub_9684ebba[arg1]
}

function whitelist(address arg1) {
    return bool(uint8(stor[sha3(0, 0, 6)][address(arg1)]))
}

function withdrawer() {
    return withdrawerAddress
}

function sub_dede553f(?) {
    return sub_dede553fAddress
}

function sub_e43e9de0(?) {
    return sub_e43e9de0Address
}

function _fallback() payable {
    revert
}

function setWithdrawer(address arg1) {
    require msg.sender == owner
    withdrawerAddress = arg1
}

function setCurrentPrizePool(bytes4 arg1) {
    require msg.sender == owner
    currentPrizePool = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setUint(bytes4 arg1, uint256 arg2) {
    require msg.sender == owner
    uint[Mask(32, 224, arg1)] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    uint8(stor[sha3(0, 0, 6)][address(arg1)]) = 1
    emit RoleAdded('', arg1);
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    uint8(stor[sha3(0, 0, 6)][address(arg1)]) = 0
    emit RoleRemoved('', arg1);
}

function setCurrentTokenId(uint256 arg1) {
    require uint8(stor[sha3(0, 0, 6)][address(msg.sender)])
    uint[0x2133946400000000000000000000000000000000000000000000000000000000] = arg1
}

function getCurrentPeriod() {
    require uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]
    return block.timestamp, block.timestamp / uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]
}

function setAddresses(address arg1, address arg2, address arg3) {
    require msg.sender == owner
    if arg1:
        sub_7d9527d6Address = arg1
    if arg2:
        sub_e43e9de0Address = arg2
    if arg3:
        sub_dede553fAddress = arg3
}

function setAddresses(address arg1, address arg2, address arg3, address arg4) {
    require msg.sender == owner
    if arg1:
        sub_7d9527d6Address = arg1
    if arg2:
        sub_e43e9de0Address = arg2
    if arg3:
        sub_dede553fAddress = arg3
    if arg4:
        transmuterAddress = arg4
}

function withdraw(uint256 arg1) {
    require msg.sender == withdrawerAddress
    require arg1 <= eth.balance(this.address)
    call withdrawerAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require msg.sender == owner
    if arg1:
        sub_7d9527d6Address = arg1
    if arg2:
        sub_e43e9de0Address = arg2
    if arg3:
        sub_dede553fAddress = arg3
    if arg4:
        transmuterAddress = arg4
    if arg5:
        prizePoolAddress = arg5
}

function getCryptantFragments(address arg1) {
    require ext_code.size(sub_dede553fAddress)
    call sub_dede553fAddress.readUint256(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(224, 0, arg1, 'cryptant', 0))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 6
    require uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 6
    mem[ceil32(arg2.length) + 128] = bool(uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]))
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getCurrentCrabPrice() {
    if sub_9684ebba.length <= 15:
        return 28 * 10^16
    require uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]
    if uint[0x1a01d5bb00000000000000000000000000000000000000000000000000000000] != block.timestamp / uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]:
        idx = 1
        s = 0
        while idx <= 15:
            require sub_9684ebba.length - idx < sub_9684ebba.length
            mem[0] = 9
            idx = idx + 1
            s = stor[('name', 'sub_9684ebba', 9) + sub_9684ebba.length - idx] + s
            continue 
        return ((15 * uint256(stor[_11 + stor9.length - 16]) / 15 * uint[0x71df92d200000000000000000000000000000000000000000000000000000000] / 100000) + (uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] * uint[0x7decd9d600000000000000000000000000000000000000000000000000000000] / 100000))
    if uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000]:
        return uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000]
    idx = 1
    s = 0
    while idx <= 15:
        require sub_9684ebba.length - idx < sub_9684ebba.length
        mem[0] = 9
        idx = idx + 1
        s = stor[('name', 'sub_9684ebba', 9) + sub_9684ebba.length - idx] + s
        continue 
    return ((15 * uint256(stor[_13 + stor9.length - 16]) / 15 * uint[0x71df92d200000000000000000000000000000000000000000000000000000000] / 100000) + (uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] * uint[0x7decd9d600000000000000000000000000000000000000000000000000000000] / 100000))
}

function getCurrentCryptantFragmentPrice() {
    if sub_9684ebba.length <= 15:
        return 28 * 10^12
    require uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]
    if uint[0x1a01d5bb00000000000000000000000000000000000000000000000000000000] != block.timestamp / uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]:
        idx = 1
        s = 0
        while idx <= 15:
            require sub_9684ebba.length - idx < sub_9684ebba.length
            mem[0] = 9
            idx = idx + 1
            s = stor[('name', 'sub_9684ebba', 9) + sub_9684ebba.length - idx] + s
            continue 
        return ((10 * 15 * uint256(stor[_11 + stor9.length - 16]) / 15 * uint[0x71df92d200000000000000000000000000000000000000000000000000000000] / 100000) + (10 * uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] * uint[0x7decd9d600000000000000000000000000000000000000000000000000000000] / 100000) / 100000)
    if uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000]:
        return (10 * uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] / 100000)
    idx = 1
    s = 0
    while idx <= 15:
        require sub_9684ebba.length - idx < sub_9684ebba.length
        mem[0] = 9
        idx = idx + 1
        s = stor[('name', 'sub_9684ebba', 9) + sub_9684ebba.length - idx] + s
        continue 
    return ((10 * 15 * uint256(stor[_13 + stor9.length - 16]) / 15 * uint[0x71df92d200000000000000000000000000000000000000000000000000000000] / 100000) + (10 * uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] * uint[0x7decd9d600000000000000000000000000000000000000000000000000000000] / 100000) / 100000)
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _25 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _26 = mem[64]
        mem[64] = mem[64] + 64
        mem[_26] = 9
        mem[_26 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        _29 = mem[64]
        t = _26 + 32
        u = mem[64]
        s = mem[_26]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_26])] = 256^(-(mem[_26] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_26])] or mem[_26 + floor32(mem[_26]) + 32] and !(256^(-(mem[_26] % 32) + 32) - 1)
        mem[_29 + 9] = 6
        _47 = sha3(mem[mem[64] len _29 + -mem[64] + 41])
        mem[0] = address(_25)
        mem[32] = _47
        uint8(stor[_47][address(_25)]) = 0
        _50 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_26]
        _52 = mem[_26]
        s = 0
        while s < _52:
            mem[s + _50 + 64] = mem[s + _26 + 32]
            s = s + 32
            continue 
        if not _52 % 32:
            emit RoleRemoved(mem[mem[64] len _52 + _50 + -mem[64] + 64], address(_25));
        else:
            mem[floor32(_52) + _50 + 64] = mem[floor32(_52) + _50 + -(_52 % 32) + 96 len _52 % 32]
            emit RoleRemoved(mem[mem[64] len floor32(_52) + _50 + -mem[64] + 96], address(_25));
        idx = idx + 1
        continue 
}

function addAddressesToWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = 9
        mem[_30 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        _33 = mem[64]
        t = _30 + 32
        u = mem[64]
        s = mem[_30]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_30])] = 256^(-(mem[_30] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_30])] or mem[_30 + floor32(mem[_30]) + 32] and !(256^(-(mem[_30] % 32) + 32) - 1)
        mem[_33 + 9] = 6
        _55 = sha3(mem[mem[64] len _33 + -mem[64] + 41])
        mem[0] = address(_29)
        mem[32] = _55
        uint8(stor[_55][address(_29)]) = 1
        _58 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_30]
        _60 = mem[_30]
        if 0 >= mem[_30]:
            if not mem[_30] % 32:
                emit RoleAdded(address arg1, string arg2):
                               32,
                               mem[mem[64] + 32 len mem[_30] + 32],
                               address(_29),
            else:
                mem[floor32(mem[_30]) + mem[64] + 64] = mem[floor32(mem[_30]) + mem[64] + -(mem[_30] % 32) + 96 len mem[_30] % 32]
                emit RoleAdded(mem[mem[64] len floor32(_60) + _58 + -mem[64] + 96], address(_29));
        else:
            mem[mem[64] + 64] = mem[_30 + 32]
            s = 32
            while s < _60:
                mem[s + mem[64] + 64] = mem[s + _30 + 32]
                s = s + 32
                continue 
            if not _60 % 32:
                emit RoleAdded(mem[mem[64] len _60 + _58 + -mem[64] + 64], address(_29));
            else:
                mem[floor32(_60) + _58 + 64] = mem[floor32(_60) + _58 + -(_60 % 32) + 96 len _60 % 32]
                emit RoleAdded(mem[mem[64] len floor32(_60) + _58 + -mem[64] + 96], address(_29));
        idx = idx + 1
        continue 
}

function sub_7e35cbd3(?) {
    require uint8(stor[sha3(0, 0, 6)][address(msg.sender)])
    if sub_9684ebba.length <= 15:
        uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] = 28 * 10^16
    else:
        require uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]
        if uint[0x1a01d5bb00000000000000000000000000000000000000000000000000000000] != block.timestamp / uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]:
            idx = 1
            s = 0
            while idx <= 15:
                require sub_9684ebba.length - idx < sub_9684ebba.length
                mem[0] = 9
                _41 = sha3(9)
                idx = idx + 1
                s = stor[('name', 'sub_9684ebba', 9) + sub_9684ebba.length - idx] + s
                continue 
            uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] = (15 * uint256(stor[_41 + stor9.length - 16]) / 15 * uint[0x71df92d200000000000000000000000000000000000000000000000000000000] / 100000) + (uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] * uint[0x7decd9d600000000000000000000000000000000000000000000000000000000] / 100000)
        else:
            if not uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000]:
                idx = 1
                s = 0
                while idx <= 15:
                    require sub_9684ebba.length - idx < sub_9684ebba.length
                    mem[0] = 9
                    _43 = sha3(9)
                    idx = idx + 1
                    s = stor[('name', 'sub_9684ebba', 9) + sub_9684ebba.length - idx] + s
                    continue 
                uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] = (15 * uint256(stor[_43 + stor9.length - 16]) / 15 * uint[0x71df92d200000000000000000000000000000000000000000000000000000000] / 100000) + (uint[0xf14adb6a00000000000000000000000000000000000000000000000000000000] * uint[0x7decd9d600000000000000000000000000000000000000000000000000000000] / 100000)
    require uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]
    uint[0x1a01d5bb00000000000000000000000000000000000000000000000000000000] = block.timestamp / uint[0xf1305a1000000000000000000000000000000000000000000000000000000000]
    sub_9684ebba.length++
    sub_9684ebba[sub_9684ebba.length] = arg1
}

function createCrab(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) {
    require msg.sender == owner
    mem[96] = 8
    mem[128 len 256] = code.data[10600 len 256]
    mem[384] = 8
    mem[416 len 256] = code.data[10600 len 256]
    require ext_code.size(sub_7d9527d6Address)
    if arg3:
        call sub_7d9527d6Address.generateCrabHeart() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(sub_e43e9de0Address)
        if not arg4:
            call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, arg1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[704] = arg1
            mem[736] = 'gene'
            mem[672] = 36
            mem[416] = sha3(arg1, mem[772 len 4])
            mem[128] = arg3
            mem[772] = arg1
            mem[804] = 'level'
            mem[740] = 37
            mem[448] = sha3(arg1, mem[841 len 5])
            mem[160] = 1
            mem[841] = arg1
            mem[873] = 'heartValue'
            mem[809] = 42
            mem[480] = sha3(arg1, mem[915 len 10])
            mem[192] = ext_call.return_data[0]
            mem[915] = arg1
            mem[947] = 'growthValue'
            mem[883] = 43
            mem[1011 len 11] = Mask(88, 88, arg1) >> 88
            mem[512] = sha3(arg1, mem[990 len 11])
            mem[224] = ext_call.return_data[32]
            mem[958] = 0xcfc2aad200000000000000000000000000000000000000000000000000000000
            mem[962] = arg3
            require ext_code.size(transmuterAddress)
            call transmuterAddress.generateBonusForGene(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[958 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 958
            require return_data.size >= 32
            _1750 = mem[958 len 4], Mask(224, 32, arg3) >> 32
            require mem[958 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[958 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[958 len 4], Mask(224, 32, arg3) >> 32 + 958] <= 4294967296 and mem[958 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[958 len 4], Mask(224, 32, arg3) >> 32 + 958]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 990] = arg1
            mem[ceil32(return_data.size) + 1022] = 1
            mem[ceil32(return_data.size) + 1054] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 958] = 73
            mem[ceil32(return_data.size) + 1063 len 64] = arg1, 1
            mem[ceil32(return_data.size) + 1150 len 9] = Mask(72, 72, arg1) >> 72
            require 0 < mem[_1750 + 958]
            mem[ceil32(return_data.size) + 1095] = arg1
            mem[ceil32(return_data.size) + 1127] = 2
            mem[ceil32(return_data.size) + 1159] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1063] = 73
            mem[ceil32(return_data.size) + 1168 len 64] = arg1, 2
            mem[ceil32(return_data.size) + 1255 len 9] = Mask(72, 72, arg1) >> 72
            require 1 < mem[_1750 + 958]
            mem[ceil32(return_data.size) + 1200] = arg1
            mem[ceil32(return_data.size) + 1232] = 3
            mem[ceil32(return_data.size) + 1264] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1168] = 73
            mem[ceil32(return_data.size) + 1273 len 64] = arg1, 3
            mem[ceil32(return_data.size) + 1360 len 9] = Mask(72, 72, arg1) >> 72
            require 2 < mem[_1750 + 958]
            mem[ceil32(return_data.size) + 1305] = arg1
            mem[ceil32(return_data.size) + 1337] = 4
            mem[ceil32(return_data.size) + 1369] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1273] = 73
            mem[ceil32(return_data.size) + 1378 len 64] = arg1, 4
            mem[ceil32(return_data.size) + 1465 len 9] = Mask(72, 72, arg1) >> 72
            require 3 < mem[_1750 + 958]
            mem[ceil32(return_data.size) + 1478 len 0] = None
            mem[ceil32(return_data.size) + 1766 len 0] = None
            require ext_code.size(sub_dede553fAddress)
            call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                 gas gas_remaining wei
                args 64, 352, 8, mem[ceil32(return_data.size) + 1478 len 256], 8, mem[ceil32(return_data.size) + 1766 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit CrabHatched(arg1, arg3, 0, arg2, ext_call.return_data[32], msg.sender);
        else:
            call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, arg1, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[704] = arg1
            mem[736] = 'gene'
            mem[672] = 36
            mem[416] = sha3(arg1, mem[772 len 4])
            mem[128] = arg3
            mem[772] = arg1
            mem[804] = 'level'
            mem[740] = 37
            mem[448] = sha3(arg1, mem[841 len 5])
            mem[160] = 1
            mem[841] = arg1
            mem[873] = 'heartValue'
            mem[809] = 42
            mem[480] = sha3(arg1, mem[915 len 10])
            mem[192] = ext_call.return_data[0]
            mem[915] = arg1
            mem[947] = 'growthValue'
            mem[883] = 43
            mem[1011 len 11] = Mask(88, 88, arg1) >> 88
            mem[512] = sha3(arg1, mem[990 len 11])
            mem[224] = ext_call.return_data[32]
            mem[958] = 0xcfc2aad200000000000000000000000000000000000000000000000000000000
            mem[962] = arg3
            require ext_code.size(transmuterAddress)
            call transmuterAddress.generateBonusForGene(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[958 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 958
            require return_data.size >= 32
            _1751 = mem[958 len 4], Mask(224, 32, arg3) >> 32
            require mem[958 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[958 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[958 len 4], Mask(224, 32, arg3) >> 32 + 958] <= 4294967296 and mem[958 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[958 len 4], Mask(224, 32, arg3) >> 32 + 958]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 990] = arg1
            mem[ceil32(return_data.size) + 1022] = 1
            mem[ceil32(return_data.size) + 1054] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 958] = 73
            mem[ceil32(return_data.size) + 1063 len 64] = arg1, 1
            mem[ceil32(return_data.size) + 1150 len 9] = Mask(72, 72, arg1) >> 72
            require 0 < mem[_1751 + 958]
            mem[ceil32(return_data.size) + 1095] = arg1
            mem[ceil32(return_data.size) + 1127] = 2
            mem[ceil32(return_data.size) + 1159] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1063] = 73
            mem[ceil32(return_data.size) + 1168 len 64] = arg1, 2
            mem[ceil32(return_data.size) + 1255 len 9] = Mask(72, 72, arg1) >> 72
            require 1 < mem[_1751 + 958]
            mem[ceil32(return_data.size) + 1200] = arg1
            mem[ceil32(return_data.size) + 1232] = 3
            mem[ceil32(return_data.size) + 1264] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1168] = 73
            mem[ceil32(return_data.size) + 1273 len 64] = arg1, 3
            mem[ceil32(return_data.size) + 1360 len 9] = Mask(72, 72, arg1) >> 72
            require 2 < mem[_1751 + 958]
            mem[ceil32(return_data.size) + 1305] = arg1
            mem[ceil32(return_data.size) + 1337] = 4
            mem[ceil32(return_data.size) + 1369] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1273] = 73
            mem[ceil32(return_data.size) + 1378 len 64] = arg1, 4
            mem[ceil32(return_data.size) + 1465 len 9] = Mask(72, 72, arg1) >> 72
            require 3 < mem[_1751 + 958]
            mem[ceil32(return_data.size) + 1478 len 0] = None
            mem[ceil32(return_data.size) + 1766 len 0] = None
            require ext_code.size(sub_dede553fAddress)
            call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                 gas gas_remaining wei
                args 64, 352, 8, mem[ceil32(return_data.size) + 1478 len 256], 8, mem[ceil32(return_data.size) + 1766 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit CrabHatched(arg1, arg3, arg4, arg2, ext_call.return_data[32], msg.sender);
    else:
        call sub_7d9527d6Address.generateCrabGene(bool arg1, bool arg2) with:
             gas gas_remaining wei
            args 0, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_code.size(sub_7d9527d6Address)
        call sub_7d9527d6Address.generateCrabHeart() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(sub_e43e9de0Address)
        if not arg4:
            call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, arg1, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[704] = arg1
            mem[736] = 'gene'
            mem[672] = 36
            mem[416] = sha3(arg1, ext_call.return_data[100 len 4])
            mem[128] = ext_call.return_data[0]
            mem[772] = arg1
            mem[804] = 'level'
            mem[740] = 37
            mem[448] = sha3(arg1, mem[841 len 5])
            mem[160] = 1
            mem[841] = arg1
            mem[873] = 'heartValue'
            mem[809] = 42
            mem[480] = sha3(arg1, mem[915 len 10])
            mem[192] = ext_call.return_data[0]
            mem[915] = arg1
            mem[947] = 'growthValue'
            mem[883] = 43
            mem[1011 len 11] = Mask(88, 88, arg1) >> 88
            mem[512] = sha3(arg1, mem[990 len 11])
            mem[224] = ext_call.return_data[32]
            mem[958] = 0xcfc2aad200000000000000000000000000000000000000000000000000000000
            mem[962] = ext_call.return_data[0]
            require ext_code.size(transmuterAddress)
            call transmuterAddress.generateBonusForGene(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[958 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 958
            require return_data.size >= 32
            _1752 = mem[958 len 4], ext_call.return_data[0 len 28]
            require mem[958 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[958 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[958 len 4], ext_call.return_data[0 len 28] + 958] <= 4294967296 and mem[958 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[958 len 4], ext_call.return_data[0 len 28] + 958]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 990] = arg1
            mem[ceil32(return_data.size) + 1022] = 1
            mem[ceil32(return_data.size) + 1054] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 958] = 73
            mem[ceil32(return_data.size) + 1063 len 64] = arg1, 1
            mem[ceil32(return_data.size) + 1150 len 9] = Mask(72, 72, arg1) >> 72
            require 0 < mem[_1752 + 958]
            mem[ceil32(return_data.size) + 1095] = arg1
            mem[ceil32(return_data.size) + 1127] = 2
            mem[ceil32(return_data.size) + 1159] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1063] = 73
            mem[ceil32(return_data.size) + 1168 len 64] = arg1, 2
            mem[ceil32(return_data.size) + 1255 len 9] = Mask(72, 72, arg1) >> 72
            require 1 < mem[_1752 + 958]
            mem[ceil32(return_data.size) + 1200] = arg1
            mem[ceil32(return_data.size) + 1232] = 3
            mem[ceil32(return_data.size) + 1264] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1168] = 73
            mem[ceil32(return_data.size) + 1273 len 64] = arg1, 3
            mem[ceil32(return_data.size) + 1360 len 9] = Mask(72, 72, arg1) >> 72
            require 2 < mem[_1752 + 958]
            mem[ceil32(return_data.size) + 1305] = arg1
            mem[ceil32(return_data.size) + 1337] = 4
            mem[ceil32(return_data.size) + 1369] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1273] = 73
            mem[ceil32(return_data.size) + 1378 len 64] = arg1, 4
            mem[ceil32(return_data.size) + 1465 len 9] = Mask(72, 72, arg1) >> 72
            require 3 < mem[_1752 + 958]
            mem[ceil32(return_data.size) + 1478 len 0] = None
            mem[ceil32(return_data.size) + 1766 len 0] = None
            require ext_code.size(sub_dede553fAddress)
            call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                 gas gas_remaining wei
                args 64, 352, 8, mem[ceil32(return_data.size) + 1478 len 256], 8, mem[ceil32(return_data.size) + 1766 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit CrabHatched(arg1, ext_call.return_data[0], ext_call.return_data[32], arg2, ext_call.return_data[32], msg.sender);
        else:
            call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, arg1, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[704] = arg1
            mem[736] = 'gene'
            mem[672] = 36
            mem[416] = sha3(arg1, ext_call.return_data[100 len 4])
            mem[128] = ext_call.return_data[0]
            mem[772] = arg1
            mem[804] = 'level'
            mem[740] = 37
            mem[448] = sha3(arg1, mem[841 len 5])
            mem[160] = 1
            mem[841] = arg1
            mem[873] = 'heartValue'
            mem[809] = 42
            mem[480] = sha3(arg1, mem[915 len 10])
            mem[192] = ext_call.return_data[0]
            mem[915] = arg1
            mem[947] = 'growthValue'
            mem[883] = 43
            mem[1011 len 11] = Mask(88, 88, arg1) >> 88
            mem[512] = sha3(arg1, mem[990 len 11])
            mem[224] = ext_call.return_data[32]
            mem[958] = 0xcfc2aad200000000000000000000000000000000000000000000000000000000
            mem[962] = ext_call.return_data[0]
            require ext_code.size(transmuterAddress)
            call transmuterAddress.generateBonusForGene(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[958 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 958
            require return_data.size >= 32
            _1753 = mem[958 len 4], ext_call.return_data[0 len 28]
            require mem[958 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[958 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[958 len 4], ext_call.return_data[0 len 28] + 958] <= 4294967296 and mem[958 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[958 len 4], ext_call.return_data[0 len 28] + 958]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 990] = arg1
            mem[ceil32(return_data.size) + 1022] = 1
            mem[ceil32(return_data.size) + 1054] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 958] = 73
            mem[ceil32(return_data.size) + 1063 len 64] = arg1, 1
            mem[ceil32(return_data.size) + 1150 len 9] = Mask(72, 72, arg1) >> 72
            require 0 < mem[_1753 + 958]
            mem[ceil32(return_data.size) + 1095] = arg1
            mem[ceil32(return_data.size) + 1127] = 2
            mem[ceil32(return_data.size) + 1159] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1063] = 73
            mem[ceil32(return_data.size) + 1168 len 64] = arg1, 2
            mem[ceil32(return_data.size) + 1255 len 9] = Mask(72, 72, arg1) >> 72
            require 1 < mem[_1753 + 958]
            mem[ceil32(return_data.size) + 1200] = arg1
            mem[ceil32(return_data.size) + 1232] = 3
            mem[ceil32(return_data.size) + 1264] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1168] = 73
            mem[ceil32(return_data.size) + 1273 len 64] = arg1, 3
            mem[ceil32(return_data.size) + 1360 len 9] = Mask(72, 72, arg1) >> 72
            require 2 < mem[_1753 + 958]
            mem[ceil32(return_data.size) + 1305] = arg1
            mem[ceil32(return_data.size) + 1337] = 4
            mem[ceil32(return_data.size) + 1369] = 0x70617274426f6e757300000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1273] = 73
            mem[ceil32(return_data.size) + 1378 len 64] = arg1, 4
            mem[ceil32(return_data.size) + 1465 len 9] = Mask(72, 72, arg1) >> 72
            require 3 < mem[_1753 + 958]
            mem[ceil32(return_data.size) + 1478 len 0] = None
            mem[ceil32(return_data.size) + 1766 len 0] = None
            require ext_code.size(sub_dede553fAddress)
            call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                 gas gas_remaining wei
                args 64, 352, 8, mem[ceil32(return_data.size) + 1478 len 256], 8, mem[ceil32(return_data.size) + 1766 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit CrabHatched(arg1, ext_call.return_data[0], arg4, arg2, ext_call.return_data[32], msg.sender);
}



}
