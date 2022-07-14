contract main {




// =====================  Runtime code  =====================


#
#  - sub_6a3dc446(?)
#  - sub_e121ba7c(?)
#
mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
array of uint256 name;
array of uint256 symbol;
uint256 _basePrice;
uint8 sub_65063805;
uint16 stor13;
uint16 sub_4501efbe; offset 8
address _owner; offset 24
array of struct _baseURL;
mapping of struct sub_4e2e470e;
mapping of uint256 sub_de64a765;
uint256 sub_d13b8941;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
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

function _basePrice() {
    return _basePrice
}

function sub_4501efbe(?) {
    return sub_4501efbe
}

function sub_4e2e470e(?) {
    return sub_4e2e470e[arg1].field_240
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function sub_65063805(?) {
    return sub_65063805
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _owner() {
    return _owner
}

function sub_d13b8941(?) {
    return sub_d13b8941
}

function sub_ddf3d15f(?) {
    return sub_4e2e470e[arg1].field_0
}

function sub_de64a765(?) {
    return sub_de64a765[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _baseURL() {
    return _baseURL[0 len _baseURL.length].field_0
}

function sub_fe776dd0(?) {
    return sub_4e2e470e[arg1].field_0, sub_4e2e470e[arg1].field_240
}

function _fallback() payable {
    revert
}

function sub_e58de971(?) {
    require msg.sender == _owner
    sub_65063805 = arg1
}

function setOwner(address arg1) {
    require msg.sender == _owner
    _owner = arg1
}

function setBasePrice(uint256 arg1) {
    require msg.sender == _owner
    _basePrice = arg1
}

function sub_49f2553a(?) {
    require msg.sender == _owner
    _baseURL[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sub_e566f2b2(?) {
    if sub_4e2e470e[arg1].field_240 <= 0:
        return sub_4501efbe
    return sub_4e2e470e[arg1].field_240
}

function sub_c2b6fb61(?) {
    require ownerOf[arg1]
    require msg.sender == ownerOf[arg1]
    require arg2 >= 1
    require arg2 <= 1000
    sub_4e2e470e[arg1].field_240 = arg2
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdraw(uint256 arg1) {
    require msg.sender == _owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function withdrawProfit() {
    require msg.sender == _owner
    require sub_d13b8941 <= eth.balance(this.address)
    call msg.sender with:
       value eth.balance(this.address) - sub_d13b8941 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5adadef7(?) {
    if sub_de64a765[address(msg.sender)]:
        sub_de64a765[address(msg.sender)] = 0
        call arg1 with:
           value sub_de64a765[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function priceOf(uint256 arg1) {
    if not ownerOf[arg1]:
        return _basePrice
    if not sub_4e2e470e[arg1].field_0:
        return 0
    require sub_4e2e470e[arg1].field_0
    if sub_4e2e470e[arg1].field_240 <= 0:
        require sub_4e2e470e[arg1].field_0 * sub_4501efbe / sub_4e2e470e[arg1].field_0 == sub_4501efbe
        return (sub_4e2e470e[arg1].field_0 * sub_4501efbe / 10)
    require sub_4e2e470e[arg1].field_0 * sub_4e2e470e[arg1].field_240 / sub_4e2e470e[arg1].field_0 == sub_4e2e470e[arg1].field_240
    return (sub_4e2e470e[arg1].field_0 * sub_4e2e470e[arg1].field_240 / 10)
}

function sub_f0718100(?) {
    if not tokenByIndex.length:
        mem[(32 * tokenByIndex.length) + 128] = tokenByIndex.length
    else:
        mem[128 len 32 * tokenByIndex.length] = code.data[16226 len 32 * tokenByIndex.length]
        mem[(32 * tokenByIndex.length) + 128] = tokenByIndex.length
        mem[(32 * tokenByIndex.length) + 160 len 32 * tokenByIndex.length] = code.data[16226 len 32 * tokenByIndex.length]
    idx = 0
    while idx < tokenByIndex.length:
        require idx < tokenByIndex.length
        mem[(32 * idx) + 128] = tokenByIndex[idx]
        require idx < tokenByIndex.length
        mem[0] = tokenByIndex[idx]
        mem[32] = 1
        require ownerOf[stor7[idx]]
        require idx < mem[(32 * tokenByIndex.length) + 128]
        mem[(32 * idx) + (32 * tokenByIndex.length) + 160] = ownerOf[stor7[idx]]
        idx = idx + 1
        continue 
    mem[(64 * tokenByIndex.length) + 160] = 64
    mem[(64 * tokenByIndex.length) + 224] = tokenByIndex.length
    mem[(64 * tokenByIndex.length) + 256 len floor32(tokenByIndex.length)] = mem[128 len floor32(tokenByIndex.length)]
    mem[(64 * tokenByIndex.length) + 192] = (32 * tokenByIndex.length) + 96
    mem[(98 * tokenByIndex.length) + 256] = mem[(32 * tokenByIndex.length) + 128]
    mem[(98 * tokenByIndex.length) + 288 len floor32(mem[(32 * tokenByIndex.length) + 128])] = mem[(32 * tokenByIndex.length) + 160 len floor32(mem[(32 * tokenByIndex.length) + 128])]
    return memory
      from (64 * tokenByIndex.length) + 160
       len (32 * mem[(32 * tokenByIndex.length) + 128]) + (161 * tokenByIndex.length) + 128
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

function sub_a3bbe569(?) {
    if not ownerOf[arg1]:
        if not ownerOf[arg1]:
            return _basePrice, 0, 10, _basePrice
        require ownerOf[arg1]
        if sub_4e2e470e[arg1].field_240 <= 0:
            return sub_4e2e470e[arg1].field_0, ownerOf[arg1], stor13, _basePrice
        return sub_4e2e470e[arg1].field_0, ownerOf[arg1], sub_4e2e470e[arg1].field_0, _basePrice
    if not sub_4e2e470e[arg1].field_0:
        if not ownerOf[arg1]:
            return _basePrice, 0, 10, 0
        require ownerOf[arg1]
        if sub_4e2e470e[arg1].field_240 <= 0:
            return sub_4e2e470e[arg1].field_0, ownerOf[arg1], stor13, 0
        return sub_4e2e470e[arg1].field_0, ownerOf[arg1], sub_4e2e470e[arg1].field_0, 0
    require sub_4e2e470e[arg1].field_0
    if sub_4e2e470e[arg1].field_240 <= 0:
        require sub_4e2e470e[arg1].field_0 * sub_4501efbe / sub_4e2e470e[arg1].field_0 == sub_4501efbe
        if not ownerOf[arg1]:
            return _basePrice, 0, 10, sub_4e2e470e[arg1].field_0 * sub_4501efbe / 10
        require ownerOf[arg1]
        if sub_4e2e470e[arg1].field_240 <= 0:
            return sub_4e2e470e[arg1].field_0, ownerOf[arg1], stor13, sub_4e2e470e[arg1].field_0 * sub_4501efbe / 10
        return sub_4e2e470e[arg1].field_0, ownerOf[arg1], sub_4e2e470e[arg1].field_0, sub_4e2e470e[arg1].field_0 * sub_4501efbe / 10
    require sub_4e2e470e[arg1].field_0 * sub_4e2e470e[arg1].field_240 / sub_4e2e470e[arg1].field_0 == sub_4e2e470e[arg1].field_240
    if not ownerOf[arg1]:
        return _basePrice, 0, 10, sub_4e2e470e[arg1].field_0 * sub_4e2e470e[arg1].field_240 / 10
    require ownerOf[arg1]
    if sub_4e2e470e[arg1].field_240 <= 0:
        return sub_4e2e470e[arg1].field_0, ownerOf[arg1], stor13, sub_4e2e470e[arg1].field_0 * sub_4e2e470e[arg1].field_240 / 10
    return sub_4e2e470e[arg1].field_0, 
           ownerOf[arg1],
           sub_4e2e470e[arg1].field_0,
           sub_4e2e470e[arg1].field_0 * sub_4e2e470e[arg1].field_240 / 10
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

function tokenURI(uint256 arg1) {
    mem[32] = 1
    require ownerOf[arg1]
    mem[96] = _baseURL.length
    mem[0] = 14
    mem[128] = uint256(_baseURL.field_0)
    idx = 128
    s = 0
    while _baseURL.length + 96 > idx:
        mem[idx + 32] = _baseURL[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(_baseURL.length) + 128] = 32
    mem[ceil32(_baseURL.length) + 160 len 1024] = code.data[16226 len 1024]
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, arg1 * 2^(8 * idx)):
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[ceil32(_baseURL.length) + s + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(_baseURL.length) + 192] = s
    if not s:
        t = 0
        while t < s:
            require t < 32
            require t < s
            mem[ceil32(_baseURL.length) + t + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 2)), 32))), 0) - 256
            t = t + 1
            continue 
        mem[ceil32(_baseURL.length) + ceil32(s) + 224] = _baseURL.length + s
        mem[64] = ceil32(_baseURL.length) + ceil32(s) + floor32(_baseURL.length + s + 31) + 256
        if not _baseURL.length + s:
            idx = 0
            t = 0
            while idx < _baseURL.length:
                require idx < _baseURL.length
                require t < _baseURL.length + s
                mem[ceil32(_baseURL.length) + ceil32(s) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = _baseURL.length
            while idx < mem[ceil32(_baseURL.length) + 192]:
                require idx < mem[ceil32(_baseURL.length) + 192]
                require t < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                mem[ceil32(_baseURL.length) + ceil32(s) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            _1970 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1970] = 5
            mem[_1970 + 32] = '.json'
            _2015 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            _2016 = mem[64]
            mem[mem[64]] = mem[ceil32(_baseURL.length) + ceil32(s) + 224] + 5
            mem[64] = mem[64] + floor32(_2015 + 36) + 32
            if _2015 + 5:
                mem[_2016 + 32 len 32 * _2015 + 5] = code.data[16226 len 32 * _2015 + 5]
                _2307 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                idx = 0
                t = 0
                while idx < _2307:
                    require idx < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                    require t < mem[_2016]
                    mem[_2016 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                    _2307 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                    idx = idx + 1
                    t = t + 1
                    continue 
                _2595 = mem[_1970]
                idx = 0
                s = _2307
                while idx < _2595:
                    require idx < mem[_1970]
                    require s < mem[_2016]
                    mem[_2016 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1970'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1970'), ('var', 0)), 32))), 0) - 256
                    _2595 = mem[_1970]
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[_2016]
                _2687 = mem[_2016]
                mem[mem[64] + 64 len ceil32(mem[_2016])] = mem[_2016 + 32 len ceil32(mem[_2016])]
                if not _2687 % 32:
                    return 32, mem[mem[64] + 32 len _2687 + 32]
                mem[floor32(_2687) + mem[64] + 64] = mem[floor32(_2687) + mem[64] + -(_2687 % 32) + 96 len _2687 % 32]
                return 32, mem[mem[64] + 32 len floor32(_2687) + 64]
            _2306 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            idx = 0
            t = 0
            while idx < _2306:
                require idx < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                require t < mem[_2016]
                mem[_2016 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                _2306 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                idx = idx + 1
                t = t + 1
                continue 
            _2594 = mem[_1970]
            idx = 0
            s = _2306
            while idx < _2594:
                require idx < mem[_1970]
                require s < mem[_2016]
                mem[_2016 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1970'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1970'), ('var', 0)), 32))), 0) - 256
                _2594 = mem[_1970]
                idx = idx + 1
                s = s + 1
                continue 
            _2682 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_2016]
            _2684 = mem[_2016]
            mem[mem[64] + 64 len ceil32(mem[_2016])] = mem[_2016 + 32 len ceil32(mem[_2016])]
            var45001 = ceil32(_2684)
            if not _2684 % 32:
                return 32, mem[mem[64] + 32 len _2684 + 32]
            mem[floor32(_2684) + mem[64] + 64] = mem[floor32(_2684) + mem[64] + -(_2684 % 32) + 96 len _2684 % 32]
            return memory
              from mem[64]
               len floor32(_2684) + _2682 + -mem[64] + 96
        mem[ceil32(_baseURL.length) + ceil32(s) + 256 len 32 * _baseURL.length + s] = code.data[16226 len 32 * _baseURL.length + s]
        idx = 0
        t = 0
        while idx < _baseURL.length:
            require idx < _baseURL.length
            require t < _baseURL.length + s
            mem[ceil32(_baseURL.length) + ceil32(s) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        idx = 0
        t = _baseURL.length
        while idx < mem[ceil32(_baseURL.length) + 192]:
            require idx < mem[ceil32(_baseURL.length) + 192]
            require t < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            mem[ceil32(_baseURL.length) + ceil32(s) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        _1973 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1973] = 5
        mem[_1973 + 32] = '.json'
        _2018 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
        _2019 = mem[64]
        mem[mem[64]] = mem[ceil32(_baseURL.length) + ceil32(s) + 224] + 5
        mem[64] = mem[64] + floor32(_2018 + 36) + 32
        if not _2018 + 5:
            _2308 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            idx = 0
            t = 0
            while idx < _2308:
                require idx < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                require t < mem[_2019]
                mem[_2019 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                _2308 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                idx = idx + 1
                t = t + 1
                continue 
            _2596 = mem[_1973]
            idx = 0
            s = _2308
            while idx < _2596:
                require idx < mem[_1973]
                require s < mem[_2019]
                mem[_2019 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1973'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1973'), ('var', 0)), 32))), 0) - 256
                _2596 = mem[_1973]
                idx = idx + 1
                s = s + 1
                continue 
            _2688 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_2019]
            _2690 = mem[_2019]
            mem[mem[64] + 64 len ceil32(mem[_2019])] = mem[_2019 + 32 len ceil32(mem[_2019])]
            if not _2690 % 32:
                return 32, mem[mem[64] + 32 len _2690 + 32]
            mem[floor32(_2690) + mem[64] + 64] = mem[floor32(_2690) + mem[64] + -(_2690 % 32) + 96 len _2690 % 32]
            return memory
              from mem[64]
               len floor32(_2690) + _2688 + -mem[64] + 96
        mem[_2019 + 32 len 32 * _2018 + 5] = code.data[16226 len 32 * _2018 + 5]
        _2309 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
        idx = 0
        t = 0
        while idx < _2309:
            require idx < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            require t < mem[_2019]
            mem[_2019 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            _2309 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            idx = idx + 1
            t = t + 1
            continue 
        _2597 = mem[_1973]
        idx = 0
        s = _2309
        while idx < _2597:
            require idx < mem[_1973]
            require s < mem[_2019]
            mem[_2019 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1973'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1973'), ('var', 0)), 32))), 0) - 256
            _2597 = mem[_1973]
            idx = idx + 1
            s = s + 1
            continue 
        _2691 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_2019]
        _2693 = mem[_2019]
        mem[mem[64] + 64 len ceil32(mem[_2019])] = mem[_2019 + 32 len ceil32(mem[_2019])]
        if not _2693 % 32:
            return 32, mem[mem[64] + 32 len _2693 + 32]
        mem[floor32(_2693) + mem[64] + 64] = mem[floor32(_2693) + mem[64] + -(_2693 % 32) + 96 len _2693 % 32]
        return memory
          from mem[64]
           len floor32(_2693) + _2691 + -mem[64] + 96
    mem[ceil32(_baseURL.length) + 224 len 32 * s] = code.data[16226 len 32 * s]
    t = 0
    while t < s:
        require t < 32
        require t < s
        mem[ceil32(_baseURL.length) + t + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[ceil32(_baseURL.length) + ceil32(s) + 224] = _baseURL.length + s
    mem[64] = ceil32(_baseURL.length) + ceil32(s) + floor32(_baseURL.length + s + 31) + 256
    if not _baseURL.length + s:
        idx = 0
        t = 0
        while idx < _baseURL.length:
            require idx < _baseURL.length
            require t < _baseURL.length + s
            mem[ceil32(_baseURL.length) + ceil32(s) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        idx = 0
        t = _baseURL.length
        while idx < mem[ceil32(_baseURL.length) + 192]:
            require idx < mem[ceil32(_baseURL.length) + 192]
            require t < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            mem[ceil32(_baseURL.length) + ceil32(s) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        _1976 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1976] = 5
        mem[_1976 + 32] = '.json'
        _2021 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
        _2022 = mem[64]
        mem[mem[64]] = mem[ceil32(_baseURL.length) + ceil32(s) + 224] + 5
        mem[64] = mem[64] + floor32(_2021 + 36) + 32
        if not _2021 + 5:
            _2310 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            idx = 0
            t = 0
            while idx < _2310:
                require idx < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                require t < mem[_2022]
                mem[_2022 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                _2310 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
                idx = idx + 1
                t = t + 1
                continue 
            _2598 = mem[_1976]
            idx = 0
            s = _2310
            while idx < _2598:
                require idx < mem[_1976]
                require s < mem[_2022]
                mem[_2022 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1976'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1976'), ('var', 0)), 32))), 0) - 256
                _2598 = mem[_1976]
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_2022]
            _2696 = mem[_2022]
            mem[mem[64] + 64 len ceil32(mem[_2022])] = mem[_2022 + 32 len ceil32(mem[_2022])]
            if not _2696 % 32:
                return 32, mem[mem[64] + 32 len _2696 + 32]
            mem[floor32(_2696) + mem[64] + 64] = mem[floor32(_2696) + mem[64] + -(_2696 % 32) + 96 len _2696 % 32]
            return 32, mem[mem[64] + 32 len floor32(_2696) + 64]
        mem[_2022 + 32 len 32 * _2021 + 5] = code.data[16226 len 32 * _2021 + 5]
        _2311 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
        idx = 0
        t = 0
        while idx < _2311:
            require idx < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            require t < mem[_2022]
            mem[_2022 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            _2311 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            idx = idx + 1
            t = t + 1
            continue 
        _2599 = mem[_1976]
        idx = 0
        s = _2311
        while idx < _2599:
            require idx < mem[_1976]
            require s < mem[_2022]
            mem[_2022 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1976'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1976'), ('var', 0)), 32))), 0) - 256
            _2599 = mem[_1976]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_2022]
        _2699 = mem[_2022]
        mem[mem[64] + 64 len ceil32(mem[_2022])] = mem[_2022 + 32 len ceil32(mem[_2022])]
        if not _2699 % 32:
            return 32, mem[mem[64] + 32 len _2699 + 32]
        mem[floor32(_2699) + mem[64] + 64] = mem[floor32(_2699) + mem[64] + -(_2699 % 32) + 96 len _2699 % 32]
        return 32, mem[mem[64] + 32 len floor32(_2699) + 64]
    mem[ceil32(_baseURL.length) + ceil32(s) + 256 len 32 * _baseURL.length + s] = code.data[16226 len 32 * _baseURL.length + s]
    idx = 0
    t = 0
    while idx < _baseURL.length:
        require idx < _baseURL.length
        require t < _baseURL.length + s
        mem[ceil32(_baseURL.length) + ceil32(s) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        t = t + 1
        continue 
    idx = 0
    t = _baseURL.length
    while idx < mem[ceil32(_baseURL.length) + 192]:
        require idx < mem[ceil32(_baseURL.length) + 192]
        require t < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
        mem[ceil32(_baseURL.length) + ceil32(s) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        t = t + 1
        continue 
    _1979 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1979] = 5
    mem[_1979 + 32] = '.json'
    _2024 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
    _2025 = mem[64]
    mem[mem[64]] = mem[ceil32(_baseURL.length) + ceil32(s) + 224] + 5
    mem[64] = mem[64] + floor32(_2024 + 36) + 32
    if not _2024 + 5:
        _2312 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
        idx = 0
        t = 0
        while idx < _2312:
            require idx < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            require t < mem[_2025]
            mem[_2025 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            _2312 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
            idx = idx + 1
            t = t + 1
            continue 
        _2600 = mem[_1979]
        idx = 0
        s = _2312
        while idx < _2600:
            require idx < mem[_1979]
            require s < mem[_2025]
            mem[_2025 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1979'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1979'), ('var', 0)), 32))), 0) - 256
            _2600 = mem[_1979]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_2025]
        _2702 = mem[_2025]
        mem[mem[64] + 64 len ceil32(mem[_2025])] = mem[_2025 + 32 len ceil32(mem[_2025])]
        if not _2702 % 32:
            return 32, mem[mem[64] + 32 len _2702 + 32]
        mem[floor32(_2702) + mem[64] + 64] = mem[floor32(_2702) + mem[64] + -(_2702 % 32) + 96 len _2702 % 32]
        return 32, mem[mem[64] + 32 len floor32(_2702) + 64]
    mem[_2025 + 32 len 32 * _2024 + 5] = code.data[16226 len 32 * _2024 + 5]
    _2313 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
    idx = 0
    t = 0
    while idx < _2313:
        require idx < mem[ceil32(_baseURL.length) + ceil32(s) + 224]
        require t < mem[_2025]
        mem[_2025 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', '_baseURL', 14))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
        _2313 = mem[ceil32(_baseURL.length) + ceil32(s) + 224]
        idx = idx + 1
        t = t + 1
        continue 
    _2601 = mem[_1979]
    idx = 0
    s = _2313
    while idx < _2601:
        require idx < mem[_1979]
        require s < mem[_2025]
        mem[_2025 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1979'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_1979'), ('var', 0)), 32))), 0) - 256
        _2601 = mem[_1979]
        idx = idx + 1
        s = s + 1
        continue 
    _2703 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_2025]
    _2705 = mem[_2025]
    mem[mem[64] + 64 len ceil32(mem[_2025])] = mem[_2025 + 32 len ceil32(mem[_2025])]
    if not _2705 % 32:
        return 32, mem[mem[64] + 32 len _2705 + 32]
    mem[floor32(_2705) + mem[64] + 64] = mem[floor32(_2705) + mem[64] + -(_2705 % 32) + 96 len _2705 % 32]
    return memory
      from mem[64]
       len floor32(_2705) + _2703 + -mem[64] + 96
}

