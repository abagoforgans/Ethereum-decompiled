contract main {




// =====================  Runtime code  =====================


#
#  - sub_af07872d(?)
#
const sub_a51ede6f(?) = 0

const sub_d274dd69(?) = 0


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
array of uint256 tokenURI;
address owner;
address tokenAddress;
array of struct stor14;

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

function tokenAddress() {
    return tokenAddress
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
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
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(arg2, ownerOf[arg2], arg1);
}

function sub_dc1e4ef5(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'provenances can only be updated by their owners'
    stor14[arg1][11][].field_0 = Array(len=arg2.length, data=arg2[all])
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
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg3, arg1, arg2);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg3, arg1, arg2);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function sub_5996bb06(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require calldata.size > cd[36] + cd[s] + 67
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _2269 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_2269] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_2269 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[cd[(cd[36] + cd[s] + 36)] + _2269 + 32] = 0
        mem[t] = _2269
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2271 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_2271] < 0:
        revert with 0, 'Contract is not allowed to manipulate sender funds'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2277 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not mem[_2277]:
        revert with 0, 'Transfer failed'
    require 0 < mem[96]
    require ownerOf[mem[128]]
    if ownerOf[mem[128]] != msg.sender:
        revert with 0, 'provenances can only be updated by their owners'
    require 1 < mem[96]
    require 0 < mem[96]
    stor14[mem[128]].field_0 = mem[160]
    require 2 < mem[96]
    require 0 < mem[96]
    stor14[mem[128]].field_512 = mem[192]
    require 3 < mem[96]
    require 0 < mem[96]
    stor14[mem[128]].field_768 = mem[224]
    require 4 < mem[96]
    require 0 < mem[96]
    stor14[mem[128]].field_1024 = mem[256]
    require 5 < mem[96]
    require 0 < mem[96]
    stor14[mem[128]].field_1536 = mem[288]
    require 0 < mem[(32 * ('cd', 4).length) + 128]
    require 0 < mem[96]
    mem[0] = mem[128]
    mem[32] = 14
    _2316 = mem[mem[(32 * ('cd', 4).length) + 160]]
    mem[0] = sha3(mem[128], 14) + 7
    stor14[mem[128]][7][].field_0 = Array(len=_2316, data=mem[mem[(32 * ('cd', 4).length) + 160] + 32 len _2316])
    require 1 < mem[(32 * ('cd', 4).length) + 128]
    require 0 < mem[96]
    mem[0] = mem[128]
    mem[32] = 14
    _4506 = mem[mem[(32 * ('cd', 4).length) + 192]]
    mem[0] = sha3(mem[128], 14) + 8
    stor14[mem[128]][8][].field_0 = Array(len=_4506, data=mem[mem[(32 * ('cd', 4).length) + 192] + 32 len _4506])
    require 2 < mem[(32 * ('cd', 4).length) + 128]
    require 0 < mem[96]
    mem[0] = mem[128]
    mem[32] = 14
    _6710 = mem[mem[(32 * ('cd', 4).length) + 224]]
    mem[0] = sha3(mem[128], 14) + 9
    stor14[mem[128]][9][].field_0 = Array(len=_6710, data=mem[mem[(32 * ('cd', 4).length) + 224] + 32 len _6710])
    require 3 < mem[(32 * ('cd', 4).length) + 128]
    require 0 < mem[96]
    mem[0] = mem[128]
    mem[32] = 14
    _8316 = mem[mem[(32 * ('cd', 4).length) + 256]]
    mem[0] = sha3(mem[128], 14) + 10
    stor14[mem[128]][10][].field_0 = Array(len=_8316, data=mem[mem[(32 * ('cd', 4).length) + 256] + 32 len _8316])
    require 4 < mem[(32 * ('cd', 4).length) + 128]
    require 0 < mem[96]
    mem[0] = mem[128]
    mem[32] = 14
    _8628 = mem[mem[(32 * ('cd', 4).length) + 288]]
    mem[0] = sha3(mem[128], 14) + 11
    stor14[mem[128]][11][].field_0 = Array(len=_8628, data=mem[mem[(32 * ('cd', 4).length) + 288] + 32 len _8628])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
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
                        if balanceOf[arg2] + 1 >= balanceOf[arg2]:
                            balanceOf[address(arg2)] = balanceOf[arg2] + 1
                            ownerOf[arg3] = arg2
                            mem[ceil32(arg4.length) + 128] = arg3
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                                          mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
                                          arg1,
                                          arg2,
                            if 1 <= tokenOfOwnerByIndex[address(arg1)]:
                                if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
                                if balanceOf[arg2] + 1 >= balanceOf[arg2]:
                                    balanceOf[address(arg2)] = balanceOf[arg2] + 1
                                    ownerOf[arg3] = arg2
                                    mem[ceil32(arg4.length) + 128] = arg3
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                                                  mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
                                                  arg1,
                                                  arg2,
                                    if 1 <= tokenOfOwnerByIndex[address(arg1)]:
                                        if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
                                        if ext_code.size(arg2) <= 0:
                                        if ext_code.size(arg2):
                                            call arg2 with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor4[stor1[arg3]][address(msg.sender)]:
                    if ownerOf[arg3]:
                        if ownerOf[arg3] == arg1:
                            if arg2:
                                if approved[arg3]:
                                    approved[arg3] = 0
                                if 1 <= balanceOf[address(arg1)]:
                                    balanceOf[address(arg1)]--
                                    if balanceOf[arg2] + 1 >= balanceOf[arg2]:
                                        balanceOf[address(arg2)] = balanceOf[arg2] + 1
                                        ownerOf[arg3] = arg2
                                        mem[ceil32(arg4.length) + 128] = arg3
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                                                      mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
                                                      arg1,
                                                      arg2,
                                        if 1 <= tokenOfOwnerByIndex[address(arg1)]:
                                            if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
                                            if ext_code.size(arg2) <= 0:
                                            if ext_code.size(arg2):
                                                call arg2 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
    revert
}

