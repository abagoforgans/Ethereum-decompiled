contract main {




// =====================  Runtime code  =====================


#
#  - createEstateWithMetadata(int256[] arg1, int256[] arg2, address arg3, string arg4)
#
const decimals = 0

const GET_METADATA = Mask(32, 224, sha3(Mask(160, 96, 'getMetadata(uint256)') >> 96))


address currentContractAddress;
address proxyOwner;
address owner;
array of uint256 name;
array of uint256 symbol;
array of uint256 description;
uint256 totalSupply;
array of struct tokenOfOwnerByIndex;
mapping of address ownerOfLand;
mapping of uint256 stor9;
array of struct stor10;
mapping of uint8 stor11;
mapping of address approved;
mapping of uint256 latestPing;
mapping of address updateOperator;
address estateRegistryAddress;
mapping of uint8 stor17;
mapping of uint8 stor18;

function proxyOwner() {
    return proxyOwner
}

function name() {
    return uint256(name[0 len name.length].field_0)
}

function updateManager(address arg1, address arg2) {
    return bool(stor18[arg1][arg2])
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function ownerOfLand(int256 arg1, int256 arg2) {
    if -1 * 10^6 >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    return ownerOfLand[uint128(arg2) or arg1 << 128]
}

function totalSupply() {
    return totalSupply
}

function latestPing(address arg1) {
    return latestPing[arg1]
}

function authorizedDeploy(address arg1) {
    return bool(stor17[arg1])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg2 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    require arg2 < 0x80000000000000000000000000000000
    require arg2 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    return uint256(tokenOfOwnerByIndex[address(arg1)][arg2].field_0)
}

function exists(uint256 arg1) {
    return bool(ownerOfLand[arg1])
}

function ownerOf(uint256 arg1) {
    return ownerOfLand[arg1]
}

function balanceOf(address arg1) {
    return uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
}

function currentContract() {
    return currentContractAddress
}

function description() {
    return description[0 len description.length]
}

function owner() {
    return owner
}

function symbol() {
    return uint256(symbol[0 len symbol.length].field_0)
}

function updateOperator(uint256 arg1) {
    return updateOperator[arg1]
}

function exists(int256 arg1, int256 arg2) {
    if -1 * 10^6 >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    return bool(ownerOfLand[uint128(arg2) or arg1 << 128])
}

function estateRegistry() {
    return estateRegistryAddress
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor11[address(arg1)][address(arg2)])
}

function getApprovedAddress(uint256 arg1) {
    return approved[arg1]
}

function _fallback() payable {
    revert
}

function ping() {
    latestPing[msg.sender] = block.timestamp
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if owner == arg1:
        revert with 0, 'Cannot transfer to yourself'
    owner = arg1
}

function isUpdateAuthorized(address arg1, uint256 arg2) {
    if ownerOfLand[arg2] == arg1:
        return True
    if updateOperator[arg2] == arg1:
        return True
    return bool(stor18[stor8[arg2]][address(arg1)])
}

function setLatestToNow(address arg1) {
    if proxyOwner != msg.sender:
        if not stor11[address(msg.sender)][address(arg1)]:
            revert with 0, 'Unauthorized user'
    latestPing[address(arg1)] = block.timestamp
}

function isAuthorized(address arg1, uint256 arg2) {
    require arg1
    if arg1 == ownerOfLand[arg2]:
        return 1
    if stor11[stor8[arg2]][address(arg1)]:
        return bool(stor11[stor8[arg2]][address(arg1)])
    return (approved[arg2] == arg1)
}

function setEstateRegistry(address arg1) {
    if proxyOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function can only be calle by the proxy owner'
    estateRegistryAddress = arg1
    emit EstateRegistrySet(arg1);
}

function approve(address arg1, uint256 arg2) {
    if ownerOfLand[arg2] != msg.sender:
        require stor11[address(msg.sender)][stor8[arg2]]
    require ownerOfLand[arg2] != arg1
    if approved[arg2] != arg1:
        approved[arg2] = arg1
        emit Approval(ownerOfLand[arg2], arg1, arg2);
}

function setApprovalForAll(address arg1, bool arg2) {
    if not arg2:
        require stor11[address(msg.sender)][address(arg1)]
        stor11[address(msg.sender)][address(arg1)] = 0
    else:
        require not stor11[address(msg.sender)][address(arg1)]
        stor11[address(msg.sender)][address(arg1)] = 1
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setUpdateOperator(uint256 arg1, address arg2) {
    require msg.sender
    if ownerOfLand[arg1] != msg.sender:
        if not stor11[stor8[arg1]][address(msg.sender)]:
            if approved[arg1] != msg.sender:
                if not stor18[stor8[arg1]][msg.sender]:
                    revert with 0, 'unauthorized user'
    updateOperator[arg1] = arg2
    emit UpdateOperator(arg1, arg2);
}

function forbidDeploy(address arg1) {
    if proxyOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function can only be calle by the proxy owner'
    if not arg1:
        revert with 0, 'invalid address'
    if not stor17[address(arg1)]:
        revert with 0, 'address is already forbidden'
    stor17[address(arg1)] = 0
    emit DeployForbidden(msg.sender, arg1);
}

function authorizeDeploy(address arg1) {
    if proxyOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function can only be calle by the proxy owner'
    if not arg1:
        revert with 0, 'invalid address'
    if stor17[address(arg1)]:
        revert with 0, 'address is already authorized'
    stor17[address(arg1)] = 1
    emit DeployAuthorized(msg.sender, arg1);
}

function setUpdateManager(address arg1, address arg2, bool arg3) {
    if msg.sender == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The operator should be different from owner'
    if arg1 != msg.sender:
        if not stor11[address(arg1)][address(msg.sender)]:
            revert with 0, 'Unauthorized user'
    stor18[address(arg1)][address(arg2)] = uint8(arg3)
    emit UpdateManager(arg3, arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == 0xffffffff00000000000000000000000000000000000000000000000000000000:
        return 0
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7c0633c600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function encodeTokenId(int256 arg1, int256 arg2) {
    if -1 * 10^6 >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    return uint128(arg1), uint128(arg2)
}

function initialize(bytes arg1) {
    uint8(name.length) = 34
    Mask(248, 0, name.length.field_8) = 'Decentraland LAND' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        uint256(name[idx].field_0) = 0
        idx = idx + 1
        continue 
    uint8(symbol.length) = 8
    Mask(248, 0, symbol.length.field_8) = 'LAND' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        uint256(symbol[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[256] = 'Contract that stores the Decentr'
    mem[288] = 'aland LAND registry'
    description.length = 103
    s = 0
    idx = 256
    while 307 > idx:
        description[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while description.length + 31 / 32 > idx:
        description[idx] = 0
        idx = idx + 1
        continue 
}

function assignNewParcel(int256 arg1, int256 arg2, address arg3) {
    if proxyOwner != msg.sender:
        if not stor17[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'This function can only be calle by an authorized deployer'
    if -1 * 10^6 >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    require not ownerOfLand[uint128(arg2) or arg1 << 128]
    ownerOfLand[uint128(arg2) or arg1 << 128] = arg3
    uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
    uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(arg2)
    uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(arg1)
    stor9[uint128(arg2) or arg1 << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(0, arg3, uint128(arg2) or arg1 << 128);
}

function ownerOfLandMany(int256[] arg1, int256[] arg2) {
    if arg1.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dYou should supply at least one coordinate'
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should have the same length'
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[14770 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
            revert with 0, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg1 + 36)] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg2 + 36)] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        mem[32] = 8
        require idx < arg1.length
        mem[(32 * idx) + 128] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function tokensOf(address arg1) {
    if not uint256(tokenOfOwnerByIndex[address(arg1)].field_0):
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 160] = uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 192 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))] = mem[128 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))]
        return memory
          from (32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128
           len (96 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 64
    mem[128] = uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = uint256(tokenOfOwnerByIndex[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 192 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))] = mem[128 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))]
    return Array(len=uint256(tokenOfOwnerByIndex[address(arg1)].field_0), data=mem[128 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))], mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 192 len (32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) - floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))]), 
}

