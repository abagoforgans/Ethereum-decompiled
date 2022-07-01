contract main {




// =====================  Runtime code  =====================


const ERC223_ID = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000

const EIP191_VERSION_DATA = 0

const AUTH_VERSION_INCREMENTOR = 0x10000000000000000000000000000000000000000

const EIP191_PREFIX = 0x1900000000000000000000000000000000000000000000000000000000000000

const VERSION = ''


uint256 authVersion;
mapping of address authorizations;
mapping of uint256 nonces;
uint8 stor3; offset 160
address recoveryAddress;

function initialized() {
    return bool(stor3)
}

function authorizations(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint256(authorizations[arg1])
}

function recoveryAddress() {
    return recoveryAddress
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function authVersion() {
    return authVersion
}

function _fallback() payable {
    if calldata.size:
        revert with 0, 'Invalid transaction.'
    if msg.value:
        emit Received(msg.sender, msg.value);
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
}

function onERC721Received(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    return 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function setRecoveryAddress(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0, 'must be called from `invoke()`'
    if address(authorizations[stor0 + arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe446f206e6f742075736520616e20617574686f72697a6564206164647265737320617320746865207265636f766572792061646472657373,
                    mem[221 len 7]
    recoveryAddress = arg1
    emit RecoveryAddressChanged(recoveryAddress, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1626ba7e00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function recoverGas(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg1 <= 0:
        revert with 0, 'Invalid version number.'
    if arg1 >= test266151307():
        revert with 0, 'Invalid version number.'
    if arg1 << 160 >= authVersion:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e596f752063616e206f6e6c79207265636f766572206761732066726f6d2065787069726564206175746856657273696f6e73,
                    mem[215 len 13]
    idx = 0
    while idx < arg2.length:
        mem[0] = (arg1 << 160) + address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 1
        uint256(authorizations[(arg1 << 160) + address(cd[((32 * idx) + arg2 + 36)])]) = 0
        idx = idx + 1
        continue 
}

function emergencyRecovery(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if recoveryAddress != msg.sender:
        revert with 0, 'sender must be recovery address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e417574686f72697a656420616464726573736573206d757374206e6f74206265207a65726f,
                    mem[202 len 26]
    if recoveryAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x446f206e6f742075736520746865207265636f76657279206164647265737320617320616e20617574686f72697a6564206164647265737300,
                    mem[221 len 7]
    if not address(arg2):
        revert with 0, 'The cosigner must not be zero.'
    authVersion += 0x10000000000000000000000000000000000000000
    uint256(authorizations[arg1 + stor0 + 0x10000000000000000000000000000000000000000]) = arg2
    emit EmergencyRecovery(address(arg1), arg2);
}

function setAuthorized(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0, 'must be called from `invoke()`'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e417574686f72697a656420616464726573736573206d757374206e6f74206265207a65726f,
                    mem[202 len 26]
    if recoveryAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x446f206e6f742075736520746865207265636f76657279206164647265737320617320616e20617574686f72697a6564206164647265737300,
                    mem[221 len 7]
    if address(arg2):
        if recoveryAddress == address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x72446f206e6f742075736520746865207265636f766572792061646472657373206173206120636f7369676e6572,
                        mem[210 len 18]
    uint256(authorizations[arg1 + stor0]) = arg2
    emit Authorized(address(arg1), arg2);
}

function init(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if stor3:
        revert with 0, 'must not already be initialized'
    stor3 = 1
    if arg3 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x446f206e6f742075736520746865207265636f76657279206164647265737320617320616e20617574686f72697a6564206164647265737300,
                    mem[221 len 7]
    if address(arg2) == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x72446f206e6f742075736520746865207265636f766572792061646472657373206173206120636f7369676e6572,
                    mem[210 len 18]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e417574686f72697a656420616464726573736573206d757374206e6f74206265207a65726f,
                    mem[202 len 26]
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e496e697469616c20636f7369676e6572206d757374206e6f74206265207a65726f,
                    mem[198 len 30]
    recoveryAddress = arg3
    authVersion = 0x10000000000000000000000000000000000000000
    uint256(authorizations[arg1 + 0x10000000000000000000000000000000000000000]) = arg2
    emit Authorized(address(arg1), arg2);
}

function isValidSignature(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if arg2.length == 65:
        mem[406 len arg2.length] = arg2[all]
        mem[arg2.length + 406] = 0
        signer = erecover(sha3(0, 0, Mask(160, 96, this.address) >> 96, arg1), 0, mem[406], mem[438]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer):
            if address(authorizations[stor0 + address(signer)]) == address(signer):
                return 0x1626ba7e00000000000000000000000000000000000000000000000000000000
    else:
        if arg2.length == 130:
            mem[406 len arg2.length] = arg2[all]
            mem[arg2.length + 406] = 0
            _14 = mem[438]
            mem[ceil32(arg2.length) + 438 len arg2.length] = arg2[all]
            mem[ceil32(arg2.length) + arg2.length + 438] = 0
            signer = erecover(sha3(0, 0, Mask(160, 96, this.address) >> 96, arg1), 0, mem[406], _14) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            signer = erecover(sha3(0, 0, Mask(160, 96, this.address) >> 96, arg1), 0, mem[ceil32(arg2.length) + 503], mem[ceil32(arg2.length) + 535]) 
            if address(signer):
                if address(signer):
                    if address(authorizations[stor0 + address(signer)]) == address(signer):
                        return 0x1626ba7e00000000000000000000000000000000000000000000000000000000
    return 0
}

function invoke0(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[0] = msg.sender + authVersion
    mem[32] = 1
    if address(authorizations[msg.sender + stor0]) != msg.sender:
        revert with 0, '.Invalid authorization.'
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 20
    mem[ceil32(arg1.length) + 160] = 'Data field too short'
    mem[64] = ceil32(arg1.length) + 256
    mem[ceil32(arg1.length) + 192] = 11
    mem[ceil32(arg1.length) + 224] = 0x43616c6c206661696c6564000000000000000000000000000000000000000000
    if arg1.length < 85:
        revert with 0, 'Data field too short'
    idx = 129
    s = 0
    t = 0
    while idx < arg1.length + 128:
        if mem[idx + 52] + idx + 84 > arg1.length + 128:
            revert with 'Data field too short'
        call address(mem[idx]) >> 96.mem[idx + 84 len 4] with:
           value mem[idx + 20] wei
             gas gas_remaining wei
            args mem[idx + 88 len mem[idx + 52] - 4]
        if ext_call.success:
            idx = mem[idx + 52] + idx + 84
            s = s
            t = t + 1
            continue 
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 128, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 128, 32))), 0) - 256 == 1:
            revert with 81458099502718394840147300
        idx = mem[idx + 52] + idx + 84
        s = s or 2^t
        t = t + 1
        continue 
    emit InvocationSuccess(0, s, t);
}

function invoke1SignerSends(uint8 arg1, bytes32 arg2, bytes32 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != 27:
        if arg1 != 28:
            revert with 0, 'Invalid signature version.'
    mem[128] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[129] = 0
    mem[130] = this.address << 96
    mem[150] = nonces[msg.sender]
    mem[182] = msg.sender << 96
    mem[202 len arg4.length] = arg4[all]
    mem[96] = arg4.length + 74
    mem[arg4.length + 266] = arg1
    mem[arg4.length + 298] = arg2
    mem[arg4.length + 330] = arg3
    signer = erecover(sha3(0, 0, Mask(160, 96, this.address) >> 96, nonces[msg.sender], Mask(160, 96, msg.sender) >> 96, arg4[all]), arg1 << 248, arg2, arg3) 
    mem[arg4.length + 202] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid signature.'
    if address(signer) != address(authorizations[msg.sender + stor0]):
        if address(authorizations[msg.sender + stor0]) != msg.sender:
            revert with 0, '.Invalid authorization.'
    mem[0] = msg.sender
    mem[32] = 2
    nonces[msg.sender]++
    mem[arg4.length + 234] = arg4.length
    mem[arg4.length + 266 len arg4.length] = arg4[all]
    mem[(2 * arg4.length) + 266] = 0
    mem[arg4.length + ceil32(arg4.length) + 266] = 20
    mem[arg4.length + ceil32(arg4.length) + 298] = 'Data field too short'
    mem[64] = arg4.length + ceil32(arg4.length) + 394
    mem[arg4.length + ceil32(arg4.length) + 330] = 11
    mem[arg4.length + ceil32(arg4.length) + 362] = 0x43616c6c206661696c6564000000000000000000000000000000000000000000
    if arg4.length < 85:
        revert with 0, 'Data field too short'
    idx = arg4.length + 267
    s = 0
    t = 0
    while idx < (2 * arg4.length) + 266:
        if mem[idx + 52] + idx + 84 > (2 * arg4.length) + 266:
            revert with 'Data field too short'
        call address(mem[idx]) >> 96.mem[idx + 84 len 4] with:
           value mem[idx + 20] wei
             gas gas_remaining wei
            args mem[idx + 88 len mem[idx + 52] - 4]
        if ext_call.success:
            idx = mem[idx + 52] + idx + 84
            s = s
            t = t + 1
            continue 
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 266, ('cd', ('add', 4, ('param', 'arg4')))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 266, ('cd', ('add', 4, ('param', 'arg4')))), 32))), 0) - 256 == 1:
            revert with 81458099502718394840147300
        idx = mem[idx + 52] + idx + 84
        s = s or 2^t
        t = t + 1
        continue 
    emit InvocationSuccess(sha3(0, 0, Mask(160, 96, this.address) >> 96, nonces[msg.sender], Mask(160, 96, msg.sender) >> 96, arg4[all]), s, t);
}