function sub_f19a6679(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 384
    require ('cd', 4)[6] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[6] + 35
    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 512 >= 480 and ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 512 <= test266151307()
    require cd[4] + ('cd', 4)[6] + cd[(cd[4] + ('cd', 4)[6] + 4)] + 36 <= calldata.size
    require ('cd', 4)[7] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[7] + 35
    require cd[(cd[4] + ('cd', 4)[7] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + 544 >= 512 and ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + 544 <= test266151307()
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 512] = cd[(cd[4] + ('cd', 4)[7] + 4)]
    require cd[4] + ('cd', 4)[7] + cd[(cd[4] + ('cd', 4)[7] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 544 len cd[(cd[4] + ('cd', 4)[7] + 4)]] = call.data[cd[4] + ('cd', 4)[7] + 36 len cd[(cd[4] + ('cd', 4)[7] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[7] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 544] = 0
    require ('cd', 4)[8] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[8] + 35
    require cd[(cd[4] + ('cd', 4)[8] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + 576 >= 544 and ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + 576 <= test266151307()
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + 544] = cd[(cd[4] + ('cd', 4)[8] + 4)]
    require cd[4] + ('cd', 4)[8] + cd[(cd[4] + ('cd', 4)[8] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + 576 len cd[(cd[4] + ('cd', 4)[8] + 4)]] = call.data[cd[4] + ('cd', 4)[8] + 36 len cd[(cd[4] + ('cd', 4)[8] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[8] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + 576] = 0
    require ('cd', 4)[9] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[9] + 35
    require cd[(cd[4] + ('cd', 4)[9] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 608 >= 576 and ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 608 <= test266151307()
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + 576] = cd[(cd[4] + ('cd', 4)[9] + 4)]
    require cd[4] + ('cd', 4)[9] + cd[(cd[4] + ('cd', 4)[9] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + 608 len cd[(cd[4] + ('cd', 4)[9] + 4)]] = call.data[cd[4] + ('cd', 4)[9] + 36 len cd[(cd[4] + ('cd', 4)[9] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + 608] = 0
    require ('cd', 4)[10] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[10] + 35
    require cd[(cd[4] + ('cd', 4)[10] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + 640 >= 608 and ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + 640 <= test266151307()
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 608] = cd[(cd[4] + ('cd', 4)[10] + 4)]
    require cd[4] + ('cd', 4)[10] + cd[(cd[4] + ('cd', 4)[10] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 640 len cd[(cd[4] + ('cd', 4)[10] + 4)]] = call.data[cd[4] + ('cd', 4)[10] + 36 len cd[(cd[4] + ('cd', 4)[10] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[10] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 640] = 0
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require ceil32(('cd', 36).length) + 672 >= 640 and ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + 672 <= test266151307()
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + 640] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + 672 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + 672] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + 676] = msg.sender
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + 708] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] < 0:
        revert with 0, 'Contract is not allowed to manipulate sender funds'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + ceil32(return_data.size) + 676] = msg.sender
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + ceil32(return_data.size) + 708] = this.address
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + ceil32(return_data.size) + 740] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + ceil32(return_data.size) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 672] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 704] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 736] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 768] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 800] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 832] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 864] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 896] = 96
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 928] = 96
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 960] = 96
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 992] = 96
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1024] = 96
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1056] = ('cd', 4).length
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1088] = ('cd', 4)[0]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1120] = ('cd', 4)[1]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1152] = ('cd', 4)[2]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1184] = ('cd', 4)[3]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1216] = block.timestamp
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1248] = ('cd', 4)[5]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1280] = 480
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1312] = ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 512
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1344] = ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + 544
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1376] = ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + 576
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 1408] = ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 608
    stor14[('cd', 4)[0]].field_0 = ('cd', 4).length
    stor14[('cd', 4)[0]].field_256 = ('cd', 4)[0]
    stor14[('cd', 4)[0]].field_512 = ('cd', 4)[1]
    stor14[('cd', 4)[0]].field_768 = ('cd', 4)[2]
    stor14[('cd', 4)[0]].field_1024 = ('cd', 4)[3]
    stor14[('cd', 4)[0]].field_1280 = block.timestamp
    stor14[('cd', 4)[0]].field_1536 = ('cd', 4)[5]
    stor14[('cd', 4)[0]][7][].field_0 = Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]])
    stor14[('cd', 4)[0]][8][].field_0 = Array(len=Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + cd[(cd[4] + ('cd', 4)[6] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[6] + 4)] + 544 len -cd[(cd[4] + ('cd', 4)[6] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)])], data=mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 544 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + cd[(cd[4] + ('cd', 4)[6] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[6] + 4)] + 544 len -cd[(cd[4] + ('cd', 4)[6] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)])]])
    stor14[('cd', 4)[0]][9][].field_0 = Array(len=Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + cd[(cd[4] + ('cd', 4)[7] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + cd[(cd[4] + ('cd', 4)[7] + 4)] + 576 len -cd[(cd[4] + ('cd', 4)[7] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)])], data=mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + 576 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + cd[(cd[4] + ('cd', 4)[7] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + cd[(cd[4] + ('cd', 4)[7] + 4)] + 576 len -cd[(cd[4] + ('cd', 4)[7] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)])]])
    stor14[('cd', 4)[0]][10][].field_0 = Array(len=Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + cd[(cd[4] + ('cd', 4)[8] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + cd[(cd[4] + ('cd', 4)[8] + 4)] + 608 len -cd[(cd[4] + ('cd', 4)[8] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])], data=mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + 608 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + cd[(cd[4] + ('cd', 4)[8] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + cd[(cd[4] + ('cd', 4)[8] + 4)] + 608 len -cd[(cd[4] + ('cd', 4)[8] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])]])
    stor14[('cd', 4)[0]][11][].field_0 = Array(len=Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + cd[(cd[4] + ('cd', 4)[9] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + cd[(cd[4] + ('cd', 4)[9] + 4)] + 640 len -cd[(cd[4] + ('cd', 4)[9] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])], data=mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 640 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + cd[(cd[4] + ('cd', 4)[9] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[7] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + cd[(cd[4] + ('cd', 4)[9] + 4)] + 640 len -cd[(cd[4] + ('cd', 4)[9] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])]])
    require msg.sender
    require not ownerOf[('cd', 4)[0]]
    ownerOf[('cd', 4)[0]] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    emit Transfer(('cd', 4)[0], 0, msg.sender);
    stor6[('cd', 4)[0]] = tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = ('cd', 4)[0]
    stor8[('cd', 4)[0]] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = ('cd', 4)[0]
    require ownerOf[('cd', 4)[0]]
    tokenURI[('cd', 4)[0]][] = Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
}



}
