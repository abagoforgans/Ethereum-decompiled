contract main {




// =====================  Runtime code  =====================


#
#  - sub_57bf5212(?)
#
address owner;
address sub_7d9527d6Address;
address sub_e43e9de0Address;
address sub_dede553fAddress;
address transmuterAddress;
address stor5;
address sub_94d32364Address;

function transmuter() {
    return transmuterAddress
}

function sub_7d9527d6(?) {
    return sub_7d9527d6Address
}

function owner() {
    return owner
}

function sub_94d32364(?) {
    return sub_94d32364Address
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

function setSignerAddress(address arg1) {
    require msg.sender == owner
    stor5 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
        sub_94d32364Address = arg5
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

function createCrab(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) {
    require msg.sender == owner
    mem[96] = 8
    mem[128 len 256] = code.data[7022 len 256]
    mem[384] = 8
    mem[416 len 256] = code.data[7022 len 256]
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
