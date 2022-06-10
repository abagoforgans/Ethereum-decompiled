contract main {




// =====================  Runtime code  =====================


#
#  - sub_13ec13f4(?)
#  - sub_1c949c2d(?)
#  - batchFillOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256[] arg13, bytes[] arg14)
#  - sub_33b10d25(?)
#  - matchOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, address arg13, address arg14, address arg15, address arg16, uint256 arg17, uint256 arg18, uint256 arg19, uint256 arg20, uint256 arg21, uint256 arg22, bytes arg23, bytes arg24, bytes arg25, bytes arg26)
#  - sub_3f2948f5(?)
#  - batchFillOrKillOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256[] arg13, bytes[] arg14)
#  - fillOrKillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14)
#  - sub_76acff5e(?)
#  - sub_7c90873a(?)
#  - marketSellOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256 arg13, bytes[] arg14)
#  - fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14)
#  - marketBuyOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256 arg13, bytes[] arg14)
#
const VERSION = '2.0.1-alpha', 0


uint8 stor0;
array of uint256 sub_ba521601;
uint16 stor2; offset 240
uint256 EIP712_DOMAIN_HASH;
address owner;
mapping of uint256 filled;
mapping of uint8 stor5;
mapping of uint256 orderEpoch;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
address currentContextAddress;
mapping of address assetProxy;
mapping of uint256 stor99;

function filled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return filled[arg1]
}

function cancelled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function assetProxies(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return assetProxy[Mask(32, 224, arg1)]
}

function getAssetProxy(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return assetProxy[Mask(32, 224, arg1)]
}

function transactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function allowedValidators(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor8[arg1][arg2])
}

function preSigned(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor7[arg1][arg2])
}

function owner() {
    return owner
}

function sub_ba521601(?) {
    return sub_ba521601[0 len sub_ba521601.length]
}

function orderEpoch(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return orderEpoch[arg1][arg2]
}

function EIP712_DOMAIN_HASH() {
    return EIP712_DOMAIN_HASH
}

function currentContextAddress() {
    return currentContextAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if arg1:
        owner = arg1
}

function setSignatureValidatorApproval(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'REENTRANCY_ILLEGAL'
    stor0 = 1
    if not currentContextAddress:
        stor8[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit SignatureValidatorApproval(arg2, msg.sender, arg1);
    else:
        stor8[stor10][address(arg1)] = uint8(arg2)
        emit SignatureValidatorApproval(arg2, currentContextAddress, arg1);
    stor0 = 0
}

function registerAssetProxy(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    require ext_code.size(arg1)
    call arg1.getProxyId() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if assetProxy[Mask(32, 224, ext_call.return_data[0])]:
        revert with 0, 'ASSET_PROXY_ALREADY_EXISTS'
    assetProxy[Mask(32, 224, ext_call.return_data[0])] = arg1
    emit AssetProxyRegistered(Mask(32, 224, ext_call.return_data[0]), arg1);
}

function cancelOrdersUpTo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'REENTRANCY_ILLEGAL'
    stor0 = 1
    if not currentContextAddress:
        if msg.sender == msg.sender:
            if arg1 + 1 <= orderEpoch[address(msg.sender)][0]:
                revert with 0, 'INVALID_NEW_ORDER_EPOCH'
            orderEpoch[address(msg.sender)][0] = arg1 + 1
            emit CancelUpTo((arg1 + 1), msg.sender, 0);
        else:
            if arg1 + 1 <= orderEpoch[address(msg.sender)][address(msg.sender)]:
                revert with 0, 'INVALID_NEW_ORDER_EPOCH'
            orderEpoch[address(msg.sender)][address(msg.sender)] = arg1 + 1
            emit CancelUpTo((arg1 + 1), msg.sender, msg.sender);
    else:
        if msg.sender == currentContextAddress:
            if arg1 + 1 <= orderEpoch[stor10][0]:
                revert with 0, 'INVALID_NEW_ORDER_EPOCH'
            orderEpoch[stor10][0] = arg1 + 1
            emit CancelUpTo((arg1 + 1), currentContextAddress, 0);
        else:
            if arg1 + 1 <= orderEpoch[stor10][address(msg.sender)]:
                revert with 0, 'INVALID_NEW_ORDER_EPOCH'
            orderEpoch[stor10][address(msg.sender)] = arg1 + 1
            emit CancelUpTo((arg1 + 1), currentContextAddress, msg.sender);
    stor0 = 0
}

function preSign(bytes32 arg1, address arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if arg2 != msg.sender:
        mem[64] = ceil32(arg3.length) + 128
        mem[96] = arg3.length
        mem[128 len arg3.length] = arg3[all]
        if arg3.length <= 0:
            revert with 0, 'LENGTH_GREATER_THAN_0_REQUIRED'
        if arg3.length <= 0:
            revert with 0, 'GREATER_THAN_ZERO_LENGTH_REQUIRED'
        require arg3.length - 1 < arg3.length
        _9 = mem[arg3.length + 127]
        mem[96] = arg3.length - 1
        if Mask(8, 248, _9) >> 248 >= 7:
            revert with 0, 'SIGNATURE_UNSUPPORTED'
        require Mask(8, 248, _9) >> 248 <= 7
        if not Mask(8, 248, _9):
            revert with 0, 'SIGNATURE_ILLEGAL'
        require Mask(8, 248, _9) >> 248 <= 7
        if Mask(8, 248, _9) >> 248 == 1:
            if arg3.length - 1:
                revert with 0, 'LENGTH_0_REQUIRED'
            revert with 0, 'INVALID_SIGNATURE'
        require Mask(8, 248, _9) >> 248 <= 7
        if Mask(8, 248, _9) >> 248 == 2:
            if arg3.length - 1 != 65:
                revert with 0, 'LENGTH_65_REQUIRED'
            require 0 < arg3.length - 1
            if arg3.length - 1 < 33:
                revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
            if arg3.length - 1 < 65:
                revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
            signer = erecover(arg1, Mask(8, 248, mem[128]), mem[129], mem[161]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) != arg2:
                revert with 0, 'INVALID_SIGNATURE'
        else:
            require Mask(8, 248, _9) >> 248 <= 7
            if Mask(8, 248, _9) >> 248 == 3:
                if arg3.length - 1 != 65:
                    revert with 0, 'LENGTH_65_REQUIRED'
                require 0 < arg3.length - 1
                if arg3.length - 1 < 33:
                    revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                if arg3.length - 1 < 65:
                    revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), Mask(224, 0, arg1)), Mask(8, 248, mem[128]), mem[129], mem[161]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != arg2:
                    revert with 0, 'INVALID_SIGNATURE'
            else:
                require Mask(8, 248, _9) >> 248 <= 7
                if Mask(8, 248, _9) >> 248 == 4:
                    staticcall arg2.isValidSignature(bytes32 arg1, bytes arg2) with:
                            gas gas_remaining wei
                           args arg1, Array(len=arg3.length - 1, data=arg3[all], mem[arg3.length + 128 len floor32(arg3.length + 30) - arg3.length])
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 'WALLET_ERROR', 0
                    if 1 != ext_call.success:
                        revert with 0, 'INVALID_SIGNATURE'
                    if not ext_call.return_data[0]:
                        revert with 0, 'INVALID_SIGNATURE'
                else:
                    require Mask(8, 248, _9) >> 248 <= 7
                    if Mask(8, 248, _9) >> 248 != 5:
                        require Mask(8, 248, _9) >> 248 <= 7
                        if Mask(8, 248, _9) >> 248 != 6:
                            revert with 0, 'SIGNATURE_UNSUPPORTED'
                        if not stor7[arg1][address(arg2)]:
                            revert with 0, 'INVALID_SIGNATURE'
                    else:
                        if arg3.length - 1 < 20:
                            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
                        if not stor8[address(arg2)][address(mem[arg3.length + 95])]:
                            revert with 0, 'INVALID_SIGNATURE'
                        staticcall mem[arg3.length + 107 len 20].0x93634702 with:
                                gas gas_remaining wei
                               args arg1, address(arg2), Array(len=arg3.length - 21, data=arg3[all], mem[arg3.length + 128 len floor32(arg3.length + 10) - arg3.length])
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        ' ',
                                        0xf56414c494441544f525f4552524f5200000000000000000000000000,
                                        0
                        if 1 != ext_call.success:
                            revert with 0, 'INVALID_SIGNATURE'
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_SIGNATURE'
    stor7[arg1][address(arg2)] = 1
}

function sub_67411988(?) {
    require calldata.size - 4 >= 416
    require calldata.size > 35
    require 132 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 4:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 163
    require 324 <= calldata.size
    idx = 0
    s = 132
    t = 224
    while idx < 6:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[324] <= test266151307()
    require calldata.size > cd[324] + 35
    mem[64] = 480
    idx = 0
    s = cd[324] + 4
    t = 416
    while idx < 2:
        require calldata.size > cd[324] + cd[s] + 35
        require cd[(cd[324] + cd[s] + 4)] <= test266151307()
        _5 = mem[64]
        require mem[64] + ceil32(cd[(cd[324] + cd[s] + 4)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[324] + cd[s] + 4)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[324] + cd[s] + 4)]) + 32
        mem[_5] = cd[(cd[324] + cd[s] + 4)]
        require cd[324] + cd[s] + cd[(cd[324] + cd[s] + 4)] + 36 <= calldata.size
        mem[_5 + 32 len cd[(cd[324] + cd[s] + 4)]] = call.data[cd[324] + cd[s] + 36 len cd[(cd[324] + cd[s] + 4)]]
        mem[cd[(cd[324] + cd[s] + 4)] + _5 + 32] = 0
        mem[t] = _5
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[388] <= test266151307()
    require calldata.size > cd[388] + 35
    require ('cd', 388).length <= test266151307()
    _6 = mem[64]
    require mem[64] + ceil32(('cd', 388).length) + 32 >= mem[64] and mem[64] + ceil32(('cd', 388).length) + 32 <= test266151307()
    mem[64] = mem[64] + ceil32(('cd', 388).length) + 32
    mem[_6] = ('cd', 388).length
    require cd[388] + ('cd', 388).length + 36 <= calldata.size
    mem[_6 + 32 len ('cd', 388).length] = call.data[cd[388] + 36 len ('cd', 388).length]
    mem[('cd', 388).length + _6 + 32] = 0
    _7 = mem[64]
    mem[64] = mem[64] + 128
    mem[_7] = 0
    mem[_7 + 32] = 0
    mem[_7 + 64] = 0
    mem[_7 + 96] = 0
    _8 = mem[64]
    mem[64] = mem[64] + 384
    mem[_8] = 0
    mem[_8 + 32] = 0
    mem[_8 + 64] = 0
    mem[_8 + 96] = 0
    mem[_8 + 128] = 0
    mem[_8 + 160] = 0
    mem[_8 + 192] = 0
    mem[_8 + 224] = 0
    mem[_8 + 256] = 0
    mem[_8 + 288] = 0
    mem[_8 + 320] = 96
    mem[_8 + 352] = 96
    _9 = mem[64]
    mem[64] = mem[64] + 384
    mem[_9] = 0
    mem[_9 + 32] = 0
    mem[_9 + 64] = 0
    mem[_9 + 96] = 0
    mem[_9 + 128] = 0
    mem[_9 + 160] = 0
    mem[_9 + 192] = 0
    mem[_9 + 224] = 0
    mem[_9 + 256] = 0
    mem[_9 + 288] = 0
    mem[_9 + 320] = 96
    mem[_9 + 352] = 96
    _10 = mem[64]
    mem[64] = mem[64] + 384
    mem[_10] = mem[108 len 20]
    mem[_10 + 32] = mem[140 len 20]
    mem[_10 + 64] = mem[172 len 20]
    mem[_10 + 96] = mem[204 len 20]
    mem[_10 + 128] = mem[224]
    mem[_10 + 160] = mem[256]
    mem[_10 + 192] = mem[288]
    mem[_10 + 224] = mem[320]
    mem[_10 + 256] = mem[352]
    mem[_10 + 288] = mem[384]
    mem[_10 + 320] = mem[416]
    mem[_10 + 352] = mem[448]
    _23 = mem[64]
    mem[64] = mem[64] + 128
    mem[_23] = 0
    mem[_23 + 32] = 0
    mem[_23 + 64] = 0
    mem[_23 + 96] = 0
    _24 = mem[64]
    mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 36] = 96
    mem[mem[64] + 132] = mem[_10]
    mem[mem[64] + 164] = mem[_10 + 32]
    mem[mem[64] + 196] = mem[_10 + 64]
    mem[mem[64] + 228] = mem[_10 + 96]
    mem[mem[64] + 260] = mem[_10 + 128]
    mem[mem[64] + 292] = mem[_10 + 160]
    mem[mem[64] + 324] = mem[_10 + 192]
    mem[mem[64] + 356] = mem[_10 + 224]
    mem[mem[64] + 388] = mem[_10 + 256]
    mem[mem[64] + 420] = mem[_10 + 288]
    mem[mem[64] + 452] = mem[_10 + 320]
    mem[mem[64] + 484] = mem[_10 + 352]
    mem[mem[64] + 452] = 384
    _37 = mem[_10 + 320]
    _38 = mem[mem[_10 + 320]]
    mem[mem[64] + 516] = mem[mem[_10 + 320]]
    mem[mem[64] + 548 len ceil32(_38)] = mem[_37 + 32 len ceil32(_38)]
    mem[mem[64] + 484] = ceil32(_38) + 416
    _62 = mem[_10 + 352]
    _63 = mem[mem[_10 + 352]]
    mem[mem[64] + ceil32(_38) + 548] = mem[mem[_10 + 352]]
    mem[mem[64] + ceil32(_38) + 580 len ceil32(_63)] = mem[_62 + 32 len ceil32(_63)]
    mem[mem[64] + 68] = cd[356]
    mem[mem[64] + 100] = ceil32(_38) + ceil32(_63) + 544
    mem[mem[64] + ceil32(_38) + ceil32(_63) + 580] = ('cd', 388).length
    mem[mem[64] + ceil32(_38) + ceil32(_63) + 612 len ceil32(('cd', 388).length)] = call.data[cd[388] + 36 len ('cd', 388).length], mem[_6 + ('cd', 388).length + 32 len ceil32(('cd', 388).length) - ('cd', 388).length]
    mem[64] = mem[64] + ceil32(_38) + ceil32(_63) + ceil32(('cd', 388).length) + 612
    delegate this.address.mem[_24 + 32 len 4] with:
         gas gas_remaining wei
        args mem[_24 + 36 len 64], ceil32(_38) + ceil32(_63) + 544, mem[_24 + 132 len ceil32(_38) + ceil32(_63) + 448], ('cd', 388).length, mem[_24 + ceil32(_38) + ceil32(_63) + 612 len ceil32(('cd', 388).length)]
    if not delegate.return_code:
        return 0
    return delegate.return_data[0], delegate.return_data[32], delegate.return_data[64], delegate.return_data[96]
}

function sub_af5a08e1(?) {
    require calldata.size - 4 >= 352
    require calldata.size > 35
    require 132 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 4:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 163
    require 324 <= calldata.size
    idx = 0
    s = 132
    t = 224
    while idx < 6:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[324] <= test266151307()
    require calldata.size > cd[324] + 35
    mem[64] = 480
    idx = 0
    s = cd[324] + 4
    t = 416
    while idx < 2:
        require calldata.size > cd[324] + cd[s] + 35
        require cd[(cd[324] + cd[s] + 4)] <= test266151307()
        _7 = mem[64]
        require mem[64] + ceil32(cd[(cd[324] + cd[s] + 4)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[324] + cd[s] + 4)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[324] + cd[s] + 4)]) + 32
        mem[_7] = cd[(cd[324] + cd[s] + 4)]
        require cd[324] + cd[s] + cd[(cd[324] + cd[s] + 4)] + 36 <= calldata.size
        mem[_7 + 32 len cd[(cd[324] + cd[s] + 4)]] = call.data[cd[324] + cd[s] + 36 len cd[(cd[324] + cd[s] + 4)]]
        mem[cd[(cd[324] + cd[s] + 4)] + _7 + 32] = 0
        mem[t] = _7
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _5 = mem[64]
    mem[64] = mem[64] + 96
    mem[_5] = 0
    mem[_5 + 32] = 0
    mem[_5 + 64] = 0
    _6 = mem[64]
    mem[64] = mem[64] + 384
    mem[_6] = 0
    mem[_6 + 32] = 0
    mem[_6 + 64] = 0
    mem[_6 + 96] = 0
    mem[_6 + 128] = 0
    mem[_6 + 160] = 0
    mem[_6 + 192] = 0
    mem[_6 + 224] = 0
    mem[_6 + 256] = 0
    mem[_6 + 288] = 0
    mem[_6 + 320] = 96
    mem[_6 + 352] = 96
    _8 = mem[64]
    mem[64] = mem[64] + 384
    mem[_8] = 0
    mem[_8 + 32] = 0
    mem[_8 + 64] = 0
    mem[_8 + 96] = 0
    mem[_8 + 128] = 0
    mem[_8 + 160] = 0
    mem[_8 + 192] = 0
    mem[_8 + 224] = 0
    mem[_8 + 256] = 0
    mem[_8 + 288] = 0
    mem[_8 + 320] = 96
    mem[_8 + 352] = 96
    _9 = mem[64]
    mem[64] = mem[64] + 384
    mem[_9] = mem[108 len 20]
    mem[_9 + 32] = mem[140 len 20]
    mem[_9 + 64] = mem[172 len 20]
    mem[_9 + 96] = mem[204 len 20]
    mem[_9 + 128] = mem[224]
    mem[_9 + 160] = mem[256]
    mem[_9 + 192] = mem[288]
    mem[_9 + 224] = mem[320]
    mem[_9 + 256] = mem[352]
    mem[_9 + 288] = mem[384]
    mem[_9 + 320] = mem[416]
    mem[_9 + 352] = mem[448]
    _22 = mem[64]
    mem[64] = mem[64] + 96
    mem[_22] = 0
    mem[_22 + 32] = 0
    mem[_22 + 64] = 0
    _23 = mem[64]
    mem[mem[64] + 32] = 'Order('
    mem[mem[64] + 38] = 'address makerAddress,'
    mem[mem[64] + 59] = 'address takerAddress,'
    mem[mem[64] + 80] = 'address feeRecipientAddress,'
    mem[mem[64] + 108] = 'address senderAddress,'
    mem[mem[64] + 130] = 'uint256 makerAssetAmount,'
    mem[mem[64] + 155] = 'uint256 takerAssetAmount,'
    mem[mem[64] + 180] = 'uint256 makerFee,'
    mem[mem[64] + 197] = 'uint256 takerFee,'
    mem[mem[64] + 214] = 'uint256 expirationTimeSeconds,'
    mem[mem[64] + 244] = 'uint256 salt,'
    mem[mem[64] + 257] = 'bytes makerAssetData,'
    mem[mem[64] + 278] = 'bytes takerAssetData'
    mem[mem[64] + 298] = ')'
    _24 = mem[64]
    mem[mem[64]] = 267
    mem[64] = mem[64] + 299
    _25 = mem[_24]
    mem[_23 + 299 len floor32(mem[_24])] = mem[_24 + 32 len floor32(mem[_24])]
    mem[_23 + floor32(mem[_24]) + 299] = 256^(-(mem[_24] % 32) + 32) - 1 and mem[_23 + floor32(mem[_24]) + 299] or mem[_24 + floor32(mem[_24]) + 32] and !(256^(-(mem[_24] % 32) + 32) - 1)
    _102 = sha3(mem[_23 + 299 len _25])
    _104 = mem[mem[_9 + 320]]
    mem[_23 + 299 len floor32(mem[mem[_9 + 320]])] = mem[mem[_9 + 320] + 32 len floor32(mem[mem[_9 + 320]])]
    mem[_23 + floor32(mem[mem[_9 + 320]]) + 299] = 256^(-(mem[mem[_9 + 320]] % 32) + 32) - 1 and mem[_23 + floor32(mem[mem[_9 + 320]]) + 299] or mem[mem[_9 + 320] + floor32(mem[mem[_9 + 320]]) + 32] and !(256^(-(mem[mem[_9 + 320]] % 32) + 32) - 1)
    _175 = sha3(mem[_23 + 299 len _104])
    _177 = mem[mem[_9 + 352]]
    mem[_23 + 299 len floor32(mem[mem[_9 + 352]])] = mem[mem[_9 + 352] + 32 len floor32(mem[mem[_9 + 352]])]
    mem[_23 + floor32(mem[mem[_9 + 352]]) + 299] = mem[_23 + floor32(mem[mem[_9 + 352]]) + 299] and 256^(-(mem[mem[_9 + 352]] % 32) + 32) - 1 or mem[mem[_9 + 352] + floor32(mem[mem[_9 + 352]]) + 32] and !(256^(-(mem[mem[_9 + 352]] % 32) + 32) - 1)
    _245 = sha3(_102, mem[_9 len 320], _175, sha3(mem[_23 + 299 len _177]))
    mem[_23 + 299] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[_23 + 301] = EIP712_DOMAIN_HASH
    mem[_23 + 333] = _245
    mem[_22 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _245)
    mem[_22 + 64] = filled[6401][uint256(stor2.field_0)][_245]
    if not mem[_9 + 128]:
        return 1, sha3(6401, EIP712_DOMAIN_HASH, _245), filled[6401][uint256(stor2.field_0)][_245]
    if not mem[_9 + 160]:
        return 2, sha3(6401, EIP712_DOMAIN_HASH, _245), filled[6401][uint256(stor2.field_0)][_245]
    if filled[6401][uint256(stor2.field_0)][_245] >= mem[_9 + 160]:
        return 5, sha3(6401, EIP712_DOMAIN_HASH, _245), filled[6401][uint256(stor2.field_0)][_245]
    if block.timestamp >= mem[_9 + 256]:
        return 4, sha3(6401, EIP712_DOMAIN_HASH, _245), filled[6401][uint256(stor2.field_0)][_245]
    mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _245)
    mem[32] = 5
    if not stor5[6401][uint256(stor2.field_0)][_245]:
        _257 = mem[_9 + 288]
        mem[0] = mem[_9 + 12 len 20]
        _259 = sha3(mem[0], 6)
        mem[0] = mem[_9 + 108 len 20]
        if stor[_259][mem[0]] <= _257:
            return 3, sha3(6401, EIP712_DOMAIN_HASH, _245), filled[6401][uint256(stor2.field_0)][_245]
    return 6, sha3(6401, EIP712_DOMAIN_HASH, _245), filled[6401][uint256(stor2.field_0)][_245]
}

function isValidSignature(bytes32 arg1, address arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if arg3.length <= 0:
        revert with 0, 'LENGTH_GREATER_THAN_0_REQUIRED'
    if arg3.length <= 0:
        revert with 0, 'GREATER_THAN_ZERO_LENGTH_REQUIRED'
    require arg3.length - 1 < arg3.length
    _7 = mem[arg3.length + 127 len 1], 0
    mem[96] = arg3.length - 1
    if Mask(8, 248, _7) >> 248 >= 7:
        revert with 0, 'SIGNATURE_UNSUPPORTED'
    require Mask(8, 248, _7) >> 248 <= 7
    if not Mask(8, 248, _7):
        revert with 0, 'SIGNATURE_ILLEGAL'
    require Mask(8, 248, _7) >> 248 <= 7
    if Mask(8, 248, _7) >> 248 == 1:
        if arg3.length - 1:
            revert with 0, 'LENGTH_0_REQUIRED'
        mem[ceil32(arg3.length) + 128] = 0
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    require Mask(8, 248, _7) >> 248 <= 7
    if Mask(8, 248, _7) >> 248 == 2:
        if arg3.length - 1 != 65:
            revert with 0, 'LENGTH_65_REQUIRED'
        require 0 < arg3.length - 1
        if arg3.length - 1 < 33:
            revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
        if arg3.length - 1 < 65:
            revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
        signer = erecover(arg1, Mask(8, 248, mem[128]), mem[129], mem[161]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        return (address(signer) == arg2)
    require Mask(8, 248, _7) >> 248 <= 7
    if Mask(8, 248, _7) >> 248 == 3:
        if arg3.length - 1 != 65:
            revert with 0, 'LENGTH_65_REQUIRED'
        require 0 < arg3.length - 1
        _27 = mem[128]
        if arg3.length - 1 < 33:
            revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
        _33 = mem[129]
        if arg3.length - 1 < 65:
            revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
        _51 = mem[161]
        mem[ceil32(arg3.length) + 160] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg3.length) + 188] = arg1
        mem[ceil32(arg3.length) + 128] = 60
        mem[64] = ceil32(arg3.length) + 220
        _59 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg3.length) + 220 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 220] = 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 220] or mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1)
        signer = erecover(sha3(mem[ceil32(arg3.length) + 220 len _59]), Mask(8, 248, _27), _33, _51) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        return (address(signer) == arg2)
    require Mask(8, 248, _7) >> 248 <= 7
    if Mask(8, 248, _7) >> 248 == 4:
        mem[ceil32(arg3.length) + 164] = arg1
        mem[ceil32(arg3.length) + 196] = 64
        mem[ceil32(arg3.length) + 228] = arg3.length - 1
        mem[ceil32(arg3.length) + 260 len floor32(arg3.length + 30)] = arg3[all], mem[arg3.length + 128 len floor32(arg3.length + 30) - arg3.length]
        if floor32(arg3.length + 30) > arg3.length - 1:
            mem[arg3.length + ceil32(arg3.length) + 259] = 0
        mem[ceil32(arg3.length) + 128] = floor32(arg3.length + 30) + 100
        mem[ceil32(arg3.length) + 164 len 28] = Mask(224, 32, arg1) >> 32
        mem[ceil32(arg3.length) + 160 len 4] = isValidSignature(bytes32 arg1, bytes arg2)
        staticcall arg2.isValidSignature(bytes32 arg1, bytes arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg3.length) + 164 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] - 4]
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 'WALLET_ERROR', 0
    else:
        require Mask(8, 248, _7) >> 248 <= 7
        if Mask(8, 248, _7) >> 248 != 5:
            require Mask(8, 248, _7) >> 248 <= 7
            if Mask(8, 248, _7) >> 248 != 6:
                revert with 0, 'SIGNATURE_UNSUPPORTED'
            mem[ceil32(arg3.length) + 128] = bool(stor7[arg1][address(arg2)])
            return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        if arg3.length - 1 < 20:
            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
        if not stor8[address(arg2)][address(mem[arg3.length + 95])]:
            mem[ceil32(arg3.length) + 128] = 0
            return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg3.length) + 164] = arg1
        mem[ceil32(arg3.length) + 196] = arg2
        mem[ceil32(arg3.length) + 228] = 96
        mem[ceil32(arg3.length) + 260] = arg3.length - 21
        mem[ceil32(arg3.length) + 292 len floor32(arg3.length + 10)] = arg3[all], mem[arg3.length + 128 len floor32(arg3.length + 10) - arg3.length]
        if floor32(arg3.length + 10) > arg3.length - 21:
            mem[arg3.length + ceil32(arg3.length) + 271] = 0
        mem[ceil32(arg3.length) + 128] = floor32(arg3.length + 10) + 132
        mem[ceil32(arg3.length) + 164 len 28] = Mask(224, 32, arg1) >> 32
        mem[ceil32(arg3.length) + 160 len 4] = unknown_0x93634702(?????)
        staticcall mem[arg3.length + 107 len 20].0x93634702 with:
                gas gas_remaining wei
               args mem[ceil32(arg3.length) + 164 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] - 4]
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        ' ',
                        0xf56414c494441544f525f4552524f5200000000000000000000000000,
                        0
    ('bool', 'ext_call.success')
    if ext_call.success == 1:
        return bool(ext_call.return_data[0])
    else:
        return 0
}