function sub_29cc044d(?) {
    idx = 0
    while idx < 20:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 30) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 28) << (('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
                            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
                            idx = 0
                            while idx < 20:
                                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                                    idx = idx + 1
                                    continue 
                                if idx == 19:
                                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                                require idx + 1 < 20
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                        require idx + 1 < 20
                        if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
                            return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                            require s + 1 < 20
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                        require idx + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
                    return (Mask(224, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, '2') >> 192)
                        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
                            require s + 1 < 20
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
                    require s + 1 < 20
                    if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                        return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                        require t + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, '2') >> 192)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                        require idx + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
                    return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
            return (Mask(240, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 28) << (('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, 248, '2') >> 192)
                        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, 248, 'V') >> 192)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248)
                            require s + 1 < 20
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248)
                    require s + 1 < 20
                    if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                        return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                        require t + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, 248, '2') >> 192)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                return (Mask(224, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, '2') >> 192)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
                        require t + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
                require t + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1):
                    return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                u = 0
                while u < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, u) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        u = u + 1
                        continue 
                    if u == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                    require u + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, u + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, '2') >> 192)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
                require t + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, 248, '2') >> 192)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, '2') >> 192)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                require t + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, 248, '2') >> 192)
        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, 248, 'V') >> 192)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248)
            require s + 1 < 20
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 248)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 28) << (('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                        require idx + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
                    return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
            return (Mask(224, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, '2') >> 192)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, '2') >> 192)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
                require t + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, '2') >> 192)
        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
            require s + 1 < 20
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 232)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
            return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, '2') >> 192)
        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
            require s + 1 < 20
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 216)
    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
            return Mask(192, 64, arg1) >> 64, '2', uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1)
    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
            return Mask(192, 64, arg1) >> 64, 'V', uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
        require idx + 1 < 20
        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 200)
    return Mask(192, 64, arg1) >> 64, 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1)
}

