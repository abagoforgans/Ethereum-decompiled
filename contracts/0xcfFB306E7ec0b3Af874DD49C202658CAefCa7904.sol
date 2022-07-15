contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2, address arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
array of uint256 tokenURI;
address owner;
address registryAddress;
array of uint256 estateLandIds;
mapping of uint256 landEstateId;
mapping of uint256 estateLandIndex;
array of uint256 metadata;
mapping of address updateOperator;
mapping of uint8 stor19;
mapping of uint8 stor99;

function name() {
    return name[0 len name.length]
}

function updateManager(address arg1, address arg2) {
    return bool(stor19[arg1][arg2])
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function landIdEstate(uint256 arg1) {
    return landEstateId[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function estateLandIds(uint256 arg1, uint256 arg2) {
    require arg2 < estateLandIds[arg1]
    return estateLandIds[arg1][arg2]
}

function exists(uint256 arg1) {
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function updateOperator(uint256 arg1) {
    return updateOperator[arg1]
}

function estateLandIndex(uint256 arg1, uint256 arg2) {
    return estateLandIndex[arg1][arg2]
}

function getMetadata(uint256 arg1) {
    return metadata[arg1][0 len metadata[arg1].length]
}

function getLandEstateId(uint256 arg1) {
    return landEstateId[arg1]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function getEstateSize(uint256 arg1) {
    return estateLandIds[arg1]
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

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function ping() {
    require ext_code.size(registryAddress)
    call registryAddress.0x5c36b186 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function isUpdateAuthorized(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2]
    if arg1 == ownerOf[arg2]:
        return True
    if approved[arg2] == arg1:
        return True
    if stor4[stor1[arg2]][address(arg1)]:
        return bool(stor4[stor1[arg2]][address(arg1)])
    if updateOperator[arg2] == arg1:
        return True
    return bool(stor19[stor1[arg2]][address(arg1)])
}

function setUpdateOperator(uint256 arg1, address arg2) {
    require ownerOf[arg1]
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][address(msg.sender)]:
                if not stor19[stor1[arg1]][msg.sender]:
                    revert with 0, 'unauthorized user'
    updateOperator[arg1] = arg2
    emit UpdateOperator(arg1, arg2);
}

function setLANDRegistry(address arg1) {
    require msg.sender == owner
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The LAND registry address should be a contract'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The LAND registry address should be valid'
    registryAddress = arg1
    emit SetLANDRegistry(arg1);
}

function setUpdateManager(address arg1, address arg2, bool arg3) {
    if msg.sender == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The operator should be different from owner'
    if arg1 != msg.sender:
        if not stor4[address(arg1)][msg.sender]:
            revert with 0, 'Unauthorized user'
    stor19[address(arg1)][address(arg2)] = uint8(arg3)
    emit UpdateManager(arg3, arg1, arg2, msg.sender);
}

function updateMetadata(uint256 arg1, string arg2) {
    require ownerOf[arg1]
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][address(msg.sender)]:
                if updateOperator[arg1] != msg.sender:
                    if not stor19[stor1[arg1]][address(msg.sender)]:
                        revert with 0, 'Unauthorized user'
    metadata[arg1][] = Array(len=arg2.length, data=arg2[all])
    require ownerOf[arg1]
    emit Update(Array(len=arg2.length, data=arg2[all]), arg1, ownerOf[arg1], msg.sender);
}

function setLandUpdateOperator(uint256 arg1, uint256 arg2, address arg3) {
    require ownerOf[arg1]
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][address(msg.sender)]:
                if not stor19[stor1[arg1]][msg.sender]:
                    revert with 0, 'unauthorized user'
    if arg1 != landEstateId[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The LAND is not part of the Estate'
    require ext_code.size(registryAddress)
    call registryAddress.0xb0b02c60 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function supportsInterface(bytes4 arg1) {
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x4f558e7900000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, sha3('getMetadata(uint256)')) == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, sha3('verifyFingerprint(uint256,bytes)')) == Mask(32, 224, arg1))
}

function initialize() {
    if stor[Mask(88, 0, ('map', "'Migratable'", ('name', 'stor0', 0)))][0xa3696e697469616c697a65000000000000000000000000000000000000000000]:
        revert with 0, 'Requested target migration ID has already been run'
    if stor[('map', ('or', 37788586334827825853074475034712213756223791831187456, 'Migratable'), ('name', 'stor0', 0)) % 1099511627776][0x65000000000000000000000000000000000000000000 or Mask(40, 176, 'Migratable') or 1.2.1]:
        revert with 0, 'Requested target migration ID has already been run'
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  10,
                  'Migratable' << 176,
                  5,
                  '1.2.1' % 1099511627776,
    stor[('map', ('or', 64, 'Migratable'), ('name', 'stor0', 0)) % 1099511627776][64 or Mask(40, 176, 'Migratable') or 1.2.1] = 1
    stor0[64 or Migratable][0] = 1
}

function initialize(string arg1, string arg2) {
    if stor[Mask(88, 0, ('map', "'ERC721Token'", ('name', 'stor0', 0)))][0xa3696e697469616c697a65000000000000000000000000000000000000000000]:
        revert with 0, 'Requested target migration ID has already been run'
    if stor[('map', "'ERC721Token'", ('name', 'stor0', 0)) % 1099511627776][0 or Mask(48, 168, 'ERC721Token') or 1.9.0]:
        revert with 0, 'Requested target migration ID has already been run'
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  11,
                  'ERC721Token' << 168,
                  5,
                  '1.9.0' % 1099511627776,
    stor[('map', "'ERC721Token'", ('name', 'stor0', 0)) % 1099511627776][64 or Mask(48, 168, 'ERC721Token') or 1.9.0] = 1
    stor0['ERC721Token'][0] = 1
}

function initialize(address arg1) {
    if stor[Mask(88, 0, ('map', "'Ownable'", ('name', 'stor0', 0)))][0xa3696e697469616c697a65000000000000000000000000000000000000000000]:
        revert with 0, 'Requested target migration ID has already been run'
    if stor[('map', ('or', 680513302997501653006678116182597548187272718836982660202496, 'Ownable'), ('name', 'stor0', 0)) % 1099511627776][0x6c697a65000000000000000000000000000000000000000000 or Mask(16, 200, 'Ownable') or 1.9.0]:
        revert with 0, 'Requested target migration ID has already been run'
    owner = arg1
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  7,
                  'Ownable' << 200,
                  5,
                  '1.9.0' % 1099511627776,
    stor[('map', ('or', 64, 'Ownable'), ('name', 'stor0', 0)) % 1099511627776][64 or Mask(16, 200, 'Ownable') or 1.9.0] = 1
    stor0[64 or Ownable][0] = 1
}

function getFingerprint(uint256 arg1) {
    mem[128] = 'estateId'
    mem[136] = arg1
    mem[96] = 40
    mem[64] = 168
    mem[168] = 'estateId', Mask(192, 64, arg1) >> 64
    mem[200 len 8] = uint64(arg1)
    mem[0] = arg1
    mem[32] = 14
    idx = 0
    s = 0
    while idx < estateLandIds[arg1]:
        mem[32] = 14
        require idx < estateLandIds[arg1]
        mem[0] = sha3(arg1, 14)
        _47 = mem[64]
        mem[mem[64] + 32] = estateLandIds[arg1][idx]
        _48 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _50 = mem[_48]
        u = _48 + 32
        v = _47 + 64
        t = mem[_48]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_47 + floor32(mem[_48]) + 64] = mem[_47 + floor32(mem[_48]) + 64] and 256^(-(mem[_48] % 32) + 32) - 1 or mem[_48 + floor32(mem[_48]) + 32] and !(256^(-(mem[_48] % 32) + 32) - 1)
        idx = idx + 1
        s = sha3(mem[_47 + 64 len _50]) xor s
        continue 
    return s
}

function mint(address arg1, string arg2) {
    if registryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the registry can make this operation'
    if not arg1:
        revert with 0, 'You can not mint to an empty address'
    require tokenByIndex.length + 1 >= tokenByIndex.length
    require arg1
    require not ownerOf[stor9.length + 1]
    ownerOf[stor9.length + 1] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenByIndex.length + 1
    stor8[stor9.length + 1] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, tokenByIndex.length + 1);
    stor10[stor9.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
    metadata[stor9.length + 1][] = Array(len=arg2.length, data=arg2[all])
    emit CreateEstate(Array(len=arg2.length, data=arg2[all]), arg1, tokenByIndex.length + 1);
    return (tokenByIndex.length + 1)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    if registryAddress != msg.sender:
        revert with 0, 'Only the registry can make this operation'
    idx = 0
    s = 0
    while idx < arg4.length:
        if not idx:
            if idx < arg4.length:
                idx = idx + 1
                s = Mask(8, 248, mem[idx + 128]) or s
                continue 
        else:
            if 8 * idx / idx == 8:
                if idx < arg4.length:
                    idx = idx + 1
                    s = Mask(8, 248, mem[idx + 128]) / 2^(8 * idx) or s
                    continue 
        revert
    if not ownerOf[s]:
        revert with 0, 'The Estate id should exist'
    if landEstateId[arg3]:
        revert with 0, 'The LAND is already owned by an Estate'
    require ext_code.size(registryAddress)
    call registryAddress.0x6352211e with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'The EstateRegistry cannot manage the LAND'
    estateLandIds[s]++
    estateLandIds[s][estateLandIds[s]] = arg3
    landEstateId[arg3] = s
    estateLandIndex[s][arg3] = estateLandIds[s]
    emit AddLand(s, arg3);
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function updateLandData(uint256 arg1, uint256 arg2, string arg3) {
    require ownerOf[arg1]
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][address(msg.sender)]:
                if updateOperator[arg1] != msg.sender:
                    if not stor19[stor1[arg1]][address(msg.sender)]:
                        require ext_code.size(registryAddress)
                        call registryAddress.0x9d40b850 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, 'unauthorized user'
    if arg1 != landEstateId[arg2]:
        revert with 0, 'The LAND is not part of the Estate'
    require ext_code.size(registryAddress)
    call registryAddress.0x7efd9112 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(registryAddress)
    call registryAddress.0xd4dd1594 with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[32], Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function verifyFingerprint(uint256 arg1, bytes arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    idx = 0
    s = 0
    while idx < arg2.length:
        if not idx:
            if idx < arg2.length:
                idx = idx + 1
                s = Mask(8, 248, mem[idx + 128]) or s
                continue 
        else:
            if 8 * idx / idx == 8:
                if idx < arg2.length:
                    idx = idx + 1
                    s = Mask(8, 248, mem[idx + 128]) / 2^(8 * idx) or s
                    continue 
        revert
    mem[ceil32(arg2.length) + 160] = 'estateId'
    mem[ceil32(arg2.length) + 168] = arg1
    mem[ceil32(arg2.length) + 128] = 40
    mem[64] = ceil32(arg2.length) + 200
    mem[ceil32(arg2.length) + 200] = 'estateId', Mask(192, 64, arg1) >> 64
    mem[ceil32(arg2.length) + 232 len 8] = uint64(arg1)
    mem[0] = arg1
    mem[32] = 14
    idx = 0
    s = 0
    while idx < estateLandIds[arg1]:
        mem[32] = 14
        require idx < estateLandIds[arg1]
        mem[0] = sha3(arg1, 14)
        _77 = mem[64]
        mem[mem[64] + 32] = estateLandIds[arg1][idx]
        _78 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _80 = mem[_78]
        u = _78 + 32
        v = _77 + 64
        t = mem[_78]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_77 + floor32(mem[_78]) + 64] = mem[_77 + floor32(mem[_78]) + 64] and 256^(-(mem[_78] % 32) + 32) - 1 or mem[_78 + floor32(mem[_78]) + 32] and !(256^(-(mem[_78] % 32) + 32) - 1)
        idx = idx + 1
        s = sha3(mem[_77 + 64 len _80]) xor s
        continue 
    return (s == ceil32(arg2.length) + 232)
}

function isMigrated(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 0
    _21 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = _21
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = bool(uint8(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]))
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}

