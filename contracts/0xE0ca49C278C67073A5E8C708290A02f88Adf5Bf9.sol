contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[16296 len 20]
    stor1 = code.data[16328 len 20]
    return code.data[201 len 16083]
}



// =====================  Runtime code  =====================


#
#  - fillOrdersUpTo(address[5][] arg1, uint256[6][] arg2, uint256 arg3, bool arg4, uint8[] arg5, bytes32[] arg6, bytes32[] arg7)
#  - batchFillOrKillOrders(address[5][] arg1, uint256[6][] arg2, uint256[] arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#  - fillOrKillOrder(address[5] arg1, uint256[6] arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#  - batchFillOrders(address[5][] arg1, uint256[6][] arg2, uint256[] arg3, bool arg4, uint8[] arg5, bytes32[] arg6, bytes32[] arg7)
#  - fillOrder(address[5] arg1, uint256[6] arg2, uint256 arg3, bool arg4, uint8 arg5, bytes32 arg6, bytes32 arg7)
#  - sub_cf9c7e5d(?)
#
const sub_3c2ffe54(?) = sha3(address(this.address), address(call.data[164]), address(call.data[196]), address(call.data[228]), address(call.data[260]), address(call.data[292]), call.data[516], call.data[548], call.data[580], call.data[612], call.data[644], call.data[676])

const sub_4fe4c442(?) = sha3(address(this.address), address(call.data[4]), address(call.data[36]), address(call.data[68]), address(call.data[100]), address(call.data[132]), call.data[324], call.data[356], call.data[388], call.data[420], call.data[452], call.data[484])

const getOrderHash(address[5] arg1, uint256[6] arg2) = sha3(address(this.address), address(call.data[4]), address(call.data[36]), address(call.data[68]), address(call.data[100]), address(call.data[132]), call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])

const EXTERNAL_QUERY_GAS_LIMIT = 4999

const VERSION = '1.0.0'


address sub_64157774Address;
address TOKEN_TRANSFER_PROXY_CONTRACTAddress;
mapping of uint256 filled;
mapping of uint256 cancelled;

function filled(bytes32 arg1) {
    return filled[arg1]
}

function cancelled(bytes32 arg1) {
    return cancelled[arg1]
}

function sub_64157774(?) {
    return sub_64157774Address
}

function TOKEN_TRANSFER_PROXY_CONTRACT() {
    return TOKEN_TRANSFER_PROXY_CONTRACTAddress
}

function _fallback() payable {
    revert
}

function getUnavailableTakerTokenAmount(bytes32 arg1) {
    require filled[arg1] + cancelled[arg1] >= filled[arg1]
    return (filled[arg1] + cancelled[arg1])
}

function isValidSignature(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2), arg3 << 248, arg4, arg5) 
    require erecover.result
    return (arg1 == address(signer))
}

function getPartialAmount(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not arg1:
        if arg2:
            return (arg1 * arg3 / arg2)
    else:
        if arg1:
            if arg1 * arg3 / arg1 == arg3:
                if arg2:
                    return (arg1 * arg3 / arg2)
    revert
}

function isRoundingError(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not mulmod(arg3, arg1, arg2):
        return 0
    require mulmod(arg3, arg1, arg2)
    require 10^6 * mulmod(arg3, arg1, arg2) / mulmod(arg3, arg1, arg2) == 10^6
    if not arg1:
        if arg1 * arg3:
            return (10^6 * mulmod(arg3, arg1, arg2) / arg1 * arg3 > 1000)
    else:
        if arg1:
            if arg1 * arg3 / arg1 == arg3:
                if arg1 * arg3:
                    return (10^6 * mulmod(arg3, arg1, arg2) / arg1 * arg3 > 1000)
    revert
}