function sub_d2834a9b(?) {
    idx = 0
    while idx < 20:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 30) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 28) << (('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
                            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
                            idx = 0
                            while idx < 20:
                                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                                    idx = idx + 1
                                    continue 
                                if idx == 19:
                                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                                require idx + 1 < 20
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                        require idx + 1 < 20
                        if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
                            return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                            require s + 1 < 20
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                        require idx + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
                    return (Mask(224, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, '2') >> 192)
                        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
                            require s + 1 < 20
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
                    require s + 1 < 20
                    if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                        return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                        require t + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, '2') >> 192)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                        require idx + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
                    return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
            return (Mask(240, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 28) << (('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, 248, '2') >> 192)
                        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, 248, 'V') >> 192)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248)
                            require s + 1 < 20
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248)
                    require s + 1 < 20
                    if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                        return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                        require t + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, 248, '2') >> 192)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                return (Mask(224, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, '2') >> 192)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
                        require t + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
                require t + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1):
                    return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                u = 0
                while u < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, u) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        u = u + 1
                        continue 
                    if u == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                    require u + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, u + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, '2') >> 192)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
                require t + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, 248, '2') >> 192)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, '2') >> 192)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                require t + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, 248, '2') >> 192)
        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, 248, 'V') >> 192)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -251, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248)
            require s + 1 < 20
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 248)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 28) << (('or', ('mask_shl', 240, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                        require idx + 1 < 20
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
                    return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, '2') >> 192)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
            return (Mask(224, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, '2') >> 192)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
                    require s + 1 < 20
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, '2') >> 192)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
                require t + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, '2') >> 192)
        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, 248, 'V') >> 192)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -235, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
            require s + 1 < 20
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 232)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 26) << (('or', ('mask_shl', 224, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, '2') >> 192)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, 248, 'V') >> 192)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
                require idx + 1 < 20
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
            return (Mask(208, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'V':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, '2') >> 192)
        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, 248, 'V') >> 192)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -219, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
            require s + 1 < 20
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 216)
    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == 'V':
            return Mask(192, 64, arg1) >> 64, '2', uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1)
    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
            return Mask(192, 64, arg1) >> 64, 'V', uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) + 256, 24) << (('or', ('mask_shl', 208, 48, -3, ('param', 'arg1')), ('mask_shl', 8, 32, -3, ('param', 'arg1')), ('mask_shl', 8, 16, -3, ('param', 'arg1')), ('mask_shl', 8, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1))
        require idx + 1 < 20
        return (Mask(192, 64, arg1) or Mask(8, 48, arg1) or Mask(8, 32, arg1) or Mask(8, 16, arg1) or uint8(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 200)
    return Mask(192, 64, arg1) >> 64, 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1)
}