function invoke1CosignerSends(uint8 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4, address arg5, bytes arg6) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    if arg1 != 27:
        if arg1 != 28:
            revert with 0, 'Invalid signature version.'
    mem[128] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[129] = 0
    mem[130] = this.address << 96
    mem[150] = arg4
    mem[182] = address(arg5)
    mem[202 len arg6.length] = arg6[all]
    mem[96] = arg6.length + 74
    mem[arg6.length + 266] = arg1
    mem[arg6.length + 298] = arg2
    mem[arg6.length + 330] = arg3
    signer = erecover(sha3(0, 0, Mask(160, 96, this.address) >> 96, arg4, arg5, arg6[all]), arg1 << 248, arg2, arg3) 
    mem[arg6.length + 202] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid signature.'
    if arg4 != nonces[address(signer)]:
        revert with 0, 'must use correct nonce'
    if address(signer) != arg5:
        revert with 0, 
                    32,
                    34,
                    0x2e617574686f72697a656420616464726573736573206d7573742062652065717561,
                    Mask(208, 0, arg3),
                    mem[arg6.length + 362 len 4]
    if address(authorizations[address(signer) + stor0]) != address(signer):
        if address(authorizations[address(signer) + stor0]) != msg.sender:
            revert with 0, '.Invalid authorization.'
    mem[0] = address(signer)
    mem[32] = 2
    nonces[address(signer)] = arg4 + 1
    mem[arg6.length + 234] = arg6.length
    mem[arg6.length + 266 len arg6.length] = arg6[all]
    mem[(2 * arg6.length) + 266] = 0
    mem[arg6.length + ceil32(arg6.length) + 266] = 20
    mem[arg6.length + ceil32(arg6.length) + 298] = 'Data field too short'
    mem[64] = arg6.length + ceil32(arg6.length) + 394
    mem[arg6.length + ceil32(arg6.length) + 330] = 11
    mem[arg6.length + ceil32(arg6.length) + 362] = 0x43616c6c206661696c6564000000000000000000000000000000000000000000
    if arg6.length < 85:
        revert with 0, 'Data field too short'
    idx = arg6.length + 267
    s = 0
    t = 0
    while idx < (2 * arg6.length) + 266:
        if mem[idx + 52] + idx + 84 > (2 * arg6.length) + 266:
            revert with 'Data field too short'
        call address(mem[idx]) >> 96.mem[idx + 84 len 4] with:
           value mem[idx + 20] wei
             gas gas_remaining wei
            args mem[idx + 88 len mem[idx + 52] - 4]
        if ext_call.success:
            idx = mem[idx + 52] + idx + 84
            s = s
            t = t + 1
            continue 
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 266, ('cd', ('add', 4, ('param', 'arg6')))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 266, ('cd', ('add', 4, ('param', 'arg6')))), 32))), 0) - 256 == 1:
            revert with 81458099502718394840147300
        idx = mem[idx + 52] + idx + 84
        s = s or 2^t
        t = t + 1
        continue 
    emit InvocationSuccess(sha3(0, 0, Mask(160, 96, this.address) >> 96, arg4, arg5, arg6[all]), s, t);
}

