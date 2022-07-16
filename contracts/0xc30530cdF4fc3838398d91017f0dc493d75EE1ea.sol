contract main {




// =====================  Runtime code  =====================


#
#  - sub_3021c717(?)
#  - initialize(string arg1, string arg2, address arg3, address arg4)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor105;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor157;
array of uint256 tokenByIndex;
mapping of uint256 stor159;
array of uint256 name;
array of uint256 symbol;
address owner;
mapping of uint8 stor364;
uint8 paused;
mapping of uint8 stor516;
array of struct stor567;
uint256 _minted;
address commissionAddress;
array of struct stor570;
uint256 sub_fbbd7cf4;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor51[Mask(32, 224, arg1)])
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

function _minted() {
    return _minted
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor364[address(arg1)])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
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

function commissionAddress() {
    return commissionAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor516[address(arg1)])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor105[address(arg1)][address(arg2)])
}

function sub_fbbd7cf4(?) {
    return sub_fbbd7cf4
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

function sub_efb16625(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_fbbd7cf4 = arg1
}

function setCommissionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    commissionAddress = arg1
}

function unpause() {
    require msg.sender
    require stor364[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor364[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor364[address(msg.sender)]
    stor364[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor516[address(msg.sender)]
    stor516[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor364[address(msg.sender)]
    require arg1
    require not stor364[address(arg1)]
    stor364[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor516[address(msg.sender)]
    require arg1
    require not stor516[address(arg1)]
    stor516[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require not paused
    require arg1 != msg.sender
    stor105[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    stor567[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not paused
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor105[stor102[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function initialize() {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    require stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    stor51[0x780e9d6300000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function getDataForTokenId(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    require ownerOf[arg1]
    mem[128] = stor570[arg1].field_0
    idx = 128
    s = 0
    while stor570[arg1].length + 96 > idx:
        mem[idx + 32] = stor570[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return arg1, 
           Array(len=stor570[arg1].length, data=mem[128 len stor570[arg1].length]),
           stor570[arg1].field_256,
           stor570[arg1].field_512,
           ownerOf[arg1],
           approved[arg1],
           stor570[arg1].field_768
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    require arg1
    if not stor516[address(arg1)]:
        require arg1
        require not stor516[address(arg1)]
        stor516[address(arg1)] = 1
        emit MinterAdded(arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    require stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    stor51[0x5b5e139f00000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not paused
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor105[stor102[arg3]][address(msg.sender)]
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
    if stor157[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not paused
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor105[stor102[arg3]][address(msg.sender)]
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
    if stor157[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
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
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require not paused
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor105[stor102[arg3]][address(msg.sender)]
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
    if stor157[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
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

function mint(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender
    require stor516[address(msg.sender)]
    require not paused
    require msg.sender
    require stor516[address(msg.sender)]
    _minted++
    require arg1
    require not ownerOf[stor568]
    ownerOf[stor568] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, _minted);
    stor157[stor568] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = _minted
    stor159[stor568] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = _minted
    stor570[stor568][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = _minted
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit SeedChange(uint256 arg1, string arg2):
                        Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                        mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                        arg2.length,
                        Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit SeedChange(uint256 arg1, string arg2):
                        Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                        mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                        arg2.length,
                        Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                        mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
    mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        mem[192] = uint256(stor567.field_0)
        idx = 192
        s = 0
        while stor567.length + 160 > idx:
            mem[idx + 32] = stor567[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor567.length + 192 len 0] = None
        mem[stor567.length + 193] = 32
        mem[stor567.length + 225] = mem[160]
        mem[stor567.length + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if not mem[160] % 32:
            return 32, mem[stor567.length + 225 len mem[160] + 32]
        mem[floor32(mem[160]) + stor567.length + 257] = mem[floor32(mem[160]) + stor567.length + -(mem[160] % 32) + 289 len mem[160] % 32]
        return Array(len=mem[160], data=mem[stor567.length + 257 len floor32(mem[160]) + 32])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[96]
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _118 = mem[64]
        mem[0] = 567
        mem[mem[64] + 32] = uint256(stor567.field_0)
        idx = mem[64] + 32
        s = 0
        while _118 + stor567.length > idx:
            mem[idx + 32] = stor567[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _234 = mem[96]
        mem[_118 + stor567.length + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_118 + stor567.length + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _280 = mem[64]
        mem[64] = _234 + _118 + stor567.length + 32
        mem[_234 + _118 + stor567.length + 32] = 32
        mem[_234 + _118 + stor567.length + 64] = mem[_280]
        _288 = mem[_280]
        mem[_234 + _118 + stor567.length + 96 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
        if not _288 % 32:
            return 32, mem[_234 + _118 + stor567.length + 64 len _288 + 32]
        mem[floor32(_288) + _234 + _118 + stor567.length + 96] = mem[floor32(_288) + _234 + _118 + stor567.length + -(_288 % 32) + 128 len _288 % 32]
        return 32, mem[_234 + _118 + stor567.length + 64 len floor32(_288) + 64]
    mem[128 len s] = code.data[21878 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[96]
        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _119 = mem[64]
    mem[0] = 567
    mem[mem[64] + 32] = uint256(stor567.field_0)
    idx = mem[64] + 32
    s = 0
    while _119 + stor567.length > idx:
        mem[idx + 32] = stor567[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _235 = mem[96]
    mem[_119 + stor567.length + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_119 + stor567.length + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _284 = mem[64]
    mem[64] = _235 + _119 + stor567.length + 32
    mem[_235 + _119 + stor567.length + 32] = 32
    mem[_235 + _119 + stor567.length + 64] = mem[_284]
    _291 = mem[_284]
    mem[_235 + _119 + stor567.length + 96 len ceil32(mem[_284])] = mem[_284 + 32 len ceil32(mem[_284])]
    if not _291 % 32:
        return 32, mem[_235 + _119 + stor567.length + 64 len _291 + 32]
    mem[floor32(_291) + _235 + _119 + stor567.length + 96] = mem[floor32(_291) + _235 + _119 + stor567.length + -(_291 % 32) + 128 len _291 % 32]
    return 32, mem[_235 + _119 + stor567.length + 64 len floor32(_291) + 64]
}



}