function updateLandData(int256 arg1, int256 arg2, string arg3) {
    if -1 * 10^6 >= arg1:
        revert with 0, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0, 'The coordinates should be inside bounds'
    if ownerOfLand[uint128(arg2) or arg1 << 128] != msg.sender:
        require msg.sender
        if ownerOfLand[uint128(arg2) or arg1 << 128] != msg.sender:
            if not stor11[stor8[uint128(arg2) or arg1 << 128]][address(msg.sender)]:
                if approved[uint128(arg2) or arg1 << 128] != msg.sender:
                    if ownerOfLand[uint128(arg2) or arg1 << 128] != msg.sender:
                        if updateOperator[uint128(arg2) or arg1 << 128] != msg.sender:
                            if not stor18[stor8[uint128(arg2) or arg1 << 128]][address(msg.sender)]:
                                revert with 0, 'msg.sender is not authorized to update'
    if -1 * 10^6 >= arg1:
        revert with 0, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0, 'The coordinates should be inside bounds'
    uint256(stor10[uint128(arg2) or arg1 << 128][].field_0) = Array(len=arg3.length, data=arg3[all])
    emit Update(Array(len=arg3.length, data=arg3[all]), uint128(arg2) or arg1 << 128, ownerOfLand[uint128(arg2) or arg1 << 128], msg.sender);
}

function assignMultipleParcels(int256[] arg1, int256[] arg2, address arg3) {
    if proxyOwner != msg.sender:
        if not stor17[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'This function can only be calle by an authorized deployer'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg1 + 36)] >= 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg2 + 36)] >= 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        require not ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
        ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
        uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
        uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
        uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
        mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        mem[32] = 9
        stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
        require totalSupply + 1 >= totalSupply
        totalSupply++
        emit Transfer(0, arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if estateRegistryAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EstateRegistry unsafe transfers are not allowed'
    updateOperator[arg3] = 0
    require msg.sender
    if ownerOfLand[arg3] != msg.sender:
        if not stor11[stor8[arg3]][address(msg.sender)]:
            require approved[arg3] == msg.sender
    require arg2
    require ownerOfLand[arg3] != arg2
    require ownerOfLand[arg3] == arg1
    if ownerOfLand[arg3] == ownerOfLand[arg3]:
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(ownerOfLand[arg3], 0, arg3);
    require 1 <= uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    ownerOfLand[arg3] = 0
    require stor9[arg3] < uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[arg3]][stor9[arg3]].field_0) = uint256(tokenOfOwnerByIndex[stor8[arg3]][uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[arg3]][uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)--
    if uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) > uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1
        while uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[arg3]][idx].field_0) = 0
            idx = idx + 1
            continue 
    if not uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0):
        uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) = 0
        idx = 0
        while uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[arg3]][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[uint256(stor7[stor8[arg3]][uint256(stor7[stor8[arg3]].field_0)].field_0)] = stor9[arg3]
    require 1 <= totalSupply
    totalSupply--
    ownerOfLand[arg3] = arg2
    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = arg3
    stor9[arg3] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(ownerOfLand[arg3], arg2, arg3);
}

