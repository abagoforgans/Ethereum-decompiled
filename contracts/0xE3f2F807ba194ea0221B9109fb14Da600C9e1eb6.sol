contract main {




// =====================  Runtime code  =====================


const name = 'emojisan.github.io'

const symbol = 'EMJS'


address minterAddress;
mapping of uint8 stor1;
mapping of address ownerOf;
uint256 totalSupply;
array of struct tokenByIndex;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor6;
mapping of address approved;
mapping of uint8 stor8;

function supportsInterface(bytes4 arg1) {
    return bool(stor1[Mask(32, 224, arg1)])
}

function minter() {
    return minterAddress
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg2 < tokenOfOwnerByIndex[arg1].field_0
    return tokenOfOwnerByIndex[arg1][arg2].field_0
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require address(ownerOf[arg1])
    return address(ownerOf[arg1])
}

function balanceOf(address arg1) {
    return tokenOfOwnerByIndex[address(arg1)].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor8[arg1][arg2])
}

function _fallback() payable {
    revert
}

function setMinter(address arg1) {
    require msg.sender == minterAddress
    minterAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    stor8[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    if address(ownerOf[arg2]) != msg.sender:
        require stor8[address(stor2[arg2])][msg.sender]
    approved[arg2] = arg1
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function mint(uint256 arg1) {
    require msg.sender == minterAddress
    require not address(ownerOf[arg1])
    uint256(ownerOf[arg1]) = msg.sender or Mask(96, 160, uint256(ownerOf[arg1]))
    totalSupply++
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = arg1
    tokenOfOwnerByIndex[msg.sender].field_0++
    tokenOfOwnerByIndex[msg.sender][tokenOfOwnerByIndex[msg.sender].field_0].field_0 = arg1
    stor6[msg.sender][arg1] = tokenOfOwnerByIndex[msg.sender].field_0
    emit Transfer(0, msg.sender, arg1);
}

function tokens() {
    if not tokenByIndex.length:
        mem[(32 * tokenByIndex.length) + 128] = 32
        mem[(32 * tokenByIndex.length) + 160] = tokenByIndex.length
        mem[(32 * tokenByIndex.length) + 192 len floor32(tokenByIndex.length)] = mem[128 len floor32(tokenByIndex.length)]
        return memory
          from (32 * tokenByIndex.length) + 128
           len (96 * tokenByIndex.length) + 64
    mem[128] = uint256(tokenByIndex.field_0)
    idx = 128
    s = 0
    while (32 * tokenByIndex.length) + 96 > idx:
        mem[idx + 32] = tokenByIndex[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenByIndex.length) + 192 len floor32(tokenByIndex.length)] = mem[128 len floor32(tokenByIndex.length)]
    return Array(len=tokenByIndex.length, data=mem[128 len floor32(tokenByIndex.length)], mem[(32 * tokenByIndex.length) + floor32(tokenByIndex.length) + 192 len (32 * tokenByIndex.length) - floor32(tokenByIndex.length)]), 
}

function tokensOfOwner(address arg1) {
    if not tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
           len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
    return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)], mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + floor32(tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)].field_0) - floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    require arg2
    require address(ownerOf[arg3]) == arg1
    if address(ownerOf[arg3]) != msg.sender:
        if approved[arg3] != msg.sender:
            require stor8[address(stor2[arg3])][msg.sender]
    address(ownerOf[arg3]) = arg2
    if stor6[address(arg1)][arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require stor6[address(arg1)][arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)][arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor6[address(arg1)][stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[address(arg1)][arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor6[address(arg2)][arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    if approved[arg3]:
        approved[arg3] = 0
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    require arg2
    require address(ownerOf[arg3]) == arg1
    if address(ownerOf[arg3]) != msg.sender:
        if approved[arg3] != msg.sender:
            require stor8[address(stor2[arg3])][msg.sender]
    address(ownerOf[arg3]) = arg2
    if stor6[address(arg1)][arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require stor6[address(arg1)][arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)][arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor6[address(arg1)][stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[address(arg1)][arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor6[address(arg2)][arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    if approved[arg3]:
        approved[arg3] = 0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
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
    require arg2 != this.address
    require arg2
    require address(ownerOf[arg3]) == arg1
    if address(ownerOf[arg3]) != msg.sender:
        if approved[arg3] != msg.sender:
            require stor8[address(stor2[arg3])][msg.sender]
    address(ownerOf[arg3]) = arg2
    if stor6[address(arg1)][arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require stor6[address(arg1)][arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)][arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor6[address(arg1)][stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[address(arg1)][arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor6[address(arg2)][arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    if approved[arg3]:
        approved[arg3] = 0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function tokenURI(uint256 arg1) {
    mem[0] = arg1
    mem[32] = 2
    require address(ownerOf[arg1])
    mem[96] = 59
    mem[128] = 'https://raw.githubusercontent.co'
    mem[160] = 'm/emojisan/data/master/tkn/'
    idx = arg1
    s = 0
    while idx / 62:
        idx = idx / 62
        s = s + 1
        continue 
    mem[192] = s + 60
    mem[64] = floor32(s + 91) + 224
    if not s + 60:
        idx = 0
        while idx < 59:
            require idx < 59
            require idx < s + 60
            mem[idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        require var16004 + 58 < s + 60
        if var16007 % 62 < 10:
            mem[var16004 + 282 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 16007), 62))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 16007), 62))), 0) - 256
            if not var16004 - 1:
                return Array(len=s + 60, data=mem[224 len s + 60])
            var16003 = (var16007 % 62) + 48
            var16004 = var16004 - 1
            var16007 = var16007 / 62
            continue 
        if var16007 % 62 >= 36:
            mem[var16004 + 282 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 61, ('mod', ('var', 16007), 62))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 61, ('mod', ('var', 16007), 62))), 0) - 256
            if not var16004 - 1:
                return Array(len=s + 60, data=mem[224 len s + 60])
            var16003 = (var16007 % 62) + 61
            var16004 = var16004 - 1
            var16007 = var16007 / 62
            continue 
        mem[var16004 + 282 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mod', ('var', 16007), 62))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mod', ('var', 16007), 62))), 0) - 256
        if not var16004 - 1:
            return Array(len=s + 60, data=mem[224 len s + 60])
        var16003 = (var16007 % 62) + 55
        var16004 = var16004 - 1
        var16007 = var16007 / 62
        continue 
    mem[224 len 32 * s + 60] = code.data[4175 len 32 * s + 60]
    idx = 0
    while idx < 59:
        require idx < 59
        require idx < s + 60
        mem[idx + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    require var17004 + 58 < s + 60
    if var17007 % 62 < 10:
        mem[var17004 + 282 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 17007), 62))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 17007), 62))), 0) - 256
        if not var17004 - 1:
            return Array(len=s + 60, data=mem[224 len s + 60])
        var17003 = (var17007 % 62) + 48
        var17004 = var17004 - 1
        var17007 = var17007 / 62
        continue 
    if var17007 % 62 >= 36:
        mem[var17004 + 282 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 61, ('mod', ('var', 17007), 62))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 61, ('mod', ('var', 17007), 62))), 0) - 256
        if not var17004 - 1:
            return Array(len=s + 60, data=mem[224 len s + 60])
        var17003 = (var17007 % 62) + 61
        var17004 = var17004 - 1
        var17007 = var17007 / 62
        continue 
    mem[var17004 + 282 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mod', ('var', 17007), 62))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mod', ('var', 17007), 62))), 0) - 256
    if not var17004 - 1:
        return Array(len=s + 60, data=mem[224 len s + 60])
    var17003 = (var17007 % 62) + 55
    var17004 = var17004 - 1
    var17007 = var17007 / 62
    continue 
}



}