function transferLand(uint256 arg1, uint256 arg2, address arg3) {
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner or operator can tranfer'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can not transfer LAND to an empty address'
    if not estateLandIndex[arg1][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The LAND is not part of the Estate'
    require 1 <= estateLandIds[arg1]
    require 1 <= estateLandIndex[arg1][arg2]
    require estateLandIds[arg1] - 1 < estateLandIds[arg1]
    require estateLandIndex[arg1][arg2] >= estateLandIndex[arg1][arg2] - 1
    estateLandIndex[arg1][stor14[arg1][stor14[arg1]]] = estateLandIndex[arg1][arg2]
    require estateLandIndex[arg1][arg2] - 1 < estateLandIds[arg1]
    estateLandIds[arg1][stor16[arg1][arg2]] = estateLandIds[arg1][estateLandIds[arg1]]
    require estateLandIds[arg1] - 1 < estateLandIds[arg1]
    estateLandIds[arg1][estateLandIds[arg1]] = 0
    estateLandIds[arg1]--
    if estateLandIds[arg1] > estateLandIds[arg1] - 1:
        idx = estateLandIds[arg1] - 1
        while estateLandIds[arg1] > idx:
            estateLandIds[arg1][idx] = 0
            idx = idx + 1
            continue 
    estateLandIndex[arg1][arg2] = 0
    landEstateId[arg2] = 0
    require ext_code.size(registryAddress)
    call registryAddress.0x42842e0e with:
         gas gas_remaining wei
        args this.address, address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RemoveLand(arg1, arg2, arg3);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    updateOperator[arg3] = 0
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner or operator can tranfer'
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function transferManyLands(uint256 arg1, uint256[] arg2, address arg3) {
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner or operator can tranfer'
    idx = 0
    while idx < arg2.length:
        if not arg3:
            revert with 0, 'You can not transfer LAND to an empty address'
        if not estateLandIndex[arg1][cd[((32 * idx) + arg2 + 36)]]:
            revert with 0, 'The LAND is not part of the Estate'
        require 1 <= estateLandIds[arg1]
        require 1 <= estateLandIndex[arg1][cd[((32 * idx) + arg2 + 36)]]
        require estateLandIds[arg1] - 1 < estateLandIds[arg1]
        require estateLandIndex[arg1][cd[((32 * idx) + arg2 + 36)]] >= estateLandIndex[arg1][cd[((32 * idx) + arg2 + 36)]] - 1
        estateLandIndex[arg1][stor14[arg1][stor14[arg1]]] = estateLandIndex[arg1][cd[((32 * idx) + arg2 + 36)]]
        require estateLandIndex[arg1][cd[((32 * idx) + arg2 + 36)]] - 1 < estateLandIds[arg1]
        estateLandIds[arg1][stor16[arg1][cd[((32 * idx) + arg2 + 36)]]] = estateLandIds[arg1][estateLandIds[arg1]]
        require estateLandIds[arg1] - 1 < estateLandIds[arg1]
        estateLandIds[arg1][estateLandIds[arg1]] = 0
        estateLandIds[arg1]--
        if estateLandIds[arg1] > estateLandIds[arg1] - 1:
            s = estateLandIds[arg1] + sha3(sha3(arg1, 14)) - 1
            while sha3(sha3(arg1, 14)) + estateLandIds[arg1] > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        mem[0] = cd[((32 * idx) + arg2 + 36)]
        estateLandIndex[arg1][cd[((32 * idx) + arg2 + 36)]] = 0
        mem[32] = 15
        landEstateId[cd[((32 * idx) + arg2 + 36)]] = 0
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = arg3
        mem[164] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(registryAddress)
        call registryAddress.0x42842e0e with:
             gas gas_remaining wei
            args this.address, address(arg3), cd[((32 * idx) + arg2 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RemoveLand(arg1, cd[((32 * idx) + arg2 + 36)], arg3);
        idx = idx + 1
        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'Only owner or operator can tranfer'
    updateOperator[arg3] = 0
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'Only owner or operator can tranfer'
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function updateManyLandData(uint256 arg1, uint256[] arg2, string arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + ceil32(arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len arg3.length] = arg3[all]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        require ownerOf[arg1]
        require ownerOf[arg1]
        if msg.sender == ownerOf[arg1]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 15
            if arg1 != landEstateId[mem[(32 * idx) + 128]]:
                revert with 0, 'The LAND is not part of the Estate'
            require ext_code.size(registryAddress)
            call registryAddress.0x7efd9112 with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[mem[64]] = 0xd4dd159400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = ext_call.return_data[32]
            mem[mem[64] + 68] = 96
            mem[mem[64] + 100] = mem[(32 * arg2.length) + 128]
            _131 = mem[(32 * arg2.length) + 128]
            s = 0
            while s < _131:
                mem[s + mem[64] + 132] = mem[s + (32 * arg2.length) + 160]
                s = s + 32
                continue 
            if not _131 % 32:
                require ext_code.size(registryAddress)
                call registryAddress.0xd4dd1594 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[32], 96, mem[mem[64] + 100 len _131 + 32]
            else:
                mem[floor32(_131) + mem[64] + 132] = mem[floor32(_131) + mem[64] + -(_131 % 32) + 164 len _131 % 32]
                require ext_code.size(registryAddress)
                call registryAddress.0xd4dd1594 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[32], 96, mem[mem[64] + 100 len floor32(_131) + 64]
        else:
            if approved[arg1] == msg.sender:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 15
                if arg1 != landEstateId[mem[(32 * idx) + 128]]:
                    revert with 0, 'The LAND is not part of the Estate'
                require ext_code.size(registryAddress)
                call registryAddress.0x7efd9112 with:
                     gas gas_remaining wei
                    args mem[(32 * idx) + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                _152 = mem[64]
                mem[mem[64]] = 0xd4dd159400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = ext_call.return_data[32]
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = mem[(32 * arg2.length) + 128]
                _154 = mem[(32 * arg2.length) + 128]
                s = 0
                while s < _154:
                    mem[s + mem[64] + 132] = mem[s + (32 * arg2.length) + 160]
                    s = s + 32
                    continue 
                if not _154 % 32:
                    require ext_code.size(registryAddress)
                    call registryAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _154 + _152 + -mem[64] + 128]
                else:
                    mem[floor32(_154) + _152 + 132] = mem[floor32(_154) + _152 + -(_154 % 32) + 164 len _154 % 32]
                    require ext_code.size(registryAddress)
                    call registryAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_154) + _152 + -mem[64] + 160]
            else:
                if stor4[stor1[arg1]][address(msg.sender)]:
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 15
                    if arg1 != landEstateId[mem[(32 * idx) + 128]]:
                        revert with 0, 'The LAND is not part of the Estate'
                    require ext_code.size(registryAddress)
                    call registryAddress.0x7efd9112 with:
                         gas gas_remaining wei
                        args mem[(32 * idx) + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    _169 = mem[64]
                    mem[mem[64]] = 0xd4dd159400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = ext_call.return_data[32]
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = mem[(32 * arg2.length) + 128]
                    _171 = mem[(32 * arg2.length) + 128]
                    s = 0
                    while s < _171:
                        mem[s + mem[64] + 132] = mem[s + (32 * arg2.length) + 160]
                        s = s + 32
                        continue 
                    if not _171 % 32:
                        require ext_code.size(registryAddress)
                        call registryAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _171 + _169 + -mem[64] + 128]
                    else:
                        mem[floor32(_171) + _169 + 132] = mem[floor32(_171) + _169 + -(_171 % 32) + 164 len _171 % 32]
                        require ext_code.size(registryAddress)
                        call registryAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_171) + _169 + -mem[64] + 160]
                else:
                    if updateOperator[arg1] == msg.sender:
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 15
                        if arg1 != landEstateId[mem[(32 * idx) + 128]]:
                            revert with 0, 'The LAND is not part of the Estate'
                        require ext_code.size(registryAddress)
                        call registryAddress.0x7efd9112 with:
                             gas gas_remaining wei
                            args mem[(32 * idx) + 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _181 = mem[64]
                        mem[mem[64]] = 0xd4dd159400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = ext_call.return_data[32]
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = mem[(32 * arg2.length) + 128]
                        _183 = mem[(32 * arg2.length) + 128]
                        s = 0
                        while s < _183:
                            mem[s + mem[64] + 132] = mem[s + (32 * arg2.length) + 160]
                            s = s + 32
                            continue 
                        if not _183 % 32:
                            require ext_code.size(registryAddress)
                            call registryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _183 + _181 + -mem[64] + 128]
                        else:
                            mem[floor32(_183) + _181 + 132] = mem[floor32(_183) + _181 + -(_183 % 32) + 164 len _183 % 32]
                            require ext_code.size(registryAddress)
                            call registryAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_183) + _181 + -mem[64] + 160]
                    else:
                        if stor19[stor1[arg1]][address(msg.sender)]:
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 15
                            if arg1 != landEstateId[mem[(32 * idx) + 128]]:
                                revert with 0, 'The LAND is not part of the Estate'
                            require ext_code.size(registryAddress)
                            call registryAddress.0x7efd9112 with:
                                 gas gas_remaining wei
                                args mem[(32 * idx) + 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[mem[64]] = 0xd4dd159400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = ext_call.return_data[32]
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg2.length) + 128]
                            _188 = mem[(32 * arg2.length) + 128]
                            s = 0
                            while s < _188:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg2.length) + 160]
                                s = s + 32
                                continue 
                            if not _188 % 32:
                                require ext_code.size(registryAddress)
                                call registryAddress.0xd4dd1594 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[32], 96, mem[mem[64] + 100 len _188 + 32]
                            else:
                                mem[floor32(_188) + mem[64] + 132] = mem[floor32(_188) + mem[64] + -(_188 % 32) + 164 len _188 % 32]
                                require ext_code.size(registryAddress)
                                call registryAddress.0xd4dd1594 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[32], 96, mem[mem[64] + 100 len floor32(_188) + 64]
                        else:
                            require ext_code.size(registryAddress)
                            call registryAddress.0x9d40b850 with:
                                 gas gas_remaining wei
                                args mem[(32 * idx) + 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != msg.sender:
                                revert with 0, 'unauthorized user'
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 15
                            if arg1 != landEstateId[mem[(32 * idx) + 128]]:
                                revert with 0, 'The LAND is not part of the Estate'
                            require ext_code.size(registryAddress)
                            call registryAddress.0x7efd9112 with:
                                 gas gas_remaining wei
                                args mem[(32 * idx) + 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[mem[64]] = 0xd4dd159400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = ext_call.return_data[32]
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg2.length) + 128]
                            _209 = mem[(32 * arg2.length) + 128]
                            s = 0
                            while s < _209:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg2.length) + 160]
                                s = s + 32
                                continue 
                            if not _209 % 32:
                                require ext_code.size(registryAddress)
                                call registryAddress.0xd4dd1594 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[32], 96, mem[mem[64] + 100 len _209 + 32]
                            else:
                                mem[floor32(_209) + mem[64] + 132] = mem[floor32(_209) + mem[64] + -(_209 % 32) + 164 len _209 % 32]
                                require ext_code.size(registryAddress)
                                call registryAddress.0xd4dd1594 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[32], 96, mem[mem[64] + 100 len floor32(_209) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function safeTransferManyFrom(address arg1, address arg2, uint256[] arg3) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + 160
    mem[(32 * arg3.length) + 128] = 0
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _1114 = mem[(32 * idx) + 128]
        require ownerOf[mem[(32 * idx) + 128]]
        if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
            updateOperator[mem[(32 * idx) + 128]] = 0
            require ownerOf[mem[(32 * idx) + 128]]
            if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
                require arg1
                require arg2
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                if not approved[mem[(32 * idx) + 128]]:
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= tokenOfOwnerByIndex[address(arg1)]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            _1663 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _1665 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1665:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1665 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1665 + _1663 + -mem[64] + 160]
                            else:
                                mem[floor32(_1665) + _1663 + 164] = mem[floor32(_1665) + _1663 + -(_1665 % 32) + 196 len _1665 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1665) + _1663 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            _2563 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _2565 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2565:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2565 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2565 + _2563 + -mem[64] + 160]
                            else:
                                mem[floor32(_2565) + _2563 + 164] = mem[floor32(_2565) + _2563 + -(_2565 % 32) + 196 len _2565 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_2565) + _2563 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    approved[mem[(32 * idx) + 128]] = 0
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= tokenOfOwnerByIndex[address(arg1)]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            _1666 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _1668 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1668:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1668 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1668 + _1666 + -mem[64] + 160]
                            else:
                                mem[floor32(_1668) + _1666 + 164] = mem[floor32(_1668) + _1666 + -(_1668 % 32) + 196 len _1668 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1668) + _1666 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _2568 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2568:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2568 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2568 + 32]
                            else:
                                mem[floor32(_2568) + mem[64] + 164] = mem[floor32(_2568) + mem[64] + -(_2568 % 32) + 196 len _2568 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2568) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                if approved[mem[(32 * idx) + 128]] == msg.sender:
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1755 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1755:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1755 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1755 + 32]
                                else:
                                    mem[floor32(_1755) + mem[64] + 164] = mem[floor32(_1755) + mem[64] + -(_1755 % 32) + 196 len _1755 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1755) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2571 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2571:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2571 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2571 + 32]
                                else:
                                    mem[floor32(_2571) + mem[64] + 164] = mem[floor32(_2571) + mem[64] + -(_2571 % 32) + 196 len _2571 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2571) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1758 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1758:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1758 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1758 + 32]
                                else:
                                    mem[floor32(_1758) + mem[64] + 164] = mem[floor32(_1758) + mem[64] + -(_1758 % 32) + 196 len _1758 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1758) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2574 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2574:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2574 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2574 + 32]
                                else:
                                    mem[floor32(_2574) + mem[64] + 164] = mem[floor32(_2574) + mem[64] + -(_2574 % 32) + 196 len _2574 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2574) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    if not stor4[stor1[mem[(32 * idx) + 128]]][address(msg.sender)]:
                        revert with 0, 'Only owner or operator can tranfer'
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                _1821 = mem[64]
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1823 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1823:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1823 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1823 + _1821 + -mem[64] + 160]
                                else:
                                    mem[floor32(_1823) + _1821 + 164] = mem[floor32(_1823) + _1821 + -(_1823 % 32) + 196 len _1823 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1823) + _1821 + -mem[64] + 192]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2577 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2577:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2577 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2577 + 32]
                                else:
                                    mem[floor32(_2577) + mem[64] + 164] = mem[floor32(_2577) + mem[64] + -(_2577 % 32) + 196 len _2577 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2577) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1826 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1826:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1826 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1826 + 32]
                                else:
                                    mem[floor32(_1826) + mem[64] + 164] = mem[floor32(_1826) + mem[64] + -(_1826 % 32) + 196 len _1826 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1826) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2580 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2580:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2580 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2580 + 32]
                                else:
                                    mem[floor32(_2580) + mem[64] + 164] = mem[floor32(_2580) + mem[64] + -(_2580 % 32) + 196 len _2580 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2580) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if approved[mem[(32 * idx) + 128]] == msg.sender:
            updateOperator[mem[(32 * idx) + 128]] = 0
            require ownerOf[mem[(32 * idx) + 128]]
            if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
                require arg1
                require arg2
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                if not approved[mem[(32 * idx) + 128]]:
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= tokenOfOwnerByIndex[address(arg1)]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _1767 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1767:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1767 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1767 + 32]
                            else:
                                mem[floor32(_1767) + mem[64] + 164] = mem[floor32(_1767) + mem[64] + -(_1767 % 32) + 196 len _1767 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1767) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _2583 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2583:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2583 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2583 + 32]
                            else:
                                mem[floor32(_2583) + mem[64] + 164] = mem[floor32(_2583) + mem[64] + -(_2583 % 32) + 196 len _2583 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2583) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    approved[mem[(32 * idx) + 128]] = 0
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= tokenOfOwnerByIndex[address(arg1)]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _1770 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1770:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1770 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1770 + 32]
                            else:
                                mem[floor32(_1770) + mem[64] + 164] = mem[floor32(_1770) + mem[64] + -(_1770 % 32) + 196 len _1770 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1770) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _2586 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2586:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2586 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2586 + 32]
                            else:
                                mem[floor32(_2586) + mem[64] + 164] = mem[floor32(_2586) + mem[64] + -(_2586 % 32) + 196 len _2586 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2586) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                if approved[mem[(32 * idx) + 128]] == msg.sender:
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                _1855 = mem[64]
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1857 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1857:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1857 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1857 + _1855 + -mem[64] + 160]
                                else:
                                    mem[floor32(_1857) + _1855 + 164] = mem[floor32(_1857) + _1855 + -(_1857 % 32) + 196 len _1857 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1857) + _1855 + -mem[64] + 192]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2589 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2589:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2589 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2589 + 32]
                                else:
                                    mem[floor32(_2589) + mem[64] + 164] = mem[floor32(_2589) + mem[64] + -(_2589 % 32) + 196 len _2589 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2589) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1860 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1860:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1860 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1860 + 32]
                                else:
                                    mem[floor32(_1860) + mem[64] + 164] = mem[floor32(_1860) + mem[64] + -(_1860 % 32) + 196 len _1860 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1860) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2592 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2592:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2592 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2592 + 32]
                                else:
                                    mem[floor32(_2592) + mem[64] + 164] = mem[floor32(_2592) + mem[64] + -(_2592 % 32) + 196 len _2592 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2592) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    if not stor4[stor1[mem[(32 * idx) + 128]]][address(msg.sender)]:
                        revert with 0, 'Only owner or operator can tranfer'
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1923 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1923:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1923 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1923 + 32]
                                else:
                                    mem[floor32(_1923) + mem[64] + 164] = mem[floor32(_1923) + mem[64] + -(_1923 % 32) + 196 len _1923 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1923) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2595 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2595:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2595 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2595 + 32]
                                else:
                                    mem[floor32(_2595) + mem[64] + 164] = mem[floor32(_2595) + mem[64] + -(_2595 % 32) + 196 len _2595 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2595) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1926 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1926:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1926 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1926 + 32]
                                else:
                                    mem[floor32(_1926) + mem[64] + 164] = mem[floor32(_1926) + mem[64] + -(_1926 % 32) + 196 len _1926 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1926) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2598 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2598:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2598 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2598 + 32]
                                else:
                                    mem[floor32(_2598) + mem[64] + 164] = mem[floor32(_2598) + mem[64] + -(_2598 % 32) + 196 len _2598 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2598) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if not stor4[stor1[mem[(32 * idx) + 128]]][address(msg.sender)]:
            revert with 0, 'Only owner or operator can tranfer'
        updateOperator[mem[(32 * idx) + 128]] = 0
        require ownerOf[mem[(32 * idx) + 128]]
        if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
            require arg1
            require arg2
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            if not approved[mem[(32 * idx) + 128]]:
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _1837 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1837:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1837 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1837 + 32]
                        else:
                            mem[floor32(_1837) + mem[64] + 164] = mem[floor32(_1837) + mem[64] + -(_1837 % 32) + 196 len _1837 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1837) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                    while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _2601 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2601:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2601 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2601 + 32]
                        else:
                            mem[floor32(_2601) + mem[64] + 164] = mem[floor32(_2601) + mem[64] + -(_2601 % 32) + 196 len _2601 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2601) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                approved[mem[(32 * idx) + 128]] = 0
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _1840 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1840:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1840 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1840 + 32]
                        else:
                            mem[floor32(_1840) + mem[64] + 164] = mem[floor32(_1840) + mem[64] + -(_1840 % 32) + 196 len _1840 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1840) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                    while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        _2602 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _2604 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2604:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2604 % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2604 + _2602 + -mem[64] + 160]
                        else:
                            mem[floor32(_2604) + _2602 + 164] = mem[floor32(_2604) + _2602 + -(_2604 % 32) + 196 len _2604 % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2604) + _2602 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if approved[mem[(32 * idx) + 128]] == msg.sender:
            require arg1
            require arg2
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            if not approved[mem[(32 * idx) + 128]]:
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _1933 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1933:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1933 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1933 + 32]
                        else:
                            mem[floor32(_1933) + mem[64] + 164] = mem[floor32(_1933) + mem[64] + -(_1933 % 32) + 196 len _1933 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1933) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                    while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _2607 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2607:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2607 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2607 + 32]
                        else:
                            mem[floor32(_2607) + mem[64] + 164] = mem[floor32(_2607) + mem[64] + -(_2607 % 32) + 196 len _2607 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2607) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                approved[mem[(32 * idx) + 128]] = 0
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _1936 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1936:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1936 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1936 + 32]
                        else:
                            mem[floor32(_1936) + mem[64] + 164] = mem[floor32(_1936) + mem[64] + -(_1936 % 32) + 196 len _1936 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1936) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                    while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _2610 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2610:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2610 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2610 + 32]
                        else:
                            mem[floor32(_2610) + mem[64] + 164] = mem[floor32(_2610) + mem[64] + -(_2610 % 32) + 196 len _2610 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2610) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if not stor4[stor1[mem[(32 * idx) + 128]]][address(msg.sender)]:
            revert with 0, 'Only owner or operator can tranfer'
        require arg1
        require arg2
        require ownerOf[mem[(32 * idx) + 128]]
        require ownerOf[mem[(32 * idx) + 128]] == arg1
        if not approved[mem[(32 * idx) + 128]]:
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[mem[(32 * idx) + 128]] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                stor8[mem[(32 * idx) + 128]] = 0
                stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                require not ownerOf[mem[(32 * idx) + 128]]
                ownerOf[mem[(32 * idx) + 128]] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                if ext_code.size(arg2) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = _1114
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                    _1999 = mem[(32 * arg3.length) + 128]
                    s = 0
                    while s < _1999:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                        s = s + 32
                        continue 
                    if not _1999 % 32:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1999 + 32]
                    else:
                        mem[floor32(_1999) + mem[64] + 164] = mem[floor32(_1999) + mem[64] + -(_1999 % 32) + 196 len _1999 % 32]
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1999) + 64]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            stor8[mem[(32 * idx) + 128]] = 0
            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
            require not ownerOf[mem[(32 * idx) + 128]]
            ownerOf[mem[(32 * idx) + 128]] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
            if ext_code.size(arg2) <= 0:
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = _1114
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
            _2613 = mem[(32 * arg3.length) + 128]
            s = 0
            while s < _2613:
                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                s = s + 32
                continue 
            if not _2613 % 32:
                require ext_code.size(arg2)
                call arg2.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2613 + 32]
            else:
                mem[floor32(_2613) + mem[64] + 164] = mem[floor32(_2613) + mem[64] + -(_2613 % 32) + 196 len _2613 % 32]
                require ext_code.size(arg2)
                call arg2.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2613) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            s = ceil32(_2613) + 1
            continue 
        approved[mem[(32 * idx) + 128]] = 0
        require ownerOf[mem[(32 * idx) + 128]]
        require ownerOf[mem[(32 * idx) + 128]] == arg1
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        ownerOf[mem[(32 * idx) + 128]] = 0
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
            stor8[mem[(32 * idx) + 128]] = 0
            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
            require not ownerOf[mem[(32 * idx) + 128]]
            ownerOf[mem[(32 * idx) + 128]] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
            if ext_code.size(arg2) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _1114
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                _2002 = mem[(32 * arg3.length) + 128]
                s = 0
                while s < _2002:
                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                    s = s + 32
                    continue 
                if not _2002 % 32:
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2002 + 32]
                else:
                    mem[floor32(_2002) + mem[64] + 164] = mem[floor32(_2002) + mem[64] + -(_2002 % 32) + 196 len _2002 % 32]
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2002) + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        stor8[mem[(32 * idx) + 128]] = 0
        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
        require not ownerOf[mem[(32 * idx) + 128]]
        ownerOf[mem[(32 * idx) + 128]] = arg2
        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
        if ext_code.size(arg2) <= 0:
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = _1114
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
        _2616 = mem[(32 * arg3.length) + 128]
        s = 0
        while s < _2616:
            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
            s = s + 32
            continue 
        if not _2616 % 32:
            require ext_code.size(arg2)
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2616 + 32]
        else:
            mem[floor32(_2616) + mem[64] + 164] = mem[floor32(_2616) + mem[64] + -(_2616 % 32) + 196 len _2616 % 32]
            require ext_code.size(arg2)
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2616) + 64]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
        s = ceil32(_2616) + 1
        continue 
}

