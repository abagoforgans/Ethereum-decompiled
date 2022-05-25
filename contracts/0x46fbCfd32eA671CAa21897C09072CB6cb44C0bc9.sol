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
mapping of uint8 stor14;
mapping of address updateOperator;
address estateRegistryAddress;

function proxyOwner() {
    return proxyOwner
}

function name() {
    return uint256(name[0 len name.length].field_0)
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
    return bool(stor14[arg1])
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

function isUpdateAuthorized(address arg1, uint256 arg2) {
    if arg1 == ownerOfLand[arg2]:
        return True
    return (updateOperator[arg2] == arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if owner == arg1:
        revert with 0, 'Cannot transfer to yourself'
    owner = arg1
}

function setLatestToNow(address arg1) {
    if proxyOwner != msg.sender:
        if not stor11[address(msg.sender)][address(arg1)]:
            revert with 0, 'Unauthorized user'
    latestPing[address(arg1)] = block.timestamp
}

function forbidDeploy(address arg1) {
    if proxyOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function can only be calle by the proxy owner'
    stor14[address(arg1)] = 0
}

function authorizeDeploy(address arg1) {
    if proxyOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function can only be calle by the proxy owner'
    stor14[address(arg1)] = 1
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

function setUpdateOperator(uint256 arg1, address arg2) {
    if ownerOfLand[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function can only be calle by the owner of the asset'
    updateOperator[arg1] = arg2
    emit UpdateOperator(arg1, arg2);
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

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == 0xffffffff00000000000000000000000000000000000000000000000000000000:
        return 0
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x7c0633c600000000000000000000000000000000000000000000000000000000)
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function can only be calle by the proxy owner'
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
        mem[128 len 32 * arg1.length] = code.data[13119 len 32 * arg1.length]
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

function assignMultipleParcels(int256[] arg1, int256[] arg2, address arg3) {
    if proxyOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function can only be calle by the proxy owner'
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

function updateLandData(int256 arg1, int256 arg2, string arg3) {
    if -1 * 10^6 >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The coordinates should be inside bounds'
    if ownerOfLand[uint128(arg2) or arg1 << 128] != msg.sender:
        if ownerOfLand[uint128(arg2) or arg1 << 128] != msg.sender:
            if updateOperator[uint128(arg2) or arg1 << 128] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender is not authorized to update'
    if -1 * 10^6 >= arg1:
        revert with 0, 'The coordinates should be inside bounds'
    if arg1 >= 10^6:
        revert with 0, 'The coordinates should be inside bounds'
    if -1 * 10^6 >= arg2:
        revert with 0, 'The coordinates should be inside bounds'
    if arg2 >= 10^6:
        revert with 0, 'The coordinates should be inside bounds'
    if ownerOfLand[uint128(arg2) or arg1 << 128] != msg.sender:
        if ownerOfLand[uint128(arg2) or arg1 << 128] != msg.sender:
            if updateOperator[uint128(arg2) or arg1 << 128] != msg.sender:
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
    if ownerOfLand[arg3] == ownerOfLand[arg3]:
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(ownerOfLand[arg3], 0, arg3);
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
    if ownerOfLand[arg3] == ownerOfLand[arg3]:
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(ownerOfLand[arg3], 0, arg3);
    ownerOfLand[arg3] = arg2
    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = arg3
    stor9[arg3] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), ownerOfLand[arg3], arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    emit Transfer(ownerOfLand[arg3], arg2, arg3);
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
    if ownerOfLand[arg3] == ownerOfLand[arg3]:
        if approved[arg3]:
            approved[arg3] = 0
            emit Approval(ownerOfLand[arg3], 0, arg3);
    ownerOfLand[arg3] = arg2
    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = arg3
    stor9[arg3] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, ownerOfLand[arg3], arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    emit Transfer(ownerOfLand[arg3], arg2, arg3);
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
    if ownerOfLand[uint128(arg2) or arg1 << 128] == ownerOfLand[uint128(arg2) or arg1 << 128]:
        if approved[uint128(arg2) or arg1 << 128]:
            approved[uint128(arg2) or arg1 << 128] = 0
            emit Approval(ownerOfLand[uint128(arg2) or arg1 << 128], 0, uint128(arg2) or arg1 << 128);
    ownerOfLand[uint128(arg2) or arg1 << 128] = arg3
    uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
    uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(arg2)
    uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(arg1)
    stor9[uint128(arg2) or arg1 << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    if ext_code.size(arg3) > 0:
        require ext_code.size(arg3)
        call arg3.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), ownerOfLand[uint128(arg2) or arg1 << 128], uint128(arg1), uint128(arg2), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    emit Transfer(ownerOfLand[uint128(arg2) or arg1 << 128], arg3, uint128(arg2) or arg1 << 128);
}

function transferLandToEstate(int256 arg1, int256 arg2, uint256 arg3) {
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
    if ownerOfLand[uint128(arg2) or arg1 << 128] == ownerOfLand[uint128(arg2) or arg1 << 128]:
        if approved[uint128(arg2) or arg1 << 128]:
            approved[uint128(arg2) or arg1 << 128] = 0
            emit Approval(ownerOfLand[uint128(arg2) or arg1 << 128], 0, uint128(arg2) or arg1 << 128);
    ownerOfLand[uint128(arg2) or arg1 << 128] = estateRegistryAddress
    uint256(tokenOfOwnerByIndex[stor16].field_0)++
    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(arg2)
    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(arg1)
    stor9[uint128(arg2) or arg1 << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
    require totalSupply + 1 >= totalSupply
    totalSupply++
    if ext_code.size(estateRegistryAddress) > 0:
        require ext_code.size(estateRegistryAddress)
        call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, ownerOfLand[uint128(arg2) or arg1 << 128], uint128(arg1), uint128(arg2), 128, 32, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    emit Transfer(ownerOfLand[uint128(arg2) or arg1 << 128], estateRegistryAddress, uint128(arg2) or arg1 << 128);
}

function landOf(address arg1) {
    if not uint256(tokenOfOwnerByIndex[address(arg1)].field_0):
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128] = uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    else:
        mem[128 len 32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)] = code.data[13119 len 32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)]
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128] = uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 160 len 32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)] = code.data[13119 len 32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)]
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
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_132] = arg3.length
        mem[_132 + 32 len arg3.length] = arg3[all]
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
            s = _132 + 32
            while _132 + arg3.length + 32 > s:
                uint256(stor[t]) = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
            while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            _341 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg3.length
            s = 0
            while s < arg3.length:
                mem[s + _341 + 64] = mem[s + _132 + 32]
                s = s + 32
                continue 
            if not arg3.length % 32:
                emit Update(mem[mem[64] len arg3.length + _341 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
            else:
                mem[floor32(arg3.length) + _341 + 64] = mem[floor32(arg3.length) + _341 + -(arg3.length % 32) + 96 len arg3.length % 32]
                emit Update(mem[mem[64] len floor32(arg3.length) + _341 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
        else:
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
                s = _132 + 32
                while _132 + arg3.length + 32 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
                while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                _344 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = arg3.length
                s = 0
                while s < arg3.length:
                    mem[s + _344 + 64] = mem[s + _132 + 32]
                    s = s + 32
                    continue 
                if not arg3.length % 32:
                    emit Update(mem[mem[64] len arg3.length + _344 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                else:
                    mem[floor32(arg3.length) + _344 + 64] = mem[floor32(arg3.length) + _344 + -(arg3.length % 32) + 96 len arg3.length % 32]
                    emit Update(mem[mem[64] len floor32(arg3.length) + _344 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
            else:
                if updateOperator[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != msg.sender:
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
                s = _132 + 32
                while _132 + arg3.length + 32 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (Mask(251, 0, arg3.length + 31) >> 5)
                while sha3(sha3(uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 10)) + (stor10[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                _347 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = arg3.length
                s = 0
                while s < arg3.length:
                    mem[s + _347 + 64] = mem[s + _132 + 32]
                    s = s + 32
                    continue 
                if not arg3.length % 32:
                    emit Update(mem[mem[64] len arg3.length + _347 + -mem[64] + 64], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
                else:
                    mem[floor32(arg3.length) + _347 + 64] = mem[floor32(arg3.length) + _347 + -(arg3.length % 32) + 96 len arg3.length % 32]
                    emit Update(mem[mem[64] len floor32(arg3.length) + _347 + -mem[64] + 96], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], msg.sender);
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
        _961 = mem[64]
        mem[64] = mem[64] + 32
        mem[_961] = 0
        updateOperator[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
        require msg.sender
        if msg.sender == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            require arg3
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != arg3
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
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
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        if stor11[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][address(msg.sender)]:
            require arg3
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != arg3
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
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
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        require approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == msg.sender
        require arg3
        require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != arg3
        require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
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
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
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
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
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
        if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
            uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(arg3) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[mem[64] + 68] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
        ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = arg3
        uint256(tokenOfOwnerByIndex[address(arg3)].field_0)++
        uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
        uint128(tokenOfOwnerByIndex[address(arg3)][uint256(tokenOfOwnerByIndex[address(arg3)].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
        mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        mem[32] = 9
        stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[address(arg3)].field_0)
        require totalSupply + 1 >= totalSupply
        totalSupply++
        if ext_code.size(arg3) <= 0:
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
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
            mem[t + mem[64] + 164] = mem[t + _961 + 32]
            t = t + 32
            continue 
        require ext_code.size(arg3)
        call arg3.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], arg3, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
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
        _961 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_961 + 32 len 1024] = code.data[13119 len 1024]
        mem[_961 + 32] = arg3
        updateOperator[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
        require msg.sender
        if msg.sender == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            require estateRegistryAddress
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != estateRegistryAddress
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
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
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_961 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_961 + 68] = msg.sender
                mem[_961 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_961 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_961 + 164] = 128
                mem[_961 + 196] = mem[_961]
                s = 0
                while s < mem[_961]:
                    mem[s + _961 + 228] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                if not mem[_961] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_961 + 196 len mem[_961] + 32]
                else:
                    mem[floor32(mem[_961]) + _961 + 228] = mem[floor32(mem[_961]) + _961 + -(mem[_961] % 32) + 260 len mem[_961] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_961], data=mem[_961 + 228 len floor32(mem[_961]) + 32])
                mem[_961 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        if stor11[stor8[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]][address(msg.sender)]:
            require estateRegistryAddress
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != estateRegistryAddress
            require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
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
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_961 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_961 + 68] = msg.sender
                mem[_961 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_961 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_961 + 164] = 128
                mem[_961 + 196] = mem[_961]
                s = 0
                while s < mem[_961]:
                    mem[s + _961 + 228] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                if not mem[_961] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_961 + 196 len mem[_961] + 32]
                else:
                    mem[floor32(mem[_961]) + _961 + 228] = mem[floor32(mem[_961]) + _961 + -(mem[_961] % 32) + 260 len mem[_961] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_961], data=mem[_961 + 228 len floor32(mem[_961]) + 32])
                mem[_961 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        require approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == msg.sender
        require estateRegistryAddress
        require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != estateRegistryAddress
        require ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
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
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_961 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_961 + 68] = msg.sender
                mem[_961 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_961 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_961 + 164] = 128
                mem[_961 + 196] = mem[_961]
                s = 0
                while s < mem[_961]:
                    mem[s + _961 + 228] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                if not mem[_961] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_961 + 196 len mem[_961] + 32]
                else:
                    mem[floor32(mem[_961]) + _961 + 228] = mem[floor32(mem[_961]) + _961 + -(mem[_961] % 32) + 260 len mem[_961] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_961], data=mem[_961 + 228 len floor32(mem[_961]) + 32])
                mem[_961 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
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
            if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] == ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
                    approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
                    emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_961 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_961 + 68] = msg.sender
                mem[_961 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_961 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_961 + 164] = 128
                mem[_961 + 196] = mem[_961]
                s = 0
                while s < mem[_961]:
                    mem[s + _961 + 228] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                if not mem[_961] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_961 + 196 len mem[_961] + 32]
                else:
                    mem[floor32(mem[_961]) + _961 + 228] = mem[floor32(mem[_961]) + _961 + -(mem[_961] % 32) + 260 len mem[_961] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_961], data=mem[_961 + 228 len floor32(mem[_961]) + 32])
                mem[_961 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
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
        if ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] != ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
            mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            mem[32] = 9
            stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(estateRegistryAddress) > 0:
                mem[_961 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_961 + 68] = msg.sender
                mem[_961 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
                mem[_961 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
                mem[_961 + 164] = 128
                mem[_961 + 196] = mem[_961]
                s = 0
                while s < mem[_961]:
                    mem[s + _961 + 228] = mem[s + _961 + 32]
                    s = s + 32
                    continue 
                if not mem[_961] % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_961 + 196 len mem[_961] + 32]
                else:
                    mem[floor32(mem[_961]) + _961 + 228] = mem[floor32(mem[_961]) + _961 + -(mem[_961] % 32) + 260 len mem[_961] % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_961], data=mem[_961 + 228 len floor32(mem[_961]) + 32])
                mem[_961 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        if approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]:
            approved[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = 0
            emit Approval(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], 0, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
        ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = estateRegistryAddress
        uint256(tokenOfOwnerByIndex[stor16].field_0)++
        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = uint128(cd[((32 * idx) + arg2 + 36)])
        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = uint128(cd[((32 * idx) + arg1 + 36)])
        mem[0] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        mem[32] = 9
        stor9[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
        require totalSupply + 1 >= totalSupply
        totalSupply++
        if ext_code.size(estateRegistryAddress) <= 0:
            emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
            s = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
            idx = idx + 1
            continue 
        mem[_961 + 64] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[_961 + 68] = msg.sender
        mem[_961 + 100] = ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128]
        mem[_961 + 132] = uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128
        mem[_961 + 164] = 128
        mem[_961 + 196] = mem[_961]
        t = 0
        while t < mem[_961]:
            mem[t + _961 + 228] = mem[t + _961 + 32]
            t = t + 32
            continue 
        if not mem[_961] % 32:
            require ext_code.size(estateRegistryAddress)
            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, 128, mem[_961 + 196 len mem[_961] + 32]
        else:
            mem[floor32(mem[_961]) + _961 + 228] = mem[floor32(mem[_961]) + _961 + -(mem[_961] % 32) + 260 len mem[_961] % 32]
            require ext_code.size(estateRegistryAddress)
            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128, Array(len=mem[_961], data=mem[_961 + 228 len floor32(mem[_961]) + 32])
        mem[_961 + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        emit Transfer(ownerOfLand[uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128], estateRegistryAddress, uint128(cd[((32 * idx) + arg2 + 36)]) or cd[((32 * idx) + arg1 + 36)] << 128);
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
    mem[(32 * arg2.length) + (32 * arg1.length) + 224 len 1024] = code.data[13119 len 1024]
    mem[(32 * arg2.length) + (32 * arg1.length) + 224] = ext_call.return_data[0]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _3828 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _3834 = mem[(32 * idx) + (32 * arg1.length) + 160]
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
            _3872 = sha3(mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128, 8)
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
                    if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3872])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _4260 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _4260:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _4260 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _4260 + 32]
                        else:
                            mem[floor32(_4260) + mem[64] + 164] = mem[floor32(_4260) + mem[64] + -(_4260 % 32) + 196 len _4260 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_4260) + 64]
                    else:
                        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3872])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _4302 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _4302:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _4302 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _4302 + 32]
                            else:
                                mem[floor32(_4302) + mem[64] + 164] = mem[floor32(_4302) + mem[64] + -(_4302 % 32) + 196 len _4302 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_4302) + 64]
                        else:
                            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3872])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _4307 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _4307:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _4307 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _4307 + 32]
                            else:
                                mem[floor32(_4307) + mem[64] + 164] = mem[floor32(_4307) + mem[64] + -(_4307 % 32) + 196 len _4307 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_4307) + 64]
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
                    if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3872])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6284 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6284:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6284 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6284 + 32]
                        else:
                            mem[floor32(_6284) + mem[64] + 164] = mem[floor32(_6284) + mem[64] + -(_6284 % 32) + 196 len _6284 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6284) + 64]
                    else:
                        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _6364 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3872])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6366 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6366:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6366 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6366 + _6364 + -mem[64] + 160]
                            else:
                                mem[floor32(_6366) + _6364 + 164] = mem[floor32(_6366) + _6364 + -(_6366 % 32) + 196 len _6366 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_6366) + _6364 + -mem[64] + 192]
                        else:
                            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3872])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6371 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6371:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6371 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6371 + 32]
                            else:
                                mem[floor32(_6371) + mem[64] + 164] = mem[floor32(_6371) + mem[64] + -(_6371 % 32) + 196 len _6371 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6371) + 64]
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
                    if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3872])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6376 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6376:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6376 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6376 + 32]
                        else:
                            mem[floor32(_6376) + mem[64] + 164] = mem[floor32(_6376) + mem[64] + -(_6376 % 32) + 196 len _6376 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6376) + 64]
                    else:
                        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3872])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6473 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6473:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6473 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6473 + 32]
                            else:
                                mem[floor32(_6473) + mem[64] + 164] = mem[floor32(_6473) + mem[64] + -(_6473 % 32) + 196 len _6473 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6473) + 64]
                        else:
                            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3872])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6478 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6478:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6478 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6478 + 32]
                            else:
                                mem[floor32(_6478) + mem[64] + 164] = mem[floor32(_6478) + mem[64] + -(_6478 % 32) + 196 len _6478 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6478) + 64]
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
                    if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3872])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _7816 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _7816:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _7816 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _7816 + 32]
                        else:
                            mem[floor32(_7816) + mem[64] + 164] = mem[floor32(_7816) + mem[64] + -(_7816 % 32) + 196 len _7816 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_7816) + 64]
                    else:
                        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3872])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _7856 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _7856:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _7856 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _7856 + 32]
                            else:
                                mem[floor32(_7856) + mem[64] + 164] = mem[floor32(_7856) + mem[64] + -(_7856 % 32) + 196 len _7856 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3872]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_7856) + 64]
                        else:
                            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            _7859 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3872])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _7861 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _7861:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _7861 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7861 + _7859 + -mem[64] + 160]
                            else:
                                mem[floor32(_7861) + _7859 + 164] = mem[floor32(_7861) + _7859 + -(_7861 % 32) + 196 len _7861 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_7861) + _7859 + -mem[64] + 192]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(address(stor[_3872]), estateRegistryAddress, uint128(_3834) or _3828 << 128);
            s = uint128(_3834) or _3828 << 128
            idx = idx + 1
            continue 
        if stor11[stor8[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]][address(msg.sender)]:
            require estateRegistryAddress
            require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != estateRegistryAddress
            require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] == ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
            _3882 = sha3(mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128, 8)
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
                    if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3882])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _4362 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _4362:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _4362 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _4362 + 32]
                        else:
                            mem[floor32(_4362) + mem[64] + 164] = mem[floor32(_4362) + mem[64] + -(_4362 % 32) + 196 len _4362 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_4362) + 64]
                    else:
                        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3882])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _4412 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _4412:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _4412 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _4412 + 32]
                            else:
                                mem[floor32(_4412) + mem[64] + 164] = mem[floor32(_4412) + mem[64] + -(_4412 % 32) + 196 len _4412 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_4412) + 64]
                        else:
                            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3882])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _4417 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _4417:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _4417 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _4417 + 32]
                            else:
                                mem[floor32(_4417) + mem[64] + 164] = mem[floor32(_4417) + mem[64] + -(_4417 % 32) + 196 len _4417 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_4417) + 64]
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
                    if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        _6262 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3882])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6264 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6264:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6264 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6264 + _6262 + -mem[64] + 160]
                        else:
                            mem[floor32(_6264) + _6262 + 164] = mem[floor32(_6264) + _6262 + -(_6264 % 32) + 196 len _6264 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_6264) + _6262 + -mem[64] + 192]
                    else:
                        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3882])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6324 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6324:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6324 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6324 + 32]
                            else:
                                mem[floor32(_6324) + mem[64] + 164] = mem[floor32(_6324) + mem[64] + -(_6324 % 32) + 196 len _6324 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6324) + 64]
                        else:
                            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3882])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6329 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6329:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6329 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6329 + 32]
                            else:
                                mem[floor32(_6329) + mem[64] + 164] = mem[floor32(_6329) + mem[64] + -(_6329 % 32) + 196 len _6329 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6329) + 64]
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
                    if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3882])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6334 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6334:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6334 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6334 + 32]
                        else:
                            mem[floor32(_6334) + mem[64] + 164] = mem[floor32(_6334) + mem[64] + -(_6334 % 32) + 196 len _6334 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6334) + 64]
                    else:
                        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3882])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6451 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6451:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6451 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6451 + 32]
                            else:
                                mem[floor32(_6451) + mem[64] + 164] = mem[floor32(_6451) + mem[64] + -(_6451 % 32) + 196 len _6451 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6451) + 64]
                        else:
                            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3882])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _6456 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _6456:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _6456 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6456 + 32]
                            else:
                                mem[floor32(_6456) + mem[64] + 164] = mem[floor32(_6456) + mem[64] + -(_6456 % 32) + 196 len _6456 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6456) + 64]
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
                    if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        _7804 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3882])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _7806 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _7806:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _7806 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7806 + _7804 + -mem[64] + 160]
                        else:
                            mem[floor32(_7806) + _7804 + 164] = mem[floor32(_7806) + _7804 + -(_7806 % 32) + 196 len _7806 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_7806) + _7804 + -mem[64] + 192]
                    else:
                        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3882])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _7836 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _7836:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _7836 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _7836 + 32]
                            else:
                                mem[floor32(_7836) + mem[64] + 164] = mem[floor32(_7836) + mem[64] + -(_7836 % 32) + 196 len _7836 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_7836) + 64]
                        else:
                            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                            uint256(tokenOfOwnerByIndex[stor16].field_0)++
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            mem[32] = 9
                            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                            require totalSupply + 1 >= totalSupply
                            totalSupply++
                            if ext_code.size(estateRegistryAddress) <= 0:
                                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor[_3882])
                            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            _7841 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                            s = 0
                            while s < _7841:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                                s = s + 32
                                continue 
                            if not _7841 % 32:
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _7841 + 32]
                            else:
                                mem[floor32(_7841) + mem[64] + 164] = mem[floor32(_7841) + mem[64] + -(_7841 % 32) + 196 len _7841 % 32]
                                require ext_code.size(estateRegistryAddress)
                                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor[_3882]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_7841) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(address(stor[_3882]), estateRegistryAddress, uint128(_3834) or _3828 << 128);
            s = uint128(_3834) or _3828 << 128
            idx = idx + 1
            continue 
        require approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] == msg.sender
        require estateRegistryAddress
        require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != estateRegistryAddress
        require ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] == ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]
        _3890 = sha3(mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128, 8)
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
                if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    if ext_code.size(estateRegistryAddress) <= 0:
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3890])
                    mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _4525 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _4525:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _4525 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _4525 + 32]
                    else:
                        mem[floor32(_4525) + mem[64] + 164] = mem[floor32(_4525) + mem[64] + -(_4525 % 32) + 196 len _4525 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_4525) + 64]
                else:
                    if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3890])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _4592 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _4592:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _4592 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _4592 + 32]
                        else:
                            mem[floor32(_4592) + mem[64] + 164] = mem[floor32(_4592) + mem[64] + -(_4592 % 32) + 196 len _4592 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_4592) + 64]
                    else:
                        approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        _4595 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3890])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _4597 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _4597:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _4597 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4597 + _4595 + -mem[64] + 160]
                        else:
                            mem[floor32(_4597) + _4595 + 164] = mem[floor32(_4597) + _4595 + -(_4597 % 32) + 196 len _4597 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_4597) + _4595 + -mem[64] + 192]
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
                if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    if ext_code.size(estateRegistryAddress) <= 0:
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3890])
                    mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _6274 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _6274:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _6274 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6274 + 32]
                    else:
                        mem[floor32(_6274) + mem[64] + 164] = mem[floor32(_6274) + mem[64] + -(_6274 % 32) + 196 len _6274 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6274) + 64]
                else:
                    if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        _6343 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3890])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6345 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6345:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6345 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6345 + _6343 + -mem[64] + 160]
                        else:
                            mem[floor32(_6345) + _6343 + 164] = mem[floor32(_6345) + _6343 + -(_6345 % 32) + 196 len _6345 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_6345) + _6343 + -mem[64] + 192]
                    else:
                        approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                        emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                        uint256(tokenOfOwnerByIndex[stor16].field_0)++
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                        uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        mem[32] = 9
                        stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                        require totalSupply + 1 >= totalSupply
                        totalSupply++
                        if ext_code.size(estateRegistryAddress) <= 0:
                            emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                            s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor[_3890])
                        mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        _6350 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                        s = 0
                        while s < _6350:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                            s = s + 32
                            continue 
                        if not _6350 % 32:
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6350 + 32]
                        else:
                            mem[floor32(_6350) + mem[64] + 164] = mem[floor32(_6350) + mem[64] + -(_6350 % 32) + 196 len _6350 % 32]
                            require ext_code.size(estateRegistryAddress)
                            call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6350) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(address(stor[_3890]), estateRegistryAddress, uint128(_3834) or _3828 << 128);
            s = uint128(_3834) or _3828 << 128
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
            if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                uint256(tokenOfOwnerByIndex[stor16].field_0)++
                uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                mem[32] = 9
                stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                require totalSupply + 1 >= totalSupply
                totalSupply++
                if ext_code.size(estateRegistryAddress) <= 0:
                    emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(stor[_3890])
                mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                _6355 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                s = 0
                while s < _6355:
                    mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                    s = s + 32
                    continue 
                if not _6355 % 32:
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6355 + 32]
                else:
                    mem[floor32(_6355) + mem[64] + 164] = mem[floor32(_6355) + mem[64] + -(_6355 % 32) + 196 len _6355 % 32]
                    require ext_code.size(estateRegistryAddress)
                    call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6355) + 64]
            else:
                if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    if ext_code.size(estateRegistryAddress) <= 0:
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3890])
                    mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _6462 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _6462:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _6462 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6462 + 32]
                    else:
                        mem[floor32(_6462) + mem[64] + 164] = mem[floor32(_6462) + mem[64] + -(_6462 % 32) + 196 len _6462 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6462) + 64]
                else:
                    approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
                    emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                    ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
                    uint256(tokenOfOwnerByIndex[stor16].field_0)++
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                    mem[32] = 9
                    stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
                    require totalSupply + 1 >= totalSupply
                    totalSupply++
                    if ext_code.size(estateRegistryAddress) <= 0:
                        emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                        s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor[_3890])
                    mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    _6467 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
                    s = 0
                    while s < _6467:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                        s = s + 32
                        continue 
                    if not _6467 % 32:
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _6467 + 32]
                    else:
                        mem[floor32(_6467) + mem[64] + 164] = mem[floor32(_6467) + mem[64] + -(_6467 % 32) + 196 len _6467 % 32]
                        require ext_code.size(estateRegistryAddress)
                        call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_6467) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(address(stor[_3890]), estateRegistryAddress, uint128(_3834) or _3828 << 128);
            s = uint128(_3834) or _3828 << 128
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
        if ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] != ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
            mem[32] = 9
            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(estateRegistryAddress) <= 0:
                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(stor[_3890])
            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            _7811 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            s = 0
            while s < _7811:
                mem[s + mem[64] + 164] = mem[s + (32 * arg2.length) + (32 * arg1.length) + 224]
                s = s + 32
                continue 
            if not _7811 % 32:
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _7811 + 32]
            else:
                mem[floor32(_7811) + mem[64] + 164] = mem[floor32(_7811) + mem[64] + -(_7811 % 32) + 196 len _7811 % 32]
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_7811) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            emit Transfer(address(stor[_3890]), estateRegistryAddress, uint128(_3834) or _3828 << 128);
            s = uint128(_3834) or _3828 << 128
            idx = idx + 1
            continue 
        if not approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128]:
            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
            mem[32] = 9
            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(estateRegistryAddress) <= 0:
                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                idx = idx + 1
                continue 
            _7844 = mem[64]
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(stor[_3890])
            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            _7846 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            t = 0
            while t < _7846:
                mem[t + mem[64] + 164] = mem[t + (32 * arg2.length) + (32 * arg1.length) + 224]
                t = t + 32
                continue 
            if not _7846 % 32:
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _7846 + _7844 + -mem[64] + 160]
            else:
                mem[floor32(_7846) + _7844 + 164] = mem[floor32(_7846) + _7844 + -(_7846 % 32) + 196 len _7846 % 32]
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_7846) + _7844 + -mem[64] + 192]
        else:
            approved[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = 0
            emit Approval(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], 0, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
            ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = estateRegistryAddress
            uint256(tokenOfOwnerByIndex[stor16].field_0)++
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
            uint128(tokenOfOwnerByIndex[stor16][uint256(tokenOfOwnerByIndex[stor16].field_0)].field_128) = mem[(32 * idx) + 144 len 16]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
            mem[32] = 9
            stor9[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128] = uint256(tokenOfOwnerByIndex[stor16].field_0)
            require totalSupply + 1 >= totalSupply
            totalSupply++
            if ext_code.size(estateRegistryAddress) <= 0:
                emit Transfer(ownerOfLand[mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128], estateRegistryAddress, mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128);
                s = mem[(32 * idx) + (32 * arg1.length) + 176 len 16] or mem[(32 * idx) + 128] << 128
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(stor[_3890])
            mem[mem[64] + 68] = uint128(_3834) or _3828 << 128
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            _7851 = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
            t = 0
            while t < _7851:
                mem[t + mem[64] + 164] = mem[t + (32 * arg2.length) + (32 * arg1.length) + 224]
                t = t + 32
                continue 
            if not _7851 % 32:
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len _7851 + 32]
            else:
                mem[floor32(_7851) + mem[64] + 164] = mem[floor32(_7851) + mem[64] + -(_7851 % 32) + 196 len _7851 % 32]
                require ext_code.size(estateRegistryAddress)
                call estateRegistryAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, address(stor[_3890]), uint128(_3834) or _3828 << 128, 128, mem[mem[64] + 132 len floor32(_7851) + 64]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        emit Transfer(address(stor[_3890]), estateRegistryAddress, uint128(_3834) or _3828 << 128);
        t = uint128(_3834) or _3828 << 128
        idx = idx + 1
        continue 
    return ext_call.return_data[0]
}



}
