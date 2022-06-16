contract main {




// =====================  Runtime code  =====================


const UNCOMMON_RARITY = 2

const NO_LAND = 0

const SHARE_RATE_DECIMAL = 10^18

const COMMON_RARITY = 1

const LEGENDARY_RARITY = 5

const EPIC_RARITY = 4

const RARE_RARITY = 3


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint8 stor14;
array of struct tokenURIPrefix;
mapping of uint256 totalVolume;
mapping of uint256 sectorSupplyLimit;
mapping of uint256 sectorSupplyByRarity;
array of struct stor19;
mapping of uint256 mintedSectorCount;
mapping of uint256 mintedSectorCountByRarity;
mapping of uint256 sectorVolumeByRarity;
mapping of uint8 stor23;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function getSectorVolumeByRarity(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return sectorVolumeByRarity[arg1 << 240]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function getSectorSupplyByRarity(uint16 arg1, uint16 arg2) payable {
    require calldata.size - 4 >= 64
    return sectorSupplyByRarity[arg1 << 240][arg2 << 240]
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor13[address(arg1)])
}

function canTransfer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor23[arg1])
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(stor14)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function getMintedSectorCount(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return mintedSectorCount[arg1 << 240]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getSectorSupplyLimit(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return sectorSupplyLimit[arg1 << 240]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor12[address(arg1)])
}

function tokenURIPrefix() payable {
    return tokenURIPrefix[0 len tokenURIPrefix.length].field_0
}

function getMintedSectorCountByRarity(uint16 arg1, uint16 arg2) payable {
    require calldata.size - 4 >= 64
    return mintedSectorCountByRarity[arg1 << 240][arg2 << 240]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function getTotalVolume(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return totalVolume[arg1 << 240]
}

function _fallback() payable {
    revert
}

function getRarity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint16(arg1 / 10 * 10^6)
}

function isAlreadyMinted(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return not not ownerOf[arg1]
}

function getLandType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint16(arg1 / 10000 % 1000)
}

function unpause() payable {
    require msg.sender
    require stor13[address(msg.sender)]
    require stor14
    stor14 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor13[address(msg.sender)]
    require not stor14
    stor14 = 1
    emit Paused(msg.sender);
}

function unLockToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor12[address(msg.sender)]
    stor23[arg1] = 1
}

