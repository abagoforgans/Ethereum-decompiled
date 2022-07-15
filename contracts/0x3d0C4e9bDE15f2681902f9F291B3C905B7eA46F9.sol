contract main {




// =====================  Runtime code  =====================


const creatorSupply = 50

const feePercentage = 15

const price = 275 * 10^15

const maxSupply = 250


address owner;
mapping of uint8 stor1;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
uint256 stor18;
address sub_00ff4442Address;

function sub_00ff4442(?) {
    return sub_00ff4442Address
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
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
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
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

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
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

function sub_093e1073(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_00ff4442Address = arg1
    emit CauseBeneficiaryChanged(sub_00ff4442Address);
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
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor5[stor2[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function withdrawFunds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundsWithdrawn(address(arg1), arg2);
}

function __callback(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
}

function updateTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    require ownerOf[arg1]
    tokenURI[arg1][] = Array(len=arg2.length, data=arg2[all])
    emit 0xb3cbb6e5: arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    require arg3 + arg3.length + 36 <= calldata.size
}

function tokensOwned(address arg1) {
    require calldata.size - 4 >= 32
    if tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]), 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0] = mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]
    return memory
      from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
       len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    if stor7[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor7[stor6[address(arg1)][stor6[address(arg1)].field_0].field_0] = stor7[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
}

function sub_92dde192(?) {
    require calldata.size - 4 >= 32
    if tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return 250, 
               50,
               sub_00ff4442Address,
               275 * 10^15,
               15,
               tokenByIndex.length,
               224,
               tokenOfOwnerByIndex[address(arg1)].field_0,
               mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 250
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = 50
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192] = sub_00ff4442Address
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 224] = 275 * 10^15
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 256] = 15
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 288] = tokenByIndex.length
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 320] = 224
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 352] = tokenOfOwnerByIndex[address(arg1)].field_0
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 384 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0] = mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]
    return memory
      from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
       len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 256
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    if stor7[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor7[stor6[address(arg1)][stor6[address(arg1)].field_0].field_0] = stor7[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
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

function sub_c38f8c29(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    if msg.sender == owner:
        mem[256] = arg1
        mem[224] = 32
        mem[288] = 10
        mem[64] = 928
        mem[640] = 0
        mem[672] = 0
        mem[704] = 0
        mem[736] = 0
        mem[768] = 0
        mem[800] = 0
        mem[832] = 0
        mem[864] = 0
        mem[896] = 0
        mem[var21001] = 640
        s = var21001
        idx = var21002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[640] = 0
            mem[672] = 0
            mem[704] = 0
            mem[736] = 0
            mem[768] = 0
            mem[800] = 0
            mem[832] = 0
            mem[864] = 0
            mem[896] = 0
            mem[s + 32] = 640
            s = s + 32
            idx = idx - 1
            continue 
        _285 = mem[288]
        idx = 0
        s = 0
        while uint8(idx) < _285:
            require uint8(s) < 32
            require uint8(s + 1) < 32
            require uint8(s + 2) < 32
            _293 = mem[64]
            mem[64] = mem[64] + 288
            mem[_293] = 0
            mem[_293 + 32] = 0
            mem[_293 + 64] = 0
            mem[_293 + 96] = 0
            mem[_293 + 128] = 0
            mem[_293 + 160] = 0
            mem[_293 + 192] = 0
            mem[_293 + 224] = 0
            mem[_293 + 256] = 0
            _296 = mem[64]
            mem[64] = mem[64] + 288
            mem[_296] = uint8(idx)
            mem[_296 + 32] = 0
            mem[_296 + 64] = 0
            mem[_296 + 96] = 0
            mem[_296 + 128] = 0
            mem[_296 + 160] = 0
            mem[_296 + 192] = 0
            mem[_296 + 224] = 0
            mem[_296 + 256] = 1
            require uint8(idx) < mem[288]
            mem[(32 * uint8(idx)) + 320] = _296
            idx = idx + 1
            s = s + 3
            continue 
        _287 = mem[64]
        mem[64] = mem[64] + 128
        require uint8(3 * None) < 32
        mem[_287] = 0
        mem[_287 + 32] = 0
        require uint8((3 * None) + 1) < 32
        mem[_287 + 64] = 0
        mem[_287 + 96] = 0
        _289 = mem[64]
        mem[mem[64]] = sha3(arg1)
        mem[mem[64] + 32] = 192
        _291 = mem[288]
        mem[mem[64] + 192] = mem[288]
        idx = 0
        s = 320
        t = mem[64] + 224
        while idx < _291:
            _329 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_329 + 63 len 1]
            mem[t + 64] = mem[_329 + 95 len 1]
            mem[t + 96] = mem[_329 + 127 len 1]
            mem[t + 128] = mem[_329 + 159 len 1]
            mem[t + 160] = mem[_329 + 190 len 2]
            mem[t + 192] = mem[_329 + 222 len 2]
            mem[t + 224] = mem[_329 + 254 len 2]
            mem[t + 256] = mem[_329 + 286 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        mem[_289 + 64] = mem[_287 + 31 len 1]
        mem[_289 + 96] = mem[_287 + 63 len 1]
        mem[_289 + 128] = mem[_287 + 95 len 1]
        mem[_289 + 160] = mem[_287 + 126 len 2]
        return memory
          from mem[64]
           len _289 + (288 * _291) + -mem[64] + 224
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'Requested token does not exist yet'
    mem[256] = arg1
    mem[224] = 32
    mem[288] = 10
    mem[64] = 928
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    mem[var25001] = 640
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[640] = 0
        mem[672] = 0
        mem[704] = 0
        mem[736] = 0
        mem[768] = 0
        mem[800] = 0
        mem[832] = 0
        mem[864] = 0
        mem[896] = 0
        mem[s + 32] = 640
        s = s + 32
        idx = idx - 1
        continue 
    _286 = mem[288]
    idx = 0
    s = 0
    while uint8(idx) < _286:
        require uint8(s) < 32
        require uint8(s + 1) < 32
        require uint8(s + 2) < 32
        _294 = mem[64]
        mem[64] = mem[64] + 288
        mem[_294] = 0
        mem[_294 + 32] = 0
        mem[_294 + 64] = 0
        mem[_294 + 96] = 0
        mem[_294 + 128] = 0
        mem[_294 + 160] = 0
        mem[_294 + 192] = 0
        mem[_294 + 224] = 0
        mem[_294 + 256] = 0
        _298 = mem[64]
        mem[64] = mem[64] + 288
        mem[_298] = uint8(idx)
        mem[_298 + 32] = 0
        mem[_298 + 64] = 0
        mem[_298 + 96] = 0
        mem[_298 + 128] = 0
        mem[_298 + 160] = 0
        mem[_298 + 192] = 0
        mem[_298 + 224] = 0
        mem[_298 + 256] = 1
        require uint8(idx) < mem[288]
        mem[(32 * uint8(idx)) + 320] = _298
        idx = idx + 1
        s = s + 3
        continue 
    _288 = mem[64]
    mem[64] = mem[64] + 128
    require uint8(3 * None) < 32
    mem[_288] = 0
    mem[_288 + 32] = 0
    require uint8((3 * None) + 1) < 32
    mem[_288 + 64] = 0
    mem[_288 + 96] = 0
    _290 = mem[64]
    mem[mem[64]] = sha3(arg1)
    mem[mem[64] + 32] = 192
    _292 = mem[288]
    mem[mem[64] + 192] = mem[288]
    idx = 0
    s = 320
    t = mem[64] + 224
    while idx < _292:
        _330 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_330 + 63 len 1]
        mem[t + 64] = mem[_330 + 95 len 1]
        mem[t + 96] = mem[_330 + 127 len 1]
        mem[t + 128] = mem[_330 + 159 len 1]
        mem[t + 160] = mem[_330 + 190 len 2]
        mem[t + 192] = mem[_330 + 222 len 2]
        mem[t + 224] = mem[_330 + 254 len 2]
        mem[t + 256] = mem[_330 + 286 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    mem[_290 + 64] = mem[_288 + 31 len 1]
    mem[_290 + 96] = mem[_288 + 63 len 1]
    mem[_290 + 128] = mem[_288 + 95 len 1]
    mem[_290 + 160] = mem[_288 + 126 len 2]
    return memory
      from mem[64]
       len _290 + (288 * _292) + -mem[64] + 224
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    require ownerOf[arg3]
    if msg.sender == ownerOf[arg3]:
        if ownerOf[arg3]:
            if ownerOf[arg3] == arg1:
                if arg2:
                    if approved[arg3]:
                        approved[arg3] = 0
                    if 1 <= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)]--
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if 1 <= tokenOfOwnerByIndex[address(arg1)].field_0:
                            if stor7[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                                stor7[stor6[address(arg1)][stor6[address(arg1)].field_0].field_0] = stor7[arg3]
                            tokenOfOwnerByIndex[address(arg1)].field_0--
                            if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                                while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                                    tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor7[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                            tokenOfOwnerByIndex[address(arg2)].field_0++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                            if ext_code.size(arg2) <= 0:
                            if ext_code.size(arg2):
                                call arg2 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if ownerOf[arg3]:
            if approved[arg3] == msg.sender:
                if ownerOf[arg3]:
                    if ownerOf[arg3] == arg1:
                        if arg2:
                            if approved[arg3]:
                                approved[arg3] = 0
                            if 1 <= balanceOf[address(arg1)]:
                                balanceOf[address(arg1)]--
                                balanceOf[address(arg2)]++
                                ownerOf[arg3] = arg2
                                emit Transfer(arg1, arg2, arg3);
                                if 1 <= tokenOfOwnerByIndex[address(arg1)].field_0:
                                    if stor7[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                                        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                                        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                                        stor7[stor6[address(arg1)][stor6[address(arg1)].field_0].field_0] = stor7[arg3]
                                    tokenOfOwnerByIndex[address(arg1)].field_0--
                                    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                                        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                                            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                                    tokenOfOwnerByIndex[address(arg2)].field_0++
                                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                                    if ext_code.size(arg2) <= 0:
                                    if ext_code.size(arg2):
                                        call arg2 with:
                                             gas gas_remaining wei
                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor5[stor2[arg3]][address(msg.sender)]:
                    if ownerOf[arg3]:
                        if ownerOf[arg3] == arg1:
                            if arg2:
                                if approved[arg3]:
                                    approved[arg3] = 0
                                if 1 <= balanceOf[address(arg1)]:
                                    balanceOf[address(arg1)]--
                                    balanceOf[address(arg2)]++
                                    ownerOf[arg3] = arg2
                                    emit Transfer(arg1, arg2, arg3);
                                    if 1 <= tokenOfOwnerByIndex[address(arg1)].field_0:
                                        if stor7[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                            require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                                            require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                                            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                                            stor7[stor6[address(arg1)][stor6[address(arg1)].field_0].field_0] = stor7[arg3]
                                        tokenOfOwnerByIndex[address(arg1)].field_0--
                                        if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                            idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                                            while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                                                tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                                        tokenOfOwnerByIndex[address(arg2)].field_0++
                                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                                        if ext_code.size(arg2) <= 0:
                                        if ext_code.size(arg2):
                                            call arg2 with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
    revert
}

function getTokenData(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    if msg.sender == owner:
        mem[384] = arg1
        mem[352] = 32
        mem[416] = 10
        mem[64] = 1056
        mem[768] = 0
        mem[800] = 0
        mem[832] = 0
        mem[864] = 0
        mem[896] = 0
        mem[928] = 0
        mem[960] = 0
        mem[992] = 0
        mem[1024] = 0
        mem[var24001] = 768
        s = var24001
        idx = var24002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[768] = 0
            mem[800] = 0
            mem[832] = 0
            mem[864] = 0
            mem[896] = 0
            mem[928] = 0
            mem[960] = 0
            mem[992] = 0
            mem[1024] = 0
            mem[s + 32] = 768
            s = s + 32
            idx = idx - 1
            continue 
        _542 = mem[416]
        idx = 0
        s = 0
        while uint8(idx) < _542:
            require uint8(s) < 32
            require uint8(s + 1) < 32
            require uint8(s + 2) < 32
            _554 = mem[64]
            mem[64] = mem[64] + 288
            mem[_554] = 0
            mem[_554 + 32] = 0
            mem[_554 + 64] = 0
            mem[_554 + 96] = 0
            mem[_554 + 128] = 0
            mem[_554 + 160] = 0
            mem[_554 + 192] = 0
            mem[_554 + 224] = 0
            mem[_554 + 256] = 0
            _556 = mem[64]
            mem[64] = mem[64] + 288
            mem[_556] = uint8(idx)
            mem[_556 + 32] = 0
            mem[_556 + 64] = 0
            mem[_556 + 96] = 0
            mem[_556 + 128] = 0
            mem[_556 + 160] = 0
            mem[_556 + 192] = 0
            mem[_556 + 224] = 0
            mem[_556 + 256] = 1
            require uint8(idx) < mem[416]
            mem[(32 * uint8(idx)) + 448] = _556
            idx = idx + 1
            s = s + 3
            continue 
        _544 = mem[64]
        mem[64] = mem[64] + 128
        require uint8(3 * None) < 32
        mem[_544] = 0
        mem[_544 + 32] = 0
        require uint8((3 * None) + 1) < 32
        mem[_544 + 64] = 0
        mem[_544 + 96] = 0
        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        require ext_code.size(this.address)
        staticcall this.address.0xc87b56dd with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _550 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _552 = mem[_550]
        require mem[_550] <= test266151307()
        require _550 + mem[_550] + 31 < _550 + return_data.size
        _558 = mem[_550 + mem[_550]]
        require mem[_550 + mem[_550]] <= test266151307()
        require _550 + ceil32(return_data.size) + ceil32(mem[_550 + mem[_550]]) + 32 <= test266151307() and ceil32(mem[_550 + mem[_550]]) + 32 >= 0
        mem[64] = _550 + ceil32(return_data.size) + ceil32(mem[_550 + mem[_550]]) + 32
        mem[_550 + ceil32(return_data.size)] = _558
        require _552 + _558 + 32 <= return_data.size
        mem[_550 + ceil32(return_data.size) + 32 len ceil32(_558)] = mem[_550 + _552 + 32 len ceil32(_558)]
        if ceil32(_558) <= _558:
            mem[0] = arg1
            mem[32] = 2
            require ownerOf[arg1]
            _656 = mem[64]
            mem[mem[64]] = sha3(arg1)
            mem[mem[64] + 32] = 256
            _660 = mem[416]
            mem[mem[64] + 256] = mem[416]
            idx = 0
            s = 448
            t = mem[64] + 288
            while idx < _660:
                _736 = mem[s]
                mem[t] = mem[mem[s] + 31 len 1]
                mem[t + 32] = mem[_736 + 63 len 1]
                mem[t + 64] = mem[_736 + 95 len 1]
                mem[t + 96] = mem[_736 + 127 len 1]
                mem[t + 128] = mem[_736 + 159 len 1]
                mem[t + 160] = mem[_736 + 190 len 2]
                mem[t + 192] = mem[_736 + 222 len 2]
                mem[t + 224] = mem[_736 + 254 len 2]
                mem[t + 256] = mem[_736 + 286 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 288
                continue 
            mem[_656 + 64] = mem[_544 + 31 len 1]
            mem[_656 + 96] = mem[_544 + 63 len 1]
            mem[_656 + 128] = mem[_544 + 95 len 1]
            mem[_656 + 160] = mem[_544 + 126 len 2]
            mem[_656 + 192] = (288 * _660) + 288
            _776 = mem[_550 + ceil32(return_data.size)]
            mem[_656 + (288 * _660) + 288] = mem[_550 + ceil32(return_data.size)]
            mem[_656 + (288 * _660) + 320 len ceil32(_776)] = mem[_550 + ceil32(return_data.size) + 32 len ceil32(_776)]
            if ceil32(_776) > _776:
                mem[_656 + (288 * _660) + _776 + 320] = 0
            mem[_656 + 224] = ownerOf[arg1]
            return memory
              from mem[64]
               len _656 + (288 * _660) + ceil32(_776) + -mem[64] + 320
        mem[_550 + ceil32(return_data.size) + _558 + 32] = 0
        mem[0] = arg1
        mem[32] = 2
        require ownerOf[arg1]
        _658 = mem[64]
        mem[mem[64]] = sha3(arg1)
        mem[mem[64] + 32] = 256
        _662 = mem[416]
        mem[mem[64] + 256] = mem[416]
        idx = 0
        s = 448
        t = mem[64] + 288
        while idx < _662:
            _737 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_737 + 63 len 1]
            mem[t + 64] = mem[_737 + 95 len 1]
            mem[t + 96] = mem[_737 + 127 len 1]
            mem[t + 128] = mem[_737 + 159 len 1]
            mem[t + 160] = mem[_737 + 190 len 2]
            mem[t + 192] = mem[_737 + 222 len 2]
            mem[t + 224] = mem[_737 + 254 len 2]
            mem[t + 256] = mem[_737 + 286 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        mem[_658 + 64] = mem[_544 + 31 len 1]
        mem[_658 + 96] = mem[_544 + 63 len 1]
        mem[_658 + 128] = mem[_544 + 95 len 1]
        mem[_658 + 160] = mem[_544 + 126 len 2]
        mem[_658 + 192] = (288 * _662) + 288
        _778 = mem[_550 + ceil32(return_data.size)]
        mem[_658 + (288 * _662) + 288] = mem[_550 + ceil32(return_data.size)]
        mem[_658 + (288 * _662) + 320 len ceil32(_778)] = mem[_550 + ceil32(return_data.size) + 32 len ceil32(_778)]
        if ceil32(_778) > _778:
            mem[_658 + (288 * _662) + _778 + 320] = 0
        mem[_658 + 224] = ownerOf[arg1]
        return memory
          from mem[64]
           len _658 + (288 * _662) + ceil32(_778) + -mem[64] + 320
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'Requested token does not exist yet'
    mem[384] = arg1
    mem[352] = 32
    mem[416] = 10
    mem[64] = 1056
    mem[768] = 0
    mem[800] = 0
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    mem[928] = 0
    mem[960] = 0
    mem[992] = 0
    mem[1024] = 0
    mem[var28001] = 768
    s = var28001
    idx = var28002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[768] = 0
        mem[800] = 0
        mem[832] = 0
        mem[864] = 0
        mem[896] = 0
        mem[928] = 0
        mem[960] = 0
        mem[992] = 0
        mem[1024] = 0
        mem[s + 32] = 768
        s = s + 32
        idx = idx - 1
        continue 
    _543 = mem[416]
    idx = 0
    s = 0
    while uint8(idx) < _543:
        require uint8(s) < 32
        require uint8(s + 1) < 32
        require uint8(s + 2) < 32
        _555 = mem[64]
        mem[64] = mem[64] + 288
        mem[_555] = 0
        mem[_555 + 32] = 0
        mem[_555 + 64] = 0
        mem[_555 + 96] = 0
        mem[_555 + 128] = 0
        mem[_555 + 160] = 0
        mem[_555 + 192] = 0
        mem[_555 + 224] = 0
        mem[_555 + 256] = 0
        _557 = mem[64]
        mem[64] = mem[64] + 288
        mem[_557] = uint8(idx)
        mem[_557 + 32] = 0
        mem[_557 + 64] = 0
        mem[_557 + 96] = 0
        mem[_557 + 128] = 0
        mem[_557 + 160] = 0
        mem[_557 + 192] = 0
        mem[_557 + 224] = 0
        mem[_557 + 256] = 1
        require uint8(idx) < mem[416]
        mem[(32 * uint8(idx)) + 448] = _557
        idx = idx + 1
        s = s + 3
        continue 
    _545 = mem[64]
    mem[64] = mem[64] + 128
    require uint8(3 * None) < 32
    mem[_545] = 0
    mem[_545 + 32] = 0
    require uint8((3 * None) + 1) < 32
    mem[_545 + 64] = 0
    mem[_545 + 96] = 0
    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    require ext_code.size(this.address)
    staticcall this.address.0xc87b56dd with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _551 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _553 = mem[_551]
    require mem[_551] <= test266151307()
    require _551 + mem[_551] + 31 < _551 + return_data.size
    _559 = mem[_551 + mem[_551]]
    require mem[_551 + mem[_551]] <= test266151307()
    require _551 + ceil32(return_data.size) + ceil32(mem[_551 + mem[_551]]) + 32 <= test266151307() and ceil32(mem[_551 + mem[_551]]) + 32 >= 0
    mem[64] = _551 + ceil32(return_data.size) + ceil32(mem[_551 + mem[_551]]) + 32
    mem[_551 + ceil32(return_data.size)] = _559
    require _553 + _559 + 32 <= return_data.size
    mem[_551 + ceil32(return_data.size) + 32 len ceil32(_559)] = mem[_551 + _553 + 32 len ceil32(_559)]
    if ceil32(_559) <= _559:
        mem[0] = arg1
        mem[32] = 2
        require ownerOf[arg1]
        _657 = mem[64]
        mem[mem[64]] = sha3(arg1)
        mem[mem[64] + 32] = 256
        _661 = mem[416]
        mem[mem[64] + 256] = mem[416]
        idx = 0
        s = 448
        t = mem[64] + 288
        while idx < _661:
            _738 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_738 + 63 len 1]
            mem[t + 64] = mem[_738 + 95 len 1]
            mem[t + 96] = mem[_738 + 127 len 1]
            mem[t + 128] = mem[_738 + 159 len 1]
            mem[t + 160] = mem[_738 + 190 len 2]
            mem[t + 192] = mem[_738 + 222 len 2]
            mem[t + 224] = mem[_738 + 254 len 2]
            mem[t + 256] = mem[_738 + 286 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        mem[_657 + 64] = mem[_545 + 31 len 1]
        mem[_657 + 96] = mem[_545 + 63 len 1]
        mem[_657 + 128] = mem[_545 + 95 len 1]
        mem[_657 + 160] = mem[_545 + 126 len 2]
        mem[_657 + 192] = (288 * _661) + 288
        _780 = mem[_551 + ceil32(return_data.size)]
        mem[_657 + (288 * _661) + 288] = mem[_551 + ceil32(return_data.size)]
        mem[_657 + (288 * _661) + 320 len ceil32(_780)] = mem[_551 + ceil32(return_data.size) + 32 len ceil32(_780)]
        if ceil32(_780) > _780:
            mem[_657 + (288 * _661) + _780 + 320] = 0
        mem[_657 + 224] = ownerOf[arg1]
        return memory
          from mem[64]
           len _657 + (288 * _661) + ceil32(_780) + -mem[64] + 320
    mem[_551 + ceil32(return_data.size) + _559 + 32] = 0
    mem[0] = arg1
    mem[32] = 2
    require ownerOf[arg1]
    _659 = mem[64]
    mem[mem[64]] = sha3(arg1)
    mem[mem[64] + 32] = 256
    _663 = mem[416]
    mem[mem[64] + 256] = mem[416]
    idx = 0
    s = 448
    t = mem[64] + 288
    while idx < _663:
        _739 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_739 + 63 len 1]
        mem[t + 64] = mem[_739 + 95 len 1]
        mem[t + 96] = mem[_739 + 127 len 1]
        mem[t + 128] = mem[_739 + 159 len 1]
        mem[t + 160] = mem[_739 + 190 len 2]
        mem[t + 192] = mem[_739 + 222 len 2]
        mem[t + 224] = mem[_739 + 254 len 2]
        mem[t + 256] = mem[_739 + 286 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    mem[_659 + 64] = mem[_545 + 31 len 1]
    mem[_659 + 96] = mem[_545 + 63 len 1]
    mem[_659 + 128] = mem[_545 + 95 len 1]
    mem[_659 + 160] = mem[_545 + 126 len 2]
    mem[_659 + 192] = (288 * _663) + 288
    _782 = mem[_551 + ceil32(return_data.size)]
    mem[_659 + (288 * _663) + 288] = mem[_551 + ceil32(return_data.size)]
    mem[_659 + (288 * _663) + 320 len ceil32(_782)] = mem[_551 + ceil32(return_data.size) + 32 len ceil32(_782)]
    if ceil32(_782) > _782:
        mem[_659 + (288 * _663) + _782 + 320] = 0
    mem[_659 + 224] = ownerOf[arg1]
    return memory
      from mem[64]
       len _659 + (288 * _663) + ceil32(_782) + -mem[64] + 320
}

function mint() payable {
    if tokenByIndex.length >= 250:
        revert with 0, 'Max tokens issued'
    if msg.sender == owner:
        if tokenByIndex.length >= 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max number creator tokens already issued'
        if not stor18:
            mem[128] = '0'
            require msg.sender
            require not ownerOf[stor18]
            ownerOf[stor18] = msg.sender
            balanceOf[address(msg.sender)]++
            emit Transfer(0, msg.sender, stor18);
            stor7[stor18] = tokenOfOwnerByIndex[address(msg.sender)].field_0
            tokenOfOwnerByIndex[address(msg.sender)].field_0++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = stor18
            stor9[stor18] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor18
            mem[160] = 56
            mem[192 len 56] = 0xfe68747470733a2f2f6170692e67656e657238746976652e696f2f6b636f6d706f736974696f6e732f746f6b656e732f6d65746164617461
            mem[256] = 0
            mem[288] = 0
            mem[320] = 0
            mem[352] = 57
            mem[384 len 57] = code.data[17871 len 57]
            idx = 0
            s = 0
            while idx < 56:
                require idx < 56
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = 56
            while idx < 1:
                require idx < 1
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = 57
            while idx < 0:
                require idx < 0
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = 57
            while idx < 0:
                require idx < 0
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = 57
            while idx < 0:
                require idx < 0
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            require ownerOf[stor18]
            tokenURI[stor18] = 115
            s = 0
            idx = 384
            while 441 > idx:
                tokenURI[stor18][s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while tokenURI[stor18].length + 31 / 32 > idx:
                tokenURI[stor18][idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = stor18
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s - 1
                idx = stor18
                while idx:
                    require t < mem[96]
                    mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                require msg.sender
                require not ownerOf[stor18]
                ownerOf[stor18] = msg.sender
                balanceOf[address(msg.sender)]++
                emit Transfer(0, msg.sender, stor18);
                stor7[stor18] = tokenOfOwnerByIndex[address(msg.sender)].field_0
                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = stor18
                mem[32] = 9
                stor9[stor18] = tokenByIndex.length
                tokenByIndex.length++
                mem[0] = 8
                tokenByIndex[tokenByIndex.length] = stor18
                _697 = mem[64]
                mem[64] = mem[64] + 96
                mem[_697] = 56
                mem[_697 + 32 len 56] = 0xfe68747470733a2f2f6170692e67656e657238746976652e696f2f6b636f6d706f736974696f6e732f746f6b656e732f6d65746164617461
                _701 = mem[64]
                mem[64] = mem[64] + 32
                mem[_701] = 0
                _702 = mem[64]
                mem[64] = mem[64] + 32
                mem[_702] = 0
                _703 = mem[64]
                mem[64] = mem[64] + 32
                mem[_703] = 0
                _716 = mem[96]
                _718 = mem[64]
                mem[mem[64]] = mem[96] + 56
                mem[64] = mem[64] + floor32(_716 + 87) + 32
                if not _716 + 56:
                    idx = 0
                    s = 0
                    while idx < 56:
                        require idx < mem[_697]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_697'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_697'), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1225 = mem[96]
                    idx = 0
                    s = 56
                    while idx < _1225:
                        require idx < mem[96]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        _1225 = mem[96]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1457 = mem[_701]
                    idx = 0
                    s = _1225 + 56
                    while idx < _1457:
                        require idx < mem[_701]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_701'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_701'), ('var', 0)), 32))), 0) - 256
                        _1457 = mem[_701]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1641 = mem[_702]
                    idx = 0
                    s = _1225 + _1457 + 56
                    while idx < _1641:
                        require idx < mem[_702]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_702'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_702'), ('var', 0)), 32))), 0) - 256
                        _1641 = mem[_702]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1757 = mem[_703]
                    idx = 0
                    s = _1225 + _1457 + _1641 + 56
                    while idx < _1757:
                        require idx < mem[_703]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_703'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_703'), ('var', 0)), 32))), 0) - 256
                        _1757 = mem[_703]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ownerOf[stor18]
                    mem[0] = stor18
                    mem[32] = 12
                    _1798 = mem[_718]
                    tokenURI[stor18][] = Array(len=_1798, data=mem[_718 + 32 len _1798])
                else:
                    mem[_718 + 32 len _716 + 56] = code.data[17871 len _716 + 56]
                    idx = 0
                    s = 0
                    while idx < 56:
                        require idx < mem[_697]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_697'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_697'), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1226 = mem[96]
                    idx = 0
                    s = 56
                    while idx < _1226:
                        require idx < mem[96]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        _1226 = mem[96]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1458 = mem[_701]
                    idx = 0
                    s = _1226 + 56
                    while idx < _1458:
                        require idx < mem[_701]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_701'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_701'), ('var', 0)), 32))), 0) - 256
                        _1458 = mem[_701]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1642 = mem[_702]
                    idx = 0
                    s = _1226 + _1458 + 56
                    while idx < _1642:
                        require idx < mem[_702]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_702'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_702'), ('var', 0)), 32))), 0) - 256
                        _1642 = mem[_702]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1758 = mem[_703]
                    idx = 0
                    s = _1226 + _1458 + _1642 + 56
                    while idx < _1758:
                        require idx < mem[_703]
                        require s < mem[_718]
                        mem[_718 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_703'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_703'), ('var', 0)), 32))), 0) - 256
                        _1758 = mem[_703]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ownerOf[stor18]
                    mem[0] = stor18
                    mem[32] = 12
                    _1800 = mem[_718]
                    tokenURI[stor18][] = Array(len=_1800, data=mem[_718 + 32 len _1800])
            else:
                mem[128 len s] = code.data[17871 len s]
                t = s - 1
                idx = stor18
                while idx:
                    require t < mem[96]
                    mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                require msg.sender
                require not ownerOf[stor18]
                ownerOf[stor18] = msg.sender
                balanceOf[address(msg.sender)]++
                emit Transfer(0, msg.sender, stor18);
                stor7[stor18] = tokenOfOwnerByIndex[address(msg.sender)].field_0
                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = stor18
                mem[32] = 9
                stor9[stor18] = tokenByIndex.length
                tokenByIndex.length++
                mem[0] = 8
                tokenByIndex[tokenByIndex.length] = stor18
                _698 = mem[64]
                mem[64] = mem[64] + 96
                mem[_698] = 56
                mem[_698 + 32 len 56] = 0xfe68747470733a2f2f6170692e67656e657238746976652e696f2f6b636f6d706f736974696f6e732f746f6b656e732f6d65746164617461
                _704 = mem[64]
                mem[64] = mem[64] + 32
                mem[_704] = 0
                _705 = mem[64]
                mem[64] = mem[64] + 32
                mem[_705] = 0
                _706 = mem[64]
                mem[64] = mem[64] + 32
                mem[_706] = 0
                _722 = mem[96]
                _724 = mem[64]
                mem[mem[64]] = mem[96] + 56
                mem[64] = mem[64] + floor32(_722 + 87) + 32
                if not _722 + 56:
                    idx = 0
                    s = 0
                    while idx < 56:
                        require idx < mem[_698]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_698'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_698'), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1227 = mem[96]
                    idx = 0
                    s = 56
                    while idx < _1227:
                        require idx < mem[96]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        _1227 = mem[96]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1459 = mem[_704]
                    idx = 0
                    s = _1227 + 56
                    while idx < _1459:
                        require idx < mem[_704]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_704'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_704'), ('var', 0)), 32))), 0) - 256
                        _1459 = mem[_704]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1643 = mem[_705]
                    idx = 0
                    s = _1227 + _1459 + 56
                    while idx < _1643:
                        require idx < mem[_705]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_705'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_705'), ('var', 0)), 32))), 0) - 256
                        _1643 = mem[_705]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1759 = mem[_706]
                    idx = 0
                    s = _1227 + _1459 + _1643 + 56
                    while idx < _1759:
                        require idx < mem[_706]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_706'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_706'), ('var', 0)), 32))), 0) - 256
                        _1759 = mem[_706]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ownerOf[stor18]
                    mem[0] = stor18
                    mem[32] = 12
                    _1802 = mem[_724]
                    tokenURI[stor18][] = Array(len=_1802, data=mem[_724 + 32 len _1802])
                else:
                    mem[_724 + 32 len _722 + 56] = code.data[17871 len _722 + 56]
                    idx = 0
                    s = 0
                    while idx < 56:
                        require idx < mem[_698]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_698'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_698'), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1228 = mem[96]
                    idx = 0
                    s = 56
                    while idx < _1228:
                        require idx < mem[96]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        _1228 = mem[96]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1460 = mem[_704]
                    idx = 0
                    s = _1228 + 56
                    while idx < _1460:
                        require idx < mem[_704]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_704'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_704'), ('var', 0)), 32))), 0) - 256
                        _1460 = mem[_704]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1644 = mem[_705]
                    idx = 0
                    s = _1228 + _1460 + 56
                    while idx < _1644:
                        require idx < mem[_705]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_705'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_705'), ('var', 0)), 32))), 0) - 256
                        _1644 = mem[_705]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1760 = mem[_706]
                    idx = 0
                    s = _1228 + _1460 + _1644 + 56
                    while idx < _1760:
                        require idx < mem[_706]
                        require s < mem[_724]
                        mem[_724 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_706'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_706'), ('var', 0)), 32))), 0) - 256
                        _1760 = mem[_706]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ownerOf[stor18]
                    mem[0] = stor18
                    mem[32] = 12
                    _1804 = mem[_724]
                    tokenURI[stor18][] = Array(len=_1804, data=mem[_724 + 32 len _1804])
    else:
        if msg.value < 275 * 10^15:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient ETH sent with transaction'
        require 15 * msg.value / 15 == msg.value
        if not sub_00ff4442Address:
            revert with 0, 'Cause Beneficiary not set'
        call sub_00ff4442Address with:
           value msg.value - (15 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor18:
            mem[128] = '0'
            require msg.sender
            require not ownerOf[stor18]
            ownerOf[stor18] = msg.sender
            balanceOf[address(msg.sender)]++
            emit Transfer(0, msg.sender, stor18);
            stor7[stor18] = tokenOfOwnerByIndex[address(msg.sender)].field_0
            tokenOfOwnerByIndex[address(msg.sender)].field_0++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = stor18
            stor9[stor18] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor18
            mem[160] = 56
            mem[192 len 56] = 0xfe68747470733a2f2f6170692e67656e657238746976652e696f2f6b636f6d706f736974696f6e732f746f6b656e732f6d65746164617461
            mem[256] = 0
            mem[288] = 0
            mem[320] = 0
            mem[352] = 57
            mem[384 len 57] = code.data[17871 len 57]
            idx = 0
            s = 0
            while idx < 56:
                require idx < 56
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = 56
            while idx < 1:
                require idx < 1
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = 57
            while idx < 0:
                require idx < 0
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = 57
            while idx < 0:
                require idx < 0
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = 57
            while idx < 0:
                require idx < 0
                require s < 57
                mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            require ownerOf[stor18]
            tokenURI[stor18] = 115
            s = 0
            idx = 384
            while 441 > idx:
                tokenURI[stor18][s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while tokenURI[stor18].length + 31 / 32 > idx:
                tokenURI[stor18][idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = stor18
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s - 1
                idx = stor18
                while idx:
                    require t < mem[96]
                    mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                require msg.sender
                require not ownerOf[stor18]
                ownerOf[stor18] = msg.sender
                balanceOf[address(msg.sender)]++
                emit Transfer(0, msg.sender, stor18);
                stor7[stor18] = tokenOfOwnerByIndex[address(msg.sender)].field_0
                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = stor18
                mem[32] = 9
                stor9[stor18] = tokenByIndex.length
                tokenByIndex.length++
                mem[0] = 8
                tokenByIndex[tokenByIndex.length] = stor18
                _699 = mem[64]
                mem[64] = mem[64] + 96
                mem[_699] = 56
                mem[_699 + 32 len 56] = 0xfe68747470733a2f2f6170692e67656e657238746976652e696f2f6b636f6d706f736974696f6e732f746f6b656e732f6d65746164617461
                _707 = mem[64]
                mem[64] = mem[64] + 32
                mem[_707] = 0
                _708 = mem[64]
                mem[64] = mem[64] + 32
                mem[_708] = 0
                _709 = mem[64]
                mem[64] = mem[64] + 32
                mem[_709] = 0
                _728 = mem[96]
                _730 = mem[64]
                mem[mem[64]] = mem[96] + 56
                mem[64] = mem[64] + floor32(_728 + 87) + 32
                if not _728 + 56:
                    idx = 0
                    s = 0
                    while idx < 56:
                        require idx < mem[_699]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_699'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_699'), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1231 = mem[96]
                    idx = 0
                    s = 56
                    while idx < _1231:
                        require idx < mem[96]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        _1231 = mem[96]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1463 = mem[_707]
                    idx = 0
                    s = _1231 + 56
                    while idx < _1463:
                        require idx < mem[_707]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_707'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_707'), ('var', 0)), 32))), 0) - 256
                        _1463 = mem[_707]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1645 = mem[_708]
                    idx = 0
                    s = _1231 + _1463 + 56
                    while idx < _1645:
                        require idx < mem[_708]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_708'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_708'), ('var', 0)), 32))), 0) - 256
                        _1645 = mem[_708]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1761 = mem[_709]
                    idx = 0
                    s = _1231 + _1463 + _1645 + 56
                    while idx < _1761:
                        require idx < mem[_709]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_709'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_709'), ('var', 0)), 32))), 0) - 256
                        _1761 = mem[_709]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ownerOf[stor18]
                    mem[0] = stor18
                    mem[32] = 12
                    _1806 = mem[_730]
                    tokenURI[stor18][] = Array(len=_1806, data=mem[_730 + 32 len _1806])
                else:
                    mem[_730 + 32 len _728 + 56] = code.data[17871 len _728 + 56]
                    idx = 0
                    s = 0
                    while idx < 56:
                        require idx < mem[_699]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_699'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_699'), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1232 = mem[96]
                    idx = 0
                    s = 56
                    while idx < _1232:
                        require idx < mem[96]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        _1232 = mem[96]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1464 = mem[_707]
                    idx = 0
                    s = _1232 + 56
                    while idx < _1464:
                        require idx < mem[_707]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_707'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_707'), ('var', 0)), 32))), 0) - 256
                        _1464 = mem[_707]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1646 = mem[_708]
                    idx = 0
                    s = _1232 + _1464 + 56
                    while idx < _1646:
                        require idx < mem[_708]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_708'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_708'), ('var', 0)), 32))), 0) - 256
                        _1646 = mem[_708]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1762 = mem[_709]
                    idx = 0
                    s = _1232 + _1464 + _1646 + 56
                    while idx < _1762:
                        require idx < mem[_709]
                        require s < mem[_730]
                        mem[_730 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_709'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_709'), ('var', 0)), 32))), 0) - 256
                        _1762 = mem[_709]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ownerOf[stor18]
                    mem[0] = stor18
                    mem[32] = 12
                    _1808 = mem[_730]
                    tokenURI[stor18][] = Array(len=_1808, data=mem[_730 + 32 len _1808])
            else:
                mem[128 len s] = code.data[17871 len s]
                t = s - 1
                idx = stor18
                while idx:
                    require t < mem[96]
                    mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                require msg.sender
                require not ownerOf[stor18]
                ownerOf[stor18] = msg.sender
                balanceOf[address(msg.sender)]++
                emit Transfer(0, msg.sender, stor18);
                stor7[stor18] = tokenOfOwnerByIndex[address(msg.sender)].field_0
                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = stor18
                mem[32] = 9
                stor9[stor18] = tokenByIndex.length
                tokenByIndex.length++
                mem[0] = 8
                tokenByIndex[tokenByIndex.length] = stor18
                _700 = mem[64]
                mem[64] = mem[64] + 96
                mem[_700] = 56
                mem[_700 + 32 len 56] = 0xfe68747470733a2f2f6170692e67656e657238746976652e696f2f6b636f6d706f736974696f6e732f746f6b656e732f6d65746164617461
                _710 = mem[64]
                mem[64] = mem[64] + 32
                mem[_710] = 0
                _711 = mem[64]
                mem[64] = mem[64] + 32
                mem[_711] = 0
                _712 = mem[64]
                mem[64] = mem[64] + 32
                mem[_712] = 0
                _734 = mem[96]
                _736 = mem[64]
                mem[mem[64]] = mem[96] + 56
                mem[64] = mem[64] + floor32(_734 + 87) + 32
                if not _734 + 56:
                    idx = 0
                    s = 0
                    while idx < 56:
                        require idx < mem[_700]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_700'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_700'), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1233 = mem[96]
                    idx = 0
                    s = 56
                    while idx < _1233:
                        require idx < mem[96]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        _1233 = mem[96]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1465 = mem[_710]
                    idx = 0
                    s = _1233 + 56
                    while idx < _1465:
                        require idx < mem[_710]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_710'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_710'), ('var', 0)), 32))), 0) - 256
                        _1465 = mem[_710]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1647 = mem[_711]
                    idx = 0
                    s = _1233 + _1465 + 56
                    while idx < _1647:
                        require idx < mem[_711]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_711'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_711'), ('var', 0)), 32))), 0) - 256
                        _1647 = mem[_711]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1763 = mem[_712]
                    idx = 0
                    s = _1233 + _1465 + _1647 + 56
                    while idx < _1763:
                        require idx < mem[_712]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_712'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_712'), ('var', 0)), 32))), 0) - 256
                        _1763 = mem[_712]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ownerOf[stor18]
                    mem[0] = stor18
                    mem[32] = 12
                    _1810 = mem[_736]
                    tokenURI[stor18][] = Array(len=_1810, data=mem[_736 + 32 len _1810])
                else:
                    mem[_736 + 32 len _734 + 56] = code.data[17871 len _734 + 56]
                    idx = 0
                    s = 0
                    while idx < 56:
                        require idx < mem[_700]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_700'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_700'), ('var', 0)), 32))), 0) - 256
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1234 = mem[96]
                    idx = 0
                    s = 56
                    while idx < _1234:
                        require idx < mem[96]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                        _1234 = mem[96]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1466 = mem[_710]
                    idx = 0
                    s = _1234 + 56
                    while idx < _1466:
                        require idx < mem[_710]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_710'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_710'), ('var', 0)), 32))), 0) - 256
                        _1466 = mem[_710]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1648 = mem[_711]
                    idx = 0
                    s = _1234 + _1466 + 56
                    while idx < _1648:
                        require idx < mem[_711]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_711'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_711'), ('var', 0)), 32))), 0) - 256
                        _1648 = mem[_711]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _1764 = mem[_712]
                    idx = 0
                    s = _1234 + _1466 + _1648 + 56
                    while idx < _1764:
                        require idx < mem[_712]
                        require s < mem[_736]
                        mem[_736 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_712'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_712'), ('var', 0)), 32))), 0) - 256
                        _1764 = mem[_712]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ownerOf[stor18]
                    mem[0] = stor18
                    mem[32] = 12
                    _1812 = mem[_736]
                    tokenURI[stor18][] = Array(len=_1812, data=mem[_736 + 32 len _1812])
    stor18++
}



}