function executeTransaction(uint256 arg1, address arg2, bytes arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if currentContextAddress:
        revert with 0, 'REENTRANCY_ILLEGAL'
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 223] = ')'
    mem[ceil32(arg3.length) + 128] = 64
    mem[ceil32(arg3.length) + 224 len 64] = 'ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'
    mem[ceil32(arg3.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 224] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 224] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    _370 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 224 len arg3.length % 32])
    mem[ceil32(arg3.length) + 288] = arg2
    mem[ceil32(arg3.length) + 320] = _370
    mem[ceil32(arg3.length) + 224] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 226] = EIP712_DOMAIN_HASH
    mem[ceil32(arg3.length) + 258] = sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)
    if stor9[6401][uint256(stor2.field_0)][sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)]:
        revert with 0, 'INVALID_TX_HASH'
    if msg.sender == arg2:
        stor9[6401][uint256(stor2.field_0)][sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)] = 1
        mem[ceil32(arg3.length) + 224 len arg3.length] = arg3[all]
        delegate this.address with:
           funct mem[ceil32(arg3.length) + 224 len 2], uint16(stor2.field_240)
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 228 len arg3.length - 4]
    else:
        mem[ceil32(arg3.length) + 224] = arg4.length
        mem[ceil32(arg3.length) + 256 len arg4.length] = arg4[all]
        if arg4.length <= 0:
            revert with 0, 'LENGTH_GREATER_THAN_0_REQUIRED'
        if arg4.length <= 0:
            revert with 0, 'GREATER_THAN_ZERO_LENGTH_REQUIRED'
        require arg4.length - 1 < arg4.length
        _389 = mem[arg4.length + ceil32(arg3.length) + 255]
        mem[ceil32(arg3.length) + 224] = arg4.length - 1
        if Mask(8, 248, _389) >> 248 >= 7:
            revert with 0, 'SIGNATURE_UNSUPPORTED'
        require Mask(8, 248, _389) >> 248 <= 7
        if not Mask(8, 248, _389):
            revert with 0, 'SIGNATURE_ILLEGAL'
        require Mask(8, 248, _389) >> 248 <= 7
        if Mask(8, 248, _389) >> 248 == 1:
            if arg4.length - 1:
                revert with 0, 'LENGTH_0_REQUIRED'
            revert with 0, 'INVALID_TX_SIGNATURE'
        require Mask(8, 248, _389) >> 248 <= 7
        if Mask(8, 248, _389) >> 248 == 2:
            if arg4.length - 1 != 65:
                revert with 0, 'LENGTH_65_REQUIRED'
            require 0 < arg4.length - 1
            if arg4.length - 1 < 33:
                revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
            if arg4.length - 1 < 65:
                revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
            signer = erecover(sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)), Mask(8, 8, mem[ceil32(arg3.length) + 256 len 2]) << 240, mem[ceil32(arg3.length) + 257 len 1], sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370), Mask(144, 0, arg2) << 96, Mask(8, 248, _370) >> 248) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) != arg2:
                revert with 0, 'INVALID_TX_SIGNATURE'
        else:
            require Mask(8, 248, _389) >> 248 <= 7
            if Mask(8, 248, _389) >> 248 == 3:
                if arg4.length - 1 != 65:
                    revert with 0, 'LENGTH_65_REQUIRED'
                require 0 < arg4.length - 1
                if arg4.length - 1 < 33:
                    revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                if arg4.length - 1 < 65:
                    revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370))), Mask(8, 8, mem[ceil32(arg3.length) + 256 len 2]) << 240, mem[ceil32(arg3.length) + 257 len 1], sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370), Mask(144, 0, arg2) << 96, Mask(8, 248, _370) >> 248) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != arg2:
                    revert with 0, 'INVALID_TX_SIGNATURE'
            else:
                require Mask(8, 248, _389) >> 248 <= 7
                if Mask(8, 248, _389) >> 248 == 4:
                    staticcall arg2.isValidSignature(bytes32 arg1, bytes arg2) with:
                            gas gas_remaining wei
                           args sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)), Array(len=arg4.length - 1, data=arg4[all], mem[ceil32(arg3.length) + arg4.length + 256 len floor32(arg4.length + 30) - arg4.length])
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 'WALLET_ERROR', 0
                    if 1 != ext_call.success:
                        revert with 0, 'INVALID_TX_SIGNATURE'
                    if not ext_call.return_data[0]:
                        revert with 0, 'INVALID_TX_SIGNATURE'
                else:
                    require Mask(8, 248, _389) >> 248 <= 7
                    if Mask(8, 248, _389) >> 248 != 5:
                        require Mask(8, 248, _389) >> 248 <= 7
                        if Mask(8, 248, _389) >> 248 != 6:
                            revert with 0, 'SIGNATURE_UNSUPPORTED'
                        if not stor7[6401][uint256(stor2.field_0)][sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)][address(arg2)]:
                            revert with 0, 'INVALID_TX_SIGNATURE'
                    else:
                        if arg4.length - 1 < 20:
                            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
                        if not stor8[address(arg2)][address(mem[arg4.length + ceil32(arg3.length) + 223])]:
                            revert with 0, 'INVALID_TX_SIGNATURE'
                        staticcall mem[arg4.length + ceil32(arg3.length) + 235 len 20].0x93634702 with:
                                gas gas_remaining wei
                               args sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)), address(arg2), Array(len=arg4.length - 21, data=arg4[all], mem[ceil32(arg3.length) + arg4.length + 256 len floor32(arg4.length + 10) - arg4.length])
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        ' ',
                                        0xf56414c494441544f525f4552524f5200000000000000000000000000,
                                        0
                        if 1 != ext_call.success:
                            revert with 0, 'INVALID_TX_SIGNATURE'
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_TX_SIGNATURE'
        currentContextAddress = arg2
        stor9[6401][uint256(stor2.field_0)][sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)] = 1
        delegate this.address with:
             gas gas_remaining wei
            args arg3[all]
    if not delegate.return_code:
        revert with 0, 'FAILED_EXECUTION'
    if arg2 != msg.sender:
        currentContextAddress = 0
}

function batchFillOrdersNoThrow(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256[] arg13, bytes[] arg14) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 384
        _82 = mem[64]
        require mem[64] + 384 >= mem[64] and mem[64] + 384 <= test266151307()
        mem[64] = mem[64] + 384
        mem[_82] = address(cd[(arg1 + cd[s] + 36)])
        mem[_82 + 32] = address(cd[(arg1 + cd[s] + 68)])
        mem[_82 + 64] = address(cd[(arg1 + cd[s] + 100)])
        mem[_82 + 96] = address(cd[(arg1 + cd[s] + 132)])
        mem[_82 + 128] = cd[(arg1 + cd[s] + 164)]
        mem[_82 + 160] = cd[(arg1 + cd[s] + 196)]
        mem[_82 + 192] = cd[(arg1 + cd[s] + 228)]
        mem[_82 + 224] = cd[(arg1 + cd[s] + 260)]
        mem[_82 + 256] = cd[(arg1 + cd[s] + 292)]
        mem[_82 + 288] = cd[(arg1 + cd[s] + 324)]
        require cd[(arg1 + cd[s] + 356)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] <= test266151307()
        _129 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32
        mem[_129] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + 68 <= calldata.size
        mem[_129 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + _129 + 32] = 0
        mem[_82 + 320] = _129
        require cd[(arg1 + cd[s] + 388)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] <= test266151307()
        _155 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32
        mem[_155] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + 68 <= calldata.size
        mem[_155 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + _155 + 32] = 0
        mem[_82 + 352] = _155
        mem[t] = _82
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    _83 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 >= mem[64] and mem[64] + (32 * arg2.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_83] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = _83 + 32
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    _162 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 >= mem[64] and mem[64] + (32 * arg3.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_162] = arg3.length
    idx = 0
    s = arg3 + 36
    t = _162 + 32
    while idx < arg3.length:
        require calldata.size > arg3 + cd[s] + 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        _240 = mem[64]
        require mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        mem[_240] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_240 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[cd[(arg3 + cd[s] + 36)] + _240 + 32] = 0
        mem[t] = _240
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _238 = mem[64]
    mem[64] = mem[64] + 128
    mem[_238] = 0
    mem[_238 + 32] = 0
    mem[_238 + 64] = 0
    mem[_238 + 96] = 0
    _239 = mem[64]
    mem[64] = mem[64] + 128
    mem[_239] = 0
    mem[_239 + 32] = 0
    mem[_239 + 64] = 0
    mem[_239 + 96] = 0
    _241 = mem[96]
    s = _239
    idx = 0
    while _241 != idx:
        require idx < mem[96]
        _315 = mem[(32 * idx) + 128]
        require idx < mem[_83]
        _317 = mem[(32 * idx) + _83 + 32]
        require idx < mem[_162]
        _320 = mem[(32 * idx) + _162 + 32]
        _321 = mem[64]
        mem[64] = mem[64] + 128
        mem[_321] = 0
        mem[_321 + 32] = 0
        mem[_321 + 64] = 0
        mem[_321 + 96] = 0
        _323 = mem[64]
        mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = 96
        mem[mem[64] + 132] = mem[_315]
        mem[mem[64] + 164] = mem[_315 + 32]
        mem[mem[64] + 196] = mem[_315 + 64]
        mem[mem[64] + 228] = mem[_315 + 96]
        mem[mem[64] + 260] = mem[_315 + 128]
        mem[mem[64] + 292] = mem[_315 + 160]
        mem[mem[64] + 324] = mem[_315 + 192]
        mem[mem[64] + 356] = mem[_315 + 224]
        mem[mem[64] + 388] = mem[_315 + 256]
        mem[mem[64] + 420] = mem[_315 + 288]
        mem[mem[64] + 452] = mem[_315 + 320]
        mem[mem[64] + 484] = mem[_315 + 352]
        mem[mem[64] + 452] = 384
        _336 = mem[_315 + 320]
        _337 = mem[mem[_315 + 320]]
        mem[mem[64] + 516] = mem[mem[_315 + 320]]
        s = 0
        t = _336 + 32
        u = mem[64] + 548
        while s < _337 + 31 / 32:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_323 + 484] = ceil32(_337) + 416
        _384 = mem[_315 + 352]
        _385 = mem[mem[_315 + 352]]
        mem[_323 + ceil32(_337) + 548] = mem[mem[_315 + 352]]
        s = 0
        t = _384 + 32
        u = _323 + ceil32(_337) + 580
        while s < _385 + 31 / 32:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_323 + 68] = _317
        mem[_323 + 100] = ceil32(_337) + ceil32(_385) + 544
        _427 = mem[_320]
        mem[_323 + ceil32(_337) + ceil32(_385) + 580] = mem[_320]
        s = 0
        t = _320 + 32
        u = _323 + ceil32(_337) + ceil32(_385) + 612
        while s < _427 + 31 / 32:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[64] = _323 + ceil32(_337) + ceil32(_385) + ceil32(_427) + 612
        delegate this.address.mem[_323 + 32 len 4] with:
             gas gas_remaining wei
            args mem[_323 + 36], _317, ceil32(_337) + ceil32(_385) + 544, mem[_323 + 132 len 352], ceil32(_337) + 416, mem[_323 + 516 len ceil32(_337) + ceil32(_385) + ceil32(_427) + 96]
        mem[_323 len 128] = delegate.return_data[0 len 128]
        if not delegate.return_code:
            if mem[_321] + mem[_238] < mem[_238]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_238] = mem[_321] + mem[_238]
            if mem[_321 + 32] + mem[_238 + 32] < mem[_238 + 32]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_238 + 32] = mem[_321 + 32] + mem[_238 + 32]
            if mem[_321 + 64] + mem[_238 + 64] < mem[_238 + 64]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_238 + 64] = mem[_321 + 64] + mem[_238 + 64]
            if mem[_321 + 96] + mem[_238 + 96] < mem[_238 + 96]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_238 + 96] = mem[_321 + 96] + mem[_238 + 96]
        else:
            mem[_321] = delegate.return_data[0]
            mem[_321 + 32] = delegate.return_data[32]
            mem[_321 + 64] = delegate.return_data[64]
            mem[_321 + 96] = delegate.return_data[96]
            if delegate.return_data[0] + mem[_238] < mem[_238]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_238] = delegate.return_data[0] + mem[_238]
            if delegate.return_data[32] + mem[_238 + 32] < mem[_238 + 32]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_238 + 32] = delegate.return_data[32] + mem[_238 + 32]
            if delegate.return_data[64] + mem[_238 + 64] < mem[_238 + 64]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_238 + 64] = delegate.return_data[64] + mem[_238 + 64]
            if delegate.return_data[96] + mem[_238 + 96] < mem[_238 + 96]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_238 + 96] = delegate.return_data[96] + mem[_238 + 96]
        s = _321
        idx = idx + 1
        continue 
    mem[mem[64]] = mem[_238]
    mem[mem[64] + 32] = mem[_238 + 32]
    mem[mem[64] + 64] = mem[_238 + 64]
    mem[mem[64] + 96] = mem[_238 + 96]
    return memory
      from mem[64]
       len 128
}

function marketSellOrdersNoThrow(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256 arg13, bytes[] arg14) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 384
        _101 = mem[64]
        require mem[64] + 384 >= mem[64] and mem[64] + 384 <= test266151307()
        mem[64] = mem[64] + 384
        mem[_101] = address(cd[(arg1 + cd[s] + 36)])
        mem[_101 + 32] = address(cd[(arg1 + cd[s] + 68)])
        mem[_101 + 64] = address(cd[(arg1 + cd[s] + 100)])
        mem[_101 + 96] = address(cd[(arg1 + cd[s] + 132)])
        mem[_101 + 128] = cd[(arg1 + cd[s] + 164)]
        mem[_101 + 160] = cd[(arg1 + cd[s] + 196)]
        mem[_101 + 192] = cd[(arg1 + cd[s] + 228)]
        mem[_101 + 224] = cd[(arg1 + cd[s] + 260)]
        mem[_101 + 256] = cd[(arg1 + cd[s] + 292)]
        mem[_101 + 288] = cd[(arg1 + cd[s] + 324)]
        require cd[(arg1 + cd[s] + 356)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] <= test266151307()
        _160 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32
        mem[_160] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + 68 <= calldata.size
        mem[_160 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + _160 + 32] = 0
        mem[_101 + 320] = _160
        require cd[(arg1 + cd[s] + 388)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] <= test266151307()
        _184 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32
        mem[_184] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + 68 <= calldata.size
        mem[_184 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + _184 + 32] = 0
        mem[_101 + 352] = _184
        mem[t] = _101
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    _102 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 >= mem[64] and mem[64] + (32 * arg3.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_102] = arg3.length
    idx = 0
    s = arg3 + 36
    t = _102 + 32
    while idx < arg3.length:
        require calldata.size > arg3 + cd[s] + 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        _202 = mem[64]
        require mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        mem[_202] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_202 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[cd[(arg3 + cd[s] + 36)] + _202 + 32] = 0
        mem[t] = _202
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _200 = mem[64]
    mem[64] = mem[64] + 128
    mem[_200] = 0
    mem[_200 + 32] = 0
    mem[_200 + 64] = 0
    mem[_200 + 96] = 0
    _201 = mem[64]
    mem[64] = mem[64] + 128
    mem[_201] = 0
    mem[_201 + 32] = 0
    mem[_201 + 64] = 0
    mem[_201 + 96] = 0
    require 0 < mem[96]
    _205 = mem[mem[128] + 352]
    _206 = mem[96]
    s = _201
    s = 0
    idx = 0
    while _206 != idx:
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 352] = _205
        _298 = mem[_200 + 32]
        if mem[_200 + 32] > arg2:
            revert with 0, 'UINT256_UNDERFLOW'
        require idx < mem[96]
        _302 = mem[(32 * idx) + 128]
        require idx < mem[_102]
        _305 = mem[(32 * idx) + _102 + 32]
        _307 = mem[64]
        mem[64] = mem[64] + 128
        mem[_307] = 0
        mem[_307 + 32] = 0
        mem[_307 + 64] = 0
        mem[_307 + 96] = 0
        _309 = mem[64]
        mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = 96
        mem[mem[64] + 132] = mem[_302]
        mem[mem[64] + 164] = mem[_302 + 32]
        mem[mem[64] + 196] = mem[_302 + 64]
        mem[mem[64] + 228] = mem[_302 + 96]
        mem[mem[64] + 260] = mem[_302 + 128]
        mem[mem[64] + 292] = mem[_302 + 160]
        mem[mem[64] + 324] = mem[_302 + 192]
        mem[mem[64] + 356] = mem[_302 + 224]
        mem[mem[64] + 388] = mem[_302 + 256]
        mem[mem[64] + 420] = mem[_302 + 288]
        mem[mem[64] + 452] = mem[_302 + 320]
        mem[mem[64] + 484] = mem[_302 + 352]
        mem[mem[64] + 452] = 384
        _322 = mem[_302 + 320]
        _323 = mem[mem[_302 + 320]]
        mem[mem[64] + 516] = mem[mem[_302 + 320]]
        s = 0
        t = _322 + 32
        u = mem[64] + 548
        while s < _323 + 31 / 32:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_309 + 484] = ceil32(_323) + 416
        _383 = mem[_302 + 352]
        _384 = mem[mem[_302 + 352]]
        mem[_309 + ceil32(_323) + 548] = mem[mem[_302 + 352]]
        s = 0
        t = _383 + 32
        u = _309 + ceil32(_323) + 580
        while s < _384 + 31 / 32:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_309 + 68] = arg2 - _298
        mem[_309 + 100] = ceil32(_323) + ceil32(_384) + 544
        _440 = mem[_305]
        mem[_309 + ceil32(_323) + ceil32(_384) + 580] = mem[_305]
        s = 0
        t = _305 + 32
        u = _309 + ceil32(_323) + ceil32(_384) + 612
        while s < _440 + 31 / 32:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[64] = _309 + ceil32(_323) + ceil32(_384) + ceil32(_440) + 612
        delegate this.address.mem[_309 + 32 len 4] with:
             gas gas_remaining wei
            args mem[_309 + 36], arg2 - _298, ceil32(_323) + ceil32(_384) + 544, mem[_309 + 132 len 352], ceil32(_323) + 416, mem[_309 + 516 len ceil32(_323) + ceil32(_384) + ceil32(_440) + 96]
        mem[_309 len 128] = delegate.return_data[0 len 128]
        if not delegate.return_code:
            if mem[_307] + mem[_200] < mem[_200]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_200] = mem[_307] + mem[_200]
            if mem[_307 + 32] + mem[_200 + 32] < mem[_200 + 32]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_200 + 32] = mem[_307 + 32] + mem[_200 + 32]
            if mem[_307 + 64] + mem[_200 + 64] < mem[_200 + 64]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_200 + 64] = mem[_307 + 64] + mem[_200 + 64]
            if mem[_307 + 96] + mem[_200 + 96] < mem[_200 + 96]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_200 + 96] = mem[_307 + 96] + mem[_200 + 96]
        else:
            mem[_307] = delegate.return_data[0]
            mem[_307 + 32] = delegate.return_data[32]
            mem[_307 + 64] = delegate.return_data[64]
            mem[_307 + 96] = delegate.return_data[96]
            if delegate.return_data[0] + mem[_200] < mem[_200]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_200] = delegate.return_data[0] + mem[_200]
            if delegate.return_data[32] + mem[_200 + 32] < mem[_200 + 32]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_200 + 32] = delegate.return_data[32] + mem[_200 + 32]
            if delegate.return_data[64] + mem[_200 + 64] < mem[_200 + 64]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_200 + 64] = delegate.return_data[64] + mem[_200 + 64]
            if delegate.return_data[96] + mem[_200 + 96] < mem[_200 + 96]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_200 + 96] = delegate.return_data[96] + mem[_200 + 96]
        if arg2 > mem[_200 + 32]:
            s = _307
            s = arg2 - _298
            idx = idx + 1
            continue 
        mem[_309 + ceil32(_323) + ceil32(_384) + ceil32(_440) + 612] = mem[_200]
        mem[_309 + ceil32(_323) + ceil32(_384) + ceil32(_440) + 644] = mem[_200 + 32]
        mem[_309 + ceil32(_323) + ceil32(_384) + ceil32(_440) + 676] = mem[_200 + 64]
        mem[_309 + ceil32(_323) + ceil32(_384) + ceil32(_440) + 708] = mem[_200 + 96]
        return memory
          from _309 + ceil32(_323) + ceil32(_384) + ceil32(_440) + 612
           len 128
    mem[mem[64]] = mem[_200]
    mem[mem[64] + 32] = mem[_200 + 32]
    mem[mem[64] + 64] = mem[_200 + 64]
    mem[mem[64] + 96] = mem[_200 + 96]
    return memory
      from mem[64]
       len 128
}

function getOrdersInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 384
        _126 = mem[64]
        require mem[64] + 384 >= mem[64] and mem[64] + 384 <= test266151307()
        mem[64] = mem[64] + 384
        mem[_126] = address(cd[(arg1 + cd[s] + 36)])
        mem[_126 + 32] = address(cd[(arg1 + cd[s] + 68)])
        mem[_126 + 64] = address(cd[(arg1 + cd[s] + 100)])
        mem[_126 + 96] = address(cd[(arg1 + cd[s] + 132)])
        mem[_126 + 128] = cd[(arg1 + cd[s] + 164)]
        mem[_126 + 160] = cd[(arg1 + cd[s] + 196)]
        mem[_126 + 192] = cd[(arg1 + cd[s] + 228)]
        mem[_126 + 224] = cd[(arg1 + cd[s] + 260)]
        mem[_126 + 256] = cd[(arg1 + cd[s] + 292)]
        mem[_126 + 288] = cd[(arg1 + cd[s] + 324)]
        require cd[(arg1 + cd[s] + 356)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] <= test266151307()
        _244 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32
        mem[_244] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + 68 <= calldata.size
        mem[_244 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + _244 + 32] = 0
        mem[_126 + 320] = _244
        require cd[(arg1 + cd[s] + 388)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] <= test266151307()
        _245 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32
        mem[_245] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + 68 <= calldata.size
        mem[_245 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + _245 + 32] = 0
        mem[_126 + 352] = _245
        mem[t] = _126
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _124 = mem[96]
    _125 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _124) + 32
    if not _124:
        idx = 0
        while _124 != idx:
            require idx < mem[96]
            _249 = mem[(32 * idx) + 128]
            _250 = mem[64]
            mem[64] = mem[64] + 96
            mem[_250] = 0
            mem[_250 + 32] = 0
            mem[_250 + 64] = 0
            _253 = mem[64]
            mem[mem[64] + 32] = 'Order('
            mem[mem[64] + 38] = 'address makerAddress,'
            mem[mem[64] + 59] = 'address takerAddress,'
            mem[mem[64] + 80] = 'address feeRecipientAddress,'
            mem[mem[64] + 108] = 'address senderAddress,'
            mem[mem[64] + 130] = 'uint256 makerAssetAmount,'
            mem[mem[64] + 155] = 'uint256 takerAssetAmount,'
            mem[mem[64] + 180] = 'uint256 makerFee,'
            mem[mem[64] + 197] = 'uint256 takerFee,'
            mem[mem[64] + 214] = 'uint256 expirationTimeSeconds,'
            mem[mem[64] + 244] = 'uint256 salt,'
            mem[mem[64] + 257] = 'bytes makerAssetData,'
            mem[mem[64] + 278] = 'bytes takerAssetData'
            mem[mem[64] + 298] = ')'
            _254 = mem[64]
            mem[mem[64]] = 267
            mem[64] = mem[64] + 299
            _255 = mem[_254]
            t = _254 + 32
            u = _253 + 299
            s = mem[_254]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_253 + floor32(mem[_254]) + 299] = 256^(-(mem[_254] % 32) + 32) - 1 and mem[_253 + floor32(mem[_254]) + 299] or mem[_254 + floor32(mem[_254]) + 32] and !(256^(-(mem[_254] % 32) + 32) - 1)
            _368 = sha3(mem[mem[64] len _253 + _255 + -mem[64] + 299])
            _370 = mem[mem[_249 + 320]]
            t = mem[_249 + 320] + 32
            u = mem[64]
            s = mem[mem[_249 + 320]]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[_249 + 320]])] = 256^(-(mem[mem[_249 + 320]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[_249 + 320]])] or mem[mem[_249 + 320] + floor32(mem[mem[_249 + 320]]) + 32] and !(256^(-(mem[mem[_249 + 320]] % 32) + 32) - 1)
            _475 = sha3(mem[mem[64] len _370])
            _477 = mem[mem[_249 + 352]]
            t = mem[_249 + 352] + 32
            u = mem[64]
            s = mem[mem[_249 + 352]]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[_249 + 352]])] = mem[mem[64] + floor32(mem[mem[_249 + 352]])] and 256^(-(mem[mem[_249 + 352]] % 32) + 32) - 1 or mem[mem[_249 + 352] + floor32(mem[mem[_249 + 352]]) + 32] and !(256^(-(mem[mem[_249 + 352]] % 32) + 32) - 1)
            _575 = sha3(_368, mem[_249 len 320], _475, sha3(mem[mem[64] len _477]))
            mem[mem[64]] = 0x1901000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 2] = EIP712_DOMAIN_HASH
            mem[mem[64] + 34] = _575
            mem[_250 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _575)
            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _575)
            mem[32] = 4
            mem[_250 + 64] = filled[6401][uint256(stor2.field_0)][_575]
            if not mem[_249 + 128]:
                mem[_250] = 1
            else:
                if not mem[_249 + 160]:
                    mem[_250] = 2
                else:
                    if filled[6401][uint256(stor2.field_0)][_575] >= mem[_249 + 160]:
                        mem[_250] = 5
                    else:
                        if block.timestamp >= mem[_249 + 256]:
                            mem[_250] = 4
                        else:
                            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _575)
                            mem[32] = 5
                            if stor5[6401][uint256(stor2.field_0)][_575]:
                                mem[_250] = 6
                            else:
                                _619 = mem[_249 + 288]
                                mem[0] = mem[_249 + 12 len 20]
                                _621 = sha3(mem[0], 6)
                                mem[0] = mem[_249 + 108 len 20]
                                mem[32] = _621
                                if stor[_621][mem[0]] <= _619:
                                    mem[_250] = 3
                                else:
                                    mem[_250] = 6
            require idx < mem[_125]
            mem[_125 + (32 * idx) + 32] = _250
            idx = idx + 1
            continue 
        _248 = mem[64]
        mem[mem[64]] = 32
        _251 = mem[_125]
        mem[mem[64] + 32] = mem[_125]
        idx = 0
        s = _125 + 32
        t = mem[64] + 64
        while idx < _251:
            _364 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_364 + 32]
            mem[t + 64] = mem[_364 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _248 + (96 * _251) + -mem[64] + 64
    mem[64] = _125 + (32 * _124) + 128
    mem[_125 + (32 * _124) + 32] = 0
    mem[_125 + (32 * _124) + 64] = 0
    mem[_125 + (32 * _124) + 96] = 0
    mem[var24001] = _125 + (32 * _124) + 32
    s = var24001
    idx = var24002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_125 + (32 * _124) + 32] = 0
        mem[_125 + (32 * _124) + 64] = 0
        mem[_125 + (32 * _124) + 96] = 0
        mem[s + 32] = _125 + (32 * _124) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while _124 != idx:
        require idx < mem[96]
        _481 = mem[(32 * idx) + 128]
        _491 = mem[64]
        mem[64] = mem[64] + 96
        mem[_491] = 0
        mem[_491 + 32] = 0
        mem[_491 + 64] = 0
        _497 = mem[64]
        mem[mem[64] + 32] = 'Order('
        mem[mem[64] + 38] = 'address makerAddress,'
        mem[mem[64] + 59] = 'address takerAddress,'
        mem[mem[64] + 80] = 'address feeRecipientAddress,'
        mem[mem[64] + 108] = 'address senderAddress,'
        mem[mem[64] + 130] = 'uint256 makerAssetAmount,'
        mem[mem[64] + 155] = 'uint256 takerAssetAmount,'
        mem[mem[64] + 180] = 'uint256 makerFee,'
        mem[mem[64] + 197] = 'uint256 takerFee,'
        mem[mem[64] + 214] = 'uint256 expirationTimeSeconds,'
        mem[mem[64] + 244] = 'uint256 salt,'
        mem[mem[64] + 257] = 'bytes makerAssetData,'
        mem[mem[64] + 278] = 'bytes takerAssetData'
        mem[mem[64] + 298] = ')'
        _498 = mem[64]
        mem[mem[64]] = 267
        mem[64] = mem[64] + 299
        _499 = mem[_498]
        t = _498 + 32
        u = _497 + 299
        s = mem[_498]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_497 + floor32(mem[_498]) + 299] = 256^(-(mem[_498] % 32) + 32) - 1 and mem[_497 + floor32(mem[_498]) + 299] or mem[_498 + floor32(mem[_498]) + 32] and !(256^(-(mem[_498] % 32) + 32) - 1)
        _581 = sha3(mem[mem[64] len _497 + _499 + -mem[64] + 299])
        _583 = mem[mem[_481 + 320]]
        t = mem[_481 + 320] + 32
        u = mem[64]
        s = mem[mem[_481 + 320]]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[mem[_481 + 320]])] = 256^(-(mem[mem[_481 + 320]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[_481 + 320]])] or mem[mem[_481 + 320] + floor32(mem[mem[_481 + 320]]) + 32] and !(256^(-(mem[mem[_481 + 320]] % 32) + 32) - 1)
        _651 = mem[64]
        _652 = sha3(mem[mem[64] len _583])
        _654 = mem[mem[_481 + 352]]
        t = mem[_481 + 352] + 32
        u = mem[64]
        s = mem[mem[_481 + 352]]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[mem[_481 + 352]])] = mem[mem[64] + floor32(mem[mem[_481 + 352]])] and 256^(-(mem[mem[_481 + 352]] % 32) + 32) - 1 or mem[mem[_481 + 352] + floor32(mem[mem[_481 + 352]]) + 32] and !(256^(-(mem[mem[_481 + 352]] % 32) + 32) - 1)
        _694 = sha3(_581, mem[_481 len 320], _652, sha3(mem[mem[64] len _651 + _654 - mem[64]]))
        mem[mem[64]] = 0x1901000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 2] = EIP712_DOMAIN_HASH
        mem[mem[64] + 34] = _694
        mem[_491 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _694)
        mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _694)
        mem[32] = 4
        mem[_491 + 64] = filled[6401][uint256(stor2.field_0)][_694]
        if not mem[_481 + 128]:
            mem[_491] = 1
        else:
            if not mem[_481 + 160]:
                mem[_491] = 2
            else:
                if filled[6401][uint256(stor2.field_0)][_694] >= mem[_481 + 160]:
                    mem[_491] = 5
                else:
                    if block.timestamp >= mem[_481 + 256]:
                        mem[_491] = 4
                    else:
                        mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _694)
                        mem[32] = 5
                        if stor5[6401][uint256(stor2.field_0)][_694]:
                            mem[_491] = 6
                        else:
                            _707 = mem[_481 + 288]
                            mem[0] = mem[_481 + 12 len 20]
                            _709 = sha3(mem[0], 6)
                            mem[0] = mem[_481 + 108 len 20]
                            mem[32] = _709
                            if stor[_709][mem[0]] <= _707:
                                mem[_491] = 3
                            else:
                                mem[_491] = 6
        require idx < mem[_125]
        mem[_125 + (32 * idx) + 32] = _491
        idx = idx + 1
        continue 
    _480 = mem[64]
    mem[mem[64]] = 32
    _494 = mem[_125]
    mem[mem[64] + 32] = mem[_125]
    idx = 0
    s = _125 + 32
    t = mem[64] + 64
    while idx < _494:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _480 + (96 * _494) + -mem[64] + 64
}

