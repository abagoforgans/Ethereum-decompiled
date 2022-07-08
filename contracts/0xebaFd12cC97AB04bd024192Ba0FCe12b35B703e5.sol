contract main {




// =====================  Runtime code  =====================


#
#  - sub_9c770684(?)
#  - sub_b40bb85d(?)
#
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
mapping of bool tokenURI;
address owner;
mapping of uint8 stor13;
mapping of uint256 stor14;
uint8 stor15;
uint256 progressiveId;
array of struct value;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function mintingFinished() {
    return bool(stor15)
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function getValue(uint256 arg1) {
    if not ownerOf[arg1]:
        revert with 0, 'Token must exists'
    return value[arg1].field_0
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor13[address(arg1)])
}

function progressiveId() {
    return progressiveId
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
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

function finishMinting() {
    require msg.sender == owner
    if stor15:
        revert with 0, 'Minting is finished'
    stor15 = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceMinter() {
    require msg.sender
    require stor13[address(msg.sender)]
    stor13[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function sub_6d902bfb(?) {
    if not stor14[arg1][0]:
        if not stor14[arg1][1]:
            if stor14[0][1] != arg1:
                return 0
    return 1, stor14[arg1][1]
}

function sub_92c2cd8c(?) {
    if not stor14[arg1][0]:
        if not stor14[arg1][1]:
            if stor14[0][1] != arg1:
                return 0
    return 1, stor14[arg1][0]
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function addMinter(address arg1) {
    require msg.sender
    require stor13[address(msg.sender)]
    require arg1
    require not stor13[address(arg1)]
    stor13[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function recoverERC20(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_ff91e489(?) {
    if not ownerOf[arg1]:
        revert with 0, 'Token must exists'
    mem[32] = 1
    require ownerOf[arg1]
    mem[96] = value[arg1][1].length
    mem[128] = value[arg1][1].field_0
    idx = 128
    s = 0
    while value[arg1][1].length + 96 > idx:
        mem[idx + 32] = value[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 160
    mem[ceil32(value[arg1][1].length) + 128] = value[arg1][2].length
    mem[0] = sha3(arg1, 17) + 2
    mem[ceil32(value[arg1][1].length) + 160] = value[arg1][2].field_0
    idx = ceil32(value[arg1][1].length) + 160
    s = 0
    while ceil32(value[arg1][1].length) + value[arg1][2].length + 128 > idx:
        mem[idx + 32] = value[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 160] = ownerOf[arg1]
    mem[ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 192] = value[arg1].field_0
    mem[ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 288] = value[arg1].field_768
    mem[ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 320] = value[arg1].field_1024
    mem[ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 224] = 192
    mem[ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 352] = value[arg1][1].length
    mem[ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 384 len ceil32(value[arg1][1].length)] = mem[128 len ceil32(value[arg1][1].length)]
    mem[ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 256] = value[arg1][1].length + 224
    mem[value[arg1][1].length + ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 384] = value[arg1][2].length
    mem[value[arg1][1].length + ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 416 len ceil32(value[arg1][2].length)] = mem[ceil32(value[arg1][1].length) + 160 len ceil32(value[arg1][2].length)]
    if not value[arg1][2].length % 32:
        return ownerOf[arg1], 
               value[arg1].field_0,
               Array(len=value[arg1][1].length, data=mem[128 len ceil32(value[arg1][1].length)], mem[(2 * ceil32(value[arg1][1].length)) + ceil32(value[arg1][2].length) + 384 len value[arg1][2].length + value[arg1][1].length + -ceil32(value[arg1][1].length) + 32]),
               value[arg1][1].length + 224,
               value[arg1].field_768,
               value[arg1].field_1024
    mem[floor32(value[arg1][2].length) + value[arg1][1].length + ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + 416] = mem[floor32(value[arg1][2].length) + value[arg1][1].length + ceil32(value[arg1][1].length) + ceil32(value[arg1][2].length) + -value[arg1][2].length % 32 + 448 len value[arg1][2].length % 32]
    return ownerOf[arg1], 
           value[arg1].field_0,
           Array(len=value[arg1][1].length, data=mem[128 len ceil32(value[arg1][1].length)], mem[(2 * ceil32(value[arg1][1].length)) + ceil32(value[arg1][2].length) + 384 len floor32(value[arg1][2].length) + value[arg1][1].length + -ceil32(value[arg1][1].length) + 64]),
           value[arg1][1].length + 224,
           value[arg1].field_768,
           value[arg1].field_1024
}

function burn(uint256 arg1) {
    require ownerOf[arg1]
    if owner != msg.sender:
        require ownerOf[arg1] == msg.sender
        if approved[arg1]:
            approved[arg1] = 0
        require ownerOf[arg1]
        require ownerOf[arg1] == msg.sender
        require 1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]--
        ownerOf[arg1] = 0
        require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
        require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        require stor6[arg1] < tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][stor6[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
        tokenOfOwnerByIndex[address(msg.sender)]--
        if tokenOfOwnerByIndex[address(msg.sender)] > tokenOfOwnerByIndex[address(msg.sender)] - 1:
            idx = tokenOfOwnerByIndex[address(msg.sender)] - 1
            while tokenOfOwnerByIndex[address(msg.sender)] > idx:
                tokenOfOwnerByIndex[address(msg.sender)][idx] = 0
                idx = idx + 1
                continue 
        stor6[arg1] = 0
        stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[arg1]
        emit Transfer(msg.sender, 0, arg1);
    else:
        require ownerOf[arg1]
        require ownerOf[arg1] == ownerOf[arg1]
        if approved[arg1]:
            approved[arg1] = 0
        require ownerOf[arg1]
        require ownerOf[arg1] == ownerOf[arg1]
        require 1 <= balanceOf[stor1[arg1]]
        balanceOf[stor1[arg1]]--
        ownerOf[arg1] = 0
        require 1 <= tokenOfOwnerByIndex[stor1[arg1]]
        require tokenOfOwnerByIndex[stor1[arg1]] - 1 < tokenOfOwnerByIndex[stor1[arg1]]
        require stor6[arg1] < tokenOfOwnerByIndex[stor1[arg1]]
        tokenOfOwnerByIndex[stor1[arg1]][stor6[arg1]] = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]]
        tokenOfOwnerByIndex[stor1[arg1]]--
        if tokenOfOwnerByIndex[stor1[arg1]] > tokenOfOwnerByIndex[stor1[arg1]] - 1:
            idx = tokenOfOwnerByIndex[stor1[arg1]] - 1
            while tokenOfOwnerByIndex[stor1[arg1]] > idx:
                tokenOfOwnerByIndex[stor1[arg1]][idx] = 0
                idx = idx + 1
                continue 
        stor6[arg1] = 0
        stor6[stor5[stor1[arg1]][stor5[stor1[arg1]]]] = stor6[arg1]
        emit Transfer(ownerOf[arg1], 0, arg1);
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor8[arg1] < tokenByIndex.length
    tokenByIndex[stor8[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    stor8[stor7[stor7.length]] = stor8[arg1]
    if not Mask(255, 1, (256 * not bool(tokenURI[arg1])) - 1 and uint256(tokenURI[arg1])):
        if not arg1:
            value[arg1].field_0 = 0
            value[arg1].field_256 = 0
            if 31 < value[arg1][1].length:
                idx = 0
                while value[arg1][1].length + 31 / 32 > idx:
                    value[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            value[arg1].field_512 = 0
            if 31 < value[arg1][2].length:
                idx = 0
                while value[arg1][2].length + 31 / 32 > idx:
                    value[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor14[arg1][0]:
                stor14[stor14[arg1][1]][0] = stor14[arg1][0]
                stor14[stor14[arg1][0]][1] = stor14[arg1][1]
                stor14[arg1][0] = 0
                stor14[arg1][1] = 0
                value[arg1].field_0 = 0
                value[arg1].field_256 = 0
                if 31 < value[arg1][1].length:
                    idx = 0
                    while value[arg1][1].length + 31 / 32 > idx:
                        value[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                value[arg1].field_512 = 0
                if 31 < value[arg1][2].length:
                    idx = 0
                    while value[arg1][2].length + 31 / 32 > idx:
                        value[arg1][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor14[arg1][1]:
                    stor14[stor14[arg1][1]][0] = stor14[arg1][0]
                    stor14[stor14[arg1][0]][1] = stor14[arg1][1]
                    stor14[arg1][0] = 0
                    stor14[arg1][1] = 0
                    value[arg1].field_0 = 0
                    value[arg1].field_256 = 0
                    if 31 < value[arg1][1].length:
                        idx = 0
                        while value[arg1][1].length + 31 / 32 > idx:
                            value[arg1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                    value[arg1].field_512 = 0
                    if 31 < value[arg1][2].length:
                        idx = 0
                        while value[arg1][2].length + 31 / 32 > idx:
                            value[arg1][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor14[0][1] == arg1:
                        stor14[stor14[arg1][1]][0] = stor14[arg1][0]
                        stor14[stor14[arg1][0]][1] = stor14[arg1][1]
                        stor14[arg1][0] = 0
                        stor14[arg1][1] = 0
                    value[arg1].field_0 = 0
                    value[arg1].field_256 = 0
                    if 31 < value[arg1][1].length:
                        idx = 0
                        while value[arg1][1].length + 31 / 32 > idx:
                            value[arg1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                    value[arg1].field_512 = 0
                    if 31 < value[arg1][2].length:
                        idx = 0
                        while value[arg1][2].length + 31 / 32 > idx:
                            value[arg1][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
        if not arg1:
            value[arg1].field_0 = 0
            value[arg1].field_256 = 0
            if 31 < value[arg1][1].length:
                idx = 0
                while value[arg1][1].length + 31 / 32 > idx:
                    value[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            value[arg1].field_512 = 0
            if 31 < value[arg1][2].length:
                idx = 0
                while value[arg1][2].length + 31 / 32 > idx:
                    value[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor14[arg1][0]:
                stor14[stor14[arg1][1]][0] = stor14[arg1][0]
                stor14[stor14[arg1][0]][1] = stor14[arg1][1]
                stor14[arg1][0] = 0
                stor14[arg1][1] = 0
                value[arg1].field_0 = 0
                value[arg1].field_256 = 0
                if 31 < value[arg1][1].length:
                    idx = 0
                    while value[arg1][1].length + 31 / 32 > idx:
                        value[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                value[arg1].field_512 = 0
                if 31 < value[arg1][2].length:
                    idx = 0
                    while value[arg1][2].length + 31 / 32 > idx:
                        value[arg1][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor14[arg1][1]:
                    stor14[stor14[arg1][1]][0] = stor14[arg1][0]
                    stor14[stor14[arg1][0]][1] = stor14[arg1][1]
                    stor14[arg1][0] = 0
                    stor14[arg1][1] = 0
                    value[arg1].field_0 = 0
                    value[arg1].field_256 = 0
                    if 31 < value[arg1][1].length:
                        idx = 0
                        while value[arg1][1].length + 31 / 32 > idx:
                            value[arg1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                    value[arg1].field_512 = 0
                    if 31 < value[arg1][2].length:
                        idx = 0
                        while value[arg1][2].length + 31 / 32 > idx:
                            value[arg1][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor14[0][1] == arg1:
                        stor14[stor14[arg1][1]][0] = stor14[arg1][0]
                        stor14[stor14[arg1][0]][1] = stor14[arg1][1]
                        stor14[arg1][0] = 0
                        stor14[arg1][1] = 0
                    value[arg1].field_0 = 0
                    value[arg1].field_256 = 0
                    if 31 < value[arg1][1].length:
                        idx = 0
                        while value[arg1][1].length + 31 / 32 > idx:
                            value[arg1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                    value[arg1].field_512 = 0
                    if 31 < value[arg1][2].length:
                        idx = 0
                        while value[arg1][2].length + 31 / 32 > idx:
                            value[arg1][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
    value[arg1].field_768 = 0
    value[arg1].field_1024 = 0
}



}