function cancelOrder(address[5] arg1, uint256[6] arg2, uint256 arg3) {
    require address(call.data[4]) == msg.sender
    require call.data[164] > 0
    require call.data[196] > 0
    require cd[356] > 0
    if block.timestamp >= call.data[292]:
        emit LogError(0, sha3(this.address, address(call.data[4]), address(call.data[36]), address(call.data[68]), address(call.data[100]), address(call.data[132]), call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324]));
        return 0
    require filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] + cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] >= filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]]
    require filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] + cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] <= call.data[196]
    if cd[356] < call.data[196] - filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] - cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]]:
        if not cd[356]:
            emit LogError(1, sha3(this.address, address(call.data[4]), address(call.data[36]), address(call.data[68]), address(call.data[100]), address(call.data[132]), call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324]));
            return 0
        require cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] + cd[356] >= cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]]
        cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] += cd[356]
        if cd[356]:
            require cd[356]
            require cd[356] * call.data[164] / cd[356] == call.data[164]
        require call.data[196]
        emit LogCancel(call.data[68] << 192, address(call.data[100]), cd[356] * call.data[164] / call.data[196], cd[356], sha3(this.address, address(call.data[4]), address(call.data[36]), address(call.data[68]), address(call.data[100]), address(call.data[132]), call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324]), address(call.data[4]), address(call.data[132]), sha3(address(call.data[68]), address(call.data[100])));
        return cd[356]
    if not call.data[196] - filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] - cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]]:
        emit LogError(1, sha3(this.address, address(call.data[4]), address(call.data[36]), address(call.data[68]), address(call.data[100]), address(call.data[132]), call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324]));
        return 0
    require call.data[196] - filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] >= cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]]
    cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] = call.data[196] - filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]]
    if call.data[196] - filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] - cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]]:
        require call.data[196] - filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] - cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]]
        require (call.data[196] * call.data[164]) - (filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] * call.data[164]) - (cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] * call.data[164]) / call.data[196] - filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] - cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] == call.data[164]
    require call.data[196]
    emit LogCancel(call.data[68] << 192, address(call.data[100]), (call.data[196] * call.data[164]) - (filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] * call.data[164]) - (cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] * call.data[164]) / call.data[196], call.data[196] - filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] - cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]], sha3(this.address, address(call.data[4]), address(call.data[36]), address(call.data[68]), address(call.data[100]), address(call.data[132]), call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324]), address(call.data[4]), address(call.data[132]), sha3(address(call.data[68]), address(call.data[100])));
    return (call.data[196] - filled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]] - cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][address(call.data[100])][address(call.data[132])][call.data[164]][call.data[196]][call.data[228]][call.data[260]][call.data[292]][call.data[324]])
}