function invoke2(uint8[2] arg1, bytes32[2] arg2, bytes32[2] arg3, uint256 arg4, address arg5, bytes arg6) {
    require calldata.size - 4 >= 288
    require cd[260] <= 4294967296
    require cd[260] + 36 <= calldata.size
    require ('cd', 260).length <= 4294967296 and cd[260] + ('cd', 260).length + 36 <= calldata.size
    if uint8(arg1) != 27:
        if uint8(arg1) != 28:
            revert with 0, 'invalid signature version v[0]'
    if uint8(arg2) != 27:
        if uint8(arg2) != 28:
            revert with 0, 'invalid signature version v[1]'
    mem[128] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[129] = 0
    mem[130] = this.address << 96
    mem[150] = cd[196]
    mem[182] = address(cd[228])
    mem[202 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
    mem[96] = ('cd', 260).length + 74
    signer = erecover(sha3(0, 0, Mask(160, 96, this.address) >> 96, cd[196], address(cd[228]), call.data[cd[260] + 36 len ('cd', 260).length]), arg1 << 248, arg3, arg5) 
    mem[('cd', 260).length + 202] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[('cd', 260).length + 298] = uint8(arg2)
    mem[('cd', 260).length + 330] = arg4
    mem[('cd', 260).length + 362] = arg6
    signer = erecover(sha3(0, 0, Mask(160, 96, this.address) >> 96, cd[196], address(cd[228]), call.data[cd[260] + 36 len ('cd', 260).length]), arg2 << 248, arg4, arg6) 
    mem[('cd', 260).length + 234] = signer
    if not address(signer):
        revert with 0, 'Invalid signature for signer.'
    if not address(signer):
        revert with 0, 'Invalid signature for cosigner.'
    if address(signer) != address(cd[228]):
        revert with 0, 
                    32,
                    34,
                    0x2e617574686f72697a656420616464726573736573206d7573742062652065717561,
                    Mask(208, 0, arg6),
                    mem[('cd', 260).length + 394 len 4]
    if cd[196] != nonces[address(signer)]:
        revert with 0, 
                    32,
                    33,
                    0x2e6d7573742075736520636f7272656374206e6f6e636520666f72207369676e65,
                    Mask(216, 0, arg6),
                    mem[('cd', 260).length + 394 len 4]
    if address(authorizations[address(signer) + stor0]) != address(signer):
        if address(authorizations[address(signer) + stor0]) != address(signer):
            revert with 0, '.Invalid authorization.'
    mem[0] = address(signer)
    mem[32] = 2
    nonces[address(signer)]++
    mem[('cd', 260).length + 266] = ('cd', 260).length
    mem[('cd', 260).length + 298 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
    mem[(2 * ('cd', 260).length) + 298] = 0
    mem[('cd', 260).length + ceil32(('cd', 260).length) + 298] = 20
    mem[('cd', 260).length + ceil32(('cd', 260).length) + 330] = 'Data field too short'
    mem[64] = ('cd', 260).length + ceil32(('cd', 260).length) + 426
    mem[('cd', 260).length + ceil32(('cd', 260).length) + 362] = 11
    mem[('cd', 260).length + ceil32(('cd', 260).length) + 394] = 0x43616c6c206661696c6564000000000000000000000000000000000000000000
    if ('cd', 260).length < 85:
        revert with 0, 'Data field too short'
    idx = ('cd', 260).length + 299
    s = 0
    t = 0
    while idx < (2 * ('cd', 260).length) + 298:
        if mem[idx + 52] + idx + 84 > (2 * ('cd', 260).length) + 298:
            revert with 'Data field too short'
        call address(mem[idx]) >> 96.mem[idx + 84 len 4] with:
           value mem[idx + 20] wei
             gas gas_remaining wei
            args mem[idx + 88 len mem[idx + 52] - 4]
        if ext_call.success:
            idx = mem[idx + 52] + idx + 84
            s = s
            t = t + 1
            continue 
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 298, ('cd', ('add', 4, ('cd', 260)))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 298, ('cd', ('add', 4, ('cd', 260)))), 32))), 0) - 256 == 1:
            revert with 81458099502718394840147300
        idx = mem[idx + 52] + idx + 84
        s = s or 2^t
        t = t + 1
        continue 
    emit InvocationSuccess(sha3(0, 0, Mask(160, 96, this.address) >> 96, cd[196], address(cd[228]), call.data[cd[260] + 36 len ('cd', 260).length]), s, t);
}



}