function fillOrderNoThrow(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size + -arg1 - 4 >= 384
    mem[96] = address(arg1.length)
    require cd[(arg1 + 324)] <= test266151307()
    require calldata.size > arg1 + cd[(arg1 + 324)] + 35
    require cd[(arg1 + cd[(arg1 + 324)] + 4)] <= test266151307()
    require ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512 >= 480 and ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512 <= test266151307()
    require arg1 + cd[(arg1 + 324)] + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 36 <= calldata.size
    mem[512 len cd[(arg1 + cd[(arg1 + 324)] + 4)]] = call.data[arg1 + cd[(arg1 + 324)] + 36 len cd[(arg1 + cd[(arg1 + 324)] + 4)]]
    mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 512] = 0
    require cd[(arg1 + 356)] <= test266151307()
    require calldata.size > arg1 + cd[(arg1 + 356)] + 35
    require cd[(arg1 + cd[(arg1 + 356)] + 4)] <= test266151307()
    require ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 544 >= 512 and ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 544 <= test266151307()
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512] = cd[(arg1 + cd[(arg1 + 356)] + 4)]
    require arg1 + cd[(arg1 + 356)] + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544 len cd[(arg1 + cd[(arg1 + 356)] + 4)]] = call.data[arg1 + cd[(arg1 + 356)] + 36 len cd[(arg1 + cd[(arg1 + 356)] + 4)]]
    mem[cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544] = 0
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 576 >= 544 and ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 576 <= test266151307()
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 544] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 576 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 576] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 576] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 608] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 640] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 672] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 736] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 740] = 96
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 836] = address(arg1.length)
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 868] = address(cd[(arg1 + 36)])
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 900] = address(cd[(arg1 + 68)])
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 932] = address(cd[(arg1 + 100)])
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 964] = cd[(arg1 + 132)]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 996] = cd[(arg1 + 164)]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1028] = cd[(arg1 + 196)]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1060] = cd[(arg1 + 228)]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1092] = cd[(arg1 + 260)]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1124] = cd[(arg1 + 292)]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1156] = 384
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1220] = cd[(arg1 + cd[(arg1 + 324)] + 4)]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1252 len ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])] = call.data[arg1 + cd[(arg1 + 324)] + 36 len cd[(arg1 + cd[(arg1 + 324)] + 4)]], mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 512 len ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) - cd[(arg1 + cd[(arg1 + 324)] + 4)]]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1188] = ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 416
    _45 = Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]
    mem[(2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1252] = Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]
    mem[(2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 1284 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])])] = mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])])]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 772] = arg2
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 804] = ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 544
    _67 = Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])]
    mem[(2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 1284] = Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])]
    mem[(2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 1316 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])])] = mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 576 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])])]
    mem[64] = (2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])]) + 1316
    delegate this.address.0xb4be83d5 with:
         gas gas_remaining wei
        args mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 740 len ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])]) + 576]
    if not delegate.return_code:
        _93 = (2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])]) + 1316
        mem[(2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])]) + 1316] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + arg3.length + 608 len -arg3.length + ceil32(arg3.length)]
        mem[_93 + 32] = 0
        mem[_93 + 64] = 0
        mem[_93 + 96] = 0
        return memory
          from (2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + ceil32(_45) + ceil32(_67) + 1316
           len _93 + (-2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + -ceil32(arg3.length) + -ceil32(_45) + -ceil32(_67) - 1188
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + 576] = delegate.return_data[0]
    _94 = (2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])]) + 1316
    mem[(2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 576 len -cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)])]) + 1316] = delegate.return_data[0]
    mem[_94 + 32] = delegate.return_data[32]
    mem[_94 + 64] = delegate.return_data[64]
    mem[_94 + 96] = delegate.return_data[96]
    return memory
      from (2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + ceil32(arg3.length) + ceil32(_45) + ceil32(_67) + 1316
       len _94 + (-2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + -ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + -ceil32(arg3.length) + -ceil32(_45) + -ceil32(_67) - 1188
}

function sub_ed133d50(?) {
    require calldata.size - 4 >= 352
    require calldata.size > 35
    require 132 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 4:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 163
    require 324 <= calldata.size
    idx = 0
    s = 132
    t = 224
    while idx < 6:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[324] <= test266151307()
    require calldata.size > cd[324] + 35
    mem[64] = 480
    idx = 0
    s = cd[324] + 4
    t = 416
    while idx < 2:
        require calldata.size > cd[324] + cd[s] + 35
        require cd[(cd[324] + cd[s] + 4)] <= test266151307()
        _6 = mem[64]
        require mem[64] + ceil32(cd[(cd[324] + cd[s] + 4)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[324] + cd[s] + 4)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[324] + cd[s] + 4)]) + 32
        mem[_6] = cd[(cd[324] + cd[s] + 4)]
        require cd[324] + cd[s] + cd[(cd[324] + cd[s] + 4)] + 36 <= calldata.size
        mem[_6 + 32 len cd[(cd[324] + cd[s] + 4)]] = call.data[cd[324] + cd[s] + 36 len cd[(cd[324] + cd[s] + 4)]]
        mem[cd[(cd[324] + cd[s] + 4)] + _6 + 32] = 0
        mem[t] = _6
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _5 = mem[64]
    mem[64] = mem[64] + 384
    mem[_5] = 0
    mem[_5 + 32] = 0
    mem[_5 + 64] = 0
    mem[_5 + 96] = 0
    mem[_5 + 128] = 0
    mem[_5 + 160] = 0
    mem[_5 + 192] = 0
    mem[_5 + 224] = 0
    mem[_5 + 256] = 0
    mem[_5 + 288] = 0
    mem[_5 + 320] = 96
    mem[_5 + 352] = 96
    _7 = mem[64]
    mem[64] = mem[64] + 384
    mem[_7] = 0
    mem[_7 + 32] = 0
    mem[_7 + 64] = 0
    mem[_7 + 96] = 0
    mem[_7 + 128] = 0
    mem[_7 + 160] = 0
    mem[_7 + 192] = 0
    mem[_7 + 224] = 0
    mem[_7 + 256] = 0
    mem[_7 + 288] = 0
    mem[_7 + 320] = 96
    mem[_7 + 352] = 96
    _8 = mem[64]
    mem[64] = mem[64] + 384
    mem[_8] = mem[108 len 20]
    mem[_8 + 32] = mem[140 len 20]
    mem[_8 + 64] = mem[172 len 20]
    mem[_8 + 96] = mem[204 len 20]
    mem[_8 + 128] = mem[224]
    mem[_8 + 160] = mem[256]
    mem[_8 + 192] = mem[288]
    mem[_8 + 224] = mem[320]
    mem[_8 + 256] = mem[352]
    mem[_8 + 288] = mem[384]
    mem[_8 + 320] = mem[416]
    mem[_8 + 352] = mem[448]
    if stor0:
        revert with 0, 'REENTRANCY_ILLEGAL'
    stor0 = 1
    _22 = mem[64]
    mem[64] = mem[64] + 96
    mem[_22] = 0
    mem[_22 + 32] = 0
    mem[_22 + 64] = 0
    _24 = mem[64]
    mem[64] = mem[64] + 96
    mem[_24] = 0
    mem[_24 + 32] = 0
    mem[_24 + 64] = 0
    _25 = mem[64]
    mem[mem[64] + 32] = 'Order('
    mem[mem[64] + 38] = 'address makerAddress,'
    mem[mem[64] + 59] = 'address takerAddress,'
    mem[mem[64] + 80] = 'address feeRecipientAddress,'
    mem[mem[64] + 108] = 'address senderAddress,'
    mem[mem[64] + 130] = 'uint256 makerAssetAmount,'
    mem[mem[64] + 155] = 'uint256 takerAssetAmount,'
    mem[mem[64] + 180] = 'uint256 makerFee,'
    mem[mem[64] + 197] = 'uint256 takerFee,'
    mem[mem[64] + 214] = 'uint256 expirationTimeSeconds,'
    mem[mem[64] + 244] = 'uint256 salt,'
    mem[mem[64] + 257] = 'bytes makerAssetData,'
    mem[mem[64] + 278] = 'bytes takerAssetData'
    mem[mem[64] + 298] = ')'
    _26 = mem[64]
    mem[mem[64]] = 267
    mem[64] = mem[64] + 299
    _27 = mem[_26]
    mem[_25 + 299 len floor32(mem[_26])] = mem[_26 + 32 len floor32(mem[_26])]
    mem[_25 + floor32(mem[_26]) + 299] = 256^(-(mem[_26] % 32) + 32) - 1 and mem[_25 + floor32(mem[_26]) + 299] or mem[_26 + floor32(mem[_26]) + 32] and !(256^(-(mem[_26] % 32) + 32) - 1)
    _678 = sha3(mem[_25 + 299 len _27])
    _680 = mem[mem[_8 + 320]]
    mem[_25 + 299 len floor32(mem[mem[_8 + 320]])] = mem[mem[_8 + 320] + 32 len floor32(mem[mem[_8 + 320]])]
    mem[_25 + floor32(mem[mem[_8 + 320]]) + 299] = 256^(-(mem[mem[_8 + 320]] % 32) + 32) - 1 and mem[_25 + floor32(mem[mem[_8 + 320]]) + 299] or mem[mem[_8 + 320] + floor32(mem[mem[_8 + 320]]) + 32] and !(256^(-(mem[mem[_8 + 320]] % 32) + 32) - 1)
    _1325 = sha3(mem[_25 + 299 len _680])
    _1327 = mem[mem[_8 + 352]]
    mem[_25 + 299 len floor32(mem[mem[_8 + 352]])] = mem[mem[_8 + 352] + 32 len floor32(mem[mem[_8 + 352]])]
    mem[_25 + floor32(mem[mem[_8 + 352]]) + 299] = mem[_25 + floor32(mem[mem[_8 + 352]]) + 299] and 256^(-(mem[mem[_8 + 352]] % 32) + 32) - 1 or mem[mem[_8 + 352] + floor32(mem[mem[_8 + 352]]) + 32] and !(256^(-(mem[mem[_8 + 352]] % 32) + 32) - 1)
    _1967 = mem[_8 + 320]
    _1968 = mem[_8 + 352]
    _1969 = sha3(_678, mem[_8 len 320], _1325, sha3(mem[_25 + 299 len _1327]))
    mem[_25 + 299] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[_25 + 301] = EIP712_DOMAIN_HASH
    mem[_25 + 333] = _1969
    mem[_24 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _1969)
    mem[_24 + 64] = filled[6401][uint256(stor2.field_0)][_1969]
    if not mem[_8 + 128]:
        revert with 0, 'ORDER_UNFILLABLE'
    if not mem[_8 + 160]:
        revert with 0, 'ORDER_UNFILLABLE'
    if filled[6401][uint256(stor2.field_0)][_1969] >= mem[_8 + 160]:
        revert with 0, 'ORDER_UNFILLABLE'
    if block.timestamp >= mem[_8 + 256]:
        revert with 0, 'ORDER_UNFILLABLE'
    mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _1969)
    mem[32] = 5
    if stor5[6401][uint256(stor2.field_0)][_1969]:
        revert with 0, 'ORDER_UNFILLABLE'
    _1981 = mem[_8 + 288]
    mem[0] = mem[_8 + 12 len 20]
    _1983 = sha3(mem[0], 6)
    mem[0] = mem[_8 + 108 len 20]
    mem[32] = _1983
    if stor[_1983][mem[0]] > _1981:
        revert with 0, 'ORDER_UNFILLABLE'
    mem[_24] = 3
    if not mem[_8 + 108 len 20]:
        if not currentContextAddress:
            if mem[_8 + 12 len 20] != msg.sender:
                revert with 0, 'INVALID_MAKER'
            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _1969)
            mem[32] = 5
            stor5[6401][uint256(stor2.field_0)][_1969] = 1
            _2161 = mem[_8 + 64]
            _2162 = mem[_8]
            mem[_25 + 299] = msg.sender
            mem[_25 + 331] = 96
            _2325 = mem[_1967]
            mem[_25 + 395] = mem[_1967]
            mem[_25 + 427 len ceil32(_2325)] = mem[_1967 + 32 len ceil32(_2325)]
            if ceil32(_2325) <= _2325:
                mem[_25 + 363] = ceil32(_2325) + 128
                _2623 = mem[_1968]
                mem[_25 + ceil32(_2325) + 427] = mem[_1968]
                mem[_25 + ceil32(_2325) + 459 len ceil32(_2623)] = mem[_1968 + 32 len ceil32(_2623)]
                if ceil32(_2623) > _2623:
                    mem[_2623 + _25 + ceil32(_2325) + 459] = 0
                emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                            msg.sender,
                            96,
                            ceil32(_2325) + 128,
                            mem[_25 + 395 len ceil32(_2325) + ceil32(_2623) + 64],
                            address(_2162),
                            address(_2161),
                            sha3(6401, EIP712_DOMAIN_HASH, _1969),
            else:
                mem[_2325 + _25 + 427] = 0
                mem[_25 + 363] = ceil32(_2325) + 128
                _2624 = mem[_1968]
                mem[_25 + ceil32(_2325) + 427] = mem[_1968]
                mem[_25 + ceil32(_2325) + 459 len ceil32(_2624)] = mem[_1968 + 32 len ceil32(_2624)]
                if ceil32(_2624) > _2624:
                    mem[_2624 + _25 + ceil32(_2325) + 459] = 0
                emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                            msg.sender,
                            96,
                            ceil32(_2325) + 128,
                            mem[_25 + 395 len _2325 + 32],
                            0,
                            mem[_25 + _2325 + 459 len ceil32(_2325) + ceil32(_2624) - _2325],
                            address(_2162),
                            address(_2161),
                            sha3(6401, EIP712_DOMAIN_HASH, _1969),
        else:
            if mem[_8 + 12 len 20] != currentContextAddress:
                revert with 0, 'INVALID_MAKER'
            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _1969)
            mem[32] = 5
            stor5[6401][uint256(stor2.field_0)][_1969] = 1
            _2167 = mem[_8 + 64]
            _2168 = mem[_8]
            mem[_25 + 299] = msg.sender
            mem[_25 + 331] = 96
            _2326 = mem[_1967]
            mem[_25 + 395] = mem[_1967]
            mem[_25 + 427 len ceil32(_2326)] = mem[_1967 + 32 len ceil32(_2326)]
            if ceil32(_2326) <= _2326:
                mem[_25 + 363] = ceil32(_2326) + 128
                _2625 = mem[_1968]
                mem[_25 + ceil32(_2326) + 427] = mem[_1968]
                mem[_25 + ceil32(_2326) + 459 len ceil32(_2625)] = mem[_1968 + 32 len ceil32(_2625)]
                if ceil32(_2625) > _2625:
                    mem[_2625 + _25 + ceil32(_2326) + 459] = 0
                emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                            msg.sender,
                            96,
                            ceil32(_2326) + 128,
                            mem[_25 + 395 len ceil32(_2326) + ceil32(_2625) + 64],
                            address(_2168),
                            address(_2167),
                            sha3(6401, EIP712_DOMAIN_HASH, _1969),
            else:
                mem[_2326 + _25 + 427] = 0
                mem[_25 + 363] = ceil32(_2326) + 128
                _2626 = mem[_1968]
                mem[_25 + ceil32(_2326) + 427] = mem[_1968]
                mem[_25 + ceil32(_2326) + 459 len ceil32(_2626)] = mem[_1968 + 32 len ceil32(_2626)]
                if ceil32(_2626) > _2626:
                    mem[_2626 + _25 + ceil32(_2326) + 459] = 0
                emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                            msg.sender,
                            96,
                            ceil32(_2326) + 128,
                            mem[_25 + 395 len _2326 + 32],
                            0,
                            mem[_25 + _2326 + 459 len ceil32(_2326) + ceil32(_2626) - _2326],
                            address(_2168),
                            address(_2167),
                            sha3(6401, EIP712_DOMAIN_HASH, _1969),
    else:
        if mem[_8 + 108 len 20] != msg.sender:
            revert with 0, 'INVALID_SENDER'
        if not currentContextAddress:
            if mem[_8 + 12 len 20] != msg.sender:
                revert with 0, 'INVALID_MAKER'
            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _1969)
            mem[32] = 5
            stor5[6401][uint256(stor2.field_0)][_1969] = 1
            _2214 = mem[_8 + 64]
            _2215 = mem[_8]
            mem[_25 + 299] = msg.sender
            mem[_25 + 331] = 96
            _2331 = mem[_1967]
            mem[_25 + 395] = mem[_1967]
            mem[_25 + 427 len ceil32(_2331)] = mem[_1967 + 32 len ceil32(_2331)]
            if ceil32(_2331) <= _2331:
                mem[_25 + 363] = ceil32(_2331) + 128
                _2627 = mem[_1968]
                mem[_25 + ceil32(_2331) + 427] = mem[_1968]
                mem[_25 + ceil32(_2331) + 459 len ceil32(_2627)] = mem[_1968 + 32 len ceil32(_2627)]
                if ceil32(_2627) > _2627:
                    mem[_2627 + _25 + ceil32(_2331) + 459] = 0
                emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                            msg.sender,
                            96,
                            ceil32(_2331) + 128,
                            mem[_25 + 395 len ceil32(_2331) + ceil32(_2627) + 64],
                            address(_2215),
                            address(_2214),
                            sha3(6401, EIP712_DOMAIN_HASH, _1969),
            else:
                mem[_2331 + _25 + 427] = 0
                mem[_25 + 363] = ceil32(_2331) + 128
                _2628 = mem[_1968]
                mem[_25 + ceil32(_2331) + 427] = mem[_1968]
                mem[_25 + ceil32(_2331) + 459 len ceil32(_2628)] = mem[_1968 + 32 len ceil32(_2628)]
                if ceil32(_2628) > _2628:
                    mem[_2628 + _25 + ceil32(_2331) + 459] = 0
                emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                            msg.sender,
                            96,
                            ceil32(_2331) + 128,
                            mem[_25 + 395 len _2331 + 32],
                            0,
                            mem[_25 + _2331 + 459 len ceil32(_2331) + ceil32(_2628) - _2331],
                            address(_2215),
                            address(_2214),
                            sha3(6401, EIP712_DOMAIN_HASH, _1969),
        else:
            if mem[_8 + 12 len 20] != currentContextAddress:
                revert with 0, 'INVALID_MAKER'
            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _1969)
            mem[32] = 5
            stor5[6401][uint256(stor2.field_0)][_1969] = 1
            _2220 = mem[_8 + 64]
            _2221 = mem[_8]
            mem[_25 + 299] = msg.sender
            mem[_25 + 331] = 96
            _2332 = mem[_1967]
            mem[_25 + 395] = mem[_1967]
            mem[_25 + 427 len ceil32(_2332)] = mem[_1967 + 32 len ceil32(_2332)]
            if ceil32(_2332) <= _2332:
                mem[_25 + 363] = ceil32(_2332) + 128
                _2629 = mem[_1968]
                mem[_25 + ceil32(_2332) + 427] = mem[_1968]
                mem[_25 + ceil32(_2332) + 459 len ceil32(_2629)] = mem[_1968 + 32 len ceil32(_2629)]
                if ceil32(_2629) > _2629:
                    mem[_2629 + _25 + ceil32(_2332) + 459] = 0
                emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                            msg.sender,
                            96,
                            ceil32(_2332) + 128,
                            mem[_25 + 395 len ceil32(_2332) + ceil32(_2629) + 64],
                            address(_2221),
                            address(_2220),
                            sha3(6401, EIP712_DOMAIN_HASH, _1969),
            else:
                mem[_2332 + _25 + 427] = 0
                mem[_25 + 363] = ceil32(_2332) + 128
                _2630 = mem[_1968]
                mem[_25 + ceil32(_2332) + 427] = mem[_1968]
                mem[_25 + ceil32(_2332) + 459 len ceil32(_2630)] = mem[_1968 + 32 len ceil32(_2630)]
                if ceil32(_2630) > _2630:
                    mem[_2630 + _25 + ceil32(_2332) + 459] = 0
                emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                            msg.sender,
                            96,
                            ceil32(_2332) + 128,
                            mem[_25 + 395 len _2332 + 32],
                            0,
                            mem[_25 + _2332 + 459 len ceil32(_2332) + ceil32(_2630) - _2332],
                            address(_2221),
                            address(_2220),
                            sha3(6401, EIP712_DOMAIN_HASH, _1969),
    stor0 = 0
}