function decodeTokenId(uint256 arg1) {
    if not Mask(1, 255, arg1):
        if uint128(arg1) <= -1 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        if uint128(arg1) >= 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        if not Mask(1, 127, arg1):
            if -1 * 10^6 >= uint128(arg1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
            if uint128(arg1) >= 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
            return arg1 << 128, uint128(arg1)
        if -1 * 10^6 >= uint128(arg1) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        if uint128(arg1) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000 >= 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        return arg1 << 128, test266151307(), uint128(arg1)
    if uint128(arg1) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000 <= -1 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if uint128(arg1) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if not Mask(1, 127, arg1):
        if -1 * 10^6 >= uint128(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        if uint128(arg1) >= 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
        return test266151307(), uint128(arg1), uint128(arg1)
    if -1 * 10^6 >= uint128(arg1) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if uint128(arg1) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    return test266151307(), uint128(arg1), test266151307(), uint128(arg1)
}

function tokenMetadata(uint256 arg1) {
    if ext_code.size(ownerOfLand[arg1]) <= 0:
        mem[128] = uint256(stor10[arg1].field_0)
        idx = 128
        s = 0
        while stor10[arg1].length + 96 > idx:
            mem[idx + 32] = uint256(stor10[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor10[arg1].length, data=mem[128 len stor10[arg1].length])
    if estateRegistryAddress == ownerOfLand[arg1]:
        mem[128] = uint256(stor10[arg1].field_0)
        idx = 128
        s = 0
        while stor10[arg1].length + 96 > idx:
            mem[idx + 32] = uint256(stor10[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor10[arg1].length, data=mem[128 len stor10[arg1].length])
    require ext_code.size(ownerOfLand[arg1])
    call ownerOfLand[arg1].supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, sha3('getMetadata(uint256)'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[128] = uint256(stor10[arg1].field_0)
        idx = 128
        s = 0
        while stor10[arg1].length + 96 > idx:
            mem[idx + 32] = uint256(stor10[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor10[arg1].length, data=mem[128 len stor10[arg1].length])
    mem[96] = 0xa574cea400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(ownerOfLand[arg1])
    call ownerOfLand[arg1].getMetadata(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _36 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_36 + 96]
    _82 = mem[_36 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_36 + 96])] = mem[_36 + 128 len ceil32(mem[_36 + 96])]
    if not _82 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _82 + 32]
    mem[floor32(_82) + ceil32(return_data.size) + 160] = mem[floor32(_82) + ceil32(return_data.size) + -(_82 % 32) + 192 len _82 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_82) + 64]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    updateOperator[arg3] = 0
    require msg.sender
    if ownerOfLand[arg3] != msg.sender:
        if not stor11[stor8[arg3]][address(msg.sender)]:
            require approved[arg3] == msg.sender
    require arg2
    require ownerOfLand[arg3] != arg2
    require ownerOfLand[arg3] == arg1
    if ownerOfLand[arg3] == ownerOfLand[arg3]:
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(ownerOfLand[arg3], 0, arg3);
    require 1 <= uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    ownerOfLand[arg3] = 0
    require stor9[arg3] < uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[arg3]][stor9[arg3]].field_0) = uint256(tokenOfOwnerByIndex[stor8[arg3]][uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[arg3]][uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)--
    if uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) > uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1
        while uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[arg3]][idx].field_0) = 0
            idx = idx + 1
            continue 
    if not uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0):
        uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) = 0
        idx = 0
        while uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[arg3]][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[uint256(stor7[stor8[arg3]][uint256(stor7[stor8[arg3]].field_0)].field_0)] = stor9[arg3]
    require 1 <= totalSupply
    totalSupply--
    ownerOfLand[arg3] = arg2
    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = arg3
    stor9[arg3] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(ownerOfLand[arg3], arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), ownerOfLand[arg3], arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    updateOperator[arg3] = 0
    require msg.sender
    if ownerOfLand[arg3] != msg.sender:
        if not stor11[stor8[arg3]][address(msg.sender)]:
            require approved[arg3] == msg.sender
    require arg2
    require ownerOfLand[arg3] != arg2
    require ownerOfLand[arg3] == arg1
    if ownerOfLand[arg3] == ownerOfLand[arg3]:
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(ownerOfLand[arg3], 0, arg3);
    require 1 <= uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    ownerOfLand[arg3] = 0
    require stor9[arg3] < uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[arg3]][stor9[arg3]].field_0) = uint256(tokenOfOwnerByIndex[stor8[arg3]][uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[arg3]][uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0)--
    if uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) > uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) - 1
        while uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[arg3]][idx].field_0) = 0
            idx = idx + 1
            continue 
    if not uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0):
        uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) = 0
        idx = 0
        while uint256(tokenOfOwnerByIndex[stor8[arg3]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[arg3]][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[uint256(stor7[stor8[arg3]][uint256(stor7[stor8[arg3]].field_0)].field_0)] = stor9[arg3]
    require 1 <= totalSupply
    totalSupply--
    ownerOfLand[arg3] = arg2
    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = arg3
    stor9[arg3] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(ownerOfLand[arg3], arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, ownerOfLand[arg3], arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function landData(int256 arg1, int256 arg2) {
    if -1 * 10^6 >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if ext_code.size(ownerOfLand[uint128(arg2) or arg1 << 128]) <= 0:
        mem[128] = uint256(stor10[uint128(arg2) or arg1 << 128].field_0)
        idx = 128
        s = 0
        while stor10[uint128(arg2) or arg1 << 128].length + 96 > idx:
            mem[idx + 32] = uint256(stor10[uint128(arg2) or arg1 << 128][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor10[uint128(arg2) or arg1 << 128].length, data=mem[128 len stor10[uint128(arg2) or arg1 << 128].length])
    if estateRegistryAddress == ownerOfLand[uint128(arg2) or arg1 << 128]:
        mem[128] = uint256(stor10[uint128(arg2) or arg1 << 128].field_0)
        idx = 128
        s = 0
        while stor10[uint128(arg2) or arg1 << 128].length + 96 > idx:
            mem[idx + 32] = uint256(stor10[uint128(arg2) or arg1 << 128][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor10[uint128(arg2) or arg1 << 128].length, data=mem[128 len stor10[uint128(arg2) or arg1 << 128].length])
    require ext_code.size(ownerOfLand[uint128(arg2) or arg1 << 128])
    call ownerOfLand[uint128(arg2) or arg1 << 128].supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, sha3('getMetadata(uint256)'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[128] = uint256(stor10[uint128(arg2) or arg1 << 128].field_0)
        idx = 128
        s = 0
        while stor10[uint128(arg2) or arg1 << 128].length + 96 > idx:
            mem[idx + 32] = uint256(stor10[uint128(arg2) or arg1 << 128][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor10[uint128(arg2) or arg1 << 128].length, data=mem[128 len stor10[uint128(arg2) or arg1 << 128].length])
    mem[96] = 0xa574cea400000000000000000000000000000000000000000000000000000000
    mem[116 len 16] = uint128(arg2)
    mem[100 len 16] = uint128(arg1)
    require ext_code.size(ownerOfLand[uint128(arg2) or arg1 << 128])
    call ownerOfLand[uint128(arg2) or arg1 << 128].getMetadata(uint256 arg1) with:
         gas gas_remaining wei
        args uint128(arg1), uint128(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _51 = mem[96 len 4], uint128(arg1), Mask(96, 32, arg2) >> 32
    require mem[96 len 4], uint128(arg1), Mask(96, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], uint128(arg1), Mask(96, 32, arg2) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], uint128(arg1), Mask(96, 32, arg2) >> 32 + 96] + mem[96 len 4], uint128(arg1), Mask(96, 32, arg2) >> 32 + 32 and mem[mem[96 len 4], uint128(arg1), Mask(96, 32, arg2) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_51 + 96]
    _90 = mem[_51 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_51 + 96])] = mem[_51 + 128 len ceil32(mem[_51 + 96])]
    if not _90 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _90 + 32]
    mem[floor32(_90) + ceil32(return_data.size) + 160] = mem[floor32(_90) + ceil32(return_data.size) + -(_90 % 32) + 192 len _90 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_90) + 64]
}

function transferLand(int256 arg1, int256 arg2, address arg3) {
    if -1 * 10^6 >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    updateOperator[uint128(arg2) or arg1 << 128] = 0
    require msg.sender
    if ownerOfLand[uint128(arg2) or arg1 << 128] != msg.sender:
        if not stor11[stor8[uint128(arg2) or arg1 << 128]][address(msg.sender)]:
            require approved[uint128(arg2) or arg1 << 128] == msg.sender
    require arg3
    require ownerOfLand[uint128(arg2) or arg1 << 128] != arg3
    require ownerOfLand[uint128(arg2) or arg1 << 128] == ownerOfLand[uint128(arg2) or arg1 << 128]
    if ownerOfLand[uint128(arg2) or arg1 << 128] == ownerOfLand[uint128(arg2) or arg1 << 128]:
        if approved[uint128(arg2) or arg1 << 128]:
            approved[uint128(arg2) or arg1 << 128] = 0
            emit Approval(ownerOfLand[uint128(arg2) or arg1 << 128], 0, uint128(arg2) or arg1 << 128);
    require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)
    ownerOfLand[uint128(arg2) or arg1 << 128] = 0
    require stor9[uint128(arg2) or arg1 << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][stor9[uint128(arg2) or arg1 << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)--
    if uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) > uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) - 1
        while uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][idx].field_0) = 0
            idx = idx + 1
            continue 
    if not uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0):
        uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) = 0
        idx = 0
        while uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor9[uint128(arg2) or arg1 << 128] = 0
    stor9[uint256(stor7[stor8[uint128(arg2) or arg1 << 128]][uint256(stor7[stor8[uint128(arg2) or arg1 << 128]].field_0)].field_0)] = stor9[uint128(arg2) or arg1 << 128]
    require 1 <= totalSupply
    totalSupply--
    ownerOfLand[uint128(arg2) or arg1 << 128] = arg3
    uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
    uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(arg2)
    uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(arg1)
    stor9[uint128(arg2) or arg1 << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(ownerOfLand[uint128(arg2) or arg1 << 128], arg3, uint128(arg2) or arg1 << 128);
    if ext_code.size(arg3) > 0:
        require ext_code.size(arg3)
        call arg3.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), ownerOfLand[uint128(arg2) or arg1 << 128], uint128(arg1), uint128(arg2), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function transferLandToEstate(int256 arg1, int256 arg2, uint256 arg3) {
    require ext_code.size(estateRegistryAddress)
    call estateRegistryAddress.0x6352211e with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must own the Estate you want to transfer to'
    if -1 * 10^6 >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    updateOperator[uint128(arg2) or arg1 << 128] = 0
    require msg.sender
    if ownerOfLand[uint128(arg2) or arg1 << 128] != msg.sender:
        if not stor11[stor8[uint128(arg2) or arg1 << 128]][address(msg.sender)]:
            require approved[uint128(arg2) or arg1 << 128] == msg.sender
    require estateRegistryAddress
    require ownerOfLand[uint128(arg2) or arg1 << 128] != estateRegistryAddress
    require ownerOfLand[uint128(arg2) or arg1 << 128] == ownerOfLand[uint128(arg2) or arg1 << 128]
    if ownerOfLand[uint128(arg2) or arg1 << 128] == ownerOfLand[uint128(arg2) or arg1 << 128]:
        if approved[uint128(arg2) or arg1 << 128]:
            approved[uint128(arg2) or arg1 << 128] = 0
            emit Approval(ownerOfLand[uint128(arg2) or arg1 << 128], 0, uint128(arg2) or arg1 << 128);
    require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)
    ownerOfLand[uint128(arg2) or arg1 << 128] = 0
    require stor9[uint128(arg2) or arg1 << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][stor9[uint128(arg2) or arg1 << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)
    uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0)--
    if uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) > uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) - 1
        while uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][idx].field_0) = 0
            idx = idx + 1
            continue 
    if not uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0):
        uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) = 0
        idx = 0
        while uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor8[uint128(arg2) or arg1 << 128]][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor9[uint128(arg2) or arg1 << 128] = 0
    stor9[uint256(stor7[stor8[uint128(arg2) or arg1 << 128]][uint256(stor7[stor8[uint128(arg2) or arg1 << 128]].field_0)].field_0)] = stor9[uint128(arg2) or arg1 << 128]
    require 1 <= totalSupply
    totalSupply--
    ownerOfLand[uint128(arg2) or arg1 << 128] = estateRegistryAddress
    uint256(tokenOfOwnerByIndex[stor16].field_0)++
    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(arg2)
    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(arg1)
    stor9[uint128(arg2) or arg1 << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(ownerOfLand[uint128(arg2) or arg1 << 128], estateRegistryAddress, uint128(arg2) or arg1 << 128);
    if ext_code.size(estateRegistryAddress) > 0:
        require ext_code.size(estateRegistryAddress)
        call estateRegistryAddress.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, ownerOfLand[uint128(arg2) or arg1 << 128], uint128(arg1), uint128(arg2), 128, 32, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function landOf(address arg1) {
    if not uint256(tokenOfOwnerByIndex[address(arg1)].field_0):
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128] = uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    else:
        mem[128 len 32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)] = code.data[14770 len 32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)]
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128] = uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 160 len 32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)] = code.data[14770 len 32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)]
    idx = 0
    s = 0
    s = 0
    while idx < uint256(tokenOfOwnerByIndex[address(arg1)].field_0):
        mem[32] = 7
        require idx < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 7)
        if not Mask(1, 127, uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128)):
            if uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128) <= -1 * 10^6:
                revert with 0, 'The coordinates should be inside bounds'
            if uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128) >= 10^6:
                revert with 0, 'The coordinates should be inside bounds'
            if not Mask(1, 127, uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0)):
                if -1 * 10^6 >= uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0):
                    revert with 0, 'The coordinates should be inside bounds'
                if uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) >= 10^6:
                    revert with 0, 'The coordinates should be inside bounds'
                require idx < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                mem[(32 * idx) + 128] = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128)
                require idx < mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128]
                mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + (32 * idx) + 160] = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0)
                idx = idx + 1
                s = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0)
                s = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128)
                continue 
            if -1 * 10^6 >= uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000:
                revert with 0, 'The coordinates should be inside bounds'
            if uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000 >= 10^6:
                revert with 0, 'The coordinates should be inside bounds'
            require idx < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            mem[(32 * idx) + 128] = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128)
            require idx < mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128]
            mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + (32 * idx) + 160] = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
            idx = idx + 1
            s = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
            s = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128)
            continue 
        if uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000 <= -1 * 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        if uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000 >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        if not Mask(1, 127, uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0)):
            if -1 * 10^6 >= uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0):
                revert with 0, 'The coordinates should be inside bounds'
            if uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) >= 10^6:
                revert with 0, 'The coordinates should be inside bounds'
            require idx < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            mem[(32 * idx) + 128] = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
            require idx < mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128]
            mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + (32 * idx) + 160] = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0)
            idx = idx + 1
            s = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0)
            s = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
            continue 
        if -1 * 10^6 >= uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000:
            revert with 0, 'The coordinates should be inside bounds'
        if uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000 >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        require idx < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        mem[(32 * idx) + 128] = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
        require idx < mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128]
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + (32 * idx) + 160] = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
        idx = idx + 1
        s = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_0) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
        s = uint128(tokenOfOwnerByIndex[address(arg1)][idx].field_128) or 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
        continue 
    mem[(64 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 160] = 64
    mem[(64 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 224] = uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    mem[(64 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 256 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))] = mem[128 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))]
    mem[(64 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 192] = (32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 96
    mem[(98 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 256] = mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128]
    mem[(98 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 288 len floor32(mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128])]
    return memory
      from (64 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 160
       len (32 * mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128]) + (161 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128
}

function updateManyLandData(int256[] arg1, int256[] arg2, string arg3) payable {
    mem[64] = 96
    require not msg.value
    if arg1.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dYou should supply at least one coordinate'
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should have the same length'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        _278 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_278] = arg3.length
        mem[_278 + 32 len arg3.length] = arg3[all]
        if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
            revert with 0, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg1 + 36)] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg2 + 36)] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        if msg.sender == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
                revert with 0, 'The coordinates should be inside bounds'
            if cd[((32 * idx) + arg1 + 36)] >= 10^6:
                revert with 0, 'The coordinates should be inside bounds'
            if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
                revert with 0, 'The coordinates should be inside bounds'
            if cd[((32 * idx) + arg2 + 36)] >= 10^6:
                revert with 0, 'The coordinates should be inside bounds'
            mem[32] = 10
            mem[0] = sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)
            uint256(stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].field_0) = (2 * arg3.length) + 1
            t = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10))
            s = _278 + 32
            while _278 + arg3.length + 32 > s:
                uint256(stor[t]) = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
            while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            _753 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg3.length
            s = 0
            while s < arg3.length:
                mem[s + _753 + 64] = mem[s + _278 + 32]
                s = s + 32
                continue 
            if not arg3.length % 32:
                emit Update(mem[mem[64] len arg3.length + _753 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
            else:
                mem[floor32(arg3.length) + _753 + 64] = mem[floor32(arg3.length) + _753 + -(arg3.length % 32) + 96 len arg3.length % 32]
                emit Update(mem[mem[64] len floor32(arg3.length) + _753 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
        else:
            require msg.sender
            if msg.sender == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
                    revert with 0, 'The coordinates should be inside bounds'
                if cd[((32 * idx) + arg1 + 36)] >= 10^6:
                    revert with 0, 'The coordinates should be inside bounds'
                if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
                    revert with 0, 'The coordinates should be inside bounds'
                if cd[((32 * idx) + arg2 + 36)] >= 10^6:
                    revert with 0, 'The coordinates should be inside bounds'
                mem[32] = 10
                mem[0] = sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)
                uint256(stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].field_0) = (2 * arg3.length) + 1
                t = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10))
                s = _278 + 32
                while _278 + arg3.length + 32 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
                while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                _771 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = arg3.length
                s = 0
                while s < arg3.length:
                    mem[s + _771 + 64] = mem[s + _278 + 32]
                    s = s + 32
                    continue 
                if not arg3.length % 32:
                    emit Update(mem[mem[64] len arg3.length + _771 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                else:
                    mem[floor32(arg3.length) + _771 + 64] = mem[floor32(arg3.length) + _771 + -(arg3.length % 32) + 96 len arg3.length % 32]
                    emit Update(mem[mem[64] len floor32(arg3.length) + _771 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
            else:
                if stor11[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][address(msg.sender)]:
                    if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
                        revert with 0, 'The coordinates should be inside bounds'
                    if cd[((32 * idx) + arg1 + 36)] >= 10^6:
                        revert with 0, 'The coordinates should be inside bounds'
                    if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
                        revert with 0, 'The coordinates should be inside bounds'
                    if cd[((32 * idx) + arg2 + 36)] >= 10^6:
                        revert with 0, 'The coordinates should be inside bounds'
                    mem[32] = 10
                    mem[0] = sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)
                    uint256(stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].field_0) = (2 * arg3.length) + 1
                    t = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10))
                    s = _278 + 32
                    while _278 + arg3.length + 32 > s:
                        uint256(stor[t]) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
                    while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    _756 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = arg3.length
                    s = 0
                    while s < arg3.length:
                        mem[s + _756 + 64] = mem[s + _278 + 32]
                        s = s + 32
                        continue 
                    if not arg3.length % 32:
                        emit Update(mem[mem[64] len arg3.length + _756 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                    else:
                        mem[floor32(arg3.length) + _756 + 64] = mem[floor32(arg3.length) + _756 + -(arg3.length % 32) + 96 len arg3.length % 32]
                        emit Update(mem[mem[64] len floor32(arg3.length) + _756 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                else:
                    if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == msg.sender:
                        if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
                            revert with 0, 'The coordinates should be inside bounds'
                        if cd[((32 * idx) + arg1 + 36)] >= 10^6:
                            revert with 0, 'The coordinates should be inside bounds'
                        if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
                            revert with 0, 'The coordinates should be inside bounds'
                        if cd[((32 * idx) + arg2 + 36)] >= 10^6:
                            revert with 0, 'The coordinates should be inside bounds'
                        mem[32] = 10
                        mem[0] = sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)
                        uint256(stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].field_0) = (2 * arg3.length) + 1
                        t = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10))
                        s = _278 + 32
                        while _278 + arg3.length + 32 > s:
                            uint256(stor[t]) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
                        while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        _759 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = arg3.length
                        s = 0
                        while s < arg3.length:
                            mem[s + _759 + 64] = mem[s + _278 + 32]
                            s = s + 32
                            continue 
                        if not arg3.length % 32:
                            emit Update(mem[mem[64] len arg3.length + _759 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                        else:
                            mem[floor32(arg3.length) + _759 + 64] = mem[floor32(arg3.length) + _759 + -(arg3.length % 32) + 96 len arg3.length % 32]
                            emit Update(mem[mem[64] len floor32(arg3.length) + _759 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                    else:
                        if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == msg.sender:
                            if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
                                revert with 0, 'The coordinates should be inside bounds'
                            if cd[((32 * idx) + arg1 + 36)] >= 10^6:
                                revert with 0, 'The coordinates should be inside bounds'
                            if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
                                revert with 0, 'The coordinates should be inside bounds'
                            if cd[((32 * idx) + arg2 + 36)] >= 10^6:
                                revert with 0, 'The coordinates should be inside bounds'
                            mem[32] = 10
                            mem[0] = sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)
                            uint256(stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].field_0) = (2 * arg3.length) + 1
                            t = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10))
                            s = _278 + 32
                            while _278 + arg3.length + 32 > s:
                                uint256(stor[t]) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
                            while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            _762 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = arg3.length
                            s = 0
                            while s < arg3.length:
                                mem[s + _762 + 64] = mem[s + _278 + 32]
                                s = s + 32
                                continue 
                            if not arg3.length % 32:
                                emit Update(mem[mem[64] len arg3.length + _762 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                            else:
                                mem[floor32(arg3.length) + _762 + 64] = mem[floor32(arg3.length) + _762 + -(arg3.length % 32) + 96 len arg3.length % 32]
                                emit Update(mem[mem[64] len floor32(arg3.length) + _762 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                        else:
                            if updateOperator[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == msg.sender:
                                if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
                                    revert with 0, 'The coordinates should be inside bounds'
                                if cd[((32 * idx) + arg1 + 36)] >= 10^6:
                                    revert with 0, 'The coordinates should be inside bounds'
                                if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
                                    revert with 0, 'The coordinates should be inside bounds'
                                if cd[((32 * idx) + arg2 + 36)] >= 10^6:
                                    revert with 0, 'The coordinates should be inside bounds'
                                mem[32] = 10
                                mem[0] = sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)
                                uint256(stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].field_0) = (2 * arg3.length) + 1
                                t = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10))
                                s = _278 + 32
                                while _278 + arg3.length + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
                                while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                _765 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = arg3.length
                                s = 0
                                while s < arg3.length:
                                    mem[s + _765 + 64] = mem[s + _278 + 32]
                                    s = s + 32
                                    continue 
                                if not arg3.length % 32:
                                    emit Update(mem[mem[64] len arg3.length + _765 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                                else:
                                    mem[floor32(arg3.length) + _765 + 64] = mem[floor32(arg3.length) + _765 + -(arg3.length % 32) + 96 len arg3.length % 32]
                                    emit Update(mem[mem[64] len floor32(arg3.length) + _765 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                            else:
                                if not stor18[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][address(msg.sender)]:
                                    revert with 0, 'msg.sender is not authorized to update'
                                if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
                                    revert with 0, 'The coordinates should be inside bounds'
                                if cd[((32 * idx) + arg1 + 36)] >= 10^6:
                                    revert with 0, 'The coordinates should be inside bounds'
                                if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
                                    revert with 0, 'The coordinates should be inside bounds'
                                if cd[((32 * idx) + arg2 + 36)] >= 10^6:
                                    revert with 0, 'The coordinates should be inside bounds'
                                mem[32] = 10
                                mem[0] = sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)
                                uint256(stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].field_0) = (2 * arg3.length) + 1
                                t = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10))
                                s = _278 + 32
                                while _278 + arg3.length + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
                                while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                _768 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = arg3.length
                                s = 0
                                while s < arg3.length:
                                    mem[s + _768 + 64] = mem[s + _278 + 32]
                                    s = s + 32
                                    continue 
                                if not arg3.length % 32:
                                    emit Update(mem[mem[64] len arg3.length + _768 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                                else:
                                    mem[floor32(arg3.length) + _768 + 64] = mem[floor32(arg3.length) + _768 + -(arg3.length % 32) + 96 len arg3.length % 32]
                                    emit Update(mem[mem[64] len floor32(arg3.length) + _768 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
        idx = idx + 1
        continue 
}

function transferManyLand(int256[] arg1, int256[] arg2, address arg3) payable {
    mem[64] = 96
    require not msg.value
    if arg1.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dYou should supply at least one coordinate'
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should have the same length'
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
            revert with 0, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg1 + 36)] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg2 + 36)] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        _931 = mem[64]
        mem[64] = mem[64] + 32
        mem[_931] = 0
        updateOperator[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
        require msg.sender
        if msg.sender == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            require arg3
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != arg3
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            require stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)--
            if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) + sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) - 1
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            if not uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
                uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
                s = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _931 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        if stor11[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][address(msg.sender)]:
            require arg3
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != arg3
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            require stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)--
            if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) + sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) - 1
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            if not uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
                uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
                s = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _931 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        require approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == msg.sender
        require arg3
        require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != arg3
        require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
        if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            require stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)--
            if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) + sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) - 1
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            if not uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
                uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
                s = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _931 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
        require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
        require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
        ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
        require stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
        uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)
        require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
        uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0) = 0
        uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)--
        if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1:
            if not uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
                uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
                s = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _931 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        t = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) + sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) - 1
        while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > t:
            uint256(stor[t]) = 0
            t = t + 1
            continue 
        if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _931 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
        t = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
        while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > t:
            uint256(stor[t]) = 0
            t = t + 1
            continue 
        stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
        stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
        require 1 <= totalSupply
        totalSupply--
        ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
        uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
        uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
        uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
        mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        mem[32] = 9
        stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
        require totalSupply + 1 >= totalSupply
        totalSupply++
        emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
        if ext_code.size(arg3) <= 0:
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
        mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        t = 0
        while t < 0:
            mem[t + mem[64] + 164] = mem[t + _931 + 32]
            t = t + 32
            continue 
        require ext_code.size(arg3)
        call arg3.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        t = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        idx = idx + 1
        continue 
}

