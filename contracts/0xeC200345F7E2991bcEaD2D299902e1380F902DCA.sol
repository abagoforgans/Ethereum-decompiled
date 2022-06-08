contract main {




// =====================  Runtime code  =====================


#
#  - batchFillOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256[] arg13, bytes[] arg14)
#  - matchOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, address arg13, address arg14, address arg15, address arg16, uint256 arg17, uint256 arg18, uint256 arg19, uint256 arg20, uint256 arg21, uint256 arg22, bytes arg23, bytes arg24, bytes arg25, bytes arg26)
#  - batchFillOrKillOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256[] arg13, bytes[] arg14)
#  - fillOrKillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14)
#  - marketSellOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256 arg13, bytes[] arg14)
#  - fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14)
#  - marketBuyOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes[] arg12, uint256 arg13, bytes[] arg14)
#
const ZRX_ASSET_DATA = 32, 36, 0xf47261b0000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead908, 0x3c756cc200000000000000000000000000000000000000000000000000000000 >> 32, 0

const VERSION = '2.0.0', 0


uint8 stor0;
uint16 stor1; offset 240
uint256 EIP712_DOMAIN_HASH;
address owner;
mapping of uint256 filled;
mapping of uint8 stor4;
mapping of uint256 orderEpoch;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
address currentContextAddress;
mapping of address assetProxy;
mapping of uint256 stor99;

function filled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return filled[arg1]
}

function cancelled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
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
    return bool(stor8[arg1])
}

function allowedValidators(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor7[arg1][arg2])
}

function preSigned(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor6[arg1][arg2])
}

