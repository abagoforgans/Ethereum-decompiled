contract main {




// =====================  Runtime code  =====================


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
mapping of struct stor11;
address owner;
uint256 sub_bf4abd3f;
uint256 price;
array of uint256 info;
uint8 stor16;
array of struct baseTokenURI;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function info() {
    return info[0 len info.length]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function sub_af9fefbf(?) {
    return bool(stor16)
}

function sub_bf4abd3f(?) {
    return sub_bf4abd3f
}

function baseTokenURI() {
    return baseTokenURI[0 len baseTokenURI.length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_e40e97a7(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    baseTokenURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function changeInfo(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    require stor16
    info[] = Array(len=arg1.length, data=arg1[all])
    stor16 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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

function _fallback() payable {
    if msg.value >= price:
        call 0x4257d02e2854c9c86d6975fcd14a1af4fa65a652 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0x2ea533314069dc9b4df29e72bd1dfb64cc68456d with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[128] = msg.value
        emit PaymentReceived(msg.sender, msg.value);
        require sub_bf4abd3f <= 360
        sub_bf4abd3f++
        require msg.sender
        require not ownerOf[stor13]
        ownerOf[stor13] = msg.sender
        balanceOf[address(msg.sender)]++
        emit Transfer(0, msg.sender, sub_bf4abd3f);
        stor6[stor13] = tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = sub_bf4abd3f
        stor8[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_bf4abd3f
        if not sub_bf4abd3f:
            require ownerOf[stor13]
            stor11[stor13].field_0 = 0
            stor11[stor13].field_1 = 1
            stor11[stor13].field_8 = '0' / 256
            idx = 0
            while stor11[stor13].length + 31 / 32 > idx:
                stor11[stor13][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = sub_bf4abd3f
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            mem[96] = s
            if s:
                mem[128 len s] = code.data[11350 len s]
            t = s - 1
            idx = sub_bf4abd3f
            while idx:
                require t < mem[96]
                mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            require ownerOf[stor13]
            stor11[stor13][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        emit TokenMinted(msg.sender, sub_bf4abd3f);
        price += price / 75
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    mem[96] = baseTokenURI.length
    mem[128] = uint256(baseTokenURI.field_0)
    idx = 128
    s = 0
    while baseTokenURI.length + 96 > idx:
        mem[idx + 32] = baseTokenURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[arg1]
    mem[32] = 11
    mem[64] = ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160
    mem[ceil32(baseTokenURI.length) + 128] = stor11[arg1].length
    mem[0] = sha3(arg1, 11)
    mem[ceil32(baseTokenURI.length) + 160] = stor11[arg1].field_0
    idx = ceil32(baseTokenURI.length) + 160
    s = 0
    while ceil32(baseTokenURI.length) + stor11[arg1].length + 128 > idx:
        mem[idx + 32] = stor11[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 192 len floor32(baseTokenURI.length)] = mem[128 len floor32(baseTokenURI.length)]
    mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + floor32(baseTokenURI.length) + -baseTokenURI.length % 32 + 224 len baseTokenURI.length % 32] = mem[floor32(baseTokenURI.length) + -baseTokenURI.length % 32 + 160 len baseTokenURI.length % 32]
    mem[baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 192 len floor32(stor11[arg1].length)] = mem[ceil32(baseTokenURI.length) + 160 len floor32(stor11[arg1].length)]
    mem[baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + floor32(stor11[arg1].length) + 192] = mem[ceil32(baseTokenURI.length) + floor32(stor11[arg1].length) + -stor11[arg1].length % 32 + 192 len stor11[arg1].length % 32] or Mask(8 * -stor11[arg1].length % 32 + 32, -(8 * -stor11[arg1].length % 32 + 32) + 256, mem[baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + floor32(stor11[arg1].length) + 192])
    mem[64] = stor11[arg1].length + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 192
    mem[stor11[arg1].length + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 192] = 32
    mem[stor11[arg1].length + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 224] = mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160]
    mem[stor11[arg1].length + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 256 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160])] = mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 192 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160])]
    if not mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160] % 32:
        return 32, mem[stor11[arg1].length + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 224 len mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160] + 32], 
    mem[floor32(mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160]) + stor11[arg1].length + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 256] = mem[floor32(mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160]) + stor11[arg1].length + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + -(mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160] % 32) + 288 len mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160] % 32]
    return 32, mem[stor11[arg1].length + baseTokenURI.length + ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 224 len floor32(mem[ceil32(baseTokenURI.length) + ceil32(stor11[arg1].length) + 160]) + 64], 
}

