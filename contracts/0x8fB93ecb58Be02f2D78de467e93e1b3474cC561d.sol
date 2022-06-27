contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#  - metaSetApprovalForAll(address arg1, address arg2, bool arg3, bool arg4, bytes arg5)
#
mapping of uint256 stor0;
mapping of uint8 stor1;
mapping of uint256 nonce;
address owner;
mapping of uint8 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
address sub_c452bac7Address;
array of uint256 stor9;

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function owner() {
    return owner
}

function sub_c452bac7(?) {
    return sub_c452bac7Address
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function getIDBinIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    return Mask(252, 0, arg1) * 16, arg1 % 16
}

function getValueInBin(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return uint16(arg1 / 2^(-(16 * arg2 + 1) + 256))
}

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return uint16(stor0[address(arg1)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256))
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) != 0x97a409d200000000000000000000000000000000000000000000000000000000:
            return 0
    return 1
}

function sub_d4479337(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable#onlyOwner: IS_NOT_OWNER'
    emit URI(Array(len=arg2.length, data=arg2[all]), arg1);
}

function writeValueInBin(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC1155PackedBalance#writeValueInBin: INVALID_amount'
    if arg3 >= 65536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155PackedBalance#writeValueInBin: OVERFLOW'
    return (arg1 and !(65535 * 2^(-(16 * arg2 + 1) + 256)) or 2^(-(16 * arg2 + 1) + 256) * arg3)
}

function sub_eca8bf4d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable#onlyOwner: IS_NOT_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 4
        stor4[cd[((32 * idx) + cd[4] + 36)]] = 1
        idx = idx + 1
        continue 
}