function sub_1c79b4fc(?) {
    idx = 0
    while idx < 20:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 29) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 27) << (('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
                            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
                            idx = 0
                            while idx < 20:
                                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                                    idx = idx + 1
                                    continue 
                                if idx == 19:
                                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                                require idx + 1 < 20
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                        require idx + 1 < 20
                        if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
                            return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                            require s + 1 < 20
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                        require idx + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
                    return (Mask(216, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, '2') >> 184)
                        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
                            require s + 1 < 20
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
                    require s + 1 < 20
                    if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                        return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                        require t + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, '2') >> 184)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                        require idx + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
                    return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
            return (Mask(232, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 27) << (('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, 248, '2') >> 184)
                        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, 248, 'C') >> 184)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240)
                            require s + 1 < 20
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240)
                    require s + 1 < 20
                    if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                        return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                        require t + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, 248, '2') >> 184)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                return (Mask(216, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, '2') >> 184)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
                        require t + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
                require t + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1):
                    return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                u = 0
                while u < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, u) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        u = u + 1
                        continue 
                    if u == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                    require u + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, u + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, '2') >> 184)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
                require t + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, 248, '2') >> 184)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, '2') >> 184)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                require t + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, 248, '2') >> 184)
        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, 248, 'C') >> 184)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240)
            require s + 1 < 20
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 240)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 27) << (('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
                    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                        require idx + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
                    return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
            return (Mask(216, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, '2') >> 184)
                if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1):
                return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, '2') >> 184)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
                require t + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, '2') >> 184)
        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
            require s + 1 < 20
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 224)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
            if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1):
            return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
        if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, '2') >> 184)
        if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
            require s + 1 < 20
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 208)
    if 23456789CFGHJMPQRVWX == 23456789CFGHJMPQRVWX:
        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
            return Mask(184, 72, arg1) >> 72, '2', uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint16(arg1)
    if 23456789CFGHJMPQRVWX == XWVRQPMJHGFC98765432:
        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
            return Mask(184, 72, arg1) >> 72, 'C', uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint16(arg1)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
        require idx + 1 < 20
        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'23456789CFGHJMPQRVWX'"), 0) - 192)
    return Mask(184, 72, arg1) >> 72, 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint16(arg1)
}