function createToken(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender == 0x1003d51fef31e52262b1e699f03c789ca6dbefdc:
        require sub_bf4abd3f <= 360
        sub_bf4abd3f++
        require arg1
        require not ownerOf[stor13]
        ownerOf[stor13] = arg1
        balanceOf[address(arg1)]++
        emit Transfer(0, arg1, sub_bf4abd3f);
        stor6[stor13] = tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = sub_bf4abd3f
        stor8[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_bf4abd3f
        if not sub_bf4abd3f:
            require ownerOf[stor13]
            stor11[stor13].field_0 = 0
            stor11[stor13].field_1 = 1
            stor11[stor13].field_8 = '0' / 256
            idx = 0
            while stor11[stor13].length + 31 / 32 > idx:
                stor11[stor13][idx].field_0 = 0
                idx = idx + 1
                continue 
            emit TokenMinted(address(arg1), sub_bf4abd3f);
            price += price / 75
            return '0'
        s = 0
        idx = sub_bf4abd3f
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s - 1
            idx = sub_bf4abd3f
            while idx:
                require t < mem[96]
                mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            require ownerOf[stor13]
            mem[0] = sha3(sub_bf4abd3f, 11)
            stor11[stor13][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
            emit TokenMinted(address(arg1), sub_bf4abd3f);
            price += price / 75
            _615 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _617 = mem[96]
            mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if not mem[96] % 32:
                return 32, mem[mem[64] + 32 len mem[96] + 32]
            mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
            return memory
              from mem[64]
               len floor32(_617) + _615 + -mem[64] + 96
        mem[128 len s] = code.data[11350 len s]
        t = s - 1
        idx = sub_bf4abd3f
        while idx:
            require t < mem[96]
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        require ownerOf[stor13]
        mem[0] = sha3(sub_bf4abd3f, 11)
        stor11[stor13][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        emit TokenMinted(address(arg1), sub_bf4abd3f);
        price += price / 75
        _618 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _620 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            return 32, mem[mem[64] + 32 len mem[96] + 32]
        mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
        return memory
          from mem[64]
           len floor32(_620) + _618 + -mem[64] + 96
    require msg.sender == owner
    require sub_bf4abd3f <= 360
    sub_bf4abd3f++
    require arg1
    require not ownerOf[stor13]
    ownerOf[stor13] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, sub_bf4abd3f);
    stor6[stor13] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = sub_bf4abd3f
    stor8[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_bf4abd3f
    if not sub_bf4abd3f:
        require ownerOf[stor13]
        stor11[stor13].field_0 = 0
        stor11[stor13].field_1 = 1
        stor11[stor13].field_8 = '0' / 256
        idx = 0
        while stor11[stor13].length + 31 / 32 > idx:
            stor11[stor13][idx].field_0 = 0
            idx = idx + 1
            continue 
        emit TokenMinted(address(arg1), sub_bf4abd3f);
        price += price / 75
        return '0'
    s = 0
    idx = sub_bf4abd3f
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s - 1
        idx = sub_bf4abd3f
        while idx:
            require t < mem[96]
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        require ownerOf[stor13]
        mem[0] = sha3(sub_bf4abd3f, 11)
        stor11[stor13][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        emit TokenMinted(address(arg1), sub_bf4abd3f);
        price += price / 75
        _621 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _623 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            return 32, mem[mem[64] + 32 len mem[96] + 32]
        mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
        return memory
          from mem[64]
           len floor32(_623) + _621 + -mem[64] + 96
    mem[128 len s] = code.data[11350 len s]
    t = s - 1
    idx = sub_bf4abd3f
    while idx:
        require t < mem[96]
        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    require ownerOf[stor13]
    mem[0] = sha3(sub_bf4abd3f, 11)
    stor11[stor13][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    emit TokenMinted(address(arg1), sub_bf4abd3f);
    price += price / 75
    _624 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    _626 = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[mem[64] + 32 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
    return memory
      from mem[64]
       len floor32(_626) + _624 + -mem[64] + 96
}



}