function safeTransferManyFrom(address arg1, address arg2, uint256[] arg3, bytes arg4) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + ceil32(arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len arg4.length] = arg4[all]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _1114 = mem[(32 * idx) + 128]
        require ownerOf[mem[(32 * idx) + 128]]
        if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
            updateOperator[mem[(32 * idx) + 128]] = 0
            require ownerOf[mem[(32 * idx) + 128]]
            if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
                require arg1
                require arg2
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                if not approved[mem[(32 * idx) + 128]]:
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= tokenOfOwnerByIndex[address(arg1)]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            _1663 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _1665 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1665:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1665 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1665 + _1663 + -mem[64] + 160]
                            else:
                                mem[floor32(_1665) + _1663 + 164] = mem[floor32(_1665) + _1663 + -(_1665 % 32) + 196 len _1665 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1665) + _1663 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            _2563 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _2565 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2565:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2565 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2565 + _2563 + -mem[64] + 160]
                            else:
                                mem[floor32(_2565) + _2563 + 164] = mem[floor32(_2565) + _2563 + -(_2565 % 32) + 196 len _2565 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_2565) + _2563 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    approved[mem[(32 * idx) + 128]] = 0
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= tokenOfOwnerByIndex[address(arg1)]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            _1666 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _1668 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1668:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1668 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1668 + _1666 + -mem[64] + 160]
                            else:
                                mem[floor32(_1668) + _1666 + 164] = mem[floor32(_1668) + _1666 + -(_1668 % 32) + 196 len _1668 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1668) + _1666 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _2568 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2568:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2568 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2568 + 32]
                            else:
                                mem[floor32(_2568) + mem[64] + 164] = mem[floor32(_2568) + mem[64] + -(_2568 % 32) + 196 len _2568 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2568) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                if approved[mem[(32 * idx) + 128]] == msg.sender:
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1755 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1755:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1755 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1755 + 32]
                                else:
                                    mem[floor32(_1755) + mem[64] + 164] = mem[floor32(_1755) + mem[64] + -(_1755 % 32) + 196 len _1755 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1755) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2571 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2571:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2571 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2571 + 32]
                                else:
                                    mem[floor32(_2571) + mem[64] + 164] = mem[floor32(_2571) + mem[64] + -(_2571 % 32) + 196 len _2571 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2571) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1758 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1758:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1758 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1758 + 32]
                                else:
                                    mem[floor32(_1758) + mem[64] + 164] = mem[floor32(_1758) + mem[64] + -(_1758 % 32) + 196 len _1758 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1758) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2574 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2574:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2574 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2574 + 32]
                                else:
                                    mem[floor32(_2574) + mem[64] + 164] = mem[floor32(_2574) + mem[64] + -(_2574 % 32) + 196 len _2574 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2574) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    if not stor4[stor1[mem[(32 * idx) + 128]]][address(msg.sender)]:
                        revert with 0, 'Only owner or operator can tranfer'
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                _1821 = mem[64]
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1823 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1823:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1823 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1823 + _1821 + -mem[64] + 160]
                                else:
                                    mem[floor32(_1823) + _1821 + 164] = mem[floor32(_1823) + _1821 + -(_1823 % 32) + 196 len _1823 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1823) + _1821 + -mem[64] + 192]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2577 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2577:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2577 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2577 + 32]
                                else:
                                    mem[floor32(_2577) + mem[64] + 164] = mem[floor32(_2577) + mem[64] + -(_2577 % 32) + 196 len _2577 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2577) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1826 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1826:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1826 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1826 + 32]
                                else:
                                    mem[floor32(_1826) + mem[64] + 164] = mem[floor32(_1826) + mem[64] + -(_1826 % 32) + 196 len _1826 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1826) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2580 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2580:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2580 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2580 + 32]
                                else:
                                    mem[floor32(_2580) + mem[64] + 164] = mem[floor32(_2580) + mem[64] + -(_2580 % 32) + 196 len _2580 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2580) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if approved[mem[(32 * idx) + 128]] == msg.sender:
            updateOperator[mem[(32 * idx) + 128]] = 0
            require ownerOf[mem[(32 * idx) + 128]]
            if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
                require arg1
                require arg2
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                if not approved[mem[(32 * idx) + 128]]:
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= tokenOfOwnerByIndex[address(arg1)]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _1767 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1767:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1767 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1767 + 32]
                            else:
                                mem[floor32(_1767) + mem[64] + 164] = mem[floor32(_1767) + mem[64] + -(_1767 % 32) + 196 len _1767 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1767) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _2583 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2583:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2583 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2583 + 32]
                            else:
                                mem[floor32(_2583) + mem[64] + 164] = mem[floor32(_2583) + mem[64] + -(_2583 % 32) + 196 len _2583 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2583) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    approved[mem[(32 * idx) + 128]] = 0
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= tokenOfOwnerByIndex[address(arg1)]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _1770 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1770:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1770 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1770 + 32]
                            else:
                                mem[floor32(_1770) + mem[64] + 164] = mem[floor32(_1770) + mem[64] + -(_1770 % 32) + 196 len _1770 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1770) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor8[mem[(32 * idx) + 128]] = 0
                        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _1114
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                            _2586 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2586:
                                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2586 % 32:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2586 + 32]
                            else:
                                mem[floor32(_2586) + mem[64] + 164] = mem[floor32(_2586) + mem[64] + -(_2586 % 32) + 196 len _2586 % 32]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2586) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                if approved[mem[(32 * idx) + 128]] == msg.sender:
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                _1855 = mem[64]
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1857 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1857:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1857 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1857 + _1855 + -mem[64] + 160]
                                else:
                                    mem[floor32(_1857) + _1855 + 164] = mem[floor32(_1857) + _1855 + -(_1857 % 32) + 196 len _1857 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1857) + _1855 + -mem[64] + 192]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2589 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2589:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2589 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2589 + 32]
                                else:
                                    mem[floor32(_2589) + mem[64] + 164] = mem[floor32(_2589) + mem[64] + -(_2589 % 32) + 196 len _2589 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2589) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1860 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1860:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1860 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1860 + 32]
                                else:
                                    mem[floor32(_1860) + mem[64] + 164] = mem[floor32(_1860) + mem[64] + -(_1860 % 32) + 196 len _1860 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1860) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2592 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2592:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2592 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2592 + 32]
                                else:
                                    mem[floor32(_2592) + mem[64] + 164] = mem[floor32(_2592) + mem[64] + -(_2592 % 32) + 196 len _2592 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2592) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    if not stor4[stor1[mem[(32 * idx) + 128]]][address(msg.sender)]:
                        revert with 0, 'Only owner or operator can tranfer'
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1923 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1923:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1923 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1923 + 32]
                                else:
                                    mem[floor32(_1923) + mem[64] + 164] = mem[floor32(_1923) + mem[64] + -(_1923 % 32) + 196 len _1923 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1923) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2595 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2595:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2595 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2595 + 32]
                                else:
                                    mem[floor32(_2595) + mem[64] + 164] = mem[floor32(_2595) + mem[64] + -(_2595 % 32) + 196 len _2595 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2595) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= tokenOfOwnerByIndex[address(arg1)]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                        tokenOfOwnerByIndex[address(arg1)]--
                        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _1926 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1926:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1926 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1926 + 32]
                                else:
                                    mem[floor32(_1926) + mem[64] + 164] = mem[floor32(_1926) + mem[64] + -(_1926 % 32) + 196 len _1926 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1926) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor8[mem[(32 * idx) + 128]] = 0
                            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)]++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = _1114
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                                _2598 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2598:
                                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2598 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2598 + 32]
                                else:
                                    mem[floor32(_2598) + mem[64] + 164] = mem[floor32(_2598) + mem[64] + -(_2598 % 32) + 196 len _2598 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2598) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if not stor4[stor1[mem[(32 * idx) + 128]]][address(msg.sender)]:
            revert with 0, 'Only owner or operator can tranfer'
        updateOperator[mem[(32 * idx) + 128]] = 0
        require ownerOf[mem[(32 * idx) + 128]]
        if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
            require arg1
            require arg2
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            if not approved[mem[(32 * idx) + 128]]:
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _1837 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1837:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1837 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1837 + 32]
                        else:
                            mem[floor32(_1837) + mem[64] + 164] = mem[floor32(_1837) + mem[64] + -(_1837 % 32) + 196 len _1837 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1837) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                    while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _2601 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2601:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2601 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2601 + 32]
                        else:
                            mem[floor32(_2601) + mem[64] + 164] = mem[floor32(_2601) + mem[64] + -(_2601 % 32) + 196 len _2601 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2601) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                approved[mem[(32 * idx) + 128]] = 0
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _1840 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1840:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1840 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1840 + 32]
                        else:
                            mem[floor32(_1840) + mem[64] + 164] = mem[floor32(_1840) + mem[64] + -(_1840 % 32) + 196 len _1840 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1840) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                    while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        _2602 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _2604 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2604:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2604 % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2604 + _2602 + -mem[64] + 160]
                        else:
                            mem[floor32(_2604) + _2602 + 164] = mem[floor32(_2604) + _2602 + -(_2604 % 32) + 196 len _2604 % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2604) + _2602 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if approved[mem[(32 * idx) + 128]] == msg.sender:
            require arg1
            require arg2
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            if not approved[mem[(32 * idx) + 128]]:
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _1933 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1933:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1933 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1933 + 32]
                        else:
                            mem[floor32(_1933) + mem[64] + 164] = mem[floor32(_1933) + mem[64] + -(_1933 % 32) + 196 len _1933 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1933) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                    while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _2607 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2607:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2607 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2607 + 32]
                        else:
                            mem[floor32(_2607) + mem[64] + 164] = mem[floor32(_2607) + mem[64] + -(_2607 % 32) + 196 len _2607 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2607) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                approved[mem[(32 * idx) + 128]] = 0
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _1936 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1936:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1936 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1936 + 32]
                        else:
                            mem[floor32(_1936) + mem[64] + 164] = mem[floor32(_1936) + mem[64] + -(_1936 % 32) + 196 len _1936 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1936) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
                    while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor8[mem[(32 * idx) + 128]] = 0
                    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                    emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = _1114
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                        _2610 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2610:
                            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2610 % 32:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2610 + 32]
                        else:
                            mem[floor32(_2610) + mem[64] + 164] = mem[floor32(_2610) + mem[64] + -(_2610 % 32) + 196 len _2610 % 32]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2610) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if not stor4[stor1[mem[(32 * idx) + 128]]][address(msg.sender)]:
            revert with 0, 'Only owner or operator can tranfer'
        require arg1
        require arg2
        require ownerOf[mem[(32 * idx) + 128]]
        require ownerOf[mem[(32 * idx) + 128]] == arg1
        if not approved[mem[(32 * idx) + 128]]:
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[mem[(32 * idx) + 128]] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                stor8[mem[(32 * idx) + 128]] = 0
                stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
                require not ownerOf[mem[(32 * idx) + 128]]
                ownerOf[mem[(32 * idx) + 128]] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
                emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
                if ext_code.size(arg2) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = _1114
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                    _1999 = mem[(32 * arg3.length) + 128]
                    s = 0
                    while s < _1999:
                        mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                        s = s + 32
                        continue 
                    if not _1999 % 32:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _1999 + 32]
                    else:
                        mem[floor32(_1999) + mem[64] + 164] = mem[floor32(_1999) + mem[64] + -(_1999 % 32) + 196 len _1999 % 32]
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_1999) + 64]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
            while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            stor8[mem[(32 * idx) + 128]] = 0
            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
            require not ownerOf[mem[(32 * idx) + 128]]
            ownerOf[mem[(32 * idx) + 128]] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
            if ext_code.size(arg2) <= 0:
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = _1114
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
            _2613 = mem[(32 * arg3.length) + 128]
            s = 0
            while s < _2613:
                mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                s = s + 32
                continue 
            if not _2613 % 32:
                require ext_code.size(arg2)
                call arg2.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2613 + 32]
            else:
                mem[floor32(_2613) + mem[64] + 164] = mem[floor32(_2613) + mem[64] + -(_2613 % 32) + 196 len _2613 % 32]
                require ext_code.size(arg2)
                call arg2.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2613) + 64]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            s = ceil32(_2613) + 1
            continue 
        approved[mem[(32 * idx) + 128]] = 0
        require ownerOf[mem[(32 * idx) + 128]]
        require ownerOf[mem[(32 * idx) + 128]] == arg1
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        ownerOf[mem[(32 * idx) + 128]] = 0
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor8[mem[(32 * idx) + 128]] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor8[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
            stor8[mem[(32 * idx) + 128]] = 0
            stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
            require not ownerOf[mem[(32 * idx) + 128]]
            ownerOf[mem[(32 * idx) + 128]] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
            if ext_code.size(arg2) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _1114
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
                _2002 = mem[(32 * arg3.length) + 128]
                s = 0
                while s < _2002:
                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
                    s = s + 32
                    continue 
                if not _2002 % 32:
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2002 + 32]
                else:
                    mem[floor32(_2002) + mem[64] + 164] = mem[floor32(_2002) + mem[64] + -(_2002 % 32) + 196 len _2002 % 32]
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2002) + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        s = tokenOfOwnerByIndex[address(arg1)] + sha3(sha3(address(arg1), 7)) - 1
        while sha3(sha3(address(arg1), 7)) + tokenOfOwnerByIndex[address(arg1)] > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        stor8[mem[(32 * idx) + 128]] = 0
        stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[mem[(32 * idx) + 128]]
        require not ownerOf[mem[(32 * idx) + 128]]
        ownerOf[mem[(32 * idx) + 128]] = arg2
        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        stor8[mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg2)]
        emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
        if ext_code.size(arg2) <= 0:
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = _1114
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = mem[(32 * arg3.length) + 128]
        _2616 = mem[(32 * arg3.length) + 128]
        s = 0
        while s < _2616:
            mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + 160]
            s = s + 32
            continue 
        if not _2616 % 32:
            require ext_code.size(arg2)
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len _2616 + 32]
        else:
            mem[floor32(_2616) + mem[64] + 164] = mem[floor32(_2616) + mem[64] + -(_2616 % 32) + 196 len _2616 % 32]
            require ext_code.size(arg2)
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), _1114, 128, mem[mem[64] + 132 len floor32(_2616) + 64]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
        s = ceil32(_2616) + 1
        continue 
}



}