function owner() {
    return owner
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
        stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit SignatureValidatorApproval(arg2, msg.sender, arg1);
    else:
        stor7[stor9][address(arg1)] = uint8(arg2)
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
            if arg1 + 1 <= orderEpoch[stor9][0]:
                revert with 0, 'INVALID_NEW_ORDER_EPOCH'
            orderEpoch[stor9][0] = arg1 + 1
            emit CancelUpTo((arg1 + 1), currentContextAddress, 0);
        else:
            if arg1 + 1 <= orderEpoch[stor9][address(msg.sender)]:
                revert with 0, 'INVALID_NEW_ORDER_EPOCH'
            orderEpoch[stor9][address(msg.sender)] = arg1 + 1
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
                        if not stor6[arg1][address(arg2)]:
                            revert with 0, 'INVALID_SIGNATURE'
                    else:
                        if arg3.length - 1 < 20:
                            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
                        if not stor7[address(arg2)][address(mem[arg3.length + 95])]:
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
    stor6[arg1][address(arg2)] = 1
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
            mem[ceil32(arg3.length) + 128] = bool(stor6[arg1][address(arg2)])
            return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        if arg3.length - 1 < 20:
            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
        if not stor7[address(arg2)][address(mem[arg3.length + 95])]:
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
    if stor8[6401][uint256(stor1.field_0)][sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)]:
        revert with 0, 'INVALID_TX_HASH'
    if msg.sender == arg2:
        stor8[6401][uint256(stor1.field_0)][sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)] = 1
        mem[ceil32(arg3.length) + 224 len arg3.length] = arg3[all]
        delegate this.address with:
           funct mem[ceil32(arg3.length) + 224 len 2], uint16(stor1.field_240)
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
                        if not stor6[6401][uint256(stor1.field_0)][sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)][address(arg2)]:
                            revert with 0, 'INVALID_TX_SIGNATURE'
                    else:
                        if arg4.length - 1 < 20:
                            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
                        if not stor7[address(arg2)][address(mem[arg4.length + ceil32(arg3.length) + 223])]:
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
        stor8[6401][uint256(stor1.field_0)][sha3(sha3('ZeroExTransaction(', 'uint256 salt,', 'address signerAddress,', 'bytes data', ')'), arg1, address(arg2), _370)] = 1
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
            _367 = mem[64]
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
            _474 = mem[64]
            _475 = sha3(mem[mem[64] len _367 + _370 - mem[64]])
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
            _575 = sha3(_368, mem[_249 len 320], _475, sha3(mem[mem[64] len _474 + _477 - mem[64]]))
            mem[mem[64]] = 0x1901000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 2] = EIP712_DOMAIN_HASH
            mem[mem[64] + 34] = _575
            mem[_250 + 32] = sha3(6401, EIP712_DOMAIN_HASH, _575)
            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _575)
            mem[32] = 3
            mem[_250 + 64] = filled[6401][uint256(stor1.field_0)][_575]
            if not mem[_249 + 128]:
                mem[_250] = 1
            else:
                if not mem[_249 + 160]:
                    mem[_250] = 2
                else:
                    if filled[6401][uint256(stor1.field_0)][_575] >= mem[_249 + 160]:
                        mem[_250] = 5
                    else:
                        if block.timestamp >= mem[_249 + 256]:
                            mem[_250] = 4
                        else:
                            mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _575)
                            mem[32] = 4
                            if stor4[6401][uint256(stor1.field_0)][_575]:
                                mem[_250] = 6
                            else:
                                _619 = mem[_249 + 288]
                                mem[0] = mem[_249 + 12 len 20]
                                _621 = sha3(mem[0], 5)
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
        _580 = mem[64]
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
        _652 = sha3(mem[mem[64] len _580 + _583 - mem[64]])
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
        mem[32] = 3
        mem[_491 + 64] = filled[6401][uint256(stor1.field_0)][_694]
        if not mem[_481 + 128]:
            mem[_491] = 1
        else:
            if not mem[_481 + 160]:
                mem[_491] = 2
            else:
                if filled[6401][uint256(stor1.field_0)][_694] >= mem[_481 + 160]:
                    mem[_491] = 5
                else:
                    if block.timestamp >= mem[_481 + 256]:
                        mem[_491] = 4
                    else:
                        mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _694)
                        mem[32] = 4
                        if stor4[6401][uint256(stor1.field_0)][_694]:
                            mem[_491] = 6
                        else:
                            _707 = mem[_481 + 288]
                            mem[0] = mem[_481 + 12 len 20]
                            _709 = sha3(mem[0], 5)
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
        _1978 = mem[64]
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
        _2626 = sha3(mem[mem[64] len _1978 + _1981 - mem[64]])
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
        mem[_1325 + 64] = filled[6401][uint256(stor1.field_0)][_3270]
        if not mem[_1323 + 128]:
            revert with 0, 'ORDER_UNFILLABLE'
        if not mem[_1323 + 160]:
            revert with 0, 'ORDER_UNFILLABLE'
        if filled[6401][uint256(stor1.field_0)][_3270] >= mem[_1323 + 160]:
            revert with 0, 'ORDER_UNFILLABLE'
        if block.timestamp >= mem[_1323 + 256]:
            revert with 0, 'ORDER_UNFILLABLE'
        mem[0] = sha3(6401, EIP712_DOMAIN_HASH, _3270)
        mem[32] = 4
        if stor4[6401][uint256(stor1.field_0)][_3270]:
            revert with 0, 'ORDER_UNFILLABLE'
        _3282 = mem[_1323 + 288]
        mem[0] = mem[_1323 + 12 len 20]
        _3284 = sha3(mem[0], 5)
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
                mem[32] = 4
                stor4[6401][uint256(stor1.field_0)][_3270] = 1
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
                mem[32] = 4
                stor4[6401][uint256(stor1.field_0)][_3270] = 1
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
            mem[32] = 4
            stor4[6401][uint256(stor1.field_0)][_3270] = 1
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
        mem[32] = 4
        stor4[6401][uint256(stor1.field_0)][_3270] = 1
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
    mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 704] = filled[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if not cd[(arg1 + 132)]:
        revert with 0, 'ORDER_UNFILLABLE'
    if not cd[(arg1 + 164)]:
        revert with 0, 'ORDER_UNFILLABLE'
    if filled[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))] >= cd[(arg1 + 164)]:
        revert with 0, 'ORDER_UNFILLABLE'
    if block.timestamp >= cd[(arg1 + 260)]:
        revert with 0, 'ORDER_UNFILLABLE'
    if stor4[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]:
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
    stor4[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _1308, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 1035 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))] = 1
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
               filled[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if not cd[(arg1 + 164)]:
        return 2, 
               sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
               filled[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if filled[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))] >= cd[(arg1 + 164)]:
        return 5, 
               sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
               filled[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if block.timestamp >= cd[(arg1 + 260)]:
        return 4, 
               sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
               filled[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    if not stor4[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]:
        if orderEpoch[uint64(arg1.length) << 96][uint64(cd[(arg1 + 100)]) << 96] <= cd[(arg1 + 292)]:
            return 3, 
                   sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
                   filled[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
    return 6, 
           sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))),
           filled[6401][uint256(stor1.field_0)][sha3(sha3('Order(', 'address makerAddress,', 'address takerAddress,', 'address feeRecipientAddress,', 'address senderAddress,', 'uint256 makerAssetAmount,', 'uint256 takerAssetAmount,', 'uint256 makerFee,', 'uint256 takerFee,', 'uint256 expirationTimeSeconds,', 'uint256 salt,', 'bytes makerAssetData,', Mask(80, 176, 'bytes takerAssetData') >> 176, Mask(80, 96, 'bytes takerAssetData') >> 96, ')'), address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], cd[(arg1 + 164)], cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], _157, sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 356)] + 4)]) + 939 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)]) + cd[(arg1 + cd[(arg1 + 324)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 324)] + 4)] + 544 len -cd[(arg1 + cd[(arg1 + 324)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 324)] + 4)])]]))]
}



}