function sub_22835acc(?) {
    idx = 0
    while idx < 20:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, 29) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 27) << (('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
                            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
                            idx = 0
                            while idx < 20:
                                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                                    idx = idx + 1
                                    continue 
                                if idx == 19:
                                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                                require idx + 1 < 20
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                        require idx + 1 < 20
                        if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
                            return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                            require s + 1 < 20
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                        require idx + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
                    return (Mask(216, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, '2') >> 184)
                        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
                            require s + 1 < 20
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
                    require s + 1 < 20
                    if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                        return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                        require t + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, '2') >> 184)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                        require idx + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
                    return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
            return (Mask(232, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 27) << (('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, 248, '2') >> 184)
                        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, 248, 'C') >> 184)
                        s = 0
                        while s < 20:
                            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                                s = s + 1
                                continue 
                            if s == 19:
                                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240)
                            require s + 1 < 20
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240)
                    require s + 1 < 20
                    if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                        return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                        require t + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, 248, '2') >> 184)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                return (Mask(216, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, '2') >> 184)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
                    t = 0
                    while t < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            t = t + 1
                            continue 
                        if t == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
                        require t + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
                require t + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1):
                    return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                u = 0
                while u < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 2)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, u) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        u = u + 1
                        continue 
                    if u == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                    require u + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, u + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, '2') >> 184)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
                require t + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, 248, '2') >> 184)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, '2') >> 184)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                require t + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, 248, '2') >> 184)
        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, 248, 'C') >> 184)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -243, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240)
            require s + 1 < 20
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 240)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 27) << (('or', ('mask_shl', 232, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
                    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
                    idx = 0
                    while idx < 20:
                        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                            idx = idx + 1
                            continue 
                        if idx == 19:
                            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                        require idx + 1 < 20
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
                    return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, '2') >> 184)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
            return (Mask(216, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, '2') >> 184)
                if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
                s = 0
                while s < 20:
                    if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                        s = s + 1
                        continue 
                    if s == 19:
                        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
                    require s + 1 < 20
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
            require s + 1 < 20
            if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1):
                return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, '2') >> 184)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
            t = 0
            while t < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0))), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 1)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    t = t + 1
                    continue 
                if t == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
                require t + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, t + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, '2') >> 184)
        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, 248, 'C') >> 184)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -227, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
            require s + 1 < 20
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 224)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 25) << (('or', ('mask_shl', 216, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, '2') >> 184)
            if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, 248, 'C') >> 184)
            idx = 0
            while idx < 20:
                if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                    idx = idx + 1
                    continue 
                if idx == 19:
                    return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
                require idx + 1 < 20
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
        require idx + 1 < 20
        if Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1):
            return (Mask(200, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
        if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == 'C':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, '2') >> 184)
        if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 == '2':
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, 248, 'C') >> 184)
        s = 0
        while s < 20:
            if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1')), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0))), ('add', -211, (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0)), ('add', 1, ('var', 0)))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
                s = s + 1
                continue 
            if s == 19:
                return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
            require s + 1 < 20
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208 or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, s + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 208)
    if XWVRQPMJHGFC98765432 == 23456789CFGHJMPQRVWX:
        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == 'C':
            return Mask(184, 72, arg1) >> 72, '2', uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint16(arg1)
    if XWVRQPMJHGFC98765432 == XWVRQPMJHGFC98765432:
        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 == '2':
            return Mask(184, 72, arg1) >> 72, 'C', uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint16(arg1)
    idx = 0
    while idx < 20:
        if Mask(8, -(('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) + 256, 23) << (('or', ('mask_shl', 200, 56, -3, ('param', 'arg1')), ('mask_shl', 8, 40, -3, ('param', 'arg1')), ('mask_shl', 8, 24, -3, ('param', 'arg1')), ('mask_shl', 16, 0, -3, ('param', 'arg1'))), 0) - 8 != Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 8:
            idx = idx + 1
            continue 
        if idx == 19:
            return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1))
        require idx + 1 < 20
        return (Mask(184, 72, arg1) or Mask(8, 56, arg1) or Mask(8, 40, arg1) or Mask(8, 24, arg1) or uint16(arg1) or Mask(8, -(('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) + 256, idx + 1) << (('mask_shl', 256, 0, -3, "'XWVRQPMJHGFC98765432'"), 0) - 192)
    return Mask(184, 72, arg1) >> 72, 0, uint8(arg1), 0, uint8(arg1), 0, uint8(arg1), 0, uint16(arg1)
}



}