function transferManyLandToEstate(int256[] arg1, int256[] arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    if arg1.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dYou should supply at least one coordinate'
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should have the same length'
    mem[100] = arg3
    require ext_code.size(estateRegistryAddress)
    call estateRegistryAddress.0x6352211e with:
         gas gas_remaining wei
        args arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must own the Estate you want to transfer to'
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if -1 * 10^6 >= cd[((32 * idx) + arg1 + 36)]:
            revert with 0, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg1 + 36)] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        if -1 * 10^6 >= cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'The coordinates should be inside bounds'
        if cd[((32 * idx) + arg2 + 36)] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        mem[32] = 8
        _937 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_937 + 32 len 1024] = code.data[14770 len 1024]
        mem[_937 + 32] = arg3
        updateOperator[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
        require msg.sender
        if msg.sender == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            require estateRegistryAddress
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != estateRegistryAddress
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            require stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)--
            if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) + sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) - 1
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            if not uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
                uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
                s = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_937 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_937 + 68] = msg.sender
                mem[_937 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_937 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_937 + 164] = 128
                mem[_937 + 196] = mem[_937]
                s = 0
                while s < mem[_937]:
                    mem[s + _937 + 228] = mem[s + _937 + 32]
                    s = s + 32
                    continue 
                if not mem[_937] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_937 + 196 len mem[_937] + 32]
                else:
                    mem[floor32(mem[_937]) + _937 + 228] = mem[floor32(mem[_937]) + _937 + -(mem[_937] % 32) + 260 len mem[_937] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_937], data=mem[_937 + 228 len floor32(mem[_937]) + 32])
                mem[_937 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        if stor11[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][address(msg.sender)]:
            require estateRegistryAddress
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != estateRegistryAddress
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            require stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)--
            if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) + sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) - 1
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            if not uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
                uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
                s = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_937 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_937 + 68] = msg.sender
                mem[_937 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_937 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_937 + 164] = 128
                mem[_937 + 196] = mem[_937]
                s = 0
                while s < mem[_937]:
                    mem[s + _937 + 228] = mem[s + _937 + 32]
                    s = s + 32
                    continue 
                if not mem[_937] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_937 + 196 len mem[_937] + 32]
                else:
                    mem[floor32(mem[_937]) + _937 + 228] = mem[floor32(mem[_937]) + _937 + -(mem[_937] % 32) + 260 len mem[_937] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_937], data=mem[_937 + 228 len floor32(mem[_937]) + 32])
                mem[_937 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        require approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == msg.sender
        require estateRegistryAddress
        require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != estateRegistryAddress
        require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
        if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            require stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)--
            if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) + sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) - 1
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            if not uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
                uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
                s = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_937 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_937 + 68] = msg.sender
                mem[_937 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_937 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_937 + 164] = 128
                mem[_937 + 196] = mem[_937]
                s = 0
                while s < mem[_937]:
                    mem[s + _937 + 228] = mem[s + _937 + 32]
                    s = s + 32
                    continue 
                if not mem[_937] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_937 + 196 len mem[_937] + 32]
                else:
                    mem[floor32(mem[_937]) + _937 + 228] = mem[floor32(mem[_937]) + _937 + -(mem[_937] % 32) + 260 len mem[_937] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_937], data=mem[_937 + 228 len floor32(mem[_937]) + 32])
                mem[_937 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
        require 1 <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
        require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
        ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
        require stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
        uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)
        require uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)
        uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0) = 0
        uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)--
        if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) - 1:
            if not uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
                uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
                s = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
                while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_937 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_937 + 68] = msg.sender
                mem[_937 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_937 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_937 + 164] = 128
                mem[_937 + 196] = mem[_937]
                s = 0
                while s < mem[_937]:
                    mem[s + _937 + 228] = mem[s + _937 + 32]
                    s = s + 32
                    continue 
                if not mem[_937] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_937 + 196 len mem[_937] + 32]
                else:
                    mem[floor32(mem[_937]) + _937 + 228] = mem[floor32(mem[_937]) + _937 + -(mem[_937] % 32) + 260 len mem[_937] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_937], data=mem[_937 + 228 len floor32(mem[_937]) + 32])
                mem[_937 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        t = uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) + sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) - 1
        while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > t:
            uint256(stor[t]) = 0
            t = t + 1
            continue 
        if uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0):
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_937 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_937 + 68] = msg.sender
                mem[_937 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_937 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_937 + 164] = 128
                mem[_937 + 196] = mem[_937]
                s = 0
                while s < mem[_937]:
                    mem[s + _937 + 228] = mem[s + _937 + 32]
                    s = s + 32
                    continue 
                if not mem[_937] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_937 + 196 len mem[_937] + 32]
                else:
                    mem[floor32(mem[_937]) + _937 + 228] = mem[floor32(mem[_937]) + _937 + -(mem[_937] % 32) + 260 len mem[_937] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_937], data=mem[_937 + 228 len floor32(mem[_937]) + 32])
                mem[_937 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) = 0
        t = sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7))
        while sha3(sha3(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0) > t:
            uint256(stor[t]) = 0
            t = t + 1
            continue 
        stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
        stor9[uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][uint256(stor7[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]].field_0)].field_0)] = stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
        require 1 <= totalSupply
        totalSupply--
        ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
        uint256(tokenOfOwnerByIndex[stor16].field_0)++
        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
        mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        mem[32] = 9
        stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
        require totalSupply + 1 >= totalSupply
        totalSupply++
        emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
        if ext_code.size(estateRegistryAddress) <= 0:
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        mem[_937 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[_937 + 68] = msg.sender
        mem[_937 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
        mem[_937 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        mem[_937 + 164] = 128
        mem[_937 + 196] = mem[_937]
        t = 0
        while t < mem[_937]:
            mem[t + _937 + 228] = mem[t + _937 + 32]
            t = t + 32
            continue 
        if not mem[_937] % 32:
            require ext_code.size(estateRegistryAddress)
            call estateRegistryAddress.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_937 + 196 len mem[_937] + 32]
        else:
            mem[floor32(mem[_937]) + _937 + 228] = mem[floor32(mem[_937]) + _937 + -(mem[_937] % 32) + 260 len mem[_937] % 32]
            require ext_code.size(estateRegistryAddress)
            call estateRegistryAddress.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_937], data=mem[_937 + 228 len floor32(mem[_937]) + 32])
        mem[_937 + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        t = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        idx = idx + 1
        continue 
}