function renouncePauser() payable {
    require msg.sender
    require stor13[address(msg.sender)]
    stor13[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() payable {
    require msg.sender
    require stor12[address(msg.sender)]
    stor12[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor13[address(msg.sender)]
    require arg1
    require not stor13[address(arg1)]
    stor13[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not stor12[address(arg1)]
    stor12[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require not stor14
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require stor23[arg2]
    require not stor14
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function isValidLandSector(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sectorVolumeByRarity[arg1 / 10 * 10^6 << 240] > 0:
        if totalVolume[arg1 / 10000 % 1000 << 240] > 0:
            if arg1 % 10000:
                if arg1 % 10000 <= sectorSupplyByRarity[arg1 / 10000 % 1000 << 240][arg1 / 10 * 10^6 << 240]:
                    return 1
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    return 1
}

function setTokenURIPrefix(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender
    require stor12[address(msg.sender)]
    tokenURIPrefix.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        tokenURIPrefix[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while tokenURIPrefix.length + 31 / 32 > idx:
        tokenURIPrefix[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function getShareRateWithDecimal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sectorVolumeByRarity[arg1 / 10 * 10^6 << 240]:
        require totalVolume[arg1 / 10000 % 1000 << 240] > 0
        if totalVolume[arg1 / 10000 % 1000 << 240]:
            return 0 / totalVolume[arg1 / 10000 % 1000 << 240], 10^18
    else:
        if sectorVolumeByRarity[arg1 / 10 * 10^6 << 240]:
            require 10^18 * sectorVolumeByRarity[arg1 / 10 * 10^6 << 240] / sectorVolumeByRarity[arg1 / 10 * 10^6 << 240] == 10^18
            require totalVolume[arg1 / 10000 % 1000 << 240] > 0
            if totalVolume[arg1 / 10000 % 1000 << 240]:
                return 10^18 * sectorVolumeByRarity[arg1 / 10 * 10^6 << 240] / totalVolume[arg1 / 10000 % 1000 << 240], 10^18
    revert
}

function getMintedSectorList(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor19[arg1 << 240].field_0:
        mem[(32 * stor19[arg1 << 240].field_0) + 128] = 32
        mem[(32 * stor19[arg1 << 240].field_0) + 160] = stor19[arg1 << 240].field_0
        mem[(32 * stor19[arg1 << 240].field_0) + 192 len floor32(stor19[arg1 << 240].field_0)] = mem[128 len floor32(stor19[arg1 << 240].field_0)]
        return memory
          from (32 * stor19[arg1 << 240].field_0) + 128
           len (96 * stor19[arg1 << 240].field_0) + 64
    mem[128] = stor19[arg1 << 240].field_0
    idx = 128
    s = 0
    while (32 * stor19[arg1 << 240].field_0) + 96 > idx:
        mem[idx + 32] = stor19[arg1 << 240][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor19[arg1 << 240].field_0) + 192 len floor32(stor19[arg1 << 240].field_0)] = mem[128 len floor32(stor19[arg1 << 240].field_0)]
    return Array(len=stor19[arg1 << 240].field_0, data=mem[128 len floor32(stor19[arg1 << 240].field_0)], mem[(32 * stor19[arg1 << 240].field_0) + floor32(stor19[arg1 << 240].field_0) + 192 len (32 * stor19[arg1 << 240].field_0) - floor32(stor19[arg1 << 240].field_0)]), 
}

function mintLandSector(address arg1, uint256 arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender
    require stor12[address(msg.sender)]
    require not ownerOf[arg2]
    require sectorVolumeByRarity[arg2 / 10 * 10^6 << 240] > 0
    require totalVolume[arg2 / 10000 % 1000 << 240] > 0
    require arg2 % 10000
    require arg2 % 10000 <= sectorSupplyByRarity[arg2 / 10000 % 1000 << 240][arg2 / 10 * 10^6 << 240]
    require mintedSectorCount[arg2 / 10000 % 1000 << 240] < sectorSupplyLimit[arg2 / 10000 % 1000 << 240]
    if mintedSectorCountByRarity[arg2 / 10000 % 1000 << 240][arg2 / 10 * 10^6 << 240] >= sectorSupplyByRarity[arg2 / 10000 % 1000 << 240][arg2 / 10 * 10^6 << 240]:
        revert with 0, 'supply over'
    require arg1
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    stor19[arg2 / 10000 % 1000 << 240].field_0++
    stor19[arg2 / 10000 % 1000 << 240][stor19[arg2 / 10000 % 1000 << 240].field_0].field_0 = arg2
    mintedSectorCount[arg2 / 10000 % 1000 << 240]++
    mintedSectorCountByRarity[arg2 / 10000 % 1000 << 240][arg2 / 10 * 10^6 << 240]++
    emit 0x4a08db80: arg2, block.timestamp, arg1, arg3
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require stor23[arg3]
    require not stor14
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require stor23[arg3]
    require not stor14
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        idx = arg1
        s = 0
        while idx > 0:
            idx = idx / 10
            s = s / 256 or (idx % 10) + 48 << 248
            continue 
    mem[96] = tokenURIPrefix.length
    mem[128] = uint256(tokenURIPrefix.field_0)
    idx = 128
    s = 0
    while tokenURIPrefix.length + 96 > idx:
        mem[idx + 32] = tokenURIPrefix[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(tokenURIPrefix.length) + 128] = tokenURIPrefix.length + 32
    if tokenURIPrefix.length + 32:
        mem[ceil32(tokenURIPrefix.length) + 160 len tokenURIPrefix.length + 32] = code.data[15418 len tokenURIPrefix.length + 32]
    s = 0
    idx = 0
    while uint8(idx) < tokenURIPrefix.length:
        require uint8(idx) < tokenURIPrefix.length
        require uint8(s) < mem[ceil32(tokenURIPrefix.length) + 128]
        mem[ceil32(tokenURIPrefix.length) + uint8(s) + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = None
    idx = 0
    while uint8(idx) < 32:
        require uint8(s) < mem[ceil32(tokenURIPrefix.length) + 128]
        mem[ceil32(tokenURIPrefix.length) + uint8(s) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    mem[ceil32(tokenURIPrefix.length) + ceil32(tokenURIPrefix.length) + 161] = 32
    mem[ceil32(tokenURIPrefix.length) + ceil32(tokenURIPrefix.length) + 193] = mem[ceil32(tokenURIPrefix.length) + 128]
    mem[ceil32(tokenURIPrefix.length) + ceil32(tokenURIPrefix.length) + 225 len ceil32(mem[ceil32(tokenURIPrefix.length) + 128])] = mem[ceil32(tokenURIPrefix.length) + 160 len ceil32(mem[ceil32(tokenURIPrefix.length) + 128])]
    return Array(len=mem[ceil32(tokenURIPrefix.length) + 128], data=mem[ceil32(tokenURIPrefix.length) + ceil32(tokenURIPrefix.length) + 225 len mem[ceil32(tokenURIPrefix.length) + 128]]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require stor23[arg3]
    require not stor14
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function setSupplyAndSector(uint16 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require msg.sender
    require stor12[address(msg.sender)]
    if not arg1:
        revert with 0, 'landType 0 is noland'
    if not arg2:
        revert with 0, 'totalVolume must not be 0'
    if mintedSectorCount[arg1 << 240]:
        revert with 0, 'This LandType already exists'
    if not arg8:
        if not arg7:
            if not arg6:
                if not arg5:
                    if not arg4:
                        require 0 == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require arg4 * sectorVolumeByRarity[5] >= arg4 * sectorVolumeByRarity[5]
                        require arg4 * sectorVolumeByRarity[5] == arg2
                else:
                    require arg5
                    require arg5 * sectorVolumeByRarity[4] / arg5 == sectorVolumeByRarity[4]
                    if not arg4:
                        require arg5 * sectorVolumeByRarity[4] >= 0
                        require arg5 * sectorVolumeByRarity[4] >= arg5 * sectorVolumeByRarity[4]
                        require arg5 * sectorVolumeByRarity[4] == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) == arg2
            else:
                require arg6
                require arg6 * sectorVolumeByRarity[3] / arg6 == sectorVolumeByRarity[3]
                if not arg5:
                    if not arg4:
                        require arg6 * sectorVolumeByRarity[3] >= 0
                        require arg6 * sectorVolumeByRarity[3] >= arg6 * sectorVolumeByRarity[3]
                        require arg6 * sectorVolumeByRarity[3] == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require arg4 * sectorVolumeByRarity[5] >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg6 * sectorVolumeByRarity[3]) >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg6 * sectorVolumeByRarity[3]) == arg2
                else:
                    require arg5
                    require arg5 * sectorVolumeByRarity[4] / arg5 == sectorVolumeByRarity[4]
                    if not arg4:
                        require arg5 * sectorVolumeByRarity[4] >= 0
                        require (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) >= arg5 * sectorVolumeByRarity[4]
                        require (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) >= arg4 * sectorVolumeByRarity[5]
                        require arg6 * sectorVolumeByRarity[3] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) == arg2
        else:
            require arg7
            require arg7 * sectorVolumeByRarity[2] / arg7 == sectorVolumeByRarity[2]
            if not arg6:
                if not arg5:
                    if not arg4:
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require arg7 * sectorVolumeByRarity[2] >= arg7 * sectorVolumeByRarity[2]
                        require arg7 * sectorVolumeByRarity[2] == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require arg4 * sectorVolumeByRarity[5] >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg7 * sectorVolumeByRarity[2]) >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg7 * sectorVolumeByRarity[2]) == arg2
                else:
                    require arg5
                    require arg5 * sectorVolumeByRarity[4] / arg5 == sectorVolumeByRarity[4]
                    if not arg4:
                        require arg5 * sectorVolumeByRarity[4] >= 0
                        require arg5 * sectorVolumeByRarity[4] >= arg5 * sectorVolumeByRarity[4]
                        require (arg5 * sectorVolumeByRarity[4]) + (arg7 * sectorVolumeByRarity[2]) >= arg5 * sectorVolumeByRarity[4]
                        require (arg5 * sectorVolumeByRarity[4]) + (arg7 * sectorVolumeByRarity[2]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) >= arg4 * sectorVolumeByRarity[5]
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) + (arg7 * sectorVolumeByRarity[2]) == arg2
            else:
                require arg6
                require arg6 * sectorVolumeByRarity[3] / arg6 == sectorVolumeByRarity[3]
                if not arg5:
                    if not arg4:
                        require arg6 * sectorVolumeByRarity[3] >= 0
                        require (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) >= arg6 * sectorVolumeByRarity[3]
                        require (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require arg4 * sectorVolumeByRarity[5] >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg6 * sectorVolumeByRarity[3]) >= arg4 * sectorVolumeByRarity[5]
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) == arg2
                else:
                    require arg5
                    require arg5 * sectorVolumeByRarity[4] / arg5 == sectorVolumeByRarity[4]
                    if not arg4:
                        require arg5 * sectorVolumeByRarity[4] >= 0
                        require (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) >= arg5 * sectorVolumeByRarity[4]
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) >= arg4 * sectorVolumeByRarity[5]
                        require arg6 * sectorVolumeByRarity[3] >= 0
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) == arg2
    else:
        require arg8
        require arg8 * sectorVolumeByRarity[1] / arg8 == sectorVolumeByRarity[1]
        if not arg7:
            if not arg6:
                if not arg5:
                    if not arg4:
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require arg8 * sectorVolumeByRarity[1] == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require arg4 * sectorVolumeByRarity[5] >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg8 * sectorVolumeByRarity[1]) >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                else:
                    require arg5
                    require arg5 * sectorVolumeByRarity[4] / arg5 == sectorVolumeByRarity[4]
                    if not arg4:
                        require arg5 * sectorVolumeByRarity[4] >= 0
                        require arg5 * sectorVolumeByRarity[4] >= arg5 * sectorVolumeByRarity[4]
                        require (arg5 * sectorVolumeByRarity[4]) + (arg8 * sectorVolumeByRarity[1]) >= arg5 * sectorVolumeByRarity[4]
                        require (arg5 * sectorVolumeByRarity[4]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) >= arg4 * sectorVolumeByRarity[5]
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) + (arg8 * sectorVolumeByRarity[1]) == arg2
            else:
                require arg6
                require arg6 * sectorVolumeByRarity[3] / arg6 == sectorVolumeByRarity[3]
                if not arg5:
                    if not arg4:
                        require arg6 * sectorVolumeByRarity[3] >= 0
                        require arg6 * sectorVolumeByRarity[3] >= arg6 * sectorVolumeByRarity[3]
                        require (arg6 * sectorVolumeByRarity[3]) + (arg8 * sectorVolumeByRarity[1]) >= arg6 * sectorVolumeByRarity[3]
                        require (arg6 * sectorVolumeByRarity[3]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require arg4 * sectorVolumeByRarity[5] >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg6 * sectorVolumeByRarity[3]) >= arg4 * sectorVolumeByRarity[5]
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg6 * sectorVolumeByRarity[3]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                else:
                    require arg5
                    require arg5 * sectorVolumeByRarity[4] / arg5 == sectorVolumeByRarity[4]
                    if not arg4:
                        require arg5 * sectorVolumeByRarity[4] >= 0
                        require (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) >= arg5 * sectorVolumeByRarity[4]
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) >= arg4 * sectorVolumeByRarity[5]
                        require arg6 * sectorVolumeByRarity[3] >= 0
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) + (arg8 * sectorVolumeByRarity[1]) == arg2
        else:
            require arg7
            require arg7 * sectorVolumeByRarity[2] / arg7 == sectorVolumeByRarity[2]
            if not arg6:
                if not arg5:
                    if not arg4:
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require (arg7 * sectorVolumeByRarity[2]) + (arg8 * sectorVolumeByRarity[1]) >= arg7 * sectorVolumeByRarity[2]
                        require (arg7 * sectorVolumeByRarity[2]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require arg4 * sectorVolumeByRarity[5] >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg7 * sectorVolumeByRarity[2]) >= arg4 * sectorVolumeByRarity[5]
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg7 * sectorVolumeByRarity[2]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                else:
                    require arg5
                    require arg5 * sectorVolumeByRarity[4] / arg5 == sectorVolumeByRarity[4]
                    if not arg4:
                        require arg5 * sectorVolumeByRarity[4] >= 0
                        require arg5 * sectorVolumeByRarity[4] >= arg5 * sectorVolumeByRarity[4]
                        require (arg5 * sectorVolumeByRarity[4]) + (arg7 * sectorVolumeByRarity[2]) >= arg5 * sectorVolumeByRarity[4]
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg5 * sectorVolumeByRarity[4]) + (arg7 * sectorVolumeByRarity[2]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) >= arg4 * sectorVolumeByRarity[5]
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) + (arg7 * sectorVolumeByRarity[2]) + (arg8 * sectorVolumeByRarity[1]) == arg2
            else:
                require arg6
                require arg6 * sectorVolumeByRarity[3] / arg6 == sectorVolumeByRarity[3]
                if not arg5:
                    if not arg4:
                        require arg6 * sectorVolumeByRarity[3] >= 0
                        require (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) >= arg6 * sectorVolumeByRarity[3]
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require arg4 * sectorVolumeByRarity[5] >= arg4 * sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg6 * sectorVolumeByRarity[3]) >= arg4 * sectorVolumeByRarity[5]
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                else:
                    require arg5
                    require arg5 * sectorVolumeByRarity[4] / arg5 == sectorVolumeByRarity[4]
                    if not arg4:
                        require arg5 * sectorVolumeByRarity[4] >= 0
                        require (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) >= arg5 * sectorVolumeByRarity[4]
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) + (arg8 * sectorVolumeByRarity[1]) == arg2
                    else:
                        require arg4
                        require arg4 * sectorVolumeByRarity[5] / arg4 == sectorVolumeByRarity[5]
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) >= arg4 * sectorVolumeByRarity[5]
                        require arg6 * sectorVolumeByRarity[3] >= 0
                        require arg7 * sectorVolumeByRarity[2] >= 0
                        require arg8 * sectorVolumeByRarity[1] >= 0
                        require (arg4 * sectorVolumeByRarity[5]) + (arg5 * sectorVolumeByRarity[4]) + (arg6 * sectorVolumeByRarity[3]) + (arg7 * sectorVolumeByRarity[2]) + (arg8 * sectorVolumeByRarity[1]) == arg2
    require arg4 + arg5 >= arg4
    require arg6 >= 0
    require arg7 >= 0
    require arg8 >= 0
    require arg4 + arg5 + arg6 + arg7 + arg8 == arg3
    totalVolume[arg1 << 240] = arg2
    sectorSupplyLimit[arg1 << 240] = arg3
    sectorSupplyByRarity[arg1 << 240][5] = arg4
    sectorSupplyByRarity[arg1 << 240][4] = arg5
    sectorSupplyByRarity[arg1 << 240][3] = arg6
    sectorSupplyByRarity[arg1 << 240][2] = arg7
    sectorSupplyByRarity[arg1 << 240][1] = arg8
}



}