function marketBuyOrdersNoThrow(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256 arg13, bytes[] arg14) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 384
        _188 = mem[64]
        require mem[64] + 384 >= mem[64] and mem[64] + 384 <= test266151307()
        mem[64] = mem[64] + 384
        mem[_188] = address(cd[(arg1 + cd[s] + 36)])
        mem[_188 + 32] = address(cd[(arg1 + cd[s] + 68)])
        mem[_188 + 64] = address(cd[(arg1 + cd[s] + 100)])
        mem[_188 + 96] = address(cd[(arg1 + cd[s] + 132)])
        mem[_188 + 128] = cd[(arg1 + cd[s] + 164)]
        mem[_188 + 160] = cd[(arg1 + cd[s] + 196)]
        mem[_188 + 192] = cd[(arg1 + cd[s] + 228)]
        mem[_188 + 224] = cd[(arg1 + cd[s] + 260)]
        mem[_188 + 256] = cd[(arg1 + cd[s] + 292)]
        mem[_188 + 288] = cd[(arg1 + cd[s] + 324)]
        require cd[(arg1 + cd[s] + 356)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] <= test266151307()
        _261 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32
        mem[_261] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + 68 <= calldata.size
        mem[_261 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + _261 + 32] = 0
        mem[_188 + 320] = _261
        require cd[(arg1 + cd[s] + 388)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] <= test266151307()
        _297 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32
        mem[_297] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + 68 <= calldata.size
        mem[_297 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + _297 + 32] = 0
        mem[_188 + 352] = _297
        mem[t] = _188
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    _189 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 >= mem[64] and mem[64] + (32 * arg3.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_189] = arg3.length
    idx = 0
    s = arg3 + 36
    t = _189 + 32
    while idx < arg3.length:
        require calldata.size > arg3 + cd[s] + 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        _376 = mem[64]
        require mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        mem[_376] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_376 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[cd[(arg3 + cd[s] + 36)] + _376 + 32] = 0
        mem[t] = _376
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _374 = mem[64]
    mem[64] = mem[64] + 128
    mem[_374] = 0
    mem[_374 + 32] = 0
    mem[_374 + 64] = 0
    mem[_374 + 96] = 0
    _375 = mem[64]
    mem[64] = mem[64] + 128
    mem[_375] = 0
    mem[_375 + 32] = 0
    mem[_375 + 64] = 0
    mem[_375 + 96] = 0
    require 0 < mem[96]
    _379 = mem[mem[128] + 320]
    _380 = mem[96]
    s = _375
    s = 0
    s = 0
    idx = 0
    while _380 != idx:
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 320] = _379
        _559 = mem[_374]
        if mem[_374] > arg2:
            revert with 0, 'UINT256_UNDERFLOW'
        require idx < mem[96]
        _564 = mem[mem[(32 * idx) + 128] + 160]
        require idx < mem[96]
        _568 = mem[mem[(32 * idx) + 128] + 128]
        if mem[mem[(32 * idx) + 128] + 128] <= 0:
            revert with 0, 'DIVISION_BY_ZERO'
        if not mem[mem[(32 * idx) + 128] + 160]:
            require mem[mem[(32 * idx) + 128] + 128]
            require idx < mem[96]
            _577 = mem[(32 * idx) + 128]
            require idx < mem[_189]
            _580 = mem[(32 * idx) + _189 + 32]
            _585 = mem[64]
            mem[64] = mem[64] + 128
            mem[_585] = 0
            mem[_585 + 32] = 0
            mem[_585 + 64] = 0
            mem[_585 + 96] = 0
            _587 = mem[64]
            mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 96
            mem[mem[64] + 132] = mem[_577]
            mem[mem[64] + 164] = mem[_577 + 32]
            mem[mem[64] + 196] = mem[_577 + 64]
            mem[mem[64] + 228] = mem[_577 + 96]
            mem[mem[64] + 260] = mem[_577 + 128]
            mem[mem[64] + 292] = mem[_577 + 160]
            mem[mem[64] + 324] = mem[_577 + 192]
            mem[mem[64] + 356] = mem[_577 + 224]
            mem[mem[64] + 388] = mem[_577 + 256]
            mem[mem[64] + 420] = mem[_577 + 288]
            mem[mem[64] + 452] = mem[_577 + 320]
            mem[mem[64] + 484] = mem[_577 + 352]
            mem[mem[64] + 452] = 384
            _600 = mem[_577 + 320]
            _601 = mem[mem[_577 + 320]]
            mem[mem[64] + 516] = mem[mem[_577 + 320]]
            s = 0
            t = _600 + 32
            u = mem[64] + 548
            while s < _601 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_587 + 484] = ceil32(_601) + 416
            _734 = mem[_577 + 352]
            _735 = mem[mem[_577 + 352]]
            mem[_587 + ceil32(_601) + 548] = mem[mem[_577 + 352]]
            s = 0
            t = _734 + 32
            u = _587 + ceil32(_601) + 580
            while s < _735 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_587 + 68] = 0 / _568
            mem[_587 + 100] = ceil32(_601) + ceil32(_735) + 544
            _847 = mem[_580]
            mem[_587 + ceil32(_601) + ceil32(_735) + 580] = mem[_580]
            s = 0
            t = _580 + 32
            u = _587 + ceil32(_601) + ceil32(_735) + 612
            while s < _847 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[64] = _587 + ceil32(_601) + ceil32(_735) + ceil32(_847) + 612
            delegate this.address.mem[_587 + 32 len 4] with:
                 gas gas_remaining wei
                args mem[_587 + 36], 0 / _568, ceil32(_601) + ceil32(_735) + 544, mem[_587 + 132 len 352], ceil32(_601) + 416, mem[_587 + 516 len ceil32(_601) + ceil32(_735) + ceil32(_847) + 96]
            mem[_587 len 128] = delegate.return_data[0 len 128]
            if not delegate.return_code:
                if mem[_585] + mem[_374] < mem[_374]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_374] = mem[_585] + mem[_374]
                if mem[_585 + 32] + mem[_374 + 32] < mem[_374 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_374 + 32] = mem[_585 + 32] + mem[_374 + 32]
                if mem[_585 + 64] + mem[_374 + 64] < mem[_374 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_374 + 64] = mem[_585 + 64] + mem[_374 + 64]
                if mem[_585 + 96] + mem[_374 + 96] < mem[_374 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_374 + 96] = mem[_585 + 96] + mem[_374 + 96]
            else:
                mem[_585] = delegate.return_data[0]
                mem[_585 + 32] = delegate.return_data[32]
                mem[_585 + 64] = delegate.return_data[64]
                mem[_585 + 96] = delegate.return_data[96]
                if delegate.return_data[0] + mem[_374] < mem[_374]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_374] = delegate.return_data[0] + mem[_374]
                if delegate.return_data[32] + mem[_374 + 32] < mem[_374 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_374 + 32] = delegate.return_data[32] + mem[_374 + 32]
                if delegate.return_data[64] + mem[_374 + 64] < mem[_374 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_374 + 64] = delegate.return_data[64] + mem[_374 + 64]
                if delegate.return_data[96] + mem[_374 + 96] < mem[_374 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_374 + 96] = delegate.return_data[96] + mem[_374 + 96]
            if arg2 > mem[_374]:
                s = _585
                s = 0 / _568
                s = arg2 - _559
                idx = idx + 1
                continue 
            mem[_587 + ceil32(_601) + ceil32(_735) + ceil32(_847) + 612] = mem[_374]
            mem[_587 + ceil32(_601) + ceil32(_735) + ceil32(_847) + 644] = mem[_374 + 32]
            mem[_587 + ceil32(_601) + ceil32(_735) + ceil32(_847) + 676] = mem[_374 + 64]
            mem[_587 + ceil32(_601) + ceil32(_735) + ceil32(_847) + 708] = mem[_374 + 96]
            return memory
              from _587 + ceil32(_601) + ceil32(_735) + ceil32(_847) + 612
               len 128
        if (arg2 * mem[mem[(32 * idx) + 128] + 160]) - (mem[_374] * mem[mem[(32 * idx) + 128] + 160]) / mem[mem[(32 * idx) + 128] + 160] != arg2 - mem[_374]:
            revert with 0, 'UINT256_OVERFLOW'
        require mem[mem[(32 * idx) + 128] + 128]
        require idx < mem[96]
        _581 = mem[(32 * idx) + 128]
        require idx < mem[_189]
        _584 = mem[(32 * idx) + _189 + 32]
        _586 = mem[64]
        mem[64] = mem[64] + 128
        mem[_586] = 0
        mem[_586 + 32] = 0
        mem[_586 + 64] = 0
        mem[_586 + 96] = 0
        _602 = mem[64]
        mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = 96
        mem[mem[64] + 132] = mem[_581]
        mem[mem[64] + 164] = mem[_581 + 32]
        mem[mem[64] + 196] = mem[_581 + 64]
        mem[mem[64] + 228] = mem[_581 + 96]
        mem[mem[64] + 260] = mem[_581 + 128]
        mem[mem[64] + 292] = mem[_581 + 160]
        mem[mem[64] + 324] = mem[_581 + 192]
        mem[mem[64] + 356] = mem[_581 + 224]
        mem[mem[64] + 388] = mem[_581 + 256]
        mem[mem[64] + 420] = mem[_581 + 288]
        mem[mem[64] + 452] = mem[_581 + 320]
        mem[mem[64] + 484] = mem[_581 + 352]
        mem[mem[64] + 452] = 384
        _615 = mem[_581 + 320]
        _616 = mem[mem[_581 + 320]]
        mem[mem[64] + 516] = mem[mem[_581 + 320]]
        s = 0
        t = _615 + 32
        u = mem[64] + 548
        while s < _616 + 31 / 32:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_602 + 484] = ceil32(_616) + 416
        _731 = mem[_581 + 352]
        _732 = mem[mem[_581 + 352]]
        mem[_602 + ceil32(_616) + 548] = mem[mem[_581 + 352]]
        s = 0
        t = _731 + 32
        u = _602 + ceil32(_616) + 580
        while s < _732 + 31 / 32:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_602 + 68] = (arg2 * _564) - (_559 * _564) / _568
        mem[_602 + 100] = ceil32(_616) + ceil32(_732) + 544
        _845 = mem[_584]
        mem[_602 + ceil32(_616) + ceil32(_732) + 580] = mem[_584]
        s = 0
        t = _584 + 32
        u = _602 + ceil32(_616) + ceil32(_732) + 612
        while s < _845 + 31 / 32:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[64] = _602 + ceil32(_616) + ceil32(_732) + ceil32(_845) + 612
        delegate this.address.mem[_602 + 32 len 4] with:
             gas gas_remaining wei
            args mem[_602 + 36], (arg2 * _564) - (_559 * _564) / _568, ceil32(_616) + ceil32(_732) + 544, mem[_602 + 132 len 352], ceil32(_616) + 416, mem[_602 + 516 len ceil32(_616) + ceil32(_732) + ceil32(_845) + 96]
        mem[_602 len 128] = delegate.return_data[0 len 128]
        if not delegate.return_code:
            if mem[_586] + mem[_374] < mem[_374]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_374] = mem[_586] + mem[_374]
            if mem[_586 + 32] + mem[_374 + 32] < mem[_374 + 32]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_374 + 32] = mem[_586 + 32] + mem[_374 + 32]
            if mem[_586 + 64] + mem[_374 + 64] < mem[_374 + 64]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_374 + 64] = mem[_586 + 64] + mem[_374 + 64]
            if mem[_586 + 96] + mem[_374 + 96] < mem[_374 + 96]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_374 + 96] = mem[_586 + 96] + mem[_374 + 96]
        else:
            mem[_586] = delegate.return_data[0]
            mem[_586 + 32] = delegate.return_data[32]
            mem[_586 + 64] = delegate.return_data[64]
            mem[_586 + 96] = delegate.return_data[96]
            if delegate.return_data[0] + mem[_374] < mem[_374]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_374] = delegate.return_data[0] + mem[_374]
            if delegate.return_data[32] + mem[_374 + 32] < mem[_374 + 32]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_374 + 32] = delegate.return_data[32] + mem[_374 + 32]
            if delegate.return_data[64] + mem[_374 + 64] < mem[_374 + 64]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_374 + 64] = delegate.return_data[64] + mem[_374 + 64]
            if delegate.return_data[96] + mem[_374 + 96] < mem[_374 + 96]:
                revert with 0, 'UINT256_OVERFLOW'
            mem[_374 + 96] = delegate.return_data[96] + mem[_374 + 96]
        if arg2 > mem[_374]:
            s = _586
            s = (arg2 * _564) - (_559 * _564) / _568
            s = arg2 - _559
            idx = idx + 1
            continue 
        mem[_602 + ceil32(_616) + ceil32(_732) + ceil32(_845) + 612] = mem[_374]
        mem[_602 + ceil32(_616) + ceil32(_732) + ceil32(_845) + 644] = mem[_374 + 32]
        mem[_602 + ceil32(_616) + ceil32(_732) + ceil32(_845) + 676] = mem[_374 + 64]
        mem[_602 + ceil32(_616) + ceil32(_732) + ceil32(_845) + 708] = mem[_374 + 96]
        return memory
          from _602 + ceil32(_616) + ceil32(_732) + ceil32(_845) + 612
           len 128
    mem[mem[64]] = mem[_374]
    mem[mem[64] + 32] = mem[_374 + 32]
    mem[mem[64] + 64] = mem[_374 + 64]
    mem[mem[64] + 96] = mem[_374 + 96]
    return memory
      from mem[64]
       len 128
}

function batchCancelOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 384
        _662 = mem[64]
        require mem[64] + 384 >= mem[64] and mem[64] + 384 <= test266151307()
        mem[64] = mem[64] + 384
        mem[_662] = address(cd[(arg1 + cd[s] + 36)])
        mem[_662 + 32] = address(cd[(arg1 + cd[s] + 68)])
        mem[_662 + 64] = address(cd[(arg1 + cd[s] + 100)])
        mem[_662 + 96] = address(cd[(arg1 + cd[s] + 132)])
        mem[_662 + 128] = cd[(arg1 + cd[s] + 164)]
        mem[_662 + 160] = cd[(arg1 + cd[s] + 196)]
        mem[_662 + 192] = cd[(arg1 + cd[s] + 228)]
        mem[_662 + 224] = cd[(arg1 + cd[s] + 260)]
        mem[_662 + 256] = cd[(arg1 + cd[s] + 292)]
        mem[_662 + 288] = cd[(arg1 + cd[s] + 324)]
        require cd[(arg1 + cd[s] + 356)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] <= test266151307()
        _1078 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]) + 32
        mem[_1078] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + 68 <= calldata.size
        mem[_1078 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 356)] + 36)] + _1078 + 32] = 0
        mem[_662 + 320] = _1078
        require cd[(arg1 + cd[s] + 388)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] <= test266151307()
        _1197 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]) + 32
        mem[_1197] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + 68 <= calldata.size
        mem[_1197 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 388)] + 36)] + _1197 + 32] = 0
        mem[_662 + 352] = _1197
        mem[t] = _662
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0:
        revert with 0, 'REENTRANCY_ILLEGAL'
    stor0 = 1
    _663 = mem[96]
    idx = 0
    while _663 != idx:
        require idx < mem[96]
        _1323 = mem[(32 * idx) + 128]
        _1324 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1324] = 0
        mem[_1324 + 32] = 0
        mem[_1324 + 64] = 0
        _1325 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1325] = 0
        mem[_1325 + 32] = 0
        mem[_1325 + 64] = 0
        _1326 = mem[64]
        mem[mem[64] + 32] = 'Order('
        mem[mem[64] + 38] = 'address makerAddress,'
        mem[mem[64] + 59] = 'address takerAddress,'
        mem[mem[64] + 80] = 'address feeRecipientAddress,'
        mem[mem[64] + 108] = 'address senderAddress,'
        mem[mem[64] + 130] = 'uint256 makerAssetAmount,'
        mem[mem[64] + 155] = 'uint256 takerAssetAmount,'
        mem[mem[64] + 180] = 'uint256 makerFee,'
        mem[mem[64] + 197] = 'uint256 takerFee,'
        mem[mem[64] + 214] = 'uint256 expirationTimeSeconds,'
        mem[mem[64] + 244] = 'uint256 salt,'
        mem[mem[64] + 257] = 'bytes makerAssetData,'
        mem[mem[64] + 278] = 'bytes takerAssetData'
        mem[mem[64] + 298] = ')'
        _1327 = mem[64]
        mem[mem[64]] = 267
        mem[64] = mem[64] + 299
        _1328 = mem[_1327]
        t = _1327 + 32
        u = _1326 + 299
        s = mem[_1327]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_1326 + floor32(mem[_1327]) + 299] = 256^(-(mem[_1327] % 32) + 32) - 1 and mem[_1326 + floor32(mem[_1327]) + 299] or mem[_1327 + floor32(mem[_1327]) + 32] and !(256^(-(mem[_1327] % 32) + 32) - 1)
        _1979 = sha3(mem[mem[64] len _1326 + _1328 + -mem[64] + 299])
        _1981 = mem[mem[_1323 + 320]]
        t = mem[_1323 + 320] + 32
        u = mem[64]
        s = mem[mem[_1323 + 320]]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[mem[_1323 + 320]])] = 256^(-(mem[mem[_1323 + 320]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[_1323 + 320]])] or mem[mem[_1323 + 320] + floor32(mem[mem[_1323 + 320]]) + 32] and !(256^(-(mem[mem[_1323 + 320]] % 32) + 32) - 1)
        _2625 = mem[64]
        _2626 = sha3(mem[mem[64] len _1981])
        _2628 = mem[mem[_1323 + 352]]
        t = mem[_1323 + 352] + 32
        u = mem[64]
        s = mem[mem[_1323 + 352]]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[mem[_1323 + 352]])] = mem[mem[64] + floor32(mem[mem[_1323 + 352]])] and 256^(-(mem[mem[_1323 + 352]] % 32) + 32) - 1 or mem[mem[_1323 + 352] + floor32(mem[mem[_1323 + 352]]) + 32] and !(256^(-(mem[mem[_1323 + 352]] % 32) + 32) - 1)
        _3268 = mem[_1323 + 320]
        _3269 = mem[_1323 + 352]
        _3270 = sha3(_1979, mem[_1323 len 320], _2626, sha3(mem[mem[64] len _2625 + _2628 - mem[64]]))
        mem[mem[64]] = 0x1901000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 2] = EIP712_DOMAIN_HASH
        mem[mem[64] + 34] = _3270
        mem[_1325 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _3270)
        mem[_1325 + 64] = filled[6401][uint256(stor2.field_0)][_3270]
        if not mem[_1323 + 128]:
            revert with 0, 'ORDER_UNFILLABLE'
        if not mem[_1323 + 160]:
            revert with 0, 'ORDER_UNFILLABLE'
        if filled[6401][uint256(stor2.field_0)][_3270] >= mem[_1323 + 160]:
            revert with 0, 'ORDER_UNFILLABLE'
        if block.timestamp >= mem[_1323 + 256]:
            revert with 0, 'ORDER_UNFILLABLE'
        mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3270)
        mem[32] = 5
        if stor5[6401][uint256(stor2.field_0)][_3270]:
            revert with 0, 'ORDER_UNFILLABLE'
        _3282 = mem[_1323 + 288]
        mem[0] = mem[_1323 + 12 len 20]
        _3284 = sha3(mem[0], 6)
        mem[0] = mem[_1323 + 108 len 20]
        mem[32] = _3284
        if stor[_3284][mem[0]] > _3282:
            revert with 0, 'ORDER_UNFILLABLE'
        mem[_1325] = 3
        if not mem[_1323 + 108 len 20]:
            if not currentContextAddress:
                if mem[_1323 + 12 len 20] != msg.sender:
                    revert with 0, 'INVALID_MAKER'
                mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3270)
                mem[32] = 5
                stor5[6401][uint256(stor2.field_0)][_3270] = 1
                _3462 = mem[_1323 + 64]
                _3463 = mem[_1323]
                _3466 = mem[64]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = 96
                _3626 = mem[_3268]
                mem[mem[64] + 96] = mem[_3268]
                s = 0
                while s < _3626:
                    mem[s + mem[64] + 128] = mem[s + _3268 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3626) <= _3626:
                    mem[_3466 + 64] = ceil32(_3626) + 128
                    _3924 = mem[_3269]
                    mem[_3466 + ceil32(_3626) + 128] = mem[_3269]
                    s = 0
                    while s < _3924:
                        mem[s + _3466 + ceil32(_3626) + 160] = mem[s + _3269 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3924) > _3924:
                        mem[_3924 + _3466 + ceil32(_3626) + 160] = 0
                    emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                                mem[mem[64] len _3466 + ceil32(_3626) + ceil32(_3924) + -mem[64] + 160],
                                address(_3463),
                                address(_3462),
                                sha3(6401, EIP712_DOMAIN_HASH, _3270),
                else:
                    mem[_3626 + _3466 + 128] = 0
                    mem[_3466 + 64] = ceil32(_3626) + 128
                    _3925 = mem[_3269]
                    mem[_3466 + ceil32(_3626) + 128] = mem[_3269]
                    s = 0
                    while s < _3925:
                        mem[s + _3466 + ceil32(_3626) + 160] = mem[s + _3269 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3925) > _3925:
                        mem[_3925 + _3466 + ceil32(_3626) + 160] = 0
                    emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                                mem[mem[64] len _3466 + ceil32(_3626) + ceil32(_3925) + -mem[64] + 160],
                                address(_3463),
                                address(_3462),
                                sha3(6401, EIP712_DOMAIN_HASH, _3270),
            else:
                if mem[_1323 + 12 len 20] != currentContextAddress:
                    revert with 0, 'INVALID_MAKER'
                mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3270)
                mem[32] = 5
                stor5[6401][uint256(stor2.field_0)][_3270] = 1
                _3468 = mem[_1323 + 64]
                _3469 = mem[_1323]
                _3472 = mem[64]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = 96
                _3627 = mem[_3268]
                mem[mem[64] + 96] = mem[_3268]
                s = 0
                while s < _3627:
                    mem[s + mem[64] + 128] = mem[s + _3268 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3627) <= _3627:
                    mem[_3472 + 64] = ceil32(_3627) + 128
                    _3926 = mem[_3269]
                    mem[_3472 + ceil32(_3627) + 128] = mem[_3269]
                    s = 0
                    while s < _3926:
                        mem[s + _3472 + ceil32(_3627) + 160] = mem[s + _3269 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3926) > _3926:
                        mem[_3926 + _3472 + ceil32(_3627) + 160] = 0
                    emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                                mem[mem[64] len _3472 + ceil32(_3627) + ceil32(_3926) + -mem[64] + 160],
                                address(_3469),
                                address(_3468),
                                sha3(6401, EIP712_DOMAIN_HASH, _3270),
                else:
                    mem[_3627 + _3472 + 128] = 0
                    mem[_3472 + 64] = ceil32(_3627) + 128
                    _3927 = mem[_3269]
                    mem[_3472 + ceil32(_3627) + 128] = mem[_3269]
                    s = 0
                    while s < _3927:
                        mem[s + _3472 + ceil32(_3627) + 160] = mem[s + _3269 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3927) > _3927:
                        mem[_3927 + _3472 + ceil32(_3627) + 160] = 0
                    emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                                mem[mem[64] len _3472 + ceil32(_3627) + ceil32(_3927) + -mem[64] + 160],
                                address(_3469),
                                address(_3468),
                                sha3(6401, EIP712_DOMAIN_HASH, _3270),
            idx = idx + 1
            continue 
        if mem[_1323 + 108 len 20] != msg.sender:
            revert with 0, 'INVALID_SENDER'
        if not currentContextAddress:
            if mem[_1323 + 12 len 20] != msg.sender:
                revert with 0, 'INVALID_MAKER'
            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3270)
            mem[32] = 5
            stor5[6401][uint256(stor2.field_0)][_3270] = 1
            _3515 = mem[_1323 + 64]
            _3516 = mem[_1323]
            _3519 = mem[64]
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = 96
            _3632 = mem[_3268]
            mem[mem[64] + 96] = mem[_3268]
            s = 0
            while s < _3632:
                mem[s + mem[64] + 128] = mem[s + _3268 + 32]
                s = s + 32
                continue 
            if ceil32(_3632) <= _3632:
                mem[mem[64] + 64] = ceil32(_3632) + 128
                _3928 = mem[_3269]
                mem[_3519 + ceil32(_3632) + 128] = mem[_3269]
                s = 0
                while s < _3928:
                    mem[s + _3519 + ceil32(_3632) + 160] = mem[s + _3269 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3928) > _3928:
                    mem[_3928 + _3519 + ceil32(_3632) + 160] = 0
                emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                            mem[mem[64] len _3519 + ceil32(_3632) + ceil32(_3928) + -mem[64] + 160],
                            address(_3516),
                            address(_3515),
                            sha3(6401, EIP712_DOMAIN_HASH, _3270),
                s = ceil32(_3928) + 1
                continue 
            mem[_3632 + mem[64] + 128] = 0
            mem[mem[64] + 64] = ceil32(_3632) + 128
            _3929 = mem[_3269]
            mem[_3519 + ceil32(_3632) + 128] = mem[_3269]
            s = 0
            while s < _3929:
                mem[s + _3519 + ceil32(_3632) + 160] = mem[s + _3269 + 32]
                s = s + 32
                continue 
            if ceil32(_3929) > _3929:
                mem[_3929 + _3519 + ceil32(_3632) + 160] = 0
            emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                        mem[mem[64] len _3519 + ceil32(_3632) + ceil32(_3929) + -mem[64] + 160],
                        address(_3516),
                        address(_3515),
                        sha3(6401, EIP712_DOMAIN_HASH, _3270),
            s = ceil32(_3929) + 1
            continue 
        if mem[_1323 + 12 len 20] != currentContextAddress:
            revert with 0, 'INVALID_MAKER'
        mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3270)
        mem[32] = 5
        stor5[6401][uint256(stor2.field_0)][_3270] = 1
        _3521 = mem[_1323 + 64]
        _3522 = mem[_1323]
        _3525 = mem[64]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = 96
        _3633 = mem[_3268]
        mem[mem[64] + 96] = mem[_3268]
        s = 0
        while s < _3633:
            mem[s + mem[64] + 128] = mem[s + _3268 + 32]
            s = s + 32
            continue 
        if ceil32(_3633) <= _3633:
            mem[_3525 + 64] = ceil32(_3633) + 128
            _3930 = mem[_3269]
            mem[_3525 + ceil32(_3633) + 128] = mem[_3269]
            s = 0
            while s < _3930:
                mem[s + _3525 + ceil32(_3633) + 160] = mem[s + _3269 + 32]
                s = s + 32
                continue 
            if ceil32(_3930) > _3930:
                mem[_3930 + _3525 + ceil32(_3633) + 160] = 0
            emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                        mem[mem[64] len _3525 + ceil32(_3633) + ceil32(_3930) + -mem[64] + 160],
                        address(_3522),
                        address(_3521),
                        sha3(6401, EIP712_DOMAIN_HASH, _3270),
            s = ceil32(_3930) + 1
            continue 
        mem[_3633 + _3525 + 128] = 0
        mem[_3525 + 64] = ceil32(_3633) + 128
        _3931 = mem[_3269]
        mem[_3525 + ceil32(_3633) + 128] = mem[_3269]
        s = 0
        while s < _3931:
            mem[s + _3525 + ceil32(_3633) + 160] = mem[s + _3269 + 32]
            s = s + 32
            continue 
        if ceil32(_3931) > _3931:
            mem[_3931 + _3525 + ceil32(_3633) + 160] = 0
        emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                    mem[mem[64] len _3525 + ceil32(_3633) + ceil32(_3931) + -mem[64] + 160],
                    address(_3522),
                    address(_3521),
                    sha3(6401, EIP712_DOMAIN_HASH, _3270),
        s = ceil32(_3931) + 1
        continue 
    stor0 = 0
}

function cancelOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size + -arg1 - 4 >= 384
    mem[96] = address(arg1.length)
    mem[128] = address(cd[(arg1 + 36)])
    mem[160] = address(cd[(arg1 + 68)])
    mem[192] = address(cd[(arg1 + 100)])
    mem[224] = cd[(arg1 + 132)]
    mem[256] = cd[(arg1 + 164)]
    mem[288] = cd[(arg1 + 196)]
    mem[320] = cd[(arg1 + 228)]
    mem[352] = cd[(arg1 + 260)]
    mem[384] = cd[(arg1 + 292)]
    require cd[(arg1 + 324)] <= test266151307()
    require calldata.size > arg1 + cd[(arg1 + 324)] + 35
    require cd[(arg1 + cd[(arg1 + 324)] + 4)] <= test266151307()
    require ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512 >= 480 and ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512 <= test266151307()
    mem[480] = cd[(arg1 + cd[(arg1 + 324)] + 4)]
    require arg1 + cd[(arg1 + 324)] + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 36 <= calldata.size
    mem[512 len cd[(arg1 + cd[(arg1 + 324)] + 4)]] = call.data[arg1 + cd[(arg1 + 324)] + 36 len cd[(arg1 + cd[(arg1 + 324)] + 4)]]
    mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 512] = 0
    mem[416] = 480
    require cd[(arg1 + 356)] <= test266151307()
    require calldata.size > arg1 + cd[(arg1 + 356)] + 35
    require cd[(arg1 + cd[(arg1 + 356)] + 4)] <= test266151307()
    require ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 544 >= 512 and ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 544 <= test266151307()
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512] = cd[(arg1 + cd[(arg1 + 356)] + 4)]
    require arg1 + cd[(arg1 + 356)] + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544 len cd[(arg1 + cd[(arg1 + 356)] + 4)]] = call.data[arg1 + cd[(arg1 + 356)] + 36 len cd[(arg1 + cd[(arg1 + 356)] + 4)]]
    mem[cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544] = 0
    mem[448] = ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512
    if stor0:
        revert with 0, 'REENTRANCY_ILLEGAL'
    stor0 = 1
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 544] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 576] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 608] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 640] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 672] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 704] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 768] = 'Order('
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 774] = 'address makerAddress,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 795] = 'address takerAddress,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 816] = 'address feeRecipientAddress,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 844] = 'address senderAddress,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 866] = 'uint256 makerAssetAmount,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 891] = 'uint256 takerAssetAmount,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 916] = 'uint256 makerFee,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 933] = 'uint256 takerFee,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 950] = 'uint256 expirationTimeSeconds,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 980] = 'uint256 salt,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 993] = 'bytes makerAssetData,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1014] = 'bytes takerAssetData'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1034] = ')'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 736] = 267
    mem[64] = ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len 256] = 'Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1291 len 11] = Mask(80, 96, 'bytes takerAssetData') >> 96, ')'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)])] = call.data[arg1 + cd[(arg1 + 324)] + 36 len floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 1035] = 256^(-(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32) - 1 and mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 1035] or call.data[arg1 + cd[(arg1 + 324)] + floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 36 len cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32], Mask(8 * -(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32, -(8 * -(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32) + 256, 0) << (8 * -(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32) - 256 and !(256^(-(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32) - 1)
    _1308 = sha3(call.data[arg1 + cd[(arg1 + 324)] + 36 len floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)])], mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 1035 len cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32])
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])])] = mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544 len floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])])]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 1035] = mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 1035] and 256^(-(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])] % 32) + 32) - 1 or mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 544] and !(256^(-(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])] % 32) + 32) - 1)
    _1952 = sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 672] = sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]])))
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 704] = filled[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if not cd[(arg1 + 132)]:
        revert with 0, 'ORDER_UNFILLABLE'
    if not cd[(arg1 + 164)]:
        revert with 0, 'ORDER_UNFILLABLE'
    if filled[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))] >= cd[(arg1 + 164)]:
        revert with 0, 'ORDER_UNFILLABLE'
    if block.timestamp >= cd[(arg1 + 260)]:
        revert with 0, 'ORDER_UNFILLABLE'
    if stor5[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]:
        revert with 0, 'ORDER_UNFILLABLE'
    if orderEpoch[uint64(arg1.length) << 96][uint64(cd[(arg1 + 100)]) << 96] > cd[(arg1 + 292)]:
        revert with 0, 'ORDER_UNFILLABLE'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 640] = 3
    if uint64(cd[(arg1 + 100)]):
        if uint64(cd[(arg1 + 100)]) << 96 != msg.sender:
            revert with 0, 'INVALID_SENDER'
    if not currentContextAddress:
        if uint64(arg1.length) << 96 != msg.sender:
            revert with 0, 'INVALID_MAKER'
    else:
        if uint64(arg1.length) << 96 != currentContextAddress:
            revert with 0, 'INVALID_MAKER'
    stor5[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))] = 1
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035] = msg.sender
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1067] = 96
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1131] = cd[(arg1 + cd[(arg1 + 324)] + 4)]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1163 len ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])] = call.data[arg1 + cd[(arg1 + 324)] + 36 len cd[(arg1 + cd[(arg1 + 324)] + 4)]], mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 512 len ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) - cd[(arg1 + cd[(arg1 + 324)] + 4)]]
    if ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) > cd[(arg1 + cd[(arg1 + 324)] + 4)]:
        mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1163] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1099] = ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 128
    mem[(2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1163] = Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]
    mem[(2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1195 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])])] = mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])])]
    if ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) > Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]:
        mem[Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])] + (2 * ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1195] = 0
    emit Cancel(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5, bytes arg6):
                mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 160],
                address(arg1.length),
                address(cd[(arg1 + 68)]),
                sha3(6401, EIP712_DOMAIN_HASH, _1952),
    stor0 = 0
}

function sub_51fe0946(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size > s + 31
        _406 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require s + 128 <= calldata.size
        u = 0
        v = s
        w = _406
        while u < 4:
            mem[w] = address(cd[v])
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _406
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    _407 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_407] = ('cd', 36).length
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _407 + 32
    while idx < ('cd', 36).length:
        require calldata.size > s + 31
        _810 = mem[64]
        require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
        mem[64] = mem[64] + 192
        require s + 192 <= calldata.size
        u = 0
        v = s
        w = _810
        while u < 6:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _810
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    _811 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_811] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _811 + 32
    while idx < ('cd', 68).length:
        require calldata.size > cd[68] + cd[s] + 67
        _1212 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        u = 0
        v = cd[68] + cd[s] + 36
        w = _1212
        while u < 2:
            require calldata.size > cd[68] + cd[s] + cd[v] + 67
            require cd[(cd[68] + cd[s] + cd[v] + 36)] <= test266151307()
            _1413 = mem[64]
            require mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32
            mem[_1413] = cd[(cd[68] + cd[s] + cd[v] + 36)]
            require cd[68] + cd[s] + cd[v] + cd[(cd[68] + cd[s] + cd[v] + 36)] + 68 <= calldata.size
            mem[_1413 + 32 len cd[(cd[68] + cd[s] + cd[v] + 36)]] = call.data[cd[68] + cd[s] + cd[v] + 68 len cd[(cd[68] + cd[s] + cd[v] + 36)]]
            mem[cd[(cd[68] + cd[s] + cd[v] + 36)] + _1413 + 32] = 0
            mem[w] = _1413
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1212
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require calldata.size > cd[100] + 35
    require ('cd', 100).length <= test266151307()
    _1213 = mem[64]
    require mem[64] + (32 * ('cd', 100).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 100).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
    mem[_1213] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _1213 + 32
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require calldata.size > cd[132] + 35
    require ('cd', 132).length <= test266151307()
    _1414 = mem[64]
    require mem[64] + (32 * ('cd', 132).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 132).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 132).length) + 32
    mem[_1414] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = _1414 + 32
    while idx < ('cd', 132).length:
        require calldata.size > cd[132] + cd[s] + 67
        require cd[(cd[132] + cd[s] + 36)] <= test266151307()
        _1615 = mem[64]
        require mem[64] + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32
        mem[_1615] = cd[(cd[132] + cd[s] + 36)]
        require cd[132] + cd[s] + cd[(cd[132] + cd[s] + 36)] + 68 <= calldata.size
        mem[_1615 + 32 len cd[(cd[132] + cd[s] + 36)]] = call.data[cd[132] + cd[s] + 68 len cd[(cd[132] + cd[s] + 36)]]
        mem[cd[(cd[132] + cd[s] + 36)] + _1615 + 32] = 0
        mem[t] = _1615
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1612 = mem[64]
    mem[64] = mem[64] + 128
    mem[_1612] = 0
    mem[_1612 + 32] = 0
    mem[_1612 + 64] = 0
    mem[_1612 + 96] = 0
    _1613 = mem[96]
    _1614 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1613) + 32
    if not _1613:
        _1809 = mem[96]
        idx = 0
        while idx < _1809:
            require idx < mem[96]
            _1812 = mem[(32 * idx) + 128]
            require idx < mem[_407]
            _1815 = mem[(32 * idx) + _407 + 32]
            require idx < mem[_811]
            _1817 = mem[(32 * idx) + _811 + 32]
            _1821 = mem[64]
            mem[64] = mem[64] + 384
            mem[_1821] = 0
            mem[_1821 + 32] = 0
            mem[_1821 + 64] = 0
            mem[_1821 + 96] = 0
            mem[_1821 + 128] = 0
            mem[_1821 + 160] = 0
            mem[_1821 + 192] = 0
            mem[_1821 + 224] = 0
            mem[_1821 + 256] = 0
            mem[_1821 + 288] = 0
            mem[_1821 + 320] = 96
            mem[_1821 + 352] = 96
            _1823 = mem[64]
            mem[64] = mem[64] + 384
            mem[_1823] = mem[_1812 + 12 len 20]
            mem[_1823 + 32] = mem[_1812 + 44 len 20]
            mem[_1823 + 64] = mem[_1812 + 76 len 20]
            mem[_1823 + 96] = mem[_1812 + 108 len 20]
            mem[_1823 + 128] = mem[_1815]
            mem[_1823 + 160] = mem[_1815 + 32]
            mem[_1823 + 192] = mem[_1815 + 64]
            mem[_1823 + 224] = mem[_1815 + 96]
            mem[_1823 + 256] = mem[_1815 + 128]
            mem[_1823 + 288] = mem[_1815 + 160]
            mem[_1823 + 320] = mem[_1817]
            mem[_1823 + 352] = mem[_1817 + 32]
            require idx < mem[_1614]
            mem[_1614 + (32 * idx) + 32] = _1823
            _1809 = mem[96]
            idx = idx + 1
            continue 
        _1814 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1814] = 0
        mem[_1814 + 32] = 0
        mem[_1814 + 64] = 0
        mem[_1814 + 96] = 0
        _1818 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1818] = 0
        mem[_1818 + 32] = 0
        mem[_1818 + 64] = 0
        mem[_1818 + 96] = 0
        _1820 = mem[_1614]
        s = _1818
        idx = 0
        while _1820 != idx:
            require idx < mem[_1614]
            _2004 = mem[(32 * idx) + _1614 + 32]
            require idx < mem[_1213]
            _2007 = mem[(32 * idx) + _1213 + 32]
            require idx < mem[_1414]
            _2009 = mem[(32 * idx) + _1414 + 32]
            _2013 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2013] = 0
            mem[_2013 + 32] = 0
            mem[_2013 + 64] = 0
            mem[_2013 + 96] = 0
            _2019 = mem[64]
            mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 96
            mem[mem[64] + 132] = mem[_2004]
            mem[mem[64] + 164] = mem[_2004 + 32]
            mem[mem[64] + 196] = mem[_2004 + 64]
            mem[mem[64] + 228] = mem[_2004 + 96]
            mem[mem[64] + 260] = mem[_2004 + 128]
            mem[mem[64] + 292] = mem[_2004 + 160]
            mem[mem[64] + 324] = mem[_2004 + 192]
            mem[mem[64] + 356] = mem[_2004 + 224]
            mem[mem[64] + 388] = mem[_2004 + 256]
            mem[mem[64] + 420] = mem[_2004 + 288]
            mem[mem[64] + 452] = mem[_2004 + 320]
            mem[mem[64] + 484] = mem[_2004 + 352]
            mem[mem[64] + 452] = 384
            _2032 = mem[_2004 + 320]
            _2033 = mem[mem[_2004 + 320]]
            mem[mem[64] + 516] = mem[mem[_2004 + 320]]
            s = 0
            t = _2032 + 32
            u = mem[64] + 548
            while s < _2033 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2019 + 484] = ceil32(_2033) + 416
            _2171 = mem[_2004 + 352]
            _2172 = mem[mem[_2004 + 352]]
            mem[_2019 + ceil32(_2033) + 548] = mem[mem[_2004 + 352]]
            s = 0
            t = _2171 + 32
            u = _2019 + ceil32(_2033) + 580
            while s < _2172 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2019 + 68] = _2007
            mem[_2019 + 100] = ceil32(_2033) + ceil32(_2172) + 544
            _2309 = mem[_2009]
            mem[_2019 + ceil32(_2033) + ceil32(_2172) + 580] = mem[_2009]
            s = 0
            t = _2009 + 32
            u = _2019 + ceil32(_2033) + ceil32(_2172) + 612
            while s < _2309 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[64] = _2019 + ceil32(_2033) + ceil32(_2172) + ceil32(_2309) + 612
            delegate this.address.mem[_2019 + 32 len 4] with:
                 gas gas_remaining wei
                args mem[_2019 + 36], _2007, ceil32(_2033) + ceil32(_2172) + 544, mem[_2019 + 132 len 352], ceil32(_2033) + 416, mem[_2019 + 516 len ceil32(_2033) + ceil32(_2172) + ceil32(_2309) + 96]
            mem[_2019 len 128] = delegate.return_data[0 len 128]
            if not delegate.return_code:
                if mem[_2013] + mem[_1814] < mem[_1814]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1814] = mem[_2013] + mem[_1814]
                if mem[_2013 + 32] + mem[_1814 + 32] < mem[_1814 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1814 + 32] = mem[_2013 + 32] + mem[_1814 + 32]
                if mem[_2013 + 64] + mem[_1814 + 64] < mem[_1814 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1814 + 64] = mem[_2013 + 64] + mem[_1814 + 64]
                if mem[_2013 + 96] + mem[_1814 + 96] < mem[_1814 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1814 + 96] = mem[_2013 + 96] + mem[_1814 + 96]
            else:
                mem[_2013] = delegate.return_data[0]
                mem[_2013 + 32] = delegate.return_data[32]
                mem[_2013 + 64] = delegate.return_data[64]
                mem[_2013 + 96] = delegate.return_data[96]
                if delegate.return_data[0] + mem[_1814] < mem[_1814]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1814] = delegate.return_data[0] + mem[_1814]
                if delegate.return_data[32] + mem[_1814 + 32] < mem[_1814 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1814 + 32] = delegate.return_data[32] + mem[_1814 + 32]
                if delegate.return_data[64] + mem[_1814 + 64] < mem[_1814 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1814 + 64] = delegate.return_data[64] + mem[_1814 + 64]
                if delegate.return_data[96] + mem[_1814 + 96] < mem[_1814 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1814 + 96] = delegate.return_data[96] + mem[_1814 + 96]
            s = _2013
            idx = idx + 1
            continue 
        mem[mem[64]] = mem[_1814]
        mem[mem[64] + 32] = mem[_1814 + 32]
        mem[mem[64] + 64] = mem[_1814 + 64]
        mem[mem[64] + 96] = mem[_1814 + 96]
    else:
        mem[64] = _1614 + (32 * _1613) + 416
        mem[_1614 + (32 * _1613) + 32] = 0
        mem[_1614 + (32 * _1613) + 64] = 0
        mem[_1614 + (32 * _1613) + 96] = 0
        mem[_1614 + (32 * _1613) + 128] = 0
        mem[_1614 + (32 * _1613) + 160] = 0
        mem[_1614 + (32 * _1613) + 192] = 0
        mem[_1614 + (32 * _1613) + 224] = 0
        mem[_1614 + (32 * _1613) + 256] = 0
        mem[_1614 + (32 * _1613) + 288] = 0
        mem[_1614 + (32 * _1613) + 320] = 0
        mem[_1614 + (32 * _1613) + 352] = 96
        mem[_1614 + (32 * _1613) + 384] = 96
        mem[var81001] = _1614 + (32 * _1613) + 32
        s = var81001
        s = var81002
        while _1414 + (32 * ('cd', 132).length) + 31:
            mem[64] = mem[64] + 384
            mem[_1614 + (32 * _1613) + 32] = 0
            mem[_1614 + (32 * _1613) + 64] = 0
            mem[_1614 + (32 * _1613) + 96] = 0
            mem[_1614 + (32 * _1613) + 128] = 0
            mem[_1614 + (32 * _1613) + 160] = 0
            mem[_1614 + (32 * _1613) + 192] = 0
            mem[_1614 + (32 * _1613) + 224] = 0
            mem[_1614 + (32 * _1613) + 256] = 0
            mem[_1614 + (32 * _1613) + 288] = 0
            mem[_1614 + (32 * _1613) + 320] = 0
            mem[_1614 + (32 * _1613) + 352] = 96
            mem[_1614 + (32 * _1613) + 384] = 96
            mem[cd[132] + (32 * ('cd', 132).length) + 68] = _1614 + (32 * _1613) + 32
            s = cd[132] + (32 * ('cd', 132).length) + 68
            s = _1414 + (32 * ('cd', 132).length) + 31
            continue 
        _2170 = mem[96]
        idx = 0
        while idx < _2170:
            require idx < mem[96]
            _2175 = mem[(32 * idx) + 128]
            require idx < mem[_407]
            _2180 = mem[(32 * idx) + _407 + 32]
            require idx < mem[_811]
            _2182 = mem[(32 * idx) + _811 + 32]
            _2187 = mem[64]
            mem[64] = mem[64] + 384
            mem[_2187] = 0
            mem[_2187 + 32] = 0
            mem[_2187 + 64] = 0
            mem[_2187 + 96] = 0
            mem[_2187 + 128] = 0
            mem[_2187 + 160] = 0
            mem[_2187 + 192] = 0
            mem[_2187 + 224] = 0
            mem[_2187 + 256] = 0
            mem[_2187 + 288] = 0
            mem[_2187 + 320] = 96
            mem[_2187 + 352] = 96
            _2192 = mem[64]
            mem[64] = mem[64] + 384
            mem[_2192] = mem[_2175 + 12 len 20]
            mem[_2192 + 32] = mem[_2175 + 44 len 20]
            mem[_2192 + 64] = mem[_2175 + 76 len 20]
            mem[_2192 + 96] = mem[_2175 + 108 len 20]
            mem[_2192 + 128] = mem[_2180]
            mem[_2192 + 160] = mem[_2180 + 32]
            mem[_2192 + 192] = mem[_2180 + 64]
            mem[_2192 + 224] = mem[_2180 + 96]
            mem[_2192 + 256] = mem[_2180 + 128]
            mem[_2192 + 288] = mem[_2180 + 160]
            mem[_2192 + 320] = mem[_2182]
            mem[_2192 + 352] = mem[_2182 + 32]
            require idx < mem[_1614]
            mem[_1614 + (32 * idx) + 32] = _2192
            _2170 = mem[96]
            idx = idx + 1
            continue 
        _2179 = mem[64]
        mem[64] = mem[64] + 128
        mem[_2179] = 0
        mem[_2179 + 32] = 0
        mem[_2179 + 64] = 0
        mem[_2179 + 96] = 0
        _2184 = mem[64]
        mem[64] = mem[64] + 128
        mem[_2184] = 0
        mem[_2184 + 32] = 0
        mem[_2184 + 64] = 0
        mem[_2184 + 96] = 0
        _2186 = mem[_1614]
        s = _2184
        idx = 0
        while _2186 != idx:
            require idx < mem[_1614]
            _2312 = mem[(32 * idx) + _1614 + 32]
            require idx < mem[_1213]
            _2316 = mem[(32 * idx) + _1213 + 32]
            require idx < mem[_1414]
            _2319 = mem[(32 * idx) + _1414 + 32]
            _2325 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2325] = 0
            mem[_2325 + 32] = 0
            mem[_2325 + 64] = 0
            mem[_2325 + 96] = 0
            _2328 = mem[64]
            mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 96
            mem[mem[64] + 132] = mem[_2312]
            mem[mem[64] + 164] = mem[_2312 + 32]
            mem[mem[64] + 196] = mem[_2312 + 64]
            mem[mem[64] + 228] = mem[_2312 + 96]
            mem[mem[64] + 260] = mem[_2312 + 128]
            mem[mem[64] + 292] = mem[_2312 + 160]
            mem[mem[64] + 324] = mem[_2312 + 192]
            mem[mem[64] + 356] = mem[_2312 + 224]
            mem[mem[64] + 388] = mem[_2312 + 256]
            mem[mem[64] + 420] = mem[_2312 + 288]
            mem[mem[64] + 452] = mem[_2312 + 320]
            mem[mem[64] + 484] = mem[_2312 + 352]
            mem[mem[64] + 452] = 384
            _2341 = mem[_2312 + 320]
            _2342 = mem[mem[_2312 + 320]]
            mem[mem[64] + 516] = mem[mem[_2312 + 320]]
            s = 0
            t = _2341 + 32
            u = mem[64] + 548
            while s < _2342 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 484] = ceil32(_2342) + 416
            _2421 = mem[_2312 + 352]
            _2422 = mem[mem[_2312 + 352]]
            mem[mem[64] + ceil32(_2342) + 548] = mem[mem[_2312 + 352]]
            s = 0
            t = _2421 + 32
            u = mem[64] + ceil32(_2342) + 580
            while s < _2422 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2328 + 68] = _2316
            mem[_2328 + 100] = ceil32(_2342) + ceil32(_2422) + 544
            _2501 = mem[_2319]
            mem[_2328 + ceil32(_2342) + ceil32(_2422) + 580] = mem[_2319]
            s = 0
            t = _2319 + 32
            u = _2328 + ceil32(_2342) + ceil32(_2422) + 612
            while s < _2501 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[64] = _2328 + ceil32(_2342) + ceil32(_2422) + ceil32(_2501) + 612
            delegate this.address.mem[_2328 + 32 len 4] with:
                 gas gas_remaining wei
                args mem[_2328 + 36], _2316, ceil32(_2342) + ceil32(_2422) + 544, mem[_2328 + 132 len ceil32(_2342) + ceil32(_2422) + ceil32(_2501) + 480]
            mem[_2328 len 128] = delegate.return_data[0 len 128]
            if not delegate.return_code:
                if mem[_2325] + mem[_2179] < mem[_2179]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2179] = mem[_2325] + mem[_2179]
                if mem[_2325 + 32] + mem[_2179 + 32] < mem[_2179 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2179 + 32] = mem[_2325 + 32] + mem[_2179 + 32]
                if mem[_2325 + 64] + mem[_2179 + 64] < mem[_2179 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2179 + 64] = mem[_2325 + 64] + mem[_2179 + 64]
                if mem[_2325 + 96] + mem[_2179 + 96] < mem[_2179 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2179 + 96] = mem[_2325 + 96] + mem[_2179 + 96]
            else:
                mem[_2325] = delegate.return_data[0]
                mem[_2325 + 32] = delegate.return_data[32]
                mem[_2325 + 64] = delegate.return_data[64]
                mem[_2325 + 96] = delegate.return_data[96]
                if delegate.return_data[0] + mem[_2179] < mem[_2179]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2179] = delegate.return_data[0] + mem[_2179]
                if delegate.return_data[32] + mem[_2179 + 32] < mem[_2179 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2179 + 32] = delegate.return_data[32] + mem[_2179 + 32]
                if delegate.return_data[64] + mem[_2179 + 64] < mem[_2179 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2179 + 64] = delegate.return_data[64] + mem[_2179 + 64]
                if delegate.return_data[96] + mem[_2179 + 96] < mem[_2179 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2179 + 96] = delegate.return_data[96] + mem[_2179 + 96]
            s = _2325
            idx = idx + 1
            continue 
        mem[mem[64]] = mem[_2179]
        mem[mem[64] + 32] = mem[_2179 + 32]
        mem[mem[64] + 64] = mem[_2179 + 64]
        mem[mem[64] + 96] = mem[_2179 + 96]
    return memory
      from mem[64]
       len 128
}

