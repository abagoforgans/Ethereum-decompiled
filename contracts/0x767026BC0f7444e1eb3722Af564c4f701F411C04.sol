contract main {




// =====================  Runtime code  =====================


mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address owner;
uint256 stor12;

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
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

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor3[stor0[arg2]][address(msg.sender)]
    if approved[arg2]:
        approved[arg2] = arg1
        emit Approval(arg2, ownerOf[arg2], arg1);
    else:
        if arg1:
            approved[arg2] = arg1
            emit Approval(arg2, ownerOf[arg2], arg1);
}

function mint() {
    require msg.sender == owner
    require stor12 + 1 >= stor12
    stor12++
    require msg.sender
    require not ownerOf[stor12]
    ownerOf[stor12] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor12
    stor7[stor12] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(stor12, 0, msg.sender);
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor12
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function tokenURI(uint256 arg1) {
    mem[96] = 62
    mem[128] = 'https://storage.googleapis.com/a'
    mem[160] = 'rtiststradingcard.com/artcard/'
    if not arg1:
        mem[192] = 1
        mem[224] = '0'
        mem[256] = 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 63
        mem[384 len 2016] = code.data[9377 len 2016]
        idx = 0
        s = 0
        while idx < 62:
            require idx < 62
            require s < 63
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 62
        while idx < 1:
            require idx < 1
            require s < 63
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 63
        while idx < 0:
            require idx < 0
            require s < 63
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 63
        while idx < 0:
            require idx < 0
            require s < 63
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 63
        while idx < 0:
            require idx < 0
            require s < 63
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        return Array(len=63, data=mem[384], mem[417 len 31])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[192]
            mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _263 = mem[64]
        mem[64] = mem[64] + 32
        mem[_263] = 0
        _264 = mem[64]
        mem[64] = mem[64] + 32
        mem[_264] = 0
        _265 = mem[64]
        mem[64] = mem[64] + 32
        mem[_265] = 0
        _278 = mem[192]
        _279 = mem[96]
        _280 = mem[64]
        mem[mem[64]] = mem[96] + mem[192]
        mem[64] = mem[64] + floor32(_279 + _278 + 31) + 32
        if not _279 + _278:
            _423 = mem[96]
            idx = 0
            s = 0
            while idx < _423:
                require idx < mem[96]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _569 = mem[192]
            idx = 0
            s = _423
            while idx < _569:
                require idx < mem[192]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
                _569 = mem[192]
                idx = idx + 1
                s = s + 1
                continue 
            _691 = mem[_263]
            idx = 0
            s = _423 + _569
            while idx < _691:
                require idx < mem[_263]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_263'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_263'), ('var', 0)), 32))), 0) - 256
                _691 = mem[_263]
                idx = idx + 1
                s = s + 1
                continue 
            _789 = mem[_264]
            idx = 0
            s = _423 + _569 + _691
            while idx < _789:
                require idx < mem[_264]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_264'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_264'), ('var', 0)), 32))), 0) - 256
                _789 = mem[_264]
                idx = idx + 1
                s = s + 1
                continue 
            _857 = mem[_265]
            idx = 0
            s = _423 + _569 + _691 + _789
            while idx < _857:
                require idx < mem[_265]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_265'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_265'), ('var', 0)), 32))), 0) - 256
                _857 = mem[_265]
                idx = idx + 1
                s = s + 1
                continue 
            _873 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_280]
            _875 = mem[_280]
            mem[mem[64] + 64 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
            if not _875 % 32:
                return 32, mem[mem[64] + 32 len _875 + 32]
            mem[floor32(_875) + mem[64] + 64] = mem[floor32(_875) + mem[64] + -(_875 % 32) + 96 len _875 % 32]
            return memory
              from mem[64]
               len floor32(_875) + _873 + -mem[64] + 96
        mem[_280 + 32 len 32 * _279 + _278] = code.data[9377 len 32 * _279 + _278]
        _424 = mem[96]
        idx = 0
        s = 0
        while idx < _424:
            require idx < mem[96]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _570 = mem[192]
        idx = 0
        s = _424
        while idx < _570:
            require idx < mem[192]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _570 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _692 = mem[_263]
        idx = 0
        s = _424 + _570
        while idx < _692:
            require idx < mem[_263]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_263'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_263'), ('var', 0)), 32))), 0) - 256
            _692 = mem[_263]
            idx = idx + 1
            s = s + 1
            continue 
        _790 = mem[_264]
        idx = 0
        s = _424 + _570 + _692
        while idx < _790:
            require idx < mem[_264]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_264'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_264'), ('var', 0)), 32))), 0) - 256
            _790 = mem[_264]
            idx = idx + 1
            s = s + 1
            continue 
        _858 = mem[_265]
        idx = 0
        s = _424 + _570 + _692 + _790
        while idx < _858:
            require idx < mem[_265]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_265'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_265'), ('var', 0)), 32))), 0) - 256
            _858 = mem[_265]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_280]
        _878 = mem[_280]
        mem[mem[64] + 64 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
        if not _878 % 32:
            return 32, mem[mem[64] + 32 len _878 + 32]
        mem[floor32(_878) + mem[64] + 64] = mem[floor32(_878) + mem[64] + -(_878 % 32) + 96 len _878 % 32]
        return 32, mem[mem[64] + 32 len floor32(_878) + 64]
    mem[224 len 32 * s] = code.data[9377 len 32 * s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[192]
        mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _266 = mem[64]
    mem[64] = mem[64] + 32
    mem[_266] = 0
    _267 = mem[64]
    mem[64] = mem[64] + 32
    mem[_267] = 0
    _268 = mem[64]
    mem[64] = mem[64] + 32
    mem[_268] = 0
    _284 = mem[192]
    _285 = mem[96]
    _286 = mem[64]
    mem[mem[64]] = mem[96] + mem[192]
    mem[64] = mem[64] + floor32(_285 + _284 + 31) + 32
    if not _285 + _284:
        _425 = mem[96]
        idx = 0
        s = 0
        while idx < _425:
            require idx < mem[96]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _571 = mem[192]
        idx = 0
        s = _425
        while idx < _571:
            require idx < mem[192]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _571 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _693 = mem[_266]
        idx = 0
        s = _425 + _571
        while idx < _693:
            require idx < mem[_266]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_266'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_266'), ('var', 0)), 32))), 0) - 256
            _693 = mem[_266]
            idx = idx + 1
            s = s + 1
            continue 
        _791 = mem[_267]
        idx = 0
        s = _425 + _571 + _693
        while idx < _791:
            require idx < mem[_267]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_267'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_267'), ('var', 0)), 32))), 0) - 256
            _791 = mem[_267]
            idx = idx + 1
            s = s + 1
            continue 
        _859 = mem[_268]
        idx = 0
        s = _425 + _571 + _693 + _791
        while idx < _859:
            require idx < mem[_268]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 0)), 32))), 0) - 256
            _859 = mem[_268]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_286]
        _881 = mem[_286]
        mem[mem[64] + 64 len ceil32(mem[_286])] = mem[_286 + 32 len ceil32(mem[_286])]
        if not _881 % 32:
            return 32, mem[mem[64] + 32 len _881 + 32]
        mem[floor32(_881) + mem[64] + 64] = mem[floor32(_881) + mem[64] + -(_881 % 32) + 96 len _881 % 32]
        return 32, mem[mem[64] + 32 len floor32(_881) + 64]
    mem[_286 + 32 len 32 * _285 + _284] = code.data[9377 len 32 * _285 + _284]
    _426 = mem[96]
    idx = 0
    s = 0
    while idx < _426:
        require idx < mem[96]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _572 = mem[192]
    idx = 0
    s = _426
    while idx < _572:
        require idx < mem[192]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
        _572 = mem[192]
        idx = idx + 1
        s = s + 1
        continue 
    _694 = mem[_266]
    idx = 0
    s = _426 + _572
    while idx < _694:
        require idx < mem[_266]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_266'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_266'), ('var', 0)), 32))), 0) - 256
        _694 = mem[_266]
        idx = idx + 1
        s = s + 1
        continue 
    _792 = mem[_267]
    idx = 0
    s = _426 + _572 + _694
    while idx < _792:
        require idx < mem[_267]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_267'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_267'), ('var', 0)), 32))), 0) - 256
        _792 = mem[_267]
        idx = idx + 1
        s = s + 1
        continue 
    _860 = mem[_268]
    idx = 0
    s = _426 + _572 + _694 + _792
    while idx < _860:
        require idx < mem[_268]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 0)), 32))), 0) - 256
        _860 = mem[_268]
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_286]
    _884 = mem[_286]
    mem[mem[64] + 64 len ceil32(mem[_286])] = mem[_286 + 32 len ceil32(mem[_286])]
    if not _884 % 32:
        return 32, mem[mem[64] + 32 len _884 + 32]
    mem[floor32(_884) + mem[64] + 64] = mem[floor32(_884) + mem[64] + -(_884 % 32) + 96 len _884 % 32]
    return 32, mem[mem[64] + 32 len floor32(_884) + 64]
}



}