function batchCancelOrders(address[5][] arg1, uint256[6][] arg2, uint256[] arg3) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    s = 128
    idx = 0
    while idx < arg1.length:
        _99 = mem[64]
        mem[64] = mem[64] + 160
        mem[_99 len 160] = call.data[(160 * idx) + arg1 + 36 len 160]
        mem[s] = _99
        s = s + 32
        idx = idx + 1
        continue 
    _98 = mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_98] = arg2.length
    s = _98 + 32
    idx = 0
    while idx < arg2.length:
        _195 = mem[64]
        mem[64] = mem[64] + 192
        mem[_195 len 192] = call.data[(192 * idx) + arg2 + 36 len 192]
        mem[s] = _195
        s = s + 32
        idx = idx + 1
        continue 
    _194 = mem[64]
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_194] = arg3.length
    mem[_194 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    _288 = mem[96]
    idx = 0
    while idx < _288:
        require idx < mem[96]
        _290 = mem[(32 * idx) + 128]
        require idx < mem[_98]
        _292 = mem[(32 * idx) + _98 + 32]
        require idx < mem[_194]
        _294 = mem[(32 * idx) + _194 + 32]
        _295 = mem[64]
        mem[64] = mem[64] + 352
        mem[_295] = 0
        mem[_295 + 32] = 0
        mem[_295 + 64] = 0
        mem[_295 + 96] = 0
        mem[_295 + 128] = 0
        mem[_295 + 160] = 0
        mem[_295 + 192] = 0
        mem[_295 + 224] = 0
        mem[_295 + 256] = 0
        mem[_295 + 288] = 0
        mem[_295 + 320] = 0
        _296 = mem[64]
        mem[64] = mem[64] + 352
        mem[_296] = mem[_290 + 12 len 20]
        mem[_296 + 32] = mem[_290 + 44 len 20]
        mem[_296 + 64] = mem[_290 + 76 len 20]
        mem[_296 + 96] = mem[_290 + 108 len 20]
        mem[_296 + 128] = mem[_290 + 140 len 20]
        mem[_296 + 160] = mem[_292]
        mem[_296 + 192] = mem[_292 + 32]
        mem[_296 + 224] = mem[_292 + 64]
        mem[_296 + 256] = mem[_292 + 96]
        mem[_296 + 288] = mem[_292 + 128]
        _307 = mem[_290]
        _308 = mem[_290 + 32]
        _309 = mem[_290 + 64]
        _310 = mem[_290 + 96]
        _311 = mem[_290 + 128]
        _312 = mem[_292]
        _313 = mem[_292 + 32]
        _314 = mem[_292 + 64]
        _315 = mem[_292 + 96]
        _316 = mem[_292 + 128]
        _317 = mem[_292 + 160]
        mem[mem[64]] = address(this.address)
        mem[mem[64] + 20] = address(_307)
        mem[mem[64] + 40] = address(_308)
        mem[mem[64] + 60] = address(_309)
        mem[mem[64] + 80] = address(_310)
        mem[mem[64] + 100] = address(_311)
        mem[mem[64] + 120] = _312
        mem[mem[64] + 152] = _313
        mem[mem[64] + 184] = _314
        mem[mem[64] + 216] = _315
        mem[mem[64] + 248] = _316
        mem[mem[64] + 280] = _317
        mem[_296 + 320] = sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317)
        require mem[_296 + 12 len 20] == msg.sender
        require mem[_296 + 160] > 0
        require mem[_296 + 192] > 0
        require _294 > 0
        if block.timestamp >= mem[_296 + 288]:
            emit LogError(0, sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317));
        else:
            _325 = mem[_296 + 192]
            mem[0] = sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317)
            mem[32] = 3
            require filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] + cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] >= filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317]
            require filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] + cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] <= _325
            if _294 < _325 - filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] - cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317]:
                if not _294:
                    emit LogError(1, sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317));
                else:
                    require cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] + _294 >= cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317]
                    mem[0] = sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317)
                    mem[32] = 3
                    cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] += _294
                    _345 = mem[_296 + 96]
                    mem[mem[64]] = address(mem[_296 + 64])
                    mem[mem[64] + 20] = address(_345)
                    _348 = sha3(mem[mem[64] len 20], address(_345))
                    _349 = mem[_296 + 128]
                    _350 = mem[_296]
                    _352 = mem[_296 + 96]
                    _353 = mem[_296 + 192]
                    _354 = mem[_296 + 160]
                    if _294:
                        require _294
                        require _294 * mem[_296 + 160] / _294 == mem[_296 + 160]
                    require mem[_296 + 192]
                    mem[mem[64]] = mem[_296 + 76 len 20]
                    mem[mem[64] + 32] = address(_352)
                    mem[mem[64] + 64] = _294 * _354 / _353
                    mem[mem[64] + 96] = _294
                    mem[mem[64] + 128] = sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317)
                    emit LogCancel(mem[mem[64]], address(_352), _294 * _354 / _353, _294, sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317), address(_350), address(_349), _348);
            else:
                if not _325 - filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] - cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317]:
                    emit LogError(1, sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317));
                else:
                    require _325 - filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] >= cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317]
                    mem[0] = sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317)
                    mem[32] = 3
                    cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] = _325 - filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317]
                    _358 = mem[_296 + 96]
                    mem[mem[64]] = address(mem[_296 + 64])
                    mem[mem[64] + 20] = address(_358)
                    _361 = sha3(mem[mem[64] len 20], address(_358))
                    _362 = mem[_296 + 128]
                    _363 = mem[_296]
                    _365 = mem[_296 + 96]
                    _366 = mem[_296 + 192]
                    _367 = mem[_296 + 160]
                    if _325 - filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] - cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317]:
                        require _325 - filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] - cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317]
                        require (_325 * mem[_296 + 160]) - (filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] * mem[_296 + 160]) - (cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] * mem[_296 + 160]) / _325 - filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] - cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] == mem[_296 + 160]
                    require mem[_296 + 192]
                    mem[mem[64]] = mem[_296 + 76 len 20]
                    mem[mem[64] + 32] = address(_365)
                    mem[mem[64] + 64] = (_325 * _367) - (filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] * _367) - (cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] * _367) / _366
                    mem[mem[64] + 96] = _325 - filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] - cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317]
                    mem[mem[64] + 128] = sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317)
                    emit LogCancel(mem[mem[64]], address(_365), (_325 * _367) - (filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] * _367) - (cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] * _367) / _366, _325 - filled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317] - cancelled[this.address][address(_307)][address(_308)][address(_309)][address(_310)][address(_311)][_312][_313][_314][_315][_316][_317], sha3(this.address, address(_307), address(_308), address(_309), address(_310), address(_311), _312, _313, _314, _315, _316, _317), address(_363), address(_362), _361);
        _288 = mem[96]
        idx = idx + 1
        continue 
}



}