function sub_58545ea0(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size > s + 31
        _484 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require s + 128 <= calldata.size
        u = 0
        v = s
        w = _484
        while u < 4:
            mem[w] = address(cd[v])
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _484
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    _485 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_485] = ('cd', 36).length
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _485 + 32
    while idx < ('cd', 36).length:
        require calldata.size > s + 31
        _966 = mem[64]
        require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
        mem[64] = mem[64] + 192
        require s + 192 <= calldata.size
        u = 0
        v = s
        w = _966
        while u < 6:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _966
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    _967 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_967] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _967 + 32
    while idx < ('cd', 68).length:
        require calldata.size > cd[68] + cd[s] + 67
        _1446 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        u = 0
        v = cd[68] + cd[s] + 36
        w = _1446
        while u < 2:
            require calldata.size > cd[68] + cd[s] + cd[v] + 67
            require cd[(cd[68] + cd[s] + cd[v] + 36)] <= test266151307()
            _1690 = mem[64]
            require mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32
            mem[_1690] = cd[(cd[68] + cd[s] + cd[v] + 36)]
            require cd[68] + cd[s] + cd[v] + cd[(cd[68] + cd[s] + cd[v] + 36)] + 68 <= calldata.size
            mem[_1690 + 32 len cd[(cd[68] + cd[s] + cd[v] + 36)]] = call.data[cd[68] + cd[s] + cd[v] + 68 len cd[(cd[68] + cd[s] + cd[v] + 36)]]
            mem[cd[(cd[68] + cd[s] + cd[v] + 36)] + _1690 + 32] = 0
            mem[w] = _1690
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1446
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require calldata.size > cd[132] + 35
    require ('cd', 132).length <= test266151307()
    _1447 = mem[64]
    require mem[64] + (32 * ('cd', 132).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 132).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 132).length) + 32
    mem[_1447] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = _1447 + 32
    while idx < ('cd', 132).length:
        require calldata.size > cd[132] + cd[s] + 67
        require cd[(cd[132] + cd[s] + 36)] <= test266151307()
        _1689 = mem[64]
        require mem[64] + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32
        mem[_1689] = cd[(cd[132] + cd[s] + 36)]
        require cd[132] + cd[s] + cd[(cd[132] + cd[s] + 36)] + 68 <= calldata.size
        mem[_1689 + 32 len cd[(cd[132] + cd[s] + 36)]] = call.data[cd[132] + cd[s] + 68 len cd[(cd[132] + cd[s] + 36)]]
        mem[cd[(cd[132] + cd[s] + 36)] + _1689 + 32] = 0
        mem[t] = _1689
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1686 = mem[64]
    mem[64] = mem[64] + 128
    mem[_1686] = 0
    mem[_1686 + 32] = 0
    mem[_1686 + 64] = 0
    mem[_1686 + 96] = 0
    _1687 = mem[96]
    _1688 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1687) + 32
    if not _1687:
        _1924 = mem[96]
        idx = 0
        while idx < _1924:
            require idx < mem[96]
            _1927 = mem[(32 * idx) + 128]
            require idx < mem[_485]
            _1930 = mem[(32 * idx) + _485 + 32]
            require idx < mem[_967]
            _1932 = mem[(32 * idx) + _967 + 32]
            _1936 = mem[64]
            mem[64] = mem[64] + 384
            mem[_1936] = 0
            mem[_1936 + 32] = 0
            mem[_1936 + 64] = 0
            mem[_1936 + 96] = 0
            mem[_1936 + 128] = 0
            mem[_1936 + 160] = 0
            mem[_1936 + 192] = 0
            mem[_1936 + 224] = 0
            mem[_1936 + 256] = 0
            mem[_1936 + 288] = 0
            mem[_1936 + 320] = 96
            mem[_1936 + 352] = 96
            _1941 = mem[64]
            mem[64] = mem[64] + 384
            mem[_1941] = mem[_1927 + 12 len 20]
            mem[_1941 + 32] = mem[_1927 + 44 len 20]
            mem[_1941 + 64] = mem[_1927 + 76 len 20]
            mem[_1941 + 96] = mem[_1927 + 108 len 20]
            mem[_1941 + 128] = mem[_1930]
            mem[_1941 + 160] = mem[_1930 + 32]
            mem[_1941 + 192] = mem[_1930 + 64]
            mem[_1941 + 224] = mem[_1930 + 96]
            mem[_1941 + 256] = mem[_1930 + 128]
            mem[_1941 + 288] = mem[_1930 + 160]
            mem[_1941 + 320] = mem[_1932]
            mem[_1941 + 352] = mem[_1932 + 32]
            require idx < mem[_1688]
            mem[_1688 + (32 * idx) + 32] = _1941
            _1924 = mem[96]
            idx = idx + 1
            continue 
        _1929 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1929] = 0
        mem[_1929 + 32] = 0
        mem[_1929 + 64] = 0
        mem[_1929 + 96] = 0
        _1933 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1933] = 0
        mem[_1933 + 32] = 0
        mem[_1933 + 64] = 0
        mem[_1933 + 96] = 0
        require 0 < mem[_1688]
        _1939 = mem[mem[_1688 + 32] + 352]
        _1940 = mem[_1688]
        s = _1933
        s = 0
        idx = 0
        while _1940 != idx:
            require idx < mem[_1688]
            mem[mem[(32 * idx) + _1688 + 32] + 352] = _1939
            _2160 = mem[_1929 + 32]
            if mem[_1929 + 32] > cd[100]:
                revert with 0, 'UINT256_UNDERFLOW'
            require idx < mem[_1688]
            _2169 = mem[(32 * idx) + _1688 + 32]
            require idx < mem[_1447]
            _2174 = mem[(32 * idx) + _1447 + 32]
            _2179 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2179] = 0
            mem[_2179 + 32] = 0
            mem[_2179 + 64] = 0
            mem[_2179 + 96] = 0
            _2198 = mem[64]
            mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 96
            mem[mem[64] + 132] = mem[_2169]
            mem[mem[64] + 164] = mem[_2169 + 32]
            mem[mem[64] + 196] = mem[_2169 + 64]
            mem[mem[64] + 228] = mem[_2169 + 96]
            mem[mem[64] + 260] = mem[_2169 + 128]
            mem[mem[64] + 292] = mem[_2169 + 160]
            mem[mem[64] + 324] = mem[_2169 + 192]
            mem[mem[64] + 356] = mem[_2169 + 224]
            mem[mem[64] + 388] = mem[_2169 + 256]
            mem[mem[64] + 420] = mem[_2169 + 288]
            mem[mem[64] + 452] = mem[_2169 + 320]
            mem[mem[64] + 484] = mem[_2169 + 352]
            mem[mem[64] + 452] = 384
            _2211 = mem[_2169 + 320]
            _2212 = mem[mem[_2169 + 320]]
            mem[mem[64] + 516] = mem[mem[_2169 + 320]]
            s = 0
            t = _2211 + 32
            u = mem[64] + 548
            while s < _2212 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2198 + 484] = ceil32(_2212) + 416
            _2363 = mem[_2169 + 352]
            _2364 = mem[mem[_2169 + 352]]
            mem[_2198 + ceil32(_2212) + 548] = mem[mem[_2169 + 352]]
            s = 0
            t = _2363 + 32
            u = _2198 + ceil32(_2212) + 580
            while s < _2364 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2198 + 68] = cd[100] - _2160
            mem[_2198 + 100] = ceil32(_2212) + ceil32(_2364) + 544
            _2535 = mem[_2174]
            mem[_2198 + ceil32(_2212) + ceil32(_2364) + 580] = mem[_2174]
            s = 0
            t = _2174 + 32
            u = _2198 + ceil32(_2212) + ceil32(_2364) + 612
            while s < _2535 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[64] = _2198 + ceil32(_2212) + ceil32(_2364) + ceil32(_2535) + 612
            delegate this.address.mem[_2198 + 32 len 4] with:
                 gas gas_remaining wei
                args mem[_2198 + 36], cd[100] - _2160, ceil32(_2212) + ceil32(_2364) + 544, mem[_2198 + 132 len 352], ceil32(_2212) + 416, mem[_2198 + 516 len ceil32(_2212) + ceil32(_2364) + ceil32(_2535) + 96]
            mem[_2198 len 128] = delegate.return_data[0 len 128]
            if not delegate.return_code:
                if mem[_2179] + mem[_1929] < mem[_1929]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1929] = mem[_2179] + mem[_1929]
                if mem[_2179 + 32] + mem[_1929 + 32] < mem[_1929 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1929 + 32] = mem[_2179 + 32] + mem[_1929 + 32]
                if mem[_2179 + 64] + mem[_1929 + 64] < mem[_1929 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1929 + 64] = mem[_2179 + 64] + mem[_1929 + 64]
                if mem[_2179 + 96] + mem[_1929 + 96] < mem[_1929 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1929 + 96] = mem[_2179 + 96] + mem[_1929 + 96]
            else:
                mem[_2179] = delegate.return_data[0]
                mem[_2179 + 32] = delegate.return_data[32]
                mem[_2179 + 64] = delegate.return_data[64]
                mem[_2179 + 96] = delegate.return_data[96]
                if delegate.return_data[0] + mem[_1929] < mem[_1929]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1929] = delegate.return_data[0] + mem[_1929]
                if delegate.return_data[32] + mem[_1929 + 32] < mem[_1929 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1929 + 32] = delegate.return_data[32] + mem[_1929 + 32]
                if delegate.return_data[64] + mem[_1929 + 64] < mem[_1929 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1929 + 64] = delegate.return_data[64] + mem[_1929 + 64]
                if delegate.return_data[96] + mem[_1929 + 96] < mem[_1929 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_1929 + 96] = delegate.return_data[96] + mem[_1929 + 96]
            if cd[100] > mem[_1929 + 32]:
                s = _2179
                s = cd[100] - _2160
                idx = idx + 1
                continue 
            mem[_2198 + ceil32(_2212) + ceil32(_2364) + ceil32(_2535) + 612] = mem[_1929]
            mem[_2198 + ceil32(_2212) + ceil32(_2364) + ceil32(_2535) + 644] = mem[_1929 + 32]
            mem[_2198 + ceil32(_2212) + ceil32(_2364) + ceil32(_2535) + 676] = mem[_1929 + 64]
            mem[_2198 + ceil32(_2212) + ceil32(_2364) + ceil32(_2535) + 708] = mem[_1929 + 96]
            return memory
              from _2198 + ceil32(_2212) + ceil32(_2364) + ceil32(_2535) + 612
               len 128
        mem[mem[64]] = mem[_1929]
        mem[mem[64] + 32] = mem[_1929 + 32]
        mem[mem[64] + 64] = mem[_1929 + 64]
        mem[mem[64] + 96] = mem[_1929 + 96]
    else:
        mem[64] = _1688 + (32 * _1687) + 416
        mem[_1688 + (32 * _1687) + 32] = 0
        mem[_1688 + (32 * _1687) + 64] = 0
        mem[_1688 + (32 * _1687) + 96] = 0
        mem[_1688 + (32 * _1687) + 128] = 0
        mem[_1688 + (32 * _1687) + 160] = 0
        mem[_1688 + (32 * _1687) + 192] = 0
        mem[_1688 + (32 * _1687) + 224] = 0
        mem[_1688 + (32 * _1687) + 256] = 0
        mem[_1688 + (32 * _1687) + 288] = 0
        mem[_1688 + (32 * _1687) + 320] = 0
        mem[_1688 + (32 * _1687) + 352] = 96
        mem[_1688 + (32 * _1687) + 384] = 96
        mem[var71001] = _1688 + (32 * _1687) + 32
        s = var71001
        s = var71002
        while _1447 + (32 * ('cd', 132).length) + 31:
            mem[64] = mem[64] + 384
            mem[_1688 + (32 * _1687) + 32] = 0
            mem[_1688 + (32 * _1687) + 64] = 0
            mem[_1688 + (32 * _1687) + 96] = 0
            mem[_1688 + (32 * _1687) + 128] = 0
            mem[_1688 + (32 * _1687) + 160] = 0
            mem[_1688 + (32 * _1687) + 192] = 0
            mem[_1688 + (32 * _1687) + 224] = 0
            mem[_1688 + (32 * _1687) + 256] = 0
            mem[_1688 + (32 * _1687) + 288] = 0
            mem[_1688 + (32 * _1687) + 320] = 0
            mem[_1688 + (32 * _1687) + 352] = 96
            mem[_1688 + (32 * _1687) + 384] = 96
            mem[cd[132] + (32 * ('cd', 132).length) + 68] = _1688 + (32 * _1687) + 32
            s = cd[132] + (32 * ('cd', 132).length) + 68
            s = _1447 + (32 * ('cd', 132).length) + 31
            continue 
        _2362 = mem[96]
        idx = 0
        while idx < _2362:
            require idx < mem[96]
            _2367 = mem[(32 * idx) + 128]
            require idx < mem[_485]
            _2372 = mem[(32 * idx) + _485 + 32]
            require idx < mem[_967]
            _2374 = mem[(32 * idx) + _967 + 32]
            _2379 = mem[64]
            mem[64] = mem[64] + 384
            mem[_2379] = 0
            mem[_2379 + 32] = 0
            mem[_2379 + 64] = 0
            mem[_2379 + 96] = 0
            mem[_2379 + 128] = 0
            mem[_2379 + 160] = 0
            mem[_2379 + 192] = 0
            mem[_2379 + 224] = 0
            mem[_2379 + 256] = 0
            mem[_2379 + 288] = 0
            mem[_2379 + 320] = 96
            mem[_2379 + 352] = 96
            _2387 = mem[64]
            mem[64] = mem[64] + 384
            mem[_2387] = mem[_2367 + 12 len 20]
            mem[_2387 + 32] = mem[_2367 + 44 len 20]
            mem[_2387 + 64] = mem[_2367 + 76 len 20]
            mem[_2387 + 96] = mem[_2367 + 108 len 20]
            mem[_2387 + 128] = mem[_2372]
            mem[_2387 + 160] = mem[_2372 + 32]
            mem[_2387 + 192] = mem[_2372 + 64]
            mem[_2387 + 224] = mem[_2372 + 96]
            mem[_2387 + 256] = mem[_2372 + 128]
            mem[_2387 + 288] = mem[_2372 + 160]
            mem[_2387 + 320] = mem[_2374]
            mem[_2387 + 352] = mem[_2374 + 32]
            require idx < mem[_1688]
            mem[_1688 + (32 * idx) + 32] = _2387
            _2362 = mem[96]
            idx = idx + 1
            continue 
        _2371 = mem[64]
        mem[64] = mem[64] + 128
        mem[_2371] = 0
        mem[_2371 + 32] = 0
        mem[_2371 + 64] = 0
        mem[_2371 + 96] = 0
        _2376 = mem[64]
        mem[64] = mem[64] + 128
        mem[_2376] = 0
        mem[_2376 + 32] = 0
        mem[_2376 + 64] = 0
        mem[_2376 + 96] = 0
        require 0 < mem[_1688]
        _2385 = mem[mem[_1688 + 32] + 352]
        _2386 = mem[_1688]
        s = _2376
        s = 0
        idx = 0
        while _2386 != idx:
            require idx < mem[_1688]
            mem[mem[(32 * idx) + _1688 + 32] + 352] = _2385
            _2539 = mem[_2371 + 32]
            if mem[_2371 + 32] > cd[100]:
                revert with 0, 'UINT256_UNDERFLOW'
            require idx < mem[_1688]
            _2550 = mem[(32 * idx) + _1688 + 32]
            require idx < mem[_1447]
            _2554 = mem[(32 * idx) + _1447 + 32]
            _2560 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2560] = 0
            mem[_2560 + 32] = 0
            mem[_2560 + 64] = 0
            mem[_2560 + 96] = 0
            _2564 = mem[64]
            mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 96
            mem[mem[64] + 132] = mem[_2550]
            mem[mem[64] + 164] = mem[_2550 + 32]
            mem[mem[64] + 196] = mem[_2550 + 64]
            mem[mem[64] + 228] = mem[_2550 + 96]
            mem[mem[64] + 260] = mem[_2550 + 128]
            mem[mem[64] + 292] = mem[_2550 + 160]
            mem[mem[64] + 324] = mem[_2550 + 192]
            mem[mem[64] + 356] = mem[_2550 + 224]
            mem[mem[64] + 388] = mem[_2550 + 256]
            mem[mem[64] + 420] = mem[_2550 + 288]
            mem[mem[64] + 452] = mem[_2550 + 320]
            mem[mem[64] + 484] = mem[_2550 + 352]
            mem[mem[64] + 452] = 384
            _2577 = mem[_2550 + 320]
            _2578 = mem[mem[_2550 + 320]]
            mem[mem[64] + 516] = mem[mem[_2550 + 320]]
            s = 0
            t = _2577 + 32
            u = mem[64] + 548
            while s < _2578 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2564 + 484] = ceil32(_2578) + 416
            _2678 = mem[_2550 + 352]
            _2679 = mem[mem[_2550 + 352]]
            mem[_2564 + ceil32(_2578) + 548] = mem[mem[_2550 + 352]]
            s = 0
            t = _2678 + 32
            u = _2564 + ceil32(_2578) + 580
            while s < _2679 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2564 + 68] = cd[100] - _2539
            mem[_2564 + 100] = ceil32(_2578) + ceil32(_2679) + 544
            _2786 = mem[_2554]
            mem[_2564 + ceil32(_2578) + ceil32(_2679) + 580] = mem[_2554]
            s = 0
            t = _2554 + 32
            u = _2564 + ceil32(_2578) + ceil32(_2679) + 612
            while s < _2786 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[64] = _2564 + ceil32(_2578) + ceil32(_2679) + ceil32(_2786) + 612
            delegate this.address.mem[_2564 + 32 len 4] with:
                 gas gas_remaining wei
                args mem[_2564 + 36], cd[100] - _2539, ceil32(_2578) + ceil32(_2679) + 544, mem[_2564 + 132 len 352], ceil32(_2578) + 416, mem[_2564 + 516 len ceil32(_2578) + ceil32(_2679) + ceil32(_2786) + 96]
            mem[_2564 len 128] = delegate.return_data[0 len 128]
            if not delegate.return_code:
                if mem[_2560] + mem[_2371] < mem[_2371]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2371] = mem[_2560] + mem[_2371]
                if mem[_2560 + 32] + mem[_2371 + 32] < mem[_2371 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2371 + 32] = mem[_2560 + 32] + mem[_2371 + 32]
                if mem[_2560 + 64] + mem[_2371 + 64] < mem[_2371 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2371 + 64] = mem[_2560 + 64] + mem[_2371 + 64]
                if mem[_2560 + 96] + mem[_2371 + 96] < mem[_2371 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2371 + 96] = mem[_2560 + 96] + mem[_2371 + 96]
            else:
                mem[_2560] = delegate.return_data[0]
                mem[_2560 + 32] = delegate.return_data[32]
                mem[_2560 + 64] = delegate.return_data[64]
                mem[_2560 + 96] = delegate.return_data[96]
                if delegate.return_data[0] + mem[_2371] < mem[_2371]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2371] = delegate.return_data[0] + mem[_2371]
                if delegate.return_data[32] + mem[_2371 + 32] < mem[_2371 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2371 + 32] = delegate.return_data[32] + mem[_2371 + 32]
                if delegate.return_data[64] + mem[_2371 + 64] < mem[_2371 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2371 + 64] = delegate.return_data[64] + mem[_2371 + 64]
                if delegate.return_data[96] + mem[_2371 + 96] < mem[_2371 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_2371 + 96] = delegate.return_data[96] + mem[_2371 + 96]
            if cd[100] > mem[_2371 + 32]:
                s = _2560
                s = cd[100] - _2539
                idx = idx + 1
                continue 
            mem[_2564 + ceil32(_2578) + ceil32(_2679) + ceil32(_2786) + 612] = mem[_2371]
            mem[_2564 + ceil32(_2578) + ceil32(_2679) + ceil32(_2786) + 644] = mem[_2371 + 32]
            mem[_2564 + ceil32(_2578) + ceil32(_2679) + ceil32(_2786) + 676] = mem[_2371 + 64]
            mem[_2564 + ceil32(_2578) + ceil32(_2679) + ceil32(_2786) + 708] = mem[_2371 + 96]
            return memory
              from _2564 + ceil32(_2578) + ceil32(_2679) + ceil32(_2786) + 612
               len 128
        mem[mem[64]] = mem[_2371]
        mem[mem[64] + 32] = mem[_2371 + 32]
        mem[mem[64] + 64] = mem[_2371 + 64]
        mem[mem[64] + 96] = mem[_2371 + 96]
    return memory
      from mem[64]
       len 128
}

function getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size + -arg1 - 4 >= 384
    mem[96] = address(arg1.length)
    mem[128] = address(cd[(arg1 + 36)])
    mem[160] = address(cd[(arg1 + 68)])
    mem[192] = address(cd[(arg1 + 100)])
    mem[224] = cd[(arg1 + 132)]
    mem[256] = cd[(arg1 + 164)]
    mem[288] = cd[(arg1 + 196)]
    mem[320] = cd[(arg1 + 228)]
    mem[352] = cd[(arg1 + 260)]
    mem[384] = cd[(arg1 + 292)]
    require cd[(arg1 + 324)] <= test266151307()
    require calldata.size > arg1 + cd[(arg1 + 324)] + 35
    require cd[(arg1 + cd[(arg1 + 324)] + 4)] <= test266151307()
    require ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512 >= 480 and ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512 <= test266151307()
    mem[480] = cd[(arg1 + cd[(arg1 + 324)] + 4)]
    require arg1 + cd[(arg1 + 324)] + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 36 <= calldata.size
    mem[512 len cd[(arg1 + cd[(arg1 + 324)] + 4)]] = call.data[arg1 + cd[(arg1 + 324)] + 36 len cd[(arg1 + cd[(arg1 + 324)] + 4)]]
    mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 512] = 0
    mem[416] = 480
    require cd[(arg1 + 356)] <= test266151307()
    require calldata.size > arg1 + cd[(arg1 + 356)] + 35
    require cd[(arg1 + cd[(arg1 + 356)] + 4)] <= test266151307()
    require ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 544 >= 512 and ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 544 <= test266151307()
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512] = cd[(arg1 + cd[(arg1 + 356)] + 4)]
    require arg1 + cd[(arg1 + 356)] + cd[(arg1 + cd[(arg1 + 356)] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544 len cd[(arg1 + cd[(arg1 + 356)] + 4)]] = call.data[arg1 + cd[(arg1 + 356)] + 36 len cd[(arg1 + cd[(arg1 + 356)] + 4)]]
    mem[cd[(arg1 + cd[(arg1 + 356)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544] = 0
    mem[448] = ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 512
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 544] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 576] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 608] = 0
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 672] = 'Order('
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 678] = 'address makerAddress,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 699] = 'address takerAddress,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 720] = 'address feeRecipientAddress,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 748] = 'address senderAddress,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 770] = 'uint256 makerAssetAmount,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 795] = 'uint256 takerAssetAmount,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 820] = 'uint256 makerFee,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 837] = 'uint256 takerFee,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 854] = 'uint256 expirationTimeSeconds,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 884] = 'uint256 salt,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 897] = 'bytes makerAssetData,'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 918] = 'bytes takerAssetData'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 938] = ')'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 640] = 267
    mem[64] = ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len 256] = 'Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1195 len 11] = Mask(80, 96, 'bytes takerAssetData') >> 96, ')'
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)])] = call.data[arg1 + cd[(arg1 + 324)] + 36 len floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 939] = 256^(-(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32) - 1 and mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 939] or call.data[arg1 + cd[(arg1 + 324)] + floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 36 len cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32], Mask(8 * -(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32, -(8 * -(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32) + 256, 0) << (8 * -(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32) - 256 and !(256^(-(cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32) + 32) - 1)
    _157 = sha3(call.data[arg1 + cd[(arg1 + 324)] + 36 len floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)])], mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 939 len cd[(arg1 + cd[(arg1 + 324)] + 4)] % 32])
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])])] = mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + 544 len floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])])]
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 939] = mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 939] and 256^(-(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])] % 32) + 32) - 1 or mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + floor32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]) + 544] and !(256^(-(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])] % 32) + 32) - 1)
    if not cd[(arg1 + 132)]:
        return 1, 
               sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
               filled[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if not cd[(arg1 + 164)]:
        return 2, 
               sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
               filled[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if filled[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))] >= cd[(arg1 + 164)]:
        return 5, 
               sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
               filled[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if block.timestamp >= cd[(arg1 + 260)]:
        return 4, 
               sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
               filled[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if not stor5[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]:
        if orderEpoch[uint64(arg1.length) << 96][uint64(cd[(arg1 + 100)]) << 96] <= cd[(arg1 + 292)]:
            return 3, 
                   sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
                   filled[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    return 6, 
           sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
           filled[6401][uint256(stor2.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
}

function sub_31456e4e(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size > s + 31
        _577 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require s + 128 <= calldata.size
        u = 0
        v = s
        w = _577
        while u < 4:
            mem[w] = address(cd[v])
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _577
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    _578 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_578] = ('cd', 36).length
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _578 + 32
    while idx < ('cd', 36).length:
        require calldata.size > s + 31
        _1152 = mem[64]
        require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
        mem[64] = mem[64] + 192
        require s + 192 <= calldata.size
        u = 0
        v = s
        w = _1152
        while u < 6:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1152
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    _1153 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_1153] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _1153 + 32
    while idx < ('cd', 68).length:
        require calldata.size > cd[68] + cd[s] + 67
        _1730 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        u = 0
        v = cd[68] + cd[s] + 36
        w = _1730
        while u < 2:
            require calldata.size > cd[68] + cd[s] + cd[v] + 67
            require cd[(cd[68] + cd[s] + cd[v] + 36)] <= test266151307()
            _2046 = mem[64]
            require mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32
            mem[_2046] = cd[(cd[68] + cd[s] + cd[v] + 36)]
            require cd[68] + cd[s] + cd[v] + cd[(cd[68] + cd[s] + cd[v] + 36)] + 68 <= calldata.size
            mem[_2046 + 32 len cd[(cd[68] + cd[s] + cd[v] + 36)]] = call.data[cd[68] + cd[s] + cd[v] + 68 len cd[(cd[68] + cd[s] + cd[v] + 36)]]
            mem[cd[(cd[68] + cd[s] + cd[v] + 36)] + _2046 + 32] = 0
            mem[w] = _2046
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1730
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1725 = mem[96]
    _1726 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1725) + 32
    if not _1725:
        _2012 = mem[96]
        idx = 0
        while idx < _2012:
            require idx < mem[96]
            _2017 = mem[(32 * idx) + 128]
            require idx < mem[_578]
            _2019 = mem[(32 * idx) + _578 + 32]
            require idx < mem[_1153]
            _2021 = mem[(32 * idx) + _1153 + 32]
            _2026 = mem[64]
            mem[64] = mem[64] + 384
            mem[_2026] = 0
            mem[_2026 + 32] = 0
            mem[_2026 + 64] = 0
            mem[_2026 + 96] = 0
            mem[_2026 + 128] = 0
            mem[_2026 + 160] = 0
            mem[_2026 + 192] = 0
            mem[_2026 + 224] = 0
            mem[_2026 + 256] = 0
            mem[_2026 + 288] = 0
            mem[_2026 + 320] = 96
            mem[_2026 + 352] = 96
            _2029 = mem[64]
            mem[64] = mem[64] + 384
            mem[_2029] = mem[_2017 + 12 len 20]
            mem[_2029 + 32] = mem[_2017 + 44 len 20]
            mem[_2029 + 64] = mem[_2017 + 76 len 20]
            mem[_2029 + 96] = mem[_2017 + 108 len 20]
            mem[_2029 + 128] = mem[_2019]
            mem[_2029 + 160] = mem[_2019 + 32]
            mem[_2029 + 192] = mem[_2019 + 64]
            mem[_2029 + 224] = mem[_2019 + 96]
            mem[_2029 + 256] = mem[_2019 + 128]
            mem[_2029 + 288] = mem[_2019 + 160]
            mem[_2029 + 320] = mem[_2021]
            mem[_2029 + 352] = mem[_2021 + 32]
            require idx < mem[_1726]
            mem[_1726 + (32 * idx) + 32] = _2029
            idx = idx + 1
            continue 
        _2015 = mem[_1726]
        _2016 = mem[64]
        mem[mem[64]] = mem[_1726]
        mem[64] = mem[64] + (32 * _2015) + 32
        if not _2015:
            idx = 0
            while _2015 != idx:
                require idx < mem[_1726]
                _2299 = mem[(32 * idx) + _1726 + 32]
                _2301 = mem[64]
                mem[64] = mem[64] + 96
                mem[_2301] = 0
                mem[_2301 + 32] = 0
                mem[_2301 + 64] = 0
                _2310 = mem[64]
                mem[mem[64] + 32] = 'Order('
                mem[mem[64] + 38] = 'address makerAddress,'
                mem[mem[64] + 59] = 'address takerAddress,'
                mem[mem[64] + 80] = 'address feeRecipientAddress,'
                mem[mem[64] + 108] = 'address senderAddress,'
                mem[mem[64] + 130] = 'uint256 makerAssetAmount,'
                mem[mem[64] + 155] = 'uint256 takerAssetAmount,'
                mem[mem[64] + 180] = 'uint256 makerFee,'
                mem[mem[64] + 197] = 'uint256 takerFee,'
                mem[mem[64] + 214] = 'uint256 expirationTimeSeconds,'
                mem[mem[64] + 244] = 'uint256 salt,'
                mem[mem[64] + 257] = 'bytes makerAssetData,'
                mem[mem[64] + 278] = 'bytes takerAssetData'
                mem[mem[64] + 298] = ')'
                _2311 = mem[64]
                mem[mem[64]] = 267
                mem[64] = mem[64] + 299
                _2312 = mem[_2311]
                t = _2311 + 32
                u = _2310 + 299
                s = mem[_2311]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_2310 + floor32(mem[_2311]) + 299] = 256^(-(mem[_2311] % 32) + 32) - 1 and mem[_2310 + floor32(mem[_2311]) + 299] or mem[_2311 + floor32(mem[_2311]) + 32] and !(256^(-(mem[_2311] % 32) + 32) - 1)
                _2560 = mem[64]
                _2561 = sha3(mem[mem[64] len _2310 + _2312 + -mem[64] + 299])
                _2563 = mem[mem[_2299 + 320]]
                t = mem[_2299 + 320] + 32
                u = mem[64]
                s = mem[mem[_2299 + 320]]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[mem[_2299 + 320]])] = 256^(-(mem[mem[_2299 + 320]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[_2299 + 320]])] or mem[mem[_2299 + 320] + floor32(mem[mem[_2299 + 320]]) + 32] and !(256^(-(mem[mem[_2299 + 320]] % 32) + 32) - 1)
                _2808 = sha3(mem[mem[64] len _2560 + _2563 - mem[64]])
                _2810 = mem[mem[_2299 + 352]]
                t = mem[_2299 + 352] + 32
                u = mem[64]
                s = mem[mem[_2299 + 352]]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[mem[_2299 + 352]])] = mem[mem[64] + floor32(mem[mem[_2299 + 352]])] and 256^(-(mem[mem[_2299 + 352]] % 32) + 32) - 1 or mem[mem[_2299 + 352] + floor32(mem[mem[_2299 + 352]]) + 32] and !(256^(-(mem[mem[_2299 + 352]] % 32) + 32) - 1)
                _3026 = sha3(_2561, mem[_2299 len 320], _2808, sha3(mem[mem[64] len _2810]))
                mem[mem[64]] = 0x1901000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 2] = EIP712_DOMAIN_HASH
                mem[mem[64] + 34] = _3026
                mem[_2301 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _3026)
                mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3026)
                mem[32] = 4
                mem[_2301 + 64] = filled[6401][uint256(stor2.field_0)][_3026]
                if not mem[_2299 + 128]:
                    mem[_2301] = 1
                else:
                    if not mem[_2299 + 160]:
                        mem[_2301] = 2
                    else:
                        if filled[6401][uint256(stor2.field_0)][_3026] >= mem[_2299 + 160]:
                            mem[_2301] = 5
                        else:
                            if block.timestamp >= mem[_2299 + 256]:
                                mem[_2301] = 4
                            else:
                                mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3026)
                                mem[32] = 5
                                if stor5[6401][uint256(stor2.field_0)][_3026]:
                                    mem[_2301] = 6
                                else:
                                    _3105 = mem[_2299 + 288]
                                    mem[0] = mem[_2299 + 12 len 20]
                                    _3107 = sha3(mem[0], 6)
                                    mem[0] = mem[_2299 + 108 len 20]
                                    mem[32] = _3107
                                    if stor[_3107][mem[0]] <= _3105:
                                        mem[_2301] = 3
                                    else:
                                        mem[_2301] = 6
                require idx < mem[_2016]
                mem[_2016 + (32 * idx) + 32] = _2301
                idx = idx + 1
                continue 
            _2300 = mem[64]
            mem[mem[64]] = 32
            _2304 = mem[_2016]
            mem[mem[64] + 32] = mem[_2016]
            idx = 0
            s = _2016 + 32
            t = mem[64] + 64
            while idx < _2304:
                _2557 = mem[s]
                mem[t] = mem[mem[s] + 31 len 1]
                mem[t + 32] = mem[_2557 + 32]
                mem[t + 64] = mem[_2557 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _2300 + (96 * _2304) + -mem[64] + 64
        mem[64] = _2016 + (32 * _2015) + 128
        mem[_2016 + (32 * _2015) + 32] = 0
        mem[_2016 + (32 * _2015) + 64] = 0
        mem[_2016 + (32 * _2015) + 96] = 0
        mem[var57001] = _2016 + (32 * _2015) + 32
        s = var57001
        idx = var57002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[_2016 + (32 * _2015) + 32] = 0
            mem[_2016 + (32 * _2015) + 64] = 0
            mem[_2016 + (32 * _2015) + 96] = 0
            mem[s + 32] = _2016 + (32 * _2015) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while _2015 != idx:
            require idx < mem[_1726]
            _2815 = mem[(32 * idx) + _1726 + 32]
            _2828 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2828] = 0
            mem[_2828 + 32] = 0
            mem[_2828 + 64] = 0
            _2837 = mem[64]
            mem[mem[64] + 32] = 'Order('
            mem[mem[64] + 38] = 'address makerAddress,'
            mem[mem[64] + 59] = 'address takerAddress,'
            mem[mem[64] + 80] = 'address feeRecipientAddress,'
            mem[mem[64] + 108] = 'address senderAddress,'
            mem[mem[64] + 130] = 'uint256 makerAssetAmount,'
            mem[mem[64] + 155] = 'uint256 takerAssetAmount,'
            mem[mem[64] + 180] = 'uint256 makerFee,'
            mem[mem[64] + 197] = 'uint256 takerFee,'
            mem[mem[64] + 214] = 'uint256 expirationTimeSeconds,'
            mem[mem[64] + 244] = 'uint256 salt,'
            mem[mem[64] + 257] = 'bytes makerAssetData,'
            mem[mem[64] + 278] = 'bytes takerAssetData'
            mem[mem[64] + 298] = ')'
            _2838 = mem[64]
            mem[mem[64]] = 267
            mem[64] = mem[64] + 299
            _2839 = mem[_2838]
            t = _2838 + 32
            u = _2837 + 299
            s = mem[_2838]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_2837 + floor32(mem[_2838]) + 299] = 256^(-(mem[_2838] % 32) + 32) - 1 and mem[_2837 + floor32(mem[_2838]) + 299] or mem[_2838 + floor32(mem[_2838]) + 32] and !(256^(-(mem[_2838] % 32) + 32) - 1)
            _3031 = mem[64]
            _3032 = sha3(mem[mem[64] len _2837 + _2839 + -mem[64] + 299])
            _3034 = mem[mem[_2815 + 320]]
            t = mem[_2815 + 320] + 32
            u = mem[64]
            s = mem[mem[_2815 + 320]]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[_2815 + 320]])] = 256^(-(mem[mem[_2815 + 320]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[_2815 + 320]])] or mem[mem[_2815 + 320] + floor32(mem[mem[_2815 + 320]]) + 32] and !(256^(-(mem[mem[_2815 + 320]] % 32) + 32) - 1)
            _3210 = mem[64]
            _3211 = sha3(mem[mem[64] len _3031 + _3034 - mem[64]])
            _3213 = mem[mem[_2815 + 352]]
            t = mem[_2815 + 352] + 32
            u = mem[64]
            s = mem[mem[_2815 + 352]]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[_2815 + 352]])] = mem[mem[64] + floor32(mem[mem[_2815 + 352]])] and 256^(-(mem[mem[_2815 + 352]] % 32) + 32) - 1 or mem[mem[_2815 + 352] + floor32(mem[mem[_2815 + 352]]) + 32] and !(256^(-(mem[mem[_2815 + 352]] % 32) + 32) - 1)
            _3349 = sha3(_3032, mem[_2815 len 320], _3211, sha3(mem[mem[64] len _3210 + _3213 - mem[64]]))
            mem[mem[64]] = 0x1901000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 2] = EIP712_DOMAIN_HASH
            mem[mem[64] + 34] = _3349
            mem[_2828 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _3349)
            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3349)
            mem[32] = 4
            mem[_2828 + 64] = filled[6401][uint256(stor2.field_0)][_3349]
            if not mem[_2815 + 128]:
                mem[_2828] = 1
            else:
                if not mem[_2815 + 160]:
                    mem[_2828] = 2
                else:
                    if filled[6401][uint256(stor2.field_0)][_3349] >= mem[_2815 + 160]:
                        mem[_2828] = 5
                    else:
                        if block.timestamp >= mem[_2815 + 256]:
                            mem[_2828] = 4
                        else:
                            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3349)
                            mem[32] = 5
                            if stor5[6401][uint256(stor2.field_0)][_3349]:
                                mem[_2828] = 6
                            else:
                                _3413 = mem[_2815 + 288]
                                mem[0] = mem[_2815 + 12 len 20]
                                _3415 = sha3(mem[0], 6)
                                mem[0] = mem[_2815 + 108 len 20]
                                mem[32] = _3415
                                if stor[_3415][mem[0]] <= _3413:
                                    mem[_2828] = 3
                                else:
                                    mem[_2828] = 6
            require idx < mem[_2016]
            mem[_2016 + (32 * idx) + 32] = _2828
            idx = idx + 1
            continue 
        _2826 = mem[64]
        mem[mem[64]] = 32
        _2832 = mem[_2016]
        mem[mem[64] + 32] = mem[_2016]
        idx = 0
        s = _2016 + 32
        t = mem[64] + 64
        while idx < _2832:
            _3028 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_3028 + 32]
            mem[t + 64] = mem[_3028 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _2826 + (96 * _2832) + -mem[64] + 64
    mem[64] = _1726 + (32 * _1725) + 416
    mem[_1726 + (32 * _1725) + 32] = 0
    mem[_1726 + (32 * _1725) + 64] = 0
    mem[_1726 + (32 * _1725) + 96] = 0
    mem[_1726 + (32 * _1725) + 128] = 0
    mem[_1726 + (32 * _1725) + 160] = 0
    mem[_1726 + (32 * _1725) + 192] = 0
    mem[_1726 + (32 * _1725) + 224] = 0
    mem[_1726 + (32 * _1725) + 256] = 0
    mem[_1726 + (32 * _1725) + 288] = 0
    mem[_1726 + (32 * _1725) + 320] = 0
    mem[_1726 + (32 * _1725) + 352] = 96
    mem[_1726 + (32 * _1725) + 384] = 96
    mem[var52001] = _1726 + (32 * _1725) + 32
    s = var52001
    idx = var52002
    while idx - 1:
        mem[64] = mem[64] + 384
        mem[_1726 + (32 * _1725) + 32] = 0
        mem[_1726 + (32 * _1725) + 64] = 0
        mem[_1726 + (32 * _1725) + 96] = 0
        mem[_1726 + (32 * _1725) + 128] = 0
        mem[_1726 + (32 * _1725) + 160] = 0
        mem[_1726 + (32 * _1725) + 192] = 0
        mem[_1726 + (32 * _1725) + 224] = 0
        mem[_1726 + (32 * _1725) + 256] = 0
        mem[_1726 + (32 * _1725) + 288] = 0
        mem[_1726 + (32 * _1725) + 320] = 0
        mem[_1726 + (32 * _1725) + 352] = 96
        mem[_1726 + (32 * _1725) + 384] = 96
        mem[s + 32] = _1726 + (32 * _1725) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _2556 = mem[96]
    idx = 0
    while idx < _2556:
        require idx < mem[96]
        _2569 = mem[(32 * idx) + 128]
        require idx < mem[_578]
        _2579 = mem[(32 * idx) + _578 + 32]
        require idx < mem[_1153]
        _2581 = mem[(32 * idx) + _1153 + 32]
        _2597 = mem[64]
        mem[64] = mem[64] + 384
        mem[_2597] = 0
        mem[_2597 + 32] = 0
        mem[_2597 + 64] = 0
        mem[_2597 + 96] = 0
        mem[_2597 + 128] = 0
        mem[_2597 + 160] = 0
        mem[_2597 + 192] = 0
        mem[_2597 + 224] = 0
        mem[_2597 + 256] = 0
        mem[_2597 + 288] = 0
        mem[_2597 + 320] = 96
        mem[_2597 + 352] = 96
        _2602 = mem[64]
        mem[64] = mem[64] + 384
        mem[_2602] = mem[_2569 + 12 len 20]
        mem[_2602 + 32] = mem[_2569 + 44 len 20]
        mem[_2602 + 64] = mem[_2569 + 76 len 20]
        mem[_2602 + 96] = mem[_2569 + 108 len 20]
        mem[_2602 + 128] = mem[_2579]
        mem[_2602 + 160] = mem[_2579 + 32]
        mem[_2602 + 192] = mem[_2579 + 64]
        mem[_2602 + 224] = mem[_2579 + 96]
        mem[_2602 + 256] = mem[_2579 + 128]
        mem[_2602 + 288] = mem[_2579 + 160]
        mem[_2602 + 320] = mem[_2581]
        mem[_2602 + 352] = mem[_2581 + 32]
        require idx < mem[_1726]
        mem[_1726 + (32 * idx) + 32] = _2602
        idx = idx + 1
        continue 
    _2567 = mem[_1726]
    _2568 = mem[64]
    mem[mem[64]] = mem[_1726]
    mem[64] = mem[64] + (32 * _2567) + 32
    if not _2567:
        idx = 0
        while _2567 != idx:
            require idx < mem[_1726]
            _2816 = mem[(32 * idx) + _1726 + 32]
            _2829 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2829] = 0
            mem[_2829 + 32] = 0
            mem[_2829 + 64] = 0
            _2840 = mem[64]
            mem[mem[64] + 32] = 'Order('
            mem[mem[64] + 38] = 'address makerAddress,'
            mem[mem[64] + 59] = 'address takerAddress,'
            mem[mem[64] + 80] = 'address feeRecipientAddress,'
            mem[mem[64] + 108] = 'address senderAddress,'
            mem[mem[64] + 130] = 'uint256 makerAssetAmount,'
            mem[mem[64] + 155] = 'uint256 takerAssetAmount,'
            mem[mem[64] + 180] = 'uint256 makerFee,'
            mem[mem[64] + 197] = 'uint256 takerFee,'
            mem[mem[64] + 214] = 'uint256 expirationTimeSeconds,'
            mem[mem[64] + 244] = 'uint256 salt,'
            mem[mem[64] + 257] = 'bytes makerAssetData,'
            mem[mem[64] + 278] = 'bytes takerAssetData'
            mem[mem[64] + 298] = ')'
            _2841 = mem[64]
            mem[mem[64]] = 267
            mem[64] = mem[64] + 299
            _2842 = mem[_2841]
            t = _2841 + 32
            u = _2840 + 299
            s = mem[_2841]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_2840 + floor32(mem[_2841]) + 299] = 256^(-(mem[_2841] % 32) + 32) - 1 and mem[_2840 + floor32(mem[_2841]) + 299] or mem[_2841 + floor32(mem[_2841]) + 32] and !(256^(-(mem[_2841] % 32) + 32) - 1)
            _3040 = sha3(mem[mem[64] len _2840 + _2842 + -mem[64] + 299])
            _3042 = mem[mem[_2816 + 320]]
            t = mem[_2816 + 320] + 32
            u = mem[64]
            s = mem[mem[_2816 + 320]]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[_2816 + 320]])] = 256^(-(mem[mem[_2816 + 320]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[_2816 + 320]])] or mem[mem[_2816 + 320] + floor32(mem[mem[_2816 + 320]]) + 32] and !(256^(-(mem[mem[_2816 + 320]] % 32) + 32) - 1)
            _3217 = mem[64]
            _3218 = sha3(mem[mem[64] len _3042])
            _3220 = mem[mem[_2816 + 352]]
            t = mem[_2816 + 352] + 32
            u = mem[64]
            s = mem[mem[_2816 + 352]]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[_2816 + 352]])] = mem[mem[64] + floor32(mem[mem[_2816 + 352]])] and 256^(-(mem[mem[_2816 + 352]] % 32) + 32) - 1 or mem[mem[_2816 + 352] + floor32(mem[mem[_2816 + 352]]) + 32] and !(256^(-(mem[mem[_2816 + 352]] % 32) + 32) - 1)
            _3358 = sha3(_3040, mem[_2816 len 320], _3218, sha3(mem[mem[64] len _3217 + _3220 - mem[64]]))
            mem[mem[64]] = 0x1901000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 2] = EIP712_DOMAIN_HASH
            mem[mem[64] + 34] = _3358
            mem[_2829 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _3358)
            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3358)
            mem[32] = 4
            mem[_2829 + 64] = filled[6401][uint256(stor2.field_0)][_3358]
            if not mem[_2816 + 128]:
                mem[_2829] = 1
            else:
                if not mem[_2816 + 160]:
                    mem[_2829] = 2
                else:
                    if filled[6401][uint256(stor2.field_0)][_3358] >= mem[_2816 + 160]:
                        mem[_2829] = 5
                    else:
                        if block.timestamp >= mem[_2816 + 256]:
                            mem[_2829] = 4
                        else:
                            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3358)
                            mem[32] = 5
                            if stor5[6401][uint256(stor2.field_0)][_3358]:
                                mem[_2829] = 6
                            else:
                                _3419 = mem[_2816 + 288]
                                mem[0] = mem[_2816 + 12 len 20]
                                _3421 = sha3(mem[0], 6)
                                mem[0] = mem[_2816 + 108 len 20]
                                mem[32] = _3421
                                if stor[_3421][mem[0]] <= _3419:
                                    mem[_2829] = 3
                                else:
                                    mem[_2829] = 6
            require idx < mem[_2568]
            mem[_2568 + (32 * idx) + 32] = _2829
            idx = idx + 1
            continue 
        _2827 = mem[64]
        mem[mem[64]] = 32
        _2833 = mem[_2568]
        mem[mem[64] + 32] = mem[_2568]
        idx = 0
        s = _2568 + 32
        t = mem[64] + 64
        while idx < _2833:
            _3036 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_3036 + 32]
            mem[t + 64] = mem[_3036 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _2827 + (96 * _2833) + -mem[64] + 64
    mem[64] = _2568 + (32 * _2567) + 128
    mem[_2568 + (32 * _2567) + 32] = 0
    mem[_2568 + (32 * _2567) + 64] = 0
    mem[_2568 + (32 * _2567) + 96] = 0
    mem[var64001] = _2568 + (32 * _2567) + 32
    s = var64001
    idx = var64002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_2568 + (32 * _2567) + 32] = 0
        mem[_2568 + (32 * _2567) + 64] = 0
        mem[_2568 + (32 * _2567) + 96] = 0
        mem[s + 32] = _2568 + (32 * _2567) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while _2567 != idx:
        require idx < mem[_1726]
        _3223 = mem[(32 * idx) + _1726 + 32]
        _3243 = mem[64]
        mem[64] = mem[64] + 96
        mem[_3243] = 0
        mem[_3243 + 32] = 0
        mem[_3243 + 64] = 0
        _3253 = mem[64]
        mem[mem[64] + 32] = 'Order('
        mem[mem[64] + 38] = 'address makerAddress,'
        mem[mem[64] + 59] = 'address takerAddress,'
        mem[mem[64] + 80] = 'address feeRecipientAddress,'
        mem[mem[64] + 108] = 'address senderAddress,'
        mem[mem[64] + 130] = 'uint256 makerAssetAmount,'
        mem[mem[64] + 155] = 'uint256 takerAssetAmount,'
        mem[mem[64] + 180] = 'uint256 makerFee,'
        mem[mem[64] + 197] = 'uint256 takerFee,'
        mem[mem[64] + 214] = 'uint256 expirationTimeSeconds,'
        mem[mem[64] + 244] = 'uint256 salt,'
        mem[mem[64] + 257] = 'bytes makerAssetData,'
        mem[mem[64] + 278] = 'bytes takerAssetData'
        mem[mem[64] + 298] = ')'
        _3254 = mem[64]
        mem[mem[64]] = 267
        mem[64] = mem[64] + 299
        _3255 = mem[_3254]
        t = _3254 + 32
        u = _3253 + 299
        s = mem[_3254]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_3253 + floor32(mem[_3254]) + 299] = 256^(-(mem[_3254] % 32) + 32) - 1 and mem[_3253 + floor32(mem[_3254]) + 299] or mem[_3254 + floor32(mem[_3254]) + 32] and !(256^(-(mem[_3254] % 32) + 32) - 1)
        _3363 = mem[64]
        _3364 = sha3(mem[mem[64] len _3253 + _3255 + -mem[64] + 299])
        _3366 = mem[mem[_3223 + 320]]
        t = mem[_3223 + 320] + 32
        u = mem[64]
        s = mem[mem[_3223 + 320]]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[mem[_3223 + 320]])] = 256^(-(mem[mem[_3223 + 320]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[_3223 + 320]])] or mem[mem[_3223 + 320] + floor32(mem[mem[_3223 + 320]]) + 32] and !(256^(-(mem[mem[_3223 + 320]] % 32) + 32) - 1)
        _3456 = mem[64]
        _3457 = sha3(mem[mem[64] len _3363 + _3366 - mem[64]])
        _3459 = mem[mem[_3223 + 352]]
        t = mem[_3223 + 352] + 32
        u = mem[64]
        s = mem[mem[_3223 + 352]]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[mem[_3223 + 352]])] = mem[mem[64] + floor32(mem[mem[_3223 + 352]])] and 256^(-(mem[mem[_3223 + 352]] % 32) + 32) - 1 or mem[mem[_3223 + 352] + floor32(mem[mem[_3223 + 352]]) + 32] and !(256^(-(mem[mem[_3223 + 352]] % 32) + 32) - 1)
        _3499 = sha3(_3364, mem[_3223 len 320], _3457, sha3(mem[mem[64] len _3456 + _3459 - mem[64]]))
        mem[mem[64]] = 0x1901000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 2] = EIP712_DOMAIN_HASH
        mem[mem[64] + 34] = _3499
        mem[_3243 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _3499)
        mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3499)
        mem[32] = 4
        mem[_3243 + 64] = filled[6401][uint256(stor2.field_0)][_3499]
        if not mem[_3223 + 128]:
            mem[_3243] = 1
        else:
            if not mem[_3223 + 160]:
                mem[_3243] = 2
            else:
                if filled[6401][uint256(stor2.field_0)][_3499] >= mem[_3223 + 160]:
                    mem[_3243] = 5
                else:
                    if block.timestamp >= mem[_3223 + 256]:
                        mem[_3243] = 4
                    else:
                        mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3499)
                        mem[32] = 5
                        if stor5[6401][uint256(stor2.field_0)][_3499]:
                            mem[_3243] = 6
                        else:
                            _3512 = mem[_3223 + 288]
                            mem[0] = mem[_3223 + 12 len 20]
                            _3514 = sha3(mem[0], 6)
                            mem[0] = mem[_3223 + 108 len 20]
                            mem[32] = _3514
                            if stor[_3514][mem[0]] <= _3512:
                                mem[_3243] = 3
                            else:
                                mem[_3243] = 6
        require idx < mem[_2568]
        mem[_2568 + (32 * idx) + 32] = _3243
        idx = idx + 1
        continue 
    _3242 = mem[64]
    mem[mem[64]] = 32
    _3248 = mem[_2568]
    mem[mem[64] + 32] = mem[_2568]
    idx = 0
    s = _2568 + 32
    t = mem[64] + 64
    while idx < _3248:
        _3360 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_3360 + 32]
        mem[t + 64] = mem[_3360 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _3242 + (96 * _3248) + -mem[64] + 64
}