function createEstate(int256[] arg1, int256[] arg2, address arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0
    if arg1.length <= 0:
        revert with 0, 'dYou should supply at least one coordinate'
    if arg1.length != arg2.length:
        revert with 0, 'The coordinates should have the same length'
    if not estateRegistryAddress:
        revert with 0, 'The Estate registry should be set'
    require ext_code.size(estateRegistryAddress)
    call estateRegistryAddress.mint(address arg1, string arg2) with:
         gas gas_remaining wei
        args address(arg3), 64, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 32
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 256
    mem[(32 * arg2.length) + (32 * arg1.length) + 224 len 1024] = code.data[14770 len 1024]
    mem[(32 * arg2.length) + (32 * arg1.length) + 224] = ext_call.return_data[0]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _3708 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _3714 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if -1 * 10^6 >= mem[(32 * idx) + 128]:
            revert with 0, 'The coordinates should be inside bounds'
        if mem[(32 * idx) + 128] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        if -1 * 10^6 >= mem[(32 * idx) + (32 * arg1.length) + 160]:
            revert with 0, 'The coordinates should be inside bounds'
        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^6:
            revert with 0, 'The coordinates should be inside bounds'
        updateOperator[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
        require msg.sender
        if msg.sender == ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
            require estateRegistryAddress
            require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != estateRegistryAddress
            require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] == ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
            _3752 = sha3(mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128, 8)
            if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                require 1 <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                require stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)
                require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0) = 0
                uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)--
                if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1:
                    if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                        require 1 <= totalSupply
                        totalSupply--
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        if ext_code.size(estateRegistryAddress) <= 0:
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        _4388 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3752])
                        mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _4390 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _4390:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _4390 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4390 + _4388 + -mem[64] + 160]
                        else:
                            mem[floor32(_4390) + _4388 + 164] = mem[floor32(_4390) + _4388 + -(_4390 % 32) + 196 len _4390 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_4390) + _4388 + -mem[64] + 192]
                    else:
                        uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                        s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                        while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                        require 1 <= totalSupply
                        totalSupply--
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        if ext_code.size(estateRegistryAddress) <= 0:
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3752])
                        mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6166 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6166:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6166 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6166 + 32]
                        else:
                            mem[floor32(_6166) + mem[64] + 164] = mem[floor32(_6166) + mem[64] + -(_6166 % 32) + 196 len _6166 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6166) + 64]
                else:
                    s = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) + sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) - 1
                    while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                        require 1 <= totalSupply
                        totalSupply--
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        if ext_code.size(estateRegistryAddress) <= 0:
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3752])
                        mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6256 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6256:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6256 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6256 + 32]
                        else:
                            mem[floor32(_6256) + mem[64] + 164] = mem[floor32(_6256) + mem[64] + -(_6256 % 32) + 196 len _6256 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6256) + 64]
                    else:
                        uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                        s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                        while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                        require 1 <= totalSupply
                        totalSupply--
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        if ext_code.size(estateRegistryAddress) <= 0:
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3752])
                        mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _7282 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _7282:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _7282 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _7282 + 32]
                        else:
                            mem[floor32(_7282) + mem[64] + 164] = mem[floor32(_7282) + mem[64] + -(_7282 % 32) + 196 len _7282 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_7282) + 64]
            else:
                if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                    require 1 <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    require stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)
                    require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0) = 0
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)--
                    if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1:
                        if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3752])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _4436 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _4436:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _4436 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _4436 + 32]
                            else:
                                mem[floor32(_4436) + mem[64] + 164] = mem[floor32(_4436) + mem[64] + -(_4436 % 32) + 196 len _4436 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_4436) + 64]
                        else:
                            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                            s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3752])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6172 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6172:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6172 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6172 + 32]
                            else:
                                mem[floor32(_6172) + mem[64] + 164] = mem[floor32(_6172) + mem[64] + -(_6172 % 32) + 196 len _6172 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6172) + 64]
                    else:
                        s = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) + sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) - 1
                        while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _6257 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3752])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6259 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6259:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6259 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6259 + _6257 + -mem[64] + 160]
                            else:
                                mem[floor32(_6259) + _6257 + 164] = mem[floor32(_6259) + _6257 + -(_6259 % 32) + 196 len _6259 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_6259) + _6257 + -mem[64] + 192]
                        else:
                            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                            s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _7283 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3752])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _7285 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _7285:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _7285 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7285 + _7283 + -mem[64] + 160]
                            else:
                                mem[floor32(_7285) + _7283 + 164] = mem[floor32(_7285) + _7283 + -(_7285 % 32) + 196 len _7285 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_7285) + _7283 + -mem[64] + 192]
                else:
                    approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    require 1 <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    require stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)
                    require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0) = 0
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)--
                    if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1:
                        if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3752])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _4439 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _4439:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _4439 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _4439 + 32]
                            else:
                                mem[floor32(_4439) + mem[64] + 164] = mem[floor32(_4439) + mem[64] + -(_4439 % 32) + 196 len _4439 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_4439) + 64]
                        else:
                            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                            s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _6176 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3752])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6178 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6178:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6178 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6178 + _6176 + -mem[64] + 160]
                            else:
                                mem[floor32(_6178) + _6176 + 164] = mem[floor32(_6178) + _6176 + -(_6178 % 32) + 196 len _6178 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_6178) + _6176 + -mem[64] + 192]
                    else:
                        s = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) + sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) - 1
                        while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3752])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6262 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6262:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6262 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6262 + 32]
                            else:
                                mem[floor32(_6262) + mem[64] + 164] = mem[floor32(_6262) + mem[64] + -(_6262 % 32) + 196 len _6262 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6262) + 64]
                        else:
                            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                            s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3752])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _7288 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _7288:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _7288 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _7288 + 32]
                            else:
                                mem[floor32(_7288) + mem[64] + 164] = mem[floor32(_7288) + mem[64] + -(_7288 % 32) + 196 len _7288 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3752]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_7288) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(_3714) or _3708 << 128
            idx = idx + 1
            continue 
        if stor11[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][address(msg.sender)]:
            require estateRegistryAddress
            require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != estateRegistryAddress
            require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] == ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
            _3760 = sha3(mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128, 8)
            if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                require 1 <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                require stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)
                require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0) = 0
                uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)--
                if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1:
                    if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                        require 1 <= totalSupply
                        totalSupply--
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        if ext_code.size(estateRegistryAddress) <= 0:
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3760])
                        mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _4496 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _4496:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _4496 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _4496 + 32]
                        else:
                            mem[floor32(_4496) + mem[64] + 164] = mem[floor32(_4496) + mem[64] + -(_4496 % 32) + 196 len _4496 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_4496) + 64]
                    else:
                        uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                        s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                        while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                        require 1 <= totalSupply
                        totalSupply--
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        if ext_code.size(estateRegistryAddress) <= 0:
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        _6128 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3760])
                        mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6130 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6130:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6130 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6130 + _6128 + -mem[64] + 160]
                        else:
                            mem[floor32(_6130) + _6128 + 164] = mem[floor32(_6130) + _6128 + -(_6130 % 32) + 196 len _6130 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_6130) + _6128 + -mem[64] + 192]
                else:
                    s = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) + sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) - 1
                    while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                        require 1 <= totalSupply
                        totalSupply--
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        if ext_code.size(estateRegistryAddress) <= 0:
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3760])
                        mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6238 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6238:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6238 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6238 + 32]
                        else:
                            mem[floor32(_6238) + mem[64] + 164] = mem[floor32(_6238) + mem[64] + -(_6238 % 32) + 196 len _6238 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6238) + 64]
                    else:
                        uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                        s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                        while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                        require 1 <= totalSupply
                        totalSupply--
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        if ext_code.size(estateRegistryAddress) <= 0:
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3760])
                        mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _7264 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _7264:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _7264 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _7264 + 32]
                        else:
                            mem[floor32(_7264) + mem[64] + 164] = mem[floor32(_7264) + mem[64] + -(_7264 % 32) + 196 len _7264 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_7264) + 64]
            else:
                if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                    require 1 <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    require stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)
                    require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0) = 0
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)--
                    if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1:
                        if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _4556 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3760])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _4558 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _4558:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _4558 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4558 + _4556 + -mem[64] + 160]
                            else:
                                mem[floor32(_4558) + _4556 + 164] = mem[floor32(_4558) + _4556 + -(_4558 % 32) + 196 len _4558 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_4558) + _4556 + -mem[64] + 192]
                        else:
                            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                            s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _6134 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3760])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6136 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6136:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6136 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6136 + _6134 + -mem[64] + 160]
                            else:
                                mem[floor32(_6136) + _6134 + 164] = mem[floor32(_6136) + _6134 + -(_6136 % 32) + 196 len _6136 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_6136) + _6134 + -mem[64] + 192]
                    else:
                        s = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) + sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) - 1
                        while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _6239 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3760])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6241 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6241:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6241 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6241 + _6239 + -mem[64] + 160]
                            else:
                                mem[floor32(_6241) + _6239 + 164] = mem[floor32(_6241) + _6239 + -(_6241 % 32) + 196 len _6241 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_6241) + _6239 + -mem[64] + 192]
                        else:
                            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                            s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3760])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _7267 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _7267:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _7267 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _7267 + 32]
                            else:
                                mem[floor32(_7267) + mem[64] + 164] = mem[floor32(_7267) + mem[64] + -(_7267 % 32) + 196 len _7267 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_7267) + 64]
                else:
                    approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    require 1 <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    require stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)
                    require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0) = 0
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)--
                    if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1:
                        if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _4559 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3760])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _4561 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _4561:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _4561 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4561 + _4559 + -mem[64] + 160]
                            else:
                                mem[floor32(_4561) + _4559 + 164] = mem[floor32(_4561) + _4559 + -(_4561 % 32) + 196 len _4561 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_4561) + _4559 + -mem[64] + 192]
                        else:
                            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                            s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _6140 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3760])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6142 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6142:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6142 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6142 + _6140 + -mem[64] + 160]
                            else:
                                mem[floor32(_6142) + _6140 + 164] = mem[floor32(_6142) + _6140 + -(_6142 % 32) + 196 len _6142 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_6142) + _6140 + -mem[64] + 192]
                    else:
                        s = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) + sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) - 1
                        while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3760])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6244 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6244:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6244 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6244 + 32]
                            else:
                                mem[floor32(_6244) + mem[64] + 164] = mem[floor32(_6244) + mem[64] + -(_6244 % 32) + 196 len _6244 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6244) + 64]
                        else:
                            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                            s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                            require 1 <= totalSupply
                            totalSupply--
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            if ext_code.size(estateRegistryAddress) <= 0:
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3760])
                            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _7270 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _7270:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _7270 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _7270 + 32]
                            else:
                                mem[floor32(_7270) + mem[64] + 164] = mem[floor32(_7270) + mem[64] + -(_7270 % 32) + 196 len _7270 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3760]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_7270) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(_3714) or _3708 << 128
            idx = idx + 1
            continue 
        require approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] == msg.sender
        require estateRegistryAddress
        require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != estateRegistryAddress
        require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] == ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
        _3768 = sha3(mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128, 8)
        if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
            require 1 <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
            require stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)--
            if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1:
                if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                    require 1 <= totalSupply
                    totalSupply--
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    if ext_code.size(estateRegistryAddress) <= 0:
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    _4679 = mem[64]
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3768])
                    mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _4681 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _4681:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _4681 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4681 + _4679 + -mem[64] + 160]
                    else:
                        mem[floor32(_4681) + _4679 + 164] = mem[floor32(_4681) + _4679 + -(_4681 % 32) + 196 len _4681 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_4681) + _4679 + -mem[64] + 192]
                else:
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                    s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                    while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                    require 1 <= totalSupply
                    totalSupply--
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    if ext_code.size(estateRegistryAddress) <= 0:
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3768])
                    mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _6148 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _6148:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _6148 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6148 + 32]
                    else:
                        mem[floor32(_6148) + mem[64] + 164] = mem[floor32(_6148) + mem[64] + -(_6148 % 32) + 196 len _6148 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6148) + 64]
            else:
                s = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) + sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) - 1
                while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                    require 1 <= totalSupply
                    totalSupply--
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    if ext_code.size(estateRegistryAddress) <= 0:
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3768])
                    mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _6247 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _6247:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _6247 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6247 + 32]
                    else:
                        mem[floor32(_6247) + mem[64] + 164] = mem[floor32(_6247) + mem[64] + -(_6247 % 32) + 196 len _6247 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6247) + 64]
                else:
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                    s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                    while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                    require 1 <= totalSupply
                    totalSupply--
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    if ext_code.size(estateRegistryAddress) <= 0:
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3768])
                    mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _7273 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _7273:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _7273 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _7273 + 32]
                    else:
                        mem[floor32(_7273) + mem[64] + 164] = mem[floor32(_7273) + mem[64] + -(_7273 % 32) + 196 len _7273 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_7273) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            s = uint128(_3714) or _3708 << 128
            idx = idx + 1
            continue 
        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
            require 1 <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
            require stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)--
            if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1:
                if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                    require 1 <= totalSupply
                    totalSupply--
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    if ext_code.size(estateRegistryAddress) <= 0:
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3768])
                    mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _4744 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _4744:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _4744 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _4744 + 32]
                    else:
                        mem[floor32(_4744) + mem[64] + 164] = mem[floor32(_4744) + mem[64] + -(_4744 % 32) + 196 len _4744 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_4744) + 64]
                else:
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                    s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                    while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                    require 1 <= totalSupply
                    totalSupply--
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    if ext_code.size(estateRegistryAddress) <= 0:
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    _6152 = mem[64]
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3768])
                    mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _6154 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _6154:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _6154 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6154 + _6152 + -mem[64] + 160]
                    else:
                        mem[floor32(_6154) + _6152 + 164] = mem[floor32(_6154) + _6152 + -(_6154 % 32) + 196 len _6154 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_6154) + _6152 + -mem[64] + 192]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                s = uint128(_3714) or _3708 << 128
                idx = idx + 1
                continue 
            t = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) + sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) - 1
            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > t:
                uint256(stor[t]) = 0
                t = t + 1
                continue 
            if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                require 1 <= totalSupply
                totalSupply--
                ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                uint256(tokenOfOwnerByIndex[stor16].field_0)++
                uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                mem[32] = 9
                stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                require totalSupply + 1 >= totalSupply
                totalSupply++
                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                if ext_code.size(estateRegistryAddress) <= 0:
                    s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    idx = idx + 1
                    continue 
                _6248 = mem[64]
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(stor[_3768])
                mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                _6250 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                s = 0
                while s < _6250:
                    mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                    s = s + 32
                    continue 
                if not _6250 % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6250 + _6248 + -mem[64] + 160]
                else:
                    mem[floor32(_6250) + _6248 + 164] = mem[floor32(_6250) + _6248 + -(_6250 % 32) + 196 len _6250 % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_6250) + _6248 + -mem[64] + 192]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                s = uint128(_3714) or _3708 << 128
                idx = idx + 1
                continue 
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
            t = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > t:
                uint256(stor[t]) = 0
                t = t + 1
                continue 
            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
            mem[32] = 9
            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
            if ext_code.size(estateRegistryAddress) <= 0:
                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                idx = idx + 1
                continue 
            _7274 = mem[64]
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(stor[_3768])
            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            _7276 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            t = 0
            while t < _7276:
                mem[t + mem[64] + 164] = mem[t + (32 * arg2.length) + (32 * arg1.length) + 224]
                t = t + 32
                continue 
            if not _7276 % 32:
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _7276 + _7274 + -mem[64] + 160]
            else:
                mem[floor32(_7276) + _7274 + 164] = mem[floor32(_7276) + _7274 + -(_7276 % 32) + 196 len _7276 % 32]
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_7276) + _7274 + -mem[64] + 192]
        else:
            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
            require 1 <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
            require stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)--
            if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) <= uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) - 1:
                if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                    require 1 <= totalSupply
                    totalSupply--
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    if ext_code.size(estateRegistryAddress) <= 0:
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3768])
                    mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _4747 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _4747:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _4747 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _4747 + 32]
                    else:
                        mem[floor32(_4747) + mem[64] + 164] = mem[floor32(_4747) + mem[64] + -(_4747 % 32) + 196 len _4747 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_4747) + 64]
                else:
                    uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
                    s = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
                    while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                    require 1 <= totalSupply
                    totalSupply--
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    if ext_code.size(estateRegistryAddress) <= 0:
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3768])
                    mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _6160 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _6160:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _6160 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6160 + 32]
                    else:
                        mem[floor32(_6160) + mem[64] + 164] = mem[floor32(_6160) + mem[64] + -(_6160 % 32) + 196 len _6160 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6160) + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                s = uint128(_3714) or _3708 << 128
                idx = idx + 1
                continue 
            t = uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) + sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) - 1
            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > t:
                uint256(stor[t]) = 0
                t = t + 1
                continue 
            if uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0):
                stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
                require 1 <= totalSupply
                totalSupply--
                ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                uint256(tokenOfOwnerByIndex[stor16].field_0)++
                uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                mem[32] = 9
                stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                require totalSupply + 1 >= totalSupply
                totalSupply++
                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                if ext_code.size(estateRegistryAddress) <= 0:
                    s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(stor[_3768])
                mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                _6253 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                s = 0
                while s < _6253:
                    mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                    s = s + 32
                    continue 
                if not _6253 % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _6253 + 32]
                else:
                    mem[floor32(_6253) + mem[64] + 164] = mem[floor32(_6253) + mem[64] + -(_6253 % 32) + 196 len _6253 % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_6253) + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                s = uint128(_3714) or _3708 << 128
                idx = idx + 1
                continue 
            uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) = 0
            t = sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7))
            while sha3(sha3(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 7)) + uint256(tokenOfOwnerByIndex[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0) > t:
                uint256(stor[t]) = 0
                t = t + 1
                continue 
            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
            stor9[uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][uint256(stor7[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]].field_0)].field_0)] = stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
            require 1 <= totalSupply
            totalSupply--
            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
            mem[32] = 9
            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
            if ext_code.size(estateRegistryAddress) <= 0:
                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(stor[_3768])
            mem[mem[64] + 68] = uint128(_3714) or _3708 << 128
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            _7279 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            t = 0
            while t < _7279:
                mem[t + mem[64] + 164] = mem[t + (32 * arg2.length) + (32 * arg1.length) + 224]
                t = t + 32
                continue 
            if not _7279 % 32:
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len _7279 + 32]
            else:
                mem[floor32(_7279) + mem[64] + 164] = mem[floor32(_7279) + mem[64] + -(_7279 % 32) + 196 len _7279 % 32]
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, address(stor[_3768]), uint128(_3714) or _3708 << 128, 128, mem[mem[64] + 132 len floor32(_7279) + 64]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        t = uint128(_3714) or _3708 << 128
        idx = idx + 1
        continue 
    return ext_call.return_data[0]
}



}
