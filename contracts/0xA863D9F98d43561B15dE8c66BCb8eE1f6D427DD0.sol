contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address dbAddress;
uint256 stor3;

function db() {
    return address(dbAddress)
}

function owner() {
    return owner
}

function selfDestruct() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTitle(address arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', arg1, 'title')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getProviderTitle(address arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', arg1, 'title')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isProviderInitiated(address arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', arg1, 'title')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not not ext_call.return_data[0]
}

function getOracleAddress(uint256 arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xe16e9340 with:
         gas gas_remaining wei
        args sha3(Mask(88, 80, 'oracleIndex') >> 80), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function getCurveUnset(address arg1, bytes32 arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa21a65ae with:
         gas gas_remaining wei
        args sha3('curves', arg2 / 256 >> 256, mem[257 len 1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not ext_call.return_data[0]
}

function getPublicKey(address arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('oracles', arg1, Mask(40, 216, 'publicKey') >> 216, mem[196 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getProviderPublicKey(address arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('oracles', arg1, Mask(40, 216, 'publicKey') >> 216, mem[196 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEndpointBroker(address arg1, bytes32 arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', arg1, arg2, Mask(40, 216, 'broker') >> 216 >> 256, mem[257 len 1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function updateDependencies() {
    if stor1 != msg.sender:
        revert with 0, 'Error: Coordinator Only Function'
    require ext_code.size(stor2)
    call stor2.0x35817773 with:
         gas gas_remaining wei
        args Array(len=8, data='DATABASE')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
}

function initiateProvider(uint256 arg1, bytes32 arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'title')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Error: Provider is already initiated'
    mem[232] = sha3('oracles', msg.sender, Mask(40, 216, 'publicKey') >> 216, mem[260 len 4])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x54c552db with:
         gas gas_remaining wei
        args mem[232], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x4e91db08 with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'title'), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xdd151d1e with:
         gas gas_remaining wei
        args sha3(Mask(88, 80, 'oracleIndex') >> 80), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewProvider(msg.sender, arg2);
    return 1
}

function getProviderEndpoints(address arg1) {
    mem[155] = 'endpoints'
    mem[224 len 4] = arg1 % 16777216, Mask(8, 248, 'endpoints') >> 248
    _23 = sha3('oracles', arg1, Mask(40, 216, 'endpoints') >> 216, mem[196 len 4])
    mem[164] = 0x8db0e83b00000000000000000000000000000000000000000000000000000000
    mem[168] = sha3('oracles', arg1, Mask(40, 216, 'endpoints') >> 216, mem[196 len 4])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x8db0e83b with:
         gas gas_remaining wei
        args _23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 164
    require return_data.size >= 32
    _28 = mem[164 len 4], Mask(224, 32, _23) >> 32
    require mem[164 len 4], Mask(224, 32, _23) >> 32 <= 4294967296
    require mem[164 len 4], Mask(224, 32, _23) >> 32 + 32 <= return_data.size
    require mem[mem[164 len 4], Mask(224, 32, _23) >> 32 + 164] <= 4294967296 and mem[164 len 4], Mask(224, 32, _23) >> 32 + (32 * mem[mem[164 len 4], Mask(224, 32, _23) >> 32 + 164]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 164] = 32
    mem[ceil32(return_data.size) + 196] = mem[_28 + 164]
    _32 = mem[_28 + 164]
    mem[ceil32(return_data.size) + 228 len floor32(mem[_28 + 164])] = mem[_28 + 196 len floor32(mem[_28 + 164])]
    return 32, mem[ceil32(return_data.size) + 196 len (32 * _32) + 32]
}

function setEndpointParams(bytes32 arg1, bytes32[] arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'title')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error: Provider is not yet initialized'
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa21a65ae with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'curves', arg1 / 256, mem[(32 * arg2.length) + 353 len 1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error: Curve is not yet set'
    mem[(32 * arg2.length) + 494 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x56e5cf2e with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'endpointParams', Mask(184, 72, arg1) >> 72, mem[(32 * arg2.length) + 458 len 9]), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 494 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAllOracles() {
    mem[128] = 'oracleIndex'
    mem[139 len 0] = None
    mem[139] = 0x5948f73300000000000000000000000000000000000000000000000000000000
    mem[143] = sha3(Mask(88, 80, 'oracleIndex') >> 80)
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x5948f733 with:
         gas gas_remaining wei
        args sha3(Mask(88, 80, 'oracleIndex') >> 80)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[139 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 139
    require return_data.size >= 32
    _28 = mem[139 len 4], Mask(224, 32, sha3(Mask(88, 80, 'oracleIndex') >> 80)) >> 32
    require mem[139 len 4], Mask(224, 32, sha3(Mask(88, 80, 'oracleIndex') >> 80)) >> 32 <= 4294967296
    require mem[139 len 4], Mask(224, 32, sha3(Mask(88, 80, 'oracleIndex') >> 80)) >> 32 + 32 <= return_data.size
    require mem[mem[139 len 4], Mask(224, 32, sha3(Mask(88, 80, 'oracleIndex') >> 80)) >> 32 + 139] <= 4294967296 and mem[139 len 4], Mask(224, 32, sha3(Mask(88, 80, 'oracleIndex') >> 80)) >> 32 + (32 * mem[mem[139 len 4], Mask(224, 32, sha3(Mask(88, 80, 'oracleIndex') >> 80)) >> 32 + 139]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 139] = 32
    mem[ceil32(return_data.size) + 171] = mem[_28 + 139]
    _32 = mem[_28 + 139]
    mem[ceil32(return_data.size) + 203 len floor32(mem[_28 + 139])] = mem[_28 + 171 len floor32(mem[_28 + 139])]
    return 32, mem[ceil32(return_data.size) + 171 len (32 * _32) + 32]
}

function getEndpointParams(address arg1, bytes32 arg2) {
    mem[169] = arg2
    mem[201 len 64] = 'oracles', arg1, 'endpointParams', Mask(184, 72, arg2) >> 72
    mem[288 len 9] = Mask(72, 32, arg1) >> 32
    _23 = sha3('endpointParams', Mask(184, 72, arg2) >> 72 >> 256, mem[265 len 9])
    mem[201] = 0x8db0e83b00000000000000000000000000000000000000000000000000000000
    mem[205] = sha3('endpointParams', Mask(184, 72, arg2) >> 72 >> 256, mem[265 len 9])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x8db0e83b with:
         gas gas_remaining wei
        args sha3('endpointParams', Mask(184, 72, arg2) >> 72 >> 256, mem[265 len 9])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[201 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 201
    require return_data.size >= 32
    _28 = mem[201 len 4], Mask(224, 32, _23) >> 32
    require mem[201 len 4], Mask(224, 32, _23) >> 32 <= 4294967296
    require mem[201 len 4], Mask(224, 32, _23) >> 32 + 32 <= return_data.size
    require mem[mem[201 len 4], Mask(224, 32, _23) >> 32 + 201] <= 4294967296 and mem[201 len 4], Mask(224, 32, _23) >> 32 + (32 * mem[mem[201 len 4], Mask(224, 32, _23) >> 32 + 201]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 201] = 32
    mem[ceil32(return_data.size) + 233] = mem[_28 + 201]
    _32 = mem[_28 + 201]
    mem[ceil32(return_data.size) + 265 len floor32(mem[_28 + 201])] = mem[_28 + 233 len floor32(mem[_28 + 201])]
    return 32, mem[ceil32(return_data.size) + 233 len (32 * _32) + 32]
}

function getProviderCurveLength(address arg1, bytes32 arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa21a65ae with:
         gas gas_remaining wei
        args sha3('curves', arg2 / 256 >> 256, mem[257 len 1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error: Curve is not yet set'
    mem[225] = 'oracles'
    mem[232] = address(arg1)
    mem[252] = 'curves'
    mem[258] = arg2
    mem[290 len 64] = 'oracles', arg1, 'curves', arg2 / 256
    mem[385 len 1] = Mask(8, 224, 'curves') >> 224
    _64 = sha3('oracles', arg1, 'curves', arg2 / 256, mem[354 len 1])
    mem[290] = 0x2d2899b600000000000000000000000000000000000000000000000000000000
    mem[294] = sha3('oracles', arg1, 'curves', arg2 / 256, mem[354 len 1])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2d2899b6 with:
         gas gas_remaining wei
        args sha3('oracles', arg1, 'curves', arg2 / 256, mem[354 len 1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[290 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 290
    require return_data.size >= 32
    require mem[290 len 4], Mask(224, 32, _64) >> 32 <= 4294967296
    require mem[290 len 4], Mask(224, 32, _64) >> 32 + 32 <= return_data.size
    require mem[mem[290 len 4], Mask(224, 32, _64) >> 32 + 290] <= 4294967296 and mem[290 len 4], Mask(224, 32, _64) >> 32 + (32 * mem[mem[290 len 4], Mask(224, 32, _64) >> 32 + 290]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 290] = mem[mem[290 len 4], Mask(224, 32, _64) >> 32 + 290]
    return memory
      from ceil32(return_data.size) + 290
       len 32
}

function getAllProviderParams(address arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', arg1, 'title')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error: Provider is not yet initiated'
    mem[192] = 'oracles'
    mem[199] = address(arg1)
    mem[219] = 'providerParams'
    mem[288 len 9] = Mask(72, 32, arg1) >> 32
    _68 = sha3('oracles', arg1, Mask(40, 216, 'providerParams') >> 216, mem[265 len 9])
    mem[233] = 0x8db0e83b00000000000000000000000000000000000000000000000000000000
    mem[237] = sha3('oracles', arg1, Mask(40, 216, 'providerParams') >> 216, mem[265 len 9])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x8db0e83b with:
         gas gas_remaining wei
        args _68
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[233 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 233
    require return_data.size >= 32
    _73 = mem[233 len 4], Mask(224, 32, _68) >> 32
    require mem[233 len 4], Mask(224, 32, _68) >> 32 <= 4294967296
    require mem[233 len 4], Mask(224, 32, _68) >> 32 + 32 <= return_data.size
    require mem[mem[233 len 4], Mask(224, 32, _68) >> 32 + 233] <= 4294967296 and mem[233 len 4], Mask(224, 32, _68) >> 32 + (32 * mem[mem[233 len 4], Mask(224, 32, _68) >> 32 + 233]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 233] = 32
    mem[ceil32(return_data.size) + 265] = mem[_73 + 233]
    _77 = mem[_73 + 233]
    mem[ceil32(return_data.size) + 297 len floor32(mem[_73 + 233])] = mem[_73 + 265 len floor32(mem[_73 + 233])]
    return 32, mem[ceil32(return_data.size) + 265 len (32 * _77) + 32]
}

function getProviderCurve(address arg1, bytes32 arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa21a65ae with:
         gas gas_remaining wei
        args sha3('curves', arg2 / 256 >> 256, mem[257 len 1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error: Curve is not yet set'
    mem[225] = 'oracles'
    mem[232] = address(arg1)
    mem[252] = 'curves'
    mem[258] = arg2
    mem[290 len 64] = 'oracles', arg1, 'curves', arg2 / 256
    mem[385 len 1] = Mask(8, 224, 'curves') >> 224
    _68 = sha3('oracles', arg1, 'curves', arg2 / 256, mem[354 len 1])
    mem[290] = 0x2d2899b600000000000000000000000000000000000000000000000000000000
    mem[294] = sha3('oracles', arg1, 'curves', arg2 / 256, mem[354 len 1])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2d2899b6 with:
         gas gas_remaining wei
        args sha3('oracles', arg1, 'curves', arg2 / 256, mem[354 len 1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[290 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 290
    require return_data.size >= 32
    _73 = mem[290 len 4], Mask(224, 32, _68) >> 32
    require mem[290 len 4], Mask(224, 32, _68) >> 32 <= 4294967296
    require mem[290 len 4], Mask(224, 32, _68) >> 32 + 32 <= return_data.size
    require mem[mem[290 len 4], Mask(224, 32, _68) >> 32 + 290] <= 4294967296 and mem[290 len 4], Mask(224, 32, _68) >> 32 + (32 * mem[mem[290 len 4], Mask(224, 32, _68) >> 32 + 290]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 290] = 32
    mem[ceil32(return_data.size) + 322] = mem[_73 + 290]
    _77 = mem[_73 + 290]
    mem[ceil32(return_data.size) + 354 len floor32(mem[_73 + 290])] = mem[_73 + 322 len floor32(mem[_73 + 290])]
    return 32, mem[ceil32(return_data.size) + 322 len (32 * _77) + 32]
}

function setProviderParameter(bytes32 arg1, bytes arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'title')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error: Provider is not yet initiated'
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'is_param_set', Mask(200, 56, arg1) >> 56, mem[ceil32(arg2.length) + 359 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(dbAddress))
    if ext_call.return_data[0] == 1:
        call address(dbAddress).0x2e28d084 with:
             gas gas_remaining wei
            args sha3('oracles', msg.sender, 'providerParams', Mask(184, 72, arg1) >> 72, mem[ceil32(arg2.length) + 464 len 9]), Array(len=arg2.length, data=arg2[all])
    else:
        call address(dbAddress).0x54c552db with:
             gas gas_remaining wei
            args sha3('oracles', msg.sender, 'is_param_set', Mask(200, 56, arg1) >> 56, mem[ceil32(arg2.length) + 462 len 7]), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg2.length) + 475] = sha3('oracles', msg.sender, Mask(40, 216, 'providerParams') >> 216, mem[ceil32(arg2.length) + 503 len 9])
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x8d152d78 with:
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 475], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x2e28d084 with:
             gas gas_remaining wei
            args sha3('oracles', msg.sender, 'providerParams', Mask(184, 72, arg1) >> 72, mem[ceil32(arg2.length) + 640 len 9]), Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getProviderParameter(address arg1, bytes32 arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', arg1, 'title')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error: Provider is not yet initiated'
    mem[192] = 'oracles'
    mem[199] = address(arg1)
    mem[219] = 'is_param_set'
    mem[231] = arg2
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('oracles', arg1, 'is_param_set', Mask(200, 56, arg2) >> 56, mem[327 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'Error: Provider Parameter is not yet initialized'
    mem[295] = 'oracles'
    mem[302] = address(arg1)
    mem[322] = 'providerParams'
    mem[336] = arg2
    mem[368 len 64] = 'oracles', arg1, 'providerParams', Mask(184, 72, arg2) >> 72
    mem[455 len 9] = Mask(72, 32, arg1) >> 32
    _134 = sha3('oracles', arg1, 'providerParams', Mask(184, 72, arg2) >> 72, mem[432 len 9])
    mem[368] = 0xc031a18000000000000000000000000000000000000000000000000000000000
    mem[372] = sha3('oracles', arg1, 'providerParams', Mask(184, 72, arg2) >> 72, mem[432 len 9])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xc031a180 with:
         gas gas_remaining wei
        args sha3('oracles', arg1, 'providerParams', Mask(184, 72, arg2) >> 72, mem[432 len 9])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[368 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 368
    require return_data.size >= 32
    _139 = mem[368 len 4], Mask(224, 32, _134) >> 32
    require mem[368 len 4], Mask(224, 32, _134) >> 32 <= 4294967296
    require mem[368 len 4], Mask(224, 32, _134) >> 32 + 32 <= return_data.size
    require mem[mem[368 len 4], Mask(224, 32, _134) >> 32 + 368] <= 4294967296 and mem[368 len 4], Mask(224, 32, _134) >> 32 + mem[mem[368 len 4], Mask(224, 32, _134) >> 32 + 368] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 368] = 32
    mem[ceil32(return_data.size) + 400] = mem[_139 + 368]
    _143 = mem[_139 + 368]
    mem[ceil32(return_data.size) + 432 len ceil32(mem[_139 + 368])] = mem[_139 + 400 len ceil32(mem[_139 + 368])]
    if not _143 % 32:
        return 32, mem[ceil32(return_data.size) + 400 len _143 + 32]
    mem[floor32(_143) + ceil32(return_data.size) + 432] = mem[floor32(_143) + ceil32(return_data.size) + -(_143 % 32) + 464 len _143 % 32]
    return 32, mem[ceil32(return_data.size) + 400 len floor32(_143) + 64]
}

function initiateProviderCurve(bytes32 arg1, int256[] arg2, address arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 160] = 'oracles'
    mem[(32 * arg2.length) + 167] = address(msg.sender)
    mem[(32 * arg2.length) + 187] = 'title'
    mem[(32 * arg2.length) + 128] = 32
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'title')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error: Provider is not yet initiated'
    mem[(32 * arg2.length) + 224] = 'oracles'
    mem[(32 * arg2.length) + 231] = address(msg.sender)
    mem[(32 * arg2.length) + 251] = 'curves'
    mem[(32 * arg2.length) + 257] = arg1
    mem[(32 * arg2.length) + 192] = 65
    mem[64] = (32 * arg2.length) + 289
    mem[(32 * arg2.length) + 289 len 64] = 'oracles', msg.sender, 'curves', arg1 / 256
    mem[(32 * arg2.length) + 384 len 1] = Mask(8, 224, 'curves') >> 224
    mem[(32 * arg2.length) + 293] = sha3('oracles', msg.sender, 'curves', arg1 / 256, mem[(32 * arg2.length) + 353 len 1])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa21a65ae with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'curves', arg1 / 256, mem[(32 * arg2.length) + 353 len 1])
    mem[(32 * arg2.length) + 289] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Error: Curve is already set'
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 1
    while idx < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'Error: Invalid Curve'
        if idx + mem[(32 * idx) + 128] + 1 >= arg2.length:
            revert with 0, 'Error: Invalid Curve'
        require idx + mem[(32 * idx) + 128] + 1 < arg2.length
        if mem[(32 * idx + mem[(32 * idx) + 128] + 1) + 128] <= s:
            revert with 0, 'Error: Invalid Curve'
        s = mem[(32 * idx + mem[(32 * idx) + 128] + 1) + 128]
        s = idx + mem[(32 * idx) + 128] + 1
        s = mem[(32 * idx) + 128]
        idx = idx + mem[(32 * idx) + 128] + 2
        s = mem[(32 * idx + mem[(32 * idx) + 128] + 1) + 128]
        continue 
    mem[(32 * arg2.length) + 486 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa9fcf76b with:
         gas gas_remaining wei
        args sha3('oracles', msg.sender, 'curves', arg1 / 256, mem[(32 * arg2.length) + 450 len 1]), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 486 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 458] = sha3('oracles', msg.sender, Mask(40, 216, 'endpoints') >> 216, mem[(32 * arg2.length) + 486 len 4])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x8d152d78 with:
         gas gas_remaining wei
        args mem[(32 * arg2.length) + 458], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 646 len 1] = uint8(arg1)
    mem[(32 * arg2.length) + 555] = sha3('oracles', msg.sender, arg1, Mask(40, 216, 'broker') >> 216, mem[(32 * arg2.length) + 615 len 1])
    mem[(32 * arg2.length) + 587] = arg3
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x4e91db08 with:
         gas gas_remaining wei
        args mem[(32 * arg2.length) + 555], address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 615 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit NewCurve(Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 615 len (32 * arg2.length) - floor32(arg2.length)]), msg.sender, arg1, arg3);
    return 1
}



}