function sub_933f782c(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size > s + 31
        _832 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require s + 128 <= calldata.size
        u = 0
        v = s
        w = _832
        while u < 4:
            mem[w] = address(cd[v])
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _832
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    _833 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_833] = ('cd', 36).length
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _833 + 32
    while idx < ('cd', 36).length:
        require calldata.size > s + 31
        _1662 = mem[64]
        require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
        mem[64] = mem[64] + 192
        require s + 192 <= calldata.size
        u = 0
        v = s
        w = _1662
        while u < 6:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1662
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    _1663 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_1663] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _1663 + 32
    while idx < ('cd', 68).length:
        require calldata.size > cd[68] + cd[s] + 67
        _2490 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        u = 0
        v = cd[68] + cd[s] + 36
        w = _2490
        while u < 2:
            require calldata.size > cd[68] + cd[s] + cd[v] + 67
            require cd[(cd[68] + cd[s] + cd[v] + 36)] <= test266151307()
            _2908 = mem[64]
            require mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + cd[v] + 36)]) + 32
            mem[_2908] = cd[(cd[68] + cd[s] + cd[v] + 36)]
            require cd[68] + cd[s] + cd[v] + cd[(cd[68] + cd[s] + cd[v] + 36)] + 68 <= calldata.size
            mem[_2908 + 32 len cd[(cd[68] + cd[s] + cd[v] + 36)]] = call.data[cd[68] + cd[s] + cd[v] + 68 len cd[(cd[68] + cd[s] + cd[v] + 36)]]
            mem[cd[(cd[68] + cd[s] + cd[v] + 36)] + _2908 + 32] = 0
            mem[w] = _2908
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _2490
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require calldata.size > cd[132] + 35
    require ('cd', 132).length <= test266151307()
    _2491 = mem[64]
    require mem[64] + (32 * ('cd', 132).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 132).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 132).length) + 32
    mem[_2491] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = _2491 + 32
    while idx < ('cd', 132).length:
        require calldata.size > cd[132] + cd[s] + 67
        require cd[(cd[132] + cd[s] + 36)] <= test266151307()
        _2907 = mem[64]
        require mem[64] + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32
        mem[_2907] = cd[(cd[132] + cd[s] + 36)]
        require cd[132] + cd[s] + cd[(cd[132] + cd[s] + 36)] + 68 <= calldata.size
        mem[_2907 + 32 len cd[(cd[132] + cd[s] + 36)]] = call.data[cd[132] + cd[s] + 68 len cd[(cd[132] + cd[s] + 36)]]
        mem[cd[(cd[132] + cd[s] + 36)] + _2907 + 32] = 0
        mem[t] = _2907
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _2904 = mem[64]
    mem[64] = mem[64] + 128
    mem[_2904] = 0
    mem[_2904 + 32] = 0
    mem[_2904 + 64] = 0
    mem[_2904 + 96] = 0
    _2905 = mem[96]
    _2906 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _2905) + 32
    if not _2905:
        _3316 = mem[96]
        idx = 0
        while idx < _3316:
            require idx < mem[96]
            _3319 = mem[(32 * idx) + 128]
            require idx < mem[_833]
            _3322 = mem[(32 * idx) + _833 + 32]
            require idx < mem[_1663]
            _3324 = mem[(32 * idx) + _1663 + 32]
            _3328 = mem[64]
            mem[64] = mem[64] + 384
            mem[_3328] = 0
            mem[_3328 + 32] = 0
            mem[_3328 + 64] = 0
            mem[_3328 + 96] = 0
            mem[_3328 + 128] = 0
            mem[_3328 + 160] = 0
            mem[_3328 + 192] = 0
            mem[_3328 + 224] = 0
            mem[_3328 + 256] = 0
            mem[_3328 + 288] = 0
            mem[_3328 + 320] = 96
            mem[_3328 + 352] = 96
            _3333 = mem[64]
            mem[64] = mem[64] + 384
            mem[_3333] = mem[_3319 + 12 len 20]
            mem[_3333 + 32] = mem[_3319 + 44 len 20]
            mem[_3333 + 64] = mem[_3319 + 76 len 20]
            mem[_3333 + 96] = mem[_3319 + 108 len 20]
            mem[_3333 + 128] = mem[_3322]
            mem[_3333 + 160] = mem[_3322 + 32]
            mem[_3333 + 192] = mem[_3322 + 64]
            mem[_3333 + 224] = mem[_3322 + 96]
            mem[_3333 + 256] = mem[_3322 + 128]
            mem[_3333 + 288] = mem[_3322 + 160]
            mem[_3333 + 320] = mem[_3324]
            mem[_3333 + 352] = mem[_3324 + 32]
            require idx < mem[_2906]
            mem[_2906 + (32 * idx) + 32] = _3333
            _3316 = mem[96]
            idx = idx + 1
            continue 
        _3321 = mem[64]
        mem[64] = mem[64] + 128
        mem[_3321] = 0
        mem[_3321 + 32] = 0
        mem[_3321 + 64] = 0
        mem[_3321 + 96] = 0
        _3325 = mem[64]
        mem[64] = mem[64] + 128
        mem[_3325] = 0
        mem[_3325 + 32] = 0
        mem[_3325 + 64] = 0
        mem[_3325 + 96] = 0
        require 0 < mem[_2906]
        _3331 = mem[mem[_2906 + 32] + 320]
        _3332 = mem[_2906]
        s = _3325
        s = 0
        s = 0
        idx = 0
        while _3332 != idx:
            require idx < mem[_2906]
            mem[mem[_2906 + (32 * idx) + 32] + 320] = _3331
            _3726 = mem[_3321]
            if mem[_3321] > cd[100]:
                revert with 0, 'UINT256_UNDERFLOW'
            require idx < mem[_2906]
            _3736 = mem[mem[(32 * idx) + _2906 + 32] + 160]
            require idx < mem[_2906]
            _3742 = mem[mem[(32 * idx) + _2906 + 32] + 128]
            if mem[mem[(32 * idx) + _2906 + 32] + 128] <= 0:
                revert with 0, 'DIVISION_BY_ZERO'
            if not mem[mem[(32 * idx) + _2906 + 32] + 160]:
                require mem[mem[(32 * idx) + _2906 + 32] + 128]
                require idx < mem[_2906]
                _3780 = mem[(32 * idx) + _2906 + 32]
                require idx < mem[_2491]
                _3786 = mem[(32 * idx) + _2491 + 32]
                _3794 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3794] = 0
                mem[_3794 + 32] = 0
                mem[_3794 + 64] = 0
                mem[_3794 + 96] = 0
                _3798 = mem[64]
                mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 36] = 96
                mem[mem[64] + 132] = mem[_3780]
                mem[mem[64] + 164] = mem[_3780 + 32]
                mem[mem[64] + 196] = mem[_3780 + 64]
                mem[mem[64] + 228] = mem[_3780 + 96]
                mem[mem[64] + 260] = mem[_3780 + 128]
                mem[mem[64] + 292] = mem[_3780 + 160]
                mem[mem[64] + 324] = mem[_3780 + 192]
                mem[mem[64] + 356] = mem[_3780 + 224]
                mem[mem[64] + 388] = mem[_3780 + 256]
                mem[mem[64] + 420] = mem[_3780 + 288]
                mem[mem[64] + 452] = mem[_3780 + 320]
                mem[mem[64] + 484] = mem[_3780 + 352]
                mem[mem[64] + 452] = 384
                _3811 = mem[_3780 + 320]
                _3812 = mem[mem[_3780 + 320]]
                mem[mem[64] + 516] = mem[mem[_3780 + 320]]
                s = 0
                t = _3811 + 32
                u = mem[64] + 548
                while s < _3812 + 31 / 32:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_3798 + 484] = ceil32(_3812) + 416
                _4106 = mem[_3780 + 352]
                _4107 = mem[mem[_3780 + 352]]
                mem[_3798 + ceil32(_3812) + 548] = mem[mem[_3780 + 352]]
                s = 0
                t = _4106 + 32
                u = _3798 + ceil32(_3812) + 580
                while s < _4107 + 31 / 32:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_3798 + 68] = 0 / _3742
                mem[_3798 + 100] = ceil32(_3812) + ceil32(_4107) + 544
                _4421 = mem[_3786]
                mem[_3798 + ceil32(_3812) + ceil32(_4107) + 580] = mem[_3786]
                s = 0
                t = _3786 + 32
                u = _3798 + ceil32(_3812) + ceil32(_4107) + 612
                while s < _4421 + 31 / 32:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[64] = _3798 + ceil32(_3812) + ceil32(_4107) + ceil32(_4421) + 612
                delegate this.address.mem[_3798 + 32 len 4] with:
                     gas gas_remaining wei
                    args mem[_3798 + 36], 0 / _3742, ceil32(_3812) + ceil32(_4107) + 544, mem[_3798 + 132 len 352], ceil32(_3812) + 416, mem[_3798 + 516 len ceil32(_3812) + ceil32(_4107) + ceil32(_4421) + 96]
                mem[_3798 len 128] = delegate.return_data[0 len 128]
                if not delegate.return_code:
                    if mem[_3794] + mem[_3321] < mem[_3321]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_3321] = mem[_3794] + mem[_3321]
                    if mem[_3794 + 32] + mem[_3321 + 32] < mem[_3321 + 32]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_3321 + 32] = mem[_3794 + 32] + mem[_3321 + 32]
                    if mem[_3794 + 64] + mem[_3321 + 64] < mem[_3321 + 64]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_3321 + 64] = mem[_3794 + 64] + mem[_3321 + 64]
                    if mem[_3794 + 96] + mem[_3321 + 96] < mem[_3321 + 96]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_3321 + 96] = mem[_3794 + 96] + mem[_3321 + 96]
                else:
                    mem[_3794] = delegate.return_data[0]
                    mem[_3794 + 32] = delegate.return_data[32]
                    mem[_3794 + 64] = delegate.return_data[64]
                    mem[_3794 + 96] = delegate.return_data[96]
                    if delegate.return_data[0] + mem[_3321] < mem[_3321]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_3321] = delegate.return_data[0] + mem[_3321]
                    if delegate.return_data[32] + mem[_3321 + 32] < mem[_3321 + 32]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_3321 + 32] = delegate.return_data[32] + mem[_3321 + 32]
                    if delegate.return_data[64] + mem[_3321 + 64] < mem[_3321 + 64]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_3321 + 64] = delegate.return_data[64] + mem[_3321 + 64]
                    if delegate.return_data[96] + mem[_3321 + 96] < mem[_3321 + 96]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_3321 + 96] = delegate.return_data[96] + mem[_3321 + 96]
                if cd[100] > mem[_3321]:
                    s = _3794
                    s = 0 / _3742
                    s = cd[100] - _3726
                    idx = idx + 1
                    continue 
                mem[_3798 + ceil32(_3812) + ceil32(_4107) + ceil32(_4421) + 612] = mem[_3321]
                mem[_3798 + ceil32(_3812) + ceil32(_4107) + ceil32(_4421) + 644] = mem[_3321 + 32]
                mem[_3798 + ceil32(_3812) + ceil32(_4107) + ceil32(_4421) + 676] = mem[_3321 + 64]
                mem[_3798 + ceil32(_3812) + ceil32(_4107) + ceil32(_4421) + 708] = mem[_3321 + 96]
                return memory
                  from _3798 + ceil32(_3812) + ceil32(_4107) + ceil32(_4421) + 612
                   len 128
            if (cd[100] * mem[mem[(32 * idx) + _2906 + 32] + 160]) - (mem[_3321] * mem[mem[(32 * idx) + _2906 + 32] + 160]) / mem[mem[(32 * idx) + _2906 + 32] + 160] != cd[100] - mem[_3321]:
                revert with 0, 'UINT256_OVERFLOW'
            require mem[mem[(32 * idx) + _2906 + 32] + 128]
            require idx < mem[_2906]
            _3790 = mem[(32 * idx) + _2906 + 32]
            require idx < mem[_2491]
            _3793 = mem[(32 * idx) + _2491 + 32]
            _3797 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3797] = 0
            mem[_3797 + 32] = 0
            mem[_3797 + 64] = 0
            mem[_3797 + 96] = 0
            _3814 = mem[64]
            mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 96
            mem[mem[64] + 132] = mem[_3790]
            mem[mem[64] + 164] = mem[_3790 + 32]
            mem[mem[64] + 196] = mem[_3790 + 64]
            mem[mem[64] + 228] = mem[_3790 + 96]
            mem[mem[64] + 260] = mem[_3790 + 128]
            mem[mem[64] + 292] = mem[_3790 + 160]
            mem[mem[64] + 324] = mem[_3790 + 192]
            mem[mem[64] + 356] = mem[_3790 + 224]
            mem[mem[64] + 388] = mem[_3790 + 256]
            mem[mem[64] + 420] = mem[_3790 + 288]
            mem[mem[64] + 452] = mem[_3790 + 320]
            mem[mem[64] + 484] = mem[_3790 + 352]
            mem[mem[64] + 452] = 384
            _3827 = mem[_3790 + 320]
            _3828 = mem[mem[_3790 + 320]]
            mem[mem[64] + 516] = mem[mem[_3790 + 320]]
            s = 0
            t = _3827 + 32
            u = mem[64] + 548
            while s < _3828 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_3814 + 484] = ceil32(_3828) + 416
            _4103 = mem[_3790 + 352]
            _4104 = mem[mem[_3790 + 352]]
            mem[_3814 + ceil32(_3828) + 548] = mem[mem[_3790 + 352]]
            s = 0
            t = _4103 + 32
            u = _3814 + ceil32(_3828) + 580
            while s < _4104 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_3814 + 68] = (cd[100] * _3736) - (_3726 * _3736) / _3742
            mem[_3814 + 100] = ceil32(_3828) + ceil32(_4104) + 544
            _4419 = mem[_3793]
            mem[_3814 + ceil32(_3828) + ceil32(_4104) + 580] = mem[_3793]
            s = 0
            t = _3793 + 32
            u = _3814 + ceil32(_3828) + ceil32(_4104) + 612
            while s < _4419 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[64] = _3814 + ceil32(_3828) + ceil32(_4104) + ceil32(_4419) + 612
            delegate this.address.mem[_3814 + 32 len 4] with:
                 gas gas_remaining wei
                args mem[_3814 + 36], (cd[100] * _3736) - (_3726 * _3736) / _3742, ceil32(_3828) + ceil32(_4104) + 544, mem[_3814 + 132 len 352], ceil32(_3828) + 416, mem[_3814 + 516 len ceil32(_3828) + ceil32(_4104) + ceil32(_4419) + 96]
            mem[_3814 len 128] = delegate.return_data[0 len 128]
            if not delegate.return_code:
                if mem[_3797] + mem[_3321] < mem[_3321]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_3321] = mem[_3797] + mem[_3321]
                if mem[_3797 + 32] + mem[_3321 + 32] < mem[_3321 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_3321 + 32] = mem[_3797 + 32] + mem[_3321 + 32]
                if mem[_3797 + 64] + mem[_3321 + 64] < mem[_3321 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_3321 + 64] = mem[_3797 + 64] + mem[_3321 + 64]
                if mem[_3797 + 96] + mem[_3321 + 96] < mem[_3321 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_3321 + 96] = mem[_3797 + 96] + mem[_3321 + 96]
            else:
                mem[_3797] = delegate.return_data[0]
                mem[_3797 + 32] = delegate.return_data[32]
                mem[_3797 + 64] = delegate.return_data[64]
                mem[_3797 + 96] = delegate.return_data[96]
                if delegate.return_data[0] + mem[_3321] < mem[_3321]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_3321] = delegate.return_data[0] + mem[_3321]
                if delegate.return_data[32] + mem[_3321 + 32] < mem[_3321 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_3321 + 32] = delegate.return_data[32] + mem[_3321 + 32]
                if delegate.return_data[64] + mem[_3321 + 64] < mem[_3321 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_3321 + 64] = delegate.return_data[64] + mem[_3321 + 64]
                if delegate.return_data[96] + mem[_3321 + 96] < mem[_3321 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_3321 + 96] = delegate.return_data[96] + mem[_3321 + 96]
            if cd[100] > mem[_3321]:
                s = _3797
                s = (cd[100] * _3736) - (_3726 * _3736) / _3742
                s = cd[100] - _3726
                idx = idx + 1
                continue 
            mem[_3814 + ceil32(_3828) + ceil32(_4104) + ceil32(_4419) + 612] = mem[_3321]
            mem[_3814 + ceil32(_3828) + ceil32(_4104) + ceil32(_4419) + 644] = mem[_3321 + 32]
            mem[_3814 + ceil32(_3828) + ceil32(_4104) + ceil32(_4419) + 676] = mem[_3321 + 64]
            mem[_3814 + ceil32(_3828) + ceil32(_4104) + ceil32(_4419) + 708] = mem[_3321 + 96]
            return memory
              from _3814 + ceil32(_3828) + ceil32(_4104) + ceil32(_4419) + 612
               len 128
        mem[mem[64]] = mem[_3321]
        mem[mem[64] + 32] = mem[_3321 + 32]
        mem[mem[64] + 64] = mem[_3321 + 64]
        mem[mem[64] + 96] = mem[_3321 + 96]
    else:
        mem[64] = _2906 + (32 * _2905) + 416
        mem[_2906 + (32 * _2905) + 32] = 0
        mem[_2906 + (32 * _2905) + 64] = 0
        mem[_2906 + (32 * _2905) + 96] = 0
        mem[_2906 + (32 * _2905) + 128] = 0
        mem[_2906 + (32 * _2905) + 160] = 0
        mem[_2906 + (32 * _2905) + 192] = 0
        mem[_2906 + (32 * _2905) + 224] = 0
        mem[_2906 + (32 * _2905) + 256] = 0
        mem[_2906 + (32 * _2905) + 288] = 0
        mem[_2906 + (32 * _2905) + 320] = 0
        mem[_2906 + (32 * _2905) + 352] = 96
        mem[_2906 + (32 * _2905) + 384] = 96
        mem[var71001] = _2906 + (32 * _2905) + 32
        s = var71001
        s = var71002
        while _2491 + (32 * ('cd', 132).length) + 31:
            mem[64] = mem[64] + 384
            mem[_2906 + (32 * _2905) + 32] = 0
            mem[_2906 + (32 * _2905) + 64] = 0
            mem[_2906 + (32 * _2905) + 96] = 0
            mem[_2906 + (32 * _2905) + 128] = 0
            mem[_2906 + (32 * _2905) + 160] = 0
            mem[_2906 + (32 * _2905) + 192] = 0
            mem[_2906 + (32 * _2905) + 224] = 0
            mem[_2906 + (32 * _2905) + 256] = 0
            mem[_2906 + (32 * _2905) + 288] = 0
            mem[_2906 + (32 * _2905) + 320] = 0
            mem[_2906 + (32 * _2905) + 352] = 96
            mem[_2906 + (32 * _2905) + 384] = 96
            mem[cd[132] + (32 * ('cd', 132).length) + 68] = _2906 + (32 * _2905) + 32
            s = cd[132] + (32 * ('cd', 132).length) + 68
            s = _2491 + (32 * ('cd', 132).length) + 31
            continue 
        _4102 = mem[96]
        idx = 0
        while idx < _4102:
            require idx < mem[96]
            _4110 = mem[(32 * idx) + 128]
            require idx < mem[_833]
            _4117 = mem[(32 * idx) + _833 + 32]
            require idx < mem[_1663]
            _4119 = mem[(32 * idx) + _1663 + 32]
            _4126 = mem[64]
            mem[64] = mem[64] + 384
            mem[_4126] = 0
            mem[_4126 + 32] = 0
            mem[_4126 + 64] = 0
            mem[_4126 + 96] = 0
            mem[_4126 + 128] = 0
            mem[_4126 + 160] = 0
            mem[_4126 + 192] = 0
            mem[_4126 + 224] = 0
            mem[_4126 + 256] = 0
            mem[_4126 + 288] = 0
            mem[_4126 + 320] = 96
            mem[_4126 + 352] = 96
            _4138 = mem[64]
            mem[64] = mem[64] + 384
            mem[_4138] = mem[_4110 + 12 len 20]
            mem[_4138 + 32] = mem[_4110 + 44 len 20]
            mem[_4138 + 64] = mem[_4110 + 76 len 20]
            mem[_4138 + 96] = mem[_4110 + 108 len 20]
            mem[_4138 + 128] = mem[_4117]
            mem[_4138 + 160] = mem[_4117 + 32]
            mem[_4138 + 192] = mem[_4117 + 64]
            mem[_4138 + 224] = mem[_4117 + 96]
            mem[_4138 + 256] = mem[_4117 + 128]
            mem[_4138 + 288] = mem[_4117 + 160]
            mem[_4138 + 320] = mem[_4119]
            mem[_4138 + 352] = mem[_4119 + 32]
            require idx < mem[_2906]
            mem[_2906 + (32 * idx) + 32] = _4138
            _4102 = mem[96]
            idx = idx + 1
            continue 
        _4116 = mem[64]
        mem[64] = mem[64] + 128
        mem[_4116] = 0
        mem[_4116 + 32] = 0
        mem[_4116 + 64] = 0
        mem[_4116 + 96] = 0
        _4122 = mem[64]
        mem[64] = mem[64] + 128
        mem[_4122] = 0
        mem[_4122 + 32] = 0
        mem[_4122 + 64] = 0
        mem[_4122 + 96] = 0
        require 0 < mem[_2906]
        _4136 = mem[mem[_2906 + 32] + 320]
        _4137 = mem[_2906]
        s = _4122
        s = 0
        s = 0
        idx = 0
        while _4137 != idx:
            require idx < mem[_2906]
            mem[mem[_2906 + (32 * idx) + 32] + 320] = _4136
            _4425 = mem[_4116]
            if mem[_4116] > cd[100]:
                revert with 0, 'UINT256_UNDERFLOW'
            require idx < mem[_2906]
            _4443 = mem[mem[(32 * idx) + _2906 + 32] + 160]
            require idx < mem[_2906]
            _4450 = mem[mem[(32 * idx) + _2906 + 32] + 128]
            if mem[mem[(32 * idx) + _2906 + 32] + 128] <= 0:
                revert with 0, 'DIVISION_BY_ZERO'
            if not mem[mem[(32 * idx) + _2906 + 32] + 160]:
                require mem[mem[(32 * idx) + _2906 + 32] + 128]
                require idx < mem[_2906]
                _4500 = mem[(32 * idx) + _2906 + 32]
                require idx < mem[_2491]
                _4507 = mem[(32 * idx) + _2491 + 32]
                _4519 = mem[64]
                mem[64] = mem[64] + 128
                mem[_4519] = 0
                mem[_4519 + 32] = 0
                mem[_4519 + 64] = 0
                mem[_4519 + 96] = 0
                _4526 = mem[64]
                mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 36] = 96
                mem[mem[64] + 132] = mem[_4500]
                mem[mem[64] + 164] = mem[_4500 + 32]
                mem[mem[64] + 196] = mem[_4500 + 64]
                mem[mem[64] + 228] = mem[_4500 + 96]
                mem[mem[64] + 260] = mem[_4500 + 128]
                mem[mem[64] + 292] = mem[_4500 + 160]
                mem[mem[64] + 324] = mem[_4500 + 192]
                mem[mem[64] + 356] = mem[_4500 + 224]
                mem[mem[64] + 388] = mem[_4500 + 256]
                mem[mem[64] + 420] = mem[_4500 + 288]
                mem[mem[64] + 452] = mem[_4500 + 320]
                mem[mem[64] + 484] = mem[_4500 + 352]
                mem[mem[64] + 452] = 384
                _4539 = mem[_4500 + 320]
                _4540 = mem[mem[_4500 + 320]]
                mem[mem[64] + 516] = mem[mem[_4500 + 320]]
                s = 0
                t = _4539 + 32
                u = mem[64] + 548
                while s < _4540 + 31 / 32:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_4526 + 484] = ceil32(_4540) + 416
                _4707 = mem[_4500 + 352]
                _4708 = mem[mem[_4500 + 352]]
                mem[_4526 + ceil32(_4540) + 548] = mem[mem[_4500 + 352]]
                s = 0
                t = _4707 + 32
                u = _4526 + ceil32(_4540) + 580
                while s < _4708 + 31 / 32:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_4526 + 68] = 0 / _4450
                mem[_4526 + 100] = ceil32(_4540) + ceil32(_4708) + 544
                _4922 = mem[_4507]
                mem[_4526 + ceil32(_4540) + ceil32(_4708) + 580] = mem[_4507]
                s = 0
                t = _4507 + 32
                u = _4526 + ceil32(_4540) + ceil32(_4708) + 612
                while s < _4922 + 31 / 32:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[64] = _4526 + ceil32(_4540) + ceil32(_4708) + ceil32(_4922) + 612
                delegate this.address.mem[_4526 + 32 len 4] with:
                     gas gas_remaining wei
                    args mem[_4526 + 36], 0 / _4450, ceil32(_4540) + ceil32(_4708) + 544, mem[_4526 + 132 len 352], ceil32(_4540) + 416, mem[_4526 + 516 len ceil32(_4540) + ceil32(_4708) + ceil32(_4922) + 96]
                mem[_4526 len 128] = delegate.return_data[0 len 128]
                if not delegate.return_code:
                    if mem[_4519] + mem[_4116] < mem[_4116]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_4116] = mem[_4519] + mem[_4116]
                    if mem[_4519 + 32] + mem[_4116 + 32] < mem[_4116 + 32]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_4116 + 32] = mem[_4519 + 32] + mem[_4116 + 32]
                    if mem[_4519 + 64] + mem[_4116 + 64] < mem[_4116 + 64]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_4116 + 64] = mem[_4519 + 64] + mem[_4116 + 64]
                    if mem[_4519 + 96] + mem[_4116 + 96] < mem[_4116 + 96]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_4116 + 96] = mem[_4519 + 96] + mem[_4116 + 96]
                else:
                    mem[_4519] = delegate.return_data[0]
                    mem[_4519 + 32] = delegate.return_data[32]
                    mem[_4519 + 64] = delegate.return_data[64]
                    mem[_4519 + 96] = delegate.return_data[96]
                    if delegate.return_data[0] + mem[_4116] < mem[_4116]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_4116] = delegate.return_data[0] + mem[_4116]
                    if delegate.return_data[32] + mem[_4116 + 32] < mem[_4116 + 32]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_4116 + 32] = delegate.return_data[32] + mem[_4116 + 32]
                    if delegate.return_data[64] + mem[_4116 + 64] < mem[_4116 + 64]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_4116 + 64] = delegate.return_data[64] + mem[_4116 + 64]
                    if delegate.return_data[96] + mem[_4116 + 96] < mem[_4116 + 96]:
                        revert with 0, 'UINT256_OVERFLOW'
                    mem[_4116 + 96] = delegate.return_data[96] + mem[_4116 + 96]
                if cd[100] > mem[_4116]:
                    s = _4519
                    s = 0 / _4450
                    s = cd[100] - _4425
                    idx = idx + 1
                    continue 
                mem[_4526 + ceil32(_4540) + ceil32(_4708) + ceil32(_4922) + 612] = mem[_4116]
                mem[_4526 + ceil32(_4540) + ceil32(_4708) + ceil32(_4922) + 644] = mem[_4116 + 32]
                mem[_4526 + ceil32(_4540) + ceil32(_4708) + ceil32(_4922) + 676] = mem[_4116 + 64]
                mem[_4526 + ceil32(_4540) + ceil32(_4708) + ceil32(_4922) + 708] = mem[_4116 + 96]
                return memory
                  from _4526 + ceil32(_4540) + ceil32(_4708) + ceil32(_4922) + 612
                   len 128
            if (cd[100] * mem[mem[(32 * idx) + _2906 + 32] + 160]) - (mem[_4116] * mem[mem[(32 * idx) + _2906 + 32] + 160]) / mem[mem[(32 * idx) + _2906 + 32] + 160] != cd[100] - mem[_4116]:
                revert with 0, 'UINT256_OVERFLOW'
            require mem[mem[(32 * idx) + _2906 + 32] + 128]
            require idx < mem[_2906]
            _4512 = mem[(32 * idx) + _2906 + 32]
            require idx < mem[_2491]
            _4518 = mem[(32 * idx) + _2491 + 32]
            _4525 = mem[64]
            mem[64] = mem[64] + 128
            mem[_4525] = 0
            mem[_4525 + 32] = 0
            mem[_4525 + 64] = 0
            mem[_4525 + 96] = 0
            _4547 = mem[64]
            mem[mem[64] + 32] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 96
            mem[mem[64] + 132] = mem[_4512]
            mem[mem[64] + 164] = mem[_4512 + 32]
            mem[mem[64] + 196] = mem[_4512 + 64]
            mem[mem[64] + 228] = mem[_4512 + 96]
            mem[mem[64] + 260] = mem[_4512 + 128]
            mem[mem[64] + 292] = mem[_4512 + 160]
            mem[mem[64] + 324] = mem[_4512 + 192]
            mem[mem[64] + 356] = mem[_4512 + 224]
            mem[mem[64] + 388] = mem[_4512 + 256]
            mem[mem[64] + 420] = mem[_4512 + 288]
            mem[mem[64] + 452] = mem[_4512 + 320]
            mem[mem[64] + 484] = mem[_4512 + 352]
            mem[mem[64] + 452] = 384
            _4560 = mem[_4512 + 320]
            _4561 = mem[mem[_4512 + 320]]
            mem[mem[64] + 516] = mem[mem[_4512 + 320]]
            s = 0
            t = _4560 + 32
            u = mem[64] + 548
            while s < _4561 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_4547 + 484] = ceil32(_4561) + 416
            _4704 = mem[_4512 + 352]
            _4705 = mem[mem[_4512 + 352]]
            mem[_4547 + ceil32(_4561) + 548] = mem[mem[_4512 + 352]]
            s = 0
            t = _4704 + 32
            u = _4547 + ceil32(_4561) + 580
            while s < _4705 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_4547 + 68] = (cd[100] * _4443) - (_4425 * _4443) / _4450
            mem[_4547 + 100] = ceil32(_4561) + ceil32(_4705) + 544
            _4920 = mem[_4518]
            mem[_4547 + ceil32(_4561) + ceil32(_4705) + 580] = mem[_4518]
            s = 0
            t = _4518 + 32
            u = _4547 + ceil32(_4561) + ceil32(_4705) + 612
            while s < _4920 + 31 / 32:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[64] = _4547 + ceil32(_4561) + ceil32(_4705) + ceil32(_4920) + 612
            delegate this.address.mem[_4547 + 32 len 4] with:
                 gas gas_remaining wei
                args mem[_4547 + 36], (cd[100] * _4443) - (_4425 * _4443) / _4450, ceil32(_4561) + ceil32(_4705) + 544, mem[_4547 + 132 len 352], ceil32(_4561) + 416, mem[_4547 + 516 len ceil32(_4561) + ceil32(_4705) + ceil32(_4920) + 96]
            mem[_4547 len 128] = delegate.return_data[0 len 128]
            if not delegate.return_code:
                if mem[_4525] + mem[_4116] < mem[_4116]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_4116] = mem[_4525] + mem[_4116]
                if mem[_4525 + 32] + mem[_4116 + 32] < mem[_4116 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_4116 + 32] = mem[_4525 + 32] + mem[_4116 + 32]
                if mem[_4525 + 64] + mem[_4116 + 64] < mem[_4116 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_4116 + 64] = mem[_4525 + 64] + mem[_4116 + 64]
                if mem[_4525 + 96] + mem[_4116 + 96] < mem[_4116 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_4116 + 96] = mem[_4525 + 96] + mem[_4116 + 96]
            else:
                mem[_4525] = delegate.return_data[0]
                mem[_4525 + 32] = delegate.return_data[32]
                mem[_4525 + 64] = delegate.return_data[64]
                mem[_4525 + 96] = delegate.return_data[96]
                if delegate.return_data[0] + mem[_4116] < mem[_4116]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_4116] = delegate.return_data[0] + mem[_4116]
                if delegate.return_data[32] + mem[_4116 + 32] < mem[_4116 + 32]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_4116 + 32] = delegate.return_data[32] + mem[_4116 + 32]
                if delegate.return_data[64] + mem[_4116 + 64] < mem[_4116 + 64]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_4116 + 64] = delegate.return_data[64] + mem[_4116 + 64]
                if delegate.return_data[96] + mem[_4116 + 96] < mem[_4116 + 96]:
                    revert with 0, 'UINT256_OVERFLOW'
                mem[_4116 + 96] = delegate.return_data[96] + mem[_4116 + 96]
            if cd[100] > mem[_4116]:
                s = _4525
                s = (cd[100] * _4443) - (_4425 * _4443) / _4450
                s = cd[100] - _4425
                idx = idx + 1
                continue 
            mem[_4547 + ceil32(_4561) + ceil32(_4705) + ceil32(_4920) + 612] = mem[_4116]
            mem[_4547 + ceil32(_4561) + ceil32(_4705) + ceil32(_4920) + 644] = mem[_4116 + 32]
            mem[_4547 + ceil32(_4561) + ceil32(_4705) + ceil32(_4920) + 676] = mem[_4116 + 64]
            mem[_4547 + ceil32(_4561) + ceil32(_4705) + ceil32(_4920) + 708] = mem[_4116 + 96]
            return memory
              from _4547 + ceil32(_4561) + ceil32(_4705) + ceil32(_4920) + 612
               len 128
        mem[mem[64]] = mem[_4116]
        mem[mem[64] + 32] = mem[_4116 + 32]
        mem[mem[64] + 64] = mem[_4116 + 64]
        mem[mem[64] + 96] = mem[_4116 + 96]
    return memory
      from mem[64]
       len 128
}



}