function sub_9e5b6340(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable#onlyOwner: IS_NOT_OWNER'
    stor9.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        stor9[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while stor9.length + 31 / 32 > idx:
        stor9[idx] = 0
        idx = idx + 1
        continue 
}

function sub_c2b936b6(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable#onlyOwner: IS_NOT_OWNER'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SkyWeaverAssets#setMaxSupply: INVALID_ARRAYS_LENGTH'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 6
        if not stor6[cd[((32 * idx) + cd[4] + 36)]]:
            require idx < ('cd', 36).length
            require idx < ('cd', 4).length
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 6
            stor6[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg1.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC1155PackedBalance#balanceOfBatch: INVALID_ARRAY_LENGTH'
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[23501 len 32 * arg1.length]
    idx = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = Mask(248, 4, cd[((32 * idx) + arg2 + 36)]) >> 4
        mem[32] = sha3(address(cd[((32 * idx) + arg1 + 36)]), 0)
        require idx < arg1.length
        mem[(32 * idx) + 128] = uint16(stor0[address(cd[((32 * idx) + arg1 + 36)])][Mask(252, 0, cd[((32 * idx) + arg2 + 36)]) * 16] / 2^(-(16 * (cd[((32 * idx) + arg2 + 36)] % 16) + 1) + 256))
        idx = idx + 1
        s = cd[((32 * idx) + arg2 + 36)] % 16
        s = Mask(248, 4, cd[((32 * idx) + arg2 + 36)]) >> 4
        continue 
    return Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
}

function mint(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable#onlyOwner: IS_NOT_OWNER'
    if stor4[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SkyWeaverAssets#mint: ID_IS_FROZEN'
    if stor6[arg2]:
        if stor5[arg2] + arg3 < stor5[arg2]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if stor5[arg2] + arg3 > stor6[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SkyWeaverAssets#mint: MAXSUPPLY_EXCEEDED'
    if stor6[arg2] > 0:
        if stor5[arg2] + arg3 < stor5[arg2]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        stor5[arg2] += arg3
    if uint16(stor0[address(arg1)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256)) + arg3 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC1155PackedBalance#writeValueInBin: INVALID_amount'
    if uint16(stor0[address(arg1)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256)) + arg3 >= 65536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155PackedBalance#writeValueInBin: OVERFLOW'
    stor0[address(arg1)][Mask(252, 0, arg2) * 16] = stor0[address(arg1)][Mask(252, 0, arg2) * 16] and !(65535 * 2^(-(16 * (arg2 % 16) + 1) + 256)) or (uint16(stor0[address(arg1)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256)) * 2^(-(16 * (arg2 % 16) + 1) + 256)) + (arg3 * 2^(-(16 * (arg2 % 16) + 1) + 256))
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 <= test266151307() and ceil32(arg5.length) + 128 >= 96
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            if sub_c452bac7Address != msg.sender:
                revert with 0, 'INVALID_OPERATOR'
    if not arg2:
        revert with 0, 'INVALID_RECIPIENT'
    if arg4 > uint16(stor0[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)):
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    if uint16(stor0[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) - arg4 < 0:
        revert with 0, 'ERC1155PackedBalance#writeValueInBin: INVALID_amount'
    if uint16(stor0[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) - arg4 >= 65536:
        revert with 0, 'ERC1155PackedBalance#writeValueInBin: OVERFLOW'
    stor0[address(arg1)][Mask(252, 0, arg3) * 16] = stor0[address(arg1)][Mask(252, 0, arg3) * 16] and !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) or (uint16(stor0[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) * 2^(-(16 * (arg3 % 16) + 1) + 256)) - (arg4 * 2^(-(16 * (arg3 % 16) + 1) + 256))
    if uint16(stor0[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) + arg4 < 0:
        revert with 0, 'ERC1155PackedBalance#writeValueInBin: INVALID_amount'
    if uint16(stor0[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) + arg4 >= 65536:
        revert with 0, 'ERC1155PackedBalance#writeValueInBin: OVERFLOW'
    stor0[address(arg2)][Mask(252, 0, arg3) * 16] = stor0[address(arg2)][Mask(252, 0, arg3) * 16] and !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) or (uint16(stor0[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) * 2^(-(16 * (arg3 % 16) + 1) + 256)) + (arg4 * 2^(-(16 * (arg3 % 16) + 1) + 256))
    if ext_code.size(arg2) <= 0:
        mem[ceil32(arg5.length) + 128] = arg3
        mem[ceil32(arg5.length) + 160] = arg4
        emit TransferSingle(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length) + 32], msg.sender, arg1, arg2);
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    revert with 0, 'ERC1155PackedBalance#_safeTransferFrom: INVALID_ON_RECEIVE_MESSAGE'
}

function batchMint(address arg1, uint256[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable#onlyOwner: IS_NOT_OWNER'
    if arg2.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SkyWeaverAssets#batchMint: INVALID_ARRAYS_LENGTH'
    idx = 0
    s = 0
    while idx < arg2.length:
        if stor4[cd[((32 * idx) + arg2 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SkyWeaverAssets#mint: ID_IS_FROZEN'
        if stor6[cd[((32 * idx) + arg2 + 36)]]:
            require idx < arg3.length
            if stor5[cd[((32 * idx) + arg2 + 36)]] + cd[((32 * idx) + arg3 + 36)] < stor5[cd[((32 * idx) + arg2 + 36)]]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            if stor5[cd[((32 * idx) + arg2 + 36)]] + cd[((32 * idx) + arg3 + 36)] > stor6[cd[((32 * idx) + arg2 + 36)]]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SkyWeaverAssets#mint: MAXSUPPLY_EXCEEDED'
        mem[0] = cd[((32 * idx) + arg2 + 36)]
        mem[32] = 6
        if stor6[cd[((32 * idx) + arg2 + 36)]] > 0:
            require idx < arg3.length
            if stor5[cd[((32 * idx) + arg2 + 36)]] + cd[((32 * idx) + arg3 + 36)] < stor5[cd[((32 * idx) + arg2 + 36)]]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            mem[0] = cd[((32 * idx) + arg2 + 36)]
            mem[32] = 5
            stor5[cd[((32 * idx) + arg2 + 36)]] += cd[((32 * idx) + arg3 + 36)]
        idx = idx + 1
        s = cd[((32 * idx) + arg2 + 36)]
        continue 
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155MintBurnPackedBalance#batchMint: INVALID_ARRAYS_LENGTH'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        if uint16(stor0[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) + mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
            revert with 0, 'ERC1155PackedBalance#writeValueInBin: INVALID_amount'
        if uint16(stor0[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) + mem[(32 * idx) + (32 * arg2.length) + 160] >= 65536:
            revert with 0, 'ERC1155PackedBalance#writeValueInBin: OVERFLOW'
        mem[0] = Mask(248, 4, mem[(32 * idx) + 128]) >> 4
        mem[32] = sha3(address(arg1), 0)
        stor0[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] = stor0[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] and !(65535 * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) or (uint16(stor0[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) + (mem[(32 * idx) + (32 * arg2.length) + 160] * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256))
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 64
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 256 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = (32 * arg2.length) + 96
    mem[(64 * arg2.length) + (32 * arg3.length) + 256] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 288 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[(32 * arg2.length) + (32 * arg3.length) + 160 len (96 * arg2.length) + (32 * arg3.length) + 128],
                       msg.sender,
                       0,
                       arg1,
}

function sub_c7205bce(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    mem[ceil32(arg2.length) + 128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    if arg3.length <= 0:
        revert with 0, 'SignatureValidator#isValidSignature: LENGTH_GREATER_THAN_0_REQUIRED'
    if not arg1:
        revert with 0, 'SignatureValidator#isValidSignature: INVALID_SIGNER'
    if arg3.length <= 0:
        revert with 0, 'LibBytes#popLastByte: GREATER_THAN_ZERO_LENGTH_REQUIRED'
    require arg3.length - 1 < arg3.length
    _12 = mem[ceil32(arg2.length) + arg3.length + 159 len 1], 0
    mem[ceil32(arg2.length) + 128] = arg3.length - 1
    if Mask(8, 248, _12) >> 248 >= 5:
        revert with 0, 'SignatureValidator#isValidSignature: UNSUPPORTED_SIGNATURE'
    require Mask(8, 248, _12) >> 248 <= 5
    require Mask(8, 248, _12) >> 248 <= 5
    if not Mask(8, 248, _12):
        revert with 0, 'SignatureValidator#isValidSignature: ILLEGAL_SIGNATURE'
    require Mask(8, 248, _12) >> 248 <= 5
    if Mask(8, 248, _12) >> 248 == 1:
        if arg3.length - 1 != 65:
            revert with 0, 'SignatureValidator#isValidSignature: LENGTH_65_REQUIRED'
        if arg3.length - 1 < 32:
            revert with 0, 'LibBytes#readBytes32: GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
        if arg3.length - 1 < 64:
            revert with 0, 'LibBytes#readBytes32: GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
        require 64 < arg3.length - 1
        signer = erecover(sha3(arg2[all]), Mask(8, 248, mem[ceil32(arg2.length) + 224]), mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + 192]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        return (arg1 == address(signer))
    require Mask(8, 248, _12) >> 248 <= 5
    if Mask(8, 248, _12) >> 248 == 2:
        if arg3.length - 1 != 65:
            revert with 0, 'SignatureValidator#isValidSignature: LENGTH_65_REQUIRED'
        if arg3.length - 1 < 32:
            revert with 0, 'LibBytes#readBytes32: GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
        _32 = mem[ceil32(arg2.length) + 160]
        if arg3.length - 1 < 64:
            revert with 0, 'LibBytes#readBytes32: GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
        _47 = mem[ceil32(arg2.length) + 192]
        require 64 < arg3.length - 1
        _54 = mem[ceil32(arg2.length) + 224]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 220] = sha3(arg2[all])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 60
        signer = erecover(sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]]), Mask(8, 248, _54), _32, _47) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        return (arg1 == address(signer))
    require Mask(8, 248, _12) >> 248 <= 5
    if Mask(8, 248, _12) >> 248 != 3:
        require Mask(8, 248, _12) >> 248 <= 5
        if Mask(8, 248, _12) >> 248 != 4:
            revert with 0, 'SignatureValidator#isValidSignature: UNSUPPORTED_SIGNATURE'
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x1626ba7e00000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1 with:
                gas gas_remaining wei
               args sha3(arg2[all]), Array(len=arg3.length - 1, data=arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len floor32(arg3.length + 30) - arg3.length])
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = 64
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = arg2.length
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 260 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 260] = 0
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 196] = ceil32(arg2.length) + 96
        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 260] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 292 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
            mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 292] = 0
        require ext_code.size(arg1)
        staticcall arg1 with:
                gas gas_remaining wei
               args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len ceil32(arg2.length) + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not 0x20c13b0b00000000000000000000000000000000000000000000000000000000
}



}
