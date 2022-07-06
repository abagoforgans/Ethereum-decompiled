contract main {




// =====================  Runtime code  =====================


#
#  - sub_5d994322(?)
#  - sub_af07872d(?)
#  - sub_e20c1152(?)
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
mapping of uint256 nonces;

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

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[arg1]
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

function sub_897c01f7(?) {
    require calldata.size - 4 >= 96
    return sha3(this.address, 'metaSetApprovalForAll', arg1, uint8(arg2), arg3)
}

function metaTransferHash(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    return sha3(this.address, 'metaTransfer', arg1, arg2, arg3)
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

function sub_3d275103(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160] = address(this.address)
    mem[ceil32(arg2.length) + 180] = 'metaUpdateprovenanceData'
    mem[ceil32(arg2.length) + 204] = arg1
    mem[ceil32(arg2.length) + 236 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 236] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 236] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 236] = arg3
    mem[ceil32(arg2.length) + 128] = arg2.length + 108
    mem[ceil32(arg2.length) + arg2.length + 268] = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + arg2.length + 268
       len 32
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

function getSigner(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    _3 = mem[128]
    _4 = mem[160]
    _5 = mem[192]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            mem[ceil32(arg2.length) + 128] = 0
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + 160] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg2.length) + 188] = arg1
    mem[ceil32(arg2.length) + 128] = 60
    signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 27 << 248, _3, _4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_464d1d36(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaSetApprovalForAll'
    mem[ceil32(arg1.length) + 201] = address(arg2)
    mem[ceil32(arg1.length) + 221] = arg3 << 248
    mem[ceil32(arg1.length) + 222] = arg4
    mem[ceil32(arg1.length) + 128] = 94
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg4 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require arg2 != address(signer)
    stor4[address(signer)][address(arg2)] = uint8(arg3)
    emit ApprovalForAll(arg3, address(signer), arg2);
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

function metaTransfer(bytes arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaTransfer'
    mem[ceil32(arg1.length) + 192] = address(arg2)
    mem[ceil32(arg1.length) + 212] = arg3
    mem[ceil32(arg1.length) + 244] = arg4
    mem[ceil32(arg1.length) + 128] = 116
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg4 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require ownerOf[arg3]
    require ownerOf[arg3] == address(signer)
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(signer)]
    balanceOf[address(signer)]--
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg3, address(signer), arg2);
    require 1 <= tokenOfOwnerByIndex[address(signer)]
    if tokenOfOwnerByIndex[address(signer)] - 1 != stor6[arg3]:
        require tokenOfOwnerByIndex[address(signer)] - 1 < tokenOfOwnerByIndex[address(signer)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(signer)]
        tokenOfOwnerByIndex[address(signer)][stor6[arg3]] = tokenOfOwnerByIndex[address(signer)][tokenOfOwnerByIndex[address(signer)]]
        stor6[stor5[address(signer)][stor5[address(signer)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(signer)]--
    if tokenOfOwnerByIndex[address(signer)] > tokenOfOwnerByIndex[address(signer)] - 1:
        idx = tokenOfOwnerByIndex[address(signer)] - 1
        while tokenOfOwnerByIndex[address(signer)] > idx:
            tokenOfOwnerByIndex[address(signer)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function sub_f0cb5eac(?) {
    require calldata.size - 4 >= 96
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
        _102 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_102] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_102 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[cd[(cd[36] + cd[s] + 36)] + _102 + 32] = 0
        mem[t] = _102
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < mem[96]
    _104 = mem[128]
    require 1 < mem[96]
    _106 = mem[160]
    require 2 < mem[96]
    _108 = mem[192]
    require 3 < mem[96]
    _110 = mem[224]
    require 4 < mem[96]
    _112 = mem[256]
    require 5 < mem[96]
    _114 = mem[288]
    require 0 < mem[(32 * ('cd', 4).length) + 128]
    _116 = mem[(32 * ('cd', 4).length) + 160]
    require 1 < mem[(32 * ('cd', 4).length) + 128]
    _118 = mem[(32 * ('cd', 4).length) + 192]
    require 2 < mem[(32 * ('cd', 4).length) + 128]
    _120 = mem[(32 * ('cd', 4).length) + 224]
    require 3 < mem[(32 * ('cd', 4).length) + 128]
    _122 = mem[(32 * ('cd', 4).length) + 256]
    require 4 < mem[(32 * ('cd', 4).length) + 128]
    _124 = mem[(32 * ('cd', 4).length) + 288]
    _125 = mem[64]
    mem[mem[64] + 32] = address(this.address)
    mem[mem[64] + 52] = 'metaUpdateprovenance'
    mem[mem[64] + 72] = _104
    mem[mem[64] + 104] = _106
    mem[mem[64] + 136] = _108
    mem[mem[64] + 168] = _110
    mem[mem[64] + 200] = _112
    mem[mem[64] + 232] = _114
    _126 = mem[_116]
    mem[mem[64] + 264 len floor32(mem[_116])] = mem[_116 + 32 len floor32(mem[_116])]
    mem[mem[64] + floor32(mem[_116]) + 264] = 256^(-(mem[_116] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_116]) + 264] or mem[_116 + floor32(mem[_116]) + 32] and !(256^(-(mem[_116] % 32) + 32) - 1)
    _153 = mem[_118]
    mem[mem[64] + _126 + 264 len floor32(mem[_118])] = mem[_118 + 32 len floor32(mem[_118])]
    mem[mem[64] + _126 + floor32(mem[_118]) + 264] = 256^(-(mem[_118] % 32) + 32) - 1 and mem[mem[64] + _126 + floor32(mem[_118]) + 264] or mem[_118 + floor32(mem[_118]) + 32] and !(256^(-(mem[_118] % 32) + 32) - 1)
    _177 = mem[_120]
    mem[mem[64] + _126 + _153 + 264 len floor32(mem[_120])] = mem[_120 + 32 len floor32(mem[_120])]
    mem[mem[64] + _126 + _153 + floor32(mem[_120]) + 264] = 256^(-(mem[_120] % 32) + 32) - 1 and mem[mem[64] + _126 + _153 + floor32(mem[_120]) + 264] or mem[_120 + floor32(mem[_120]) + 32] and !(256^(-(mem[_120] % 32) + 32) - 1)
    _197 = mem[_122]
    mem[mem[64] + _126 + _153 + _177 + 264 len floor32(mem[_122])] = mem[_122 + 32 len floor32(mem[_122])]
    mem[mem[64] + _126 + _153 + _177 + floor32(mem[_122]) + 264] = 256^(-(mem[_122] % 32) + 32) - 1 and mem[mem[64] + _126 + _153 + _177 + floor32(mem[_122]) + 264] or mem[_122 + floor32(mem[_122]) + 32] and !(256^(-(mem[_122] % 32) + 32) - 1)
    _213 = mem[_124]
    mem[mem[64] + _126 + _153 + _177 + _197 + 264 len floor32(mem[_124])] = mem[_124 + 32 len floor32(mem[_124])]
    mem[mem[64] + _126 + _153 + _177 + _197 + floor32(mem[_124]) + 264] = !(256^(-(mem[_124] % 32) + 32) - 1) and mem[_124 + floor32(mem[_124]) + 32] or 256^(-(mem[_124] % 32) + 32) - 1 and mem[mem[64] + _126 + _153 + _177 + _197 + floor32(mem[_124]) + 264]
    mem[mem[64] + _126 + _153 + _177 + _197 + _213 + 264] = cd[68]
    _225 = mem[64]
    mem[mem[64]] = _126 + _153 + _177 + _197 + _213 + 264
    mem[64] = mem[64] + _126 + _153 + _177 + _197 + _213 + 296
    mem[_125 + _126 + _153 + _177 + _197 + _213 + 296] = sha3(mem[_225 + 32 len mem[_225]])
    return memory
      from _125 + _126 + _153 + _177 + _197 + _213 + 296
       len 32
}

function sub_3020f599(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg3.length) + 160 <= test266151307()
    mem[64] = ceil32(arg1.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg1.length) + 128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 212] = 'metaUpdateprovenanceData'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 236] = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 268 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 268] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 268] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 268] = arg4
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = arg3.length + 108
    _69 = sha3(mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 332] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 360] = _69
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 300] = 60
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 424] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _69)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 456] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 488] = mem[128]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 520] = mem[160]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _69), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 392] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg4 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require ownerOf[arg2]
    if ownerOf[arg2] != address(signer):
        revert with 0, 'provenances can only be updated by their owners'
    stor14[arg2][11][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
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

function sub_656c19c3(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require ceil32(('cd', 4).length) + 128 >= 96 and ceil32(('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[ceil32(('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[64] = ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require calldata.size > cd[68] + cd[s] + 67
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _4201 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_4201] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_4201 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[cd[(cd[68] + cd[s] + 36)] + _4201 + 32] = 0
        mem[t] = _4201
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < mem[ceil32(('cd', 4).length) + 128]
    _4203 = mem[ceil32(('cd', 4).length) + 160]
    require 1 < mem[ceil32(('cd', 4).length) + 128]
    _4205 = mem[ceil32(('cd', 4).length) + 192]
    require 2 < mem[ceil32(('cd', 4).length) + 128]
    _4207 = mem[ceil32(('cd', 4).length) + 224]
    require 3 < mem[ceil32(('cd', 4).length) + 128]
    _4209 = mem[ceil32(('cd', 4).length) + 256]
    require 4 < mem[ceil32(('cd', 4).length) + 128]
    _4211 = mem[ceil32(('cd', 4).length) + 288]
    require 5 < mem[ceil32(('cd', 4).length) + 128]
    _4213 = mem[ceil32(('cd', 4).length) + 320]
    require 0 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    _4215 = mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 192]
    require 1 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    _4217 = mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 224]
    require 2 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    _4219 = mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 256]
    require 3 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    _4221 = mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 288]
    require 4 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    _4223 = mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 320]
    _4224 = mem[64]
    mem[mem[64] + 32] = address(this.address)
    mem[mem[64] + 52] = 'metaUpdateprovenance'
    mem[mem[64] + 72] = _4203
    mem[mem[64] + 104] = _4205
    mem[mem[64] + 136] = _4207
    mem[mem[64] + 168] = _4209
    mem[mem[64] + 200] = _4211
    mem[mem[64] + 232] = _4213
    _4225 = mem[_4215]
    mem[mem[64] + 264 len floor32(mem[_4215])] = mem[_4215 + 32 len floor32(mem[_4215])]
    mem[mem[64] + floor32(mem[_4215]) + 264] = 256^(-(mem[_4215] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_4215]) + 264] or mem[_4215 + floor32(mem[_4215]) + 32] and !(256^(-(mem[_4215] % 32) + 32) - 1)
    _6550 = mem[_4217]
    mem[mem[64] + _4225 + 264 len floor32(mem[_4217])] = mem[_4217 + 32 len floor32(mem[_4217])]
    mem[mem[64] + _4225 + floor32(mem[_4217]) + 264] = 256^(-(mem[_4217] % 32) + 32) - 1 and mem[mem[64] + _4225 + floor32(mem[_4217]) + 264] or mem[_4217 + floor32(mem[_4217]) + 32] and !(256^(-(mem[_4217] % 32) + 32) - 1)
    _8872 = mem[_4219]
    mem[mem[64] + _4225 + _6550 + 264 len floor32(mem[_4219])] = mem[_4219 + 32 len floor32(mem[_4219])]
    mem[mem[64] + _4225 + _6550 + floor32(mem[_4219]) + 264] = 256^(-(mem[_4219] % 32) + 32) - 1 and mem[mem[64] + _4225 + _6550 + floor32(mem[_4219]) + 264] or mem[_4219 + floor32(mem[_4219]) + 32] and !(256^(-(mem[_4219] % 32) + 32) - 1)
    _11190 = mem[_4221]
    mem[mem[64] + _4225 + _6550 + _8872 + 264 len floor32(mem[_4221])] = mem[_4221 + 32 len floor32(mem[_4221])]
    mem[mem[64] + _4225 + _6550 + _8872 + floor32(mem[_4221]) + 264] = 256^(-(mem[_4221] % 32) + 32) - 1 and mem[mem[64] + _4225 + _6550 + _8872 + floor32(mem[_4221]) + 264] or mem[_4221 + floor32(mem[_4221]) + 32] and !(256^(-(mem[_4221] % 32) + 32) - 1)
    _13504 = mem[_4223]
    mem[mem[64] + _4225 + _6550 + _8872 + _11190 + 264 len floor32(mem[_4223])] = mem[_4223 + 32 len floor32(mem[_4223])]
    mem[mem[64] + _4225 + _6550 + _8872 + _11190 + floor32(mem[_4223]) + 264] = !(256^(-(mem[_4223] % 32) + 32) - 1) and mem[_4223 + floor32(mem[_4223]) + 32] or 256^(-(mem[_4223] % 32) + 32) - 1 and mem[mem[64] + _4225 + _6550 + _8872 + _11190 + floor32(mem[_4223]) + 264]
    mem[mem[64] + _4225 + _6550 + _8872 + _11190 + _13504 + 264] = cd[100]
    _15814 = mem[64]
    mem[mem[64]] = _4225 + _6550 + _8872 + _11190 + _13504 + 264
    mem[64] = mem[64] + _4225 + _6550 + _8872 + _11190 + _13504 + 296
    _15816 = sha3(mem[_15814 + 32 len mem[_15814]])
    if mem[96] != 65:
        revert with 0, 'Cannot get signer'
    if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 328] = '\x19Ethereum Signed Message:\n32'
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 356] = _15816
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 296] = 60
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 484] = mem[128]
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 516] = mem[160]
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _15816), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 388] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'Cannot get signer'
        if cd[100] != nonces[address(signer)]:
            revert with 0, 'Nonce is invalid'
        nonces[address(signer)]++
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 424] = address(signer)
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 456] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(signer), this.address
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 420] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Contract is not allowed to manipulate sender funds'
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + ceil32(return_data.size) + 424] = address(signer)
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + ceil32(return_data.size) + 456] = this.address
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + ceil32(return_data.size) + 488] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(signer), address(this.address), 0
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + ceil32(return_data.size) + 420] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _4224 + _4225 + _6550 + _8872 + _11190 + _13504 + (2 * ceil32(return_data.size)) + 420
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        require ownerOf[mem[ceil32(('cd', 4).length) + 160]]
        if ownerOf[mem[ceil32(('cd', 4).length) + 160]] != address(signer):
            revert with 0, 'provenances can only be updated by their owners'
        require 1 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_0 = mem[ceil32(('cd', 4).length) + 192]
        require 2 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_512 = mem[ceil32(('cd', 4).length) + 224]
        require 3 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_768 = mem[ceil32(('cd', 4).length) + 256]
        require 4 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_1024 = mem[ceil32(('cd', 4).length) + 288]
        require 5 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_1536 = mem[ceil32(('cd', 4).length) + 320]
        require 0 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _15946 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 7
        stor14[mem[ceil32(('cd', 4).length) + 160]][7][].field_0 = Array(len=_15946, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32 len _15946])
        require 1 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _20322 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 8
        stor14[mem[ceil32(('cd', 4).length) + 160]][8][].field_0 = Array(len=_20322, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32 len _20322])
        require 2 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _24694 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 9
        stor14[mem[ceil32(('cd', 4).length) + 160]][9][].field_0 = Array(len=_24694, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32 len _24694])
        require 3 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _27912 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 288]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 10
        stor14[mem[ceil32(('cd', 4).length) + 160]][10][].field_0 = Array(len=_27912, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 288] + 32 len _27912])
        require 4 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _28572 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 320]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 11
        stor14[mem[ceil32(('cd', 4).length) + 160]][11][].field_0 = Array(len=_28572, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 320] + 32 len _28572])
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 328] = '\x19Ethereum Signed Message:\n32'
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 356] = _15816
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 296] = 60
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 484] = mem[128]
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 516] = mem[160]
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _15816), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 388] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'Cannot get signer'
        if cd[100] != nonces[address(signer)]:
            revert with 0, 'Nonce is invalid'
        nonces[address(signer)]++
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 424] = address(signer)
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 456] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(signer), this.address
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + 420] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Contract is not allowed to manipulate sender funds'
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + ceil32(return_data.size) + 424] = address(signer)
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + ceil32(return_data.size) + 456] = this.address
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + ceil32(return_data.size) + 488] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(signer), address(this.address), 0
        mem[_4224 + _4225 + _6550 + _8872 + _11190 + _13504 + ceil32(return_data.size) + 420] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _4224 + _4225 + _6550 + _8872 + _11190 + _13504 + (2 * ceil32(return_data.size)) + 420
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        require ownerOf[mem[ceil32(('cd', 4).length) + 160]]
        if ownerOf[mem[ceil32(('cd', 4).length) + 160]] != address(signer):
            revert with 0, 'provenances can only be updated by their owners'
        require 1 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_0 = mem[ceil32(('cd', 4).length) + 192]
        require 2 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_512 = mem[ceil32(('cd', 4).length) + 224]
        require 3 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_768 = mem[ceil32(('cd', 4).length) + 256]
        require 4 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_1024 = mem[ceil32(('cd', 4).length) + 288]
        require 5 < mem[ceil32(('cd', 4).length) + 128]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        stor14[mem[ceil32(('cd', 4).length) + 160]].field_1536 = mem[ceil32(('cd', 4).length) + 320]
        require 0 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _15952 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 7
        stor14[mem[ceil32(('cd', 4).length) + 160]][7][].field_0 = Array(len=_15952, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32 len _15952])
        require 1 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _20337 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 8
        stor14[mem[ceil32(('cd', 4).length) + 160]][8][].field_0 = Array(len=_20337, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32 len _20337])
        require 2 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _24781 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 9
        stor14[mem[ceil32(('cd', 4).length) + 160]][9][].field_0 = Array(len=_24781, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32 len _24781])
        require 3 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _27987 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 288]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 10
        stor14[mem[ceil32(('cd', 4).length) + 160]][10][].field_0 = Array(len=_27987, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 288] + 32 len _27987])
        require 4 < mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require 0 < mem[ceil32(('cd', 4).length) + 128]
        mem[0] = mem[ceil32(('cd', 4).length) + 160]
        mem[32] = 14
        _28575 = mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 320]]
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160], 14) + 11
        stor14[mem[ceil32(('cd', 4).length) + 160]][11][].field_0 = Array(len=_28575, data=mem[mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 320] + 32 len _28575])
}



}
