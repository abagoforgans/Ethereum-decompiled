contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 4761]




// =====================  Runtime code  =====================


const getBridgeValidatorsInterfacesVersion = 2, 1, 0

const F_ADDR = 0xffffffffffffffffffffffffffffffffffffffff


mapping of uint256 validatorCount;
mapping of address validatorReward;
mapping of uint8 stor4;
mapping of address stor1461501637330902918203684832716283019655932542975;

function validatorCount() {
    return validatorCount['validatorCount']
}

function isInitialized() {
    return bool(stor4['isInitialized'])
}

function getValidatorRewardAddress(address arg1) {
    return validatorReward['validatorsRewards'][arg1]
}

function requiredSignatures() {
    return validatorCount['requiredSignatures']
}

function getNextValidator(address arg1) {
    return validatorReward['validatorsList'][arg1]
}

function owner() {
    return validatorReward['owner']
}

function deployedAtBlock() {
    return validatorCount['deployedAtBlock']
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == validatorReward['owner']
    require arg1
    emit OwnershipTransferred(validatorReward['owner'], arg1);
    validatorReward['owner'] = arg1
}

function isValidator(address arg1) {
    if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
        return arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    return not not validatorReward['validatorsList'][arg1]
}

function setRequiredSignatures(uint256 arg1) {
    require msg.sender == validatorReward['owner']
    require validatorCount['validatorCount'] >= arg1
    require arg1
    validatorCount['requiredSignatures'] = arg1
    emit RequiredSignaturesChanged(arg1);
}

function addValidator(address arg1, address arg2) {
    require msg.sender == validatorReward['owner']
    require arg2
    require arg1
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    require not validatorReward['validatorsList'][arg1]
    require stor2[('map', "'validatorsList'", ('name', 'storFFFF', 1461501637330902918203684832716283019655932542975))]
    validatorReward['validatorsList'][arg1] = stor2[('map', "'validatorsList'", ('name', 'storFFFF', 1461501637330902918203684832716283019655932542975))]
    stor2[('map', "'validatorsList'", ('name', 'storFFFF', 1461501637330902918203684832716283019655932542975))] = arg1
    require validatorCount['validatorCount'] + 1 >= validatorCount['validatorCount']
    validatorCount['validatorCount']++
    validatorReward['validatorsRewards'][arg1] = arg2
    emit ValidatorAdded(arg2, arg1);
}

function validatorList() {
    mem[0] = sha3('validatorsList', 0xffffffffffffffffffffffffffffffffffffffff)
    mem[32] = 2
    require stor2[('map', "'validatorsList'", ('name', 'storFFFF', 1461501637330902918203684832716283019655932542975))]
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
        require s < validatorCount['validatorCount']
        mem[(32 * s) + 224] = address(idx)
        mem[(32 * validatorCount['validatorCount']) + 224] = 'validatorsList'
        mem[(32 * validatorCount['validatorCount']) + 238] = address(idx)
        mem[0] = sha3('validatorsList', address(idx))
        mem[32] = 2
        require validatorReward['validatorsList'][address(idx)]
        idx = validatorReward['validatorsList'][address(idx)]
        s = s + 1
        continue 
    mem[(32 * validatorCount['validatorCount']) + 288 len floor32(validatorCount['validatorCount'])] = mem[224 len floor32(validatorCount['validatorCount'])]
    return Array(len=validatorCount['validatorCount'], data=mem[224 len floor32(validatorCount['validatorCount'])], mem[(32 * validatorCount['validatorCount']) + floor32(validatorCount['validatorCount']) + 288 len (32 * validatorCount['validatorCount']) - floor32(validatorCount['validatorCount'])]), 
}

function removeValidator(address arg1) {
    require msg.sender == validatorReward['owner']
    require validatorCount['validatorCount'] > validatorCount['requiredSignatures']
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    require validatorReward['validatorsList'][arg1]
    mem[0] = sha3('validatorsList', 0xffffffffffffffffffffffffffffffffffffffff)
    mem[32] = 2
    require stor2[('map', "'validatorsList'", ('name', 'storFFFF', 1461501637330902918203684832716283019655932542975))]
    idx = stor[sha3(mem[0 len 64])]
    s = 0xffffffffffffffffffffffffffffffffffffffff
    while arg1 != address(idx):
        mem[96] = 'validatorsList'
        mem[110] = address(idx)
        mem[0] = sha3('validatorsList', address(idx))
        mem[32] = 2
        require validatorReward['validatorsList'][address(idx)] != 0xffffffffffffffffffffffffffffffffffffffff
        require validatorReward['validatorsList'][address(idx)]
        idx = validatorReward['validatorsList'][address(idx)]
        s = idx
        continue 
    validatorReward['validatorsList'][address(s)] = validatorReward['validatorsList'][arg1]
    mem[160 len 0] = None
    validatorReward[mem[160 len 14]][arg1] = 0
    require 1 <= validatorCount['validatorCount']
    validatorCount['validatorCount']--
    mem[224 len 0] = None
    validatorReward[mem[224 len 15]][Mask(16, 120, 'validatorsRewards') >> 120][arg1] = 0
    emit ValidatorRemoved(arg1);
}

function initialize(uint256 arg1, address[] arg2, address[] arg3, address arg4) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require not stor4['isInitialized']
    require arg4
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = arg4
    emit OwnershipTransferred(validatorReward['owner'], arg4);
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'owner'
    validatorReward['owner'] = arg4
    require arg1
    require arg2.length >= arg1
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
        require idx < arg3.length
        require mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
        require idx < arg2.length
        _195 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 140 len 20] == 0xffffffffffffffffffffffffffffffffffffffff:
            if not idx:
                require idx < arg2.length
                _204 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsList'
                mem[(32 * arg2.length) + (32 * arg3.length) + 174] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                stor2[('map', "'validatorsList'", ('name', 'storFFFF', 1461501637330902918203684832716283019655932542975))] = address(_204)
                if arg2.length != 1:
                    require validatorCount['validatorCount'] + 1 >= validatorCount['validatorCount']
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorCount'
                    validatorCount['validatorCount']++
                    require idx < arg2.length
                    _312 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    _319 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsRewards'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 177] = address(_312)
                    mem[0] = sha3('validatorsRewards', address(_312))
                    mem[32] = 2
                    validatorReward['validatorsRewards'][address(_312)] = address(_319)
                    require idx < arg2.length
                    _360 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
                    emit ValidatorAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 160], address(_360));
                else:
                    require idx < arg2.length
                    _231 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 174] = address(mem[(32 * idx) + 128])
                    validatorReward['validatorsList'][address(_231)] = 0xffffffffffffffffffffffffffffffffffffffff
                    require validatorCount['validatorCount'] + 1 >= validatorCount['validatorCount']
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorCount'
                    validatorCount['validatorCount']++
                    require idx < arg2.length
                    _350 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    _362 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsRewards'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 177] = address(_350)
                    mem[0] = sha3('validatorsRewards', address(_350))
                    mem[32] = 2
                    validatorReward['validatorsRewards'][address(_350)] = address(_362)
                    require idx < arg2.length
                    _404 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
                    emit ValidatorAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 160], address(_404));
            else:
                require idx - 1 < arg2.length
                require idx < arg2.length
                if idx != arg2.length - 1:
                    _213 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsList'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 174] = address(mem[(32 * idx - 1) + 128])
                    validatorReward['validatorsList'][mem[(32 * arg2.length) + (32 * arg3.length) + 174 len 20]] = address(_213)
                    require validatorCount['validatorCount'] + 1 >= validatorCount['validatorCount']
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorCount'
                    validatorCount['validatorCount']++
                    require idx < arg2.length
                    _310 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    _318 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsRewards'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 177] = address(_310)
                    mem[0] = sha3('validatorsRewards', address(_310))
                    mem[32] = 2
                    validatorReward['validatorsRewards'][address(_310)] = address(_318)
                    require idx < arg2.length
                    _356 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
                    emit ValidatorAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 160], address(_356));
                else:
                    _214 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsList'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 174] = address(mem[(32 * idx - 1) + 128])
                    validatorReward['validatorsList'][mem[(32 * arg2.length) + (32 * arg3.length) + 174 len 20]] = address(_214)
                    require idx < arg2.length
                    _244 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 174] = address(mem[(32 * idx) + 128])
                    validatorReward['validatorsList'][address(_244)] = 0xffffffffffffffffffffffffffffffffffffffff
                    require validatorCount['validatorCount'] + 1 >= validatorCount['validatorCount']
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorCount'
                    validatorCount['validatorCount']++
                    require idx < arg2.length
                    _358 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    _372 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsRewards'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 177] = address(_358)
                    mem[0] = sha3('validatorsRewards', address(_358))
                    mem[32] = 2
                    validatorReward['validatorsRewards'][address(_358)] = address(_372)
                    require idx < arg2.length
                    _413 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
                    emit ValidatorAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 160], address(_413));
        else:
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsList'
            mem[(32 * arg2.length) + (32 * arg3.length) + 174] = address(_195)
            require not validatorReward['validatorsList'][address(_195)]
            if not idx:
                require idx < arg2.length
                _229 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsList'
                mem[(32 * arg2.length) + (32 * arg3.length) + 174] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                stor2[('map', "'validatorsList'", ('name', 'storFFFF', 1461501637330902918203684832716283019655932542975))] = address(_229)
                if arg2.length != 1:
                    require validatorCount['validatorCount'] + 1 >= validatorCount['validatorCount']
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorCount'
                    validatorCount['validatorCount']++
                    require idx < arg2.length
                    _354 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    _364 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsRewards'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 177] = address(_354)
                    mem[0] = sha3('validatorsRewards', address(_354))
                    mem[32] = 2
                    validatorReward['validatorsRewards'][address(_354)] = address(_364)
                    require idx < arg2.length
                    _410 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
                    emit ValidatorAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 160], address(_410));
                else:
                    require idx < arg2.length
                    _270 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 174] = address(mem[(32 * idx) + 128])
                    validatorReward['validatorsList'][address(_270)] = 0xffffffffffffffffffffffffffffffffffffffff
                    require validatorCount['validatorCount'] + 1 >= validatorCount['validatorCount']
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorCount'
                    validatorCount['validatorCount']++
                    require idx < arg2.length
                    _401 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    _412 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsRewards'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 177] = address(_401)
                    mem[0] = sha3('validatorsRewards', address(_401))
                    mem[32] = 2
                    validatorReward['validatorsRewards'][address(_401)] = address(_412)
                    require idx < arg2.length
                    _438 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
                    emit ValidatorAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 160], address(_438));
            else:
                require idx - 1 < arg2.length
                require idx < arg2.length
                if idx != arg2.length - 1:
                    _253 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsList'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 174] = address(mem[(32 * idx - 1) + 128])
                    validatorReward['validatorsList'][mem[(32 * arg2.length) + (32 * arg3.length) + 174 len 20]] = address(_253)
                    require validatorCount['validatorCount'] + 1 >= validatorCount['validatorCount']
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorCount'
                    validatorCount['validatorCount']++
                    require idx < arg2.length
                    _352 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    _363 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsRewards'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 177] = address(_352)
                    mem[0] = sha3('validatorsRewards', address(_352))
                    mem[32] = 2
                    validatorReward['validatorsRewards'][address(_352)] = address(_363)
                    require idx < arg2.length
                    _406 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
                    emit ValidatorAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 160], address(_406));
                else:
                    _254 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsList'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 174] = address(mem[(32 * idx - 1) + 128])
                    validatorReward['validatorsList'][mem[(32 * arg2.length) + (32 * arg3.length) + 174 len 20]] = address(_254)
                    require idx < arg2.length
                    _279 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 174] = address(mem[(32 * idx) + 128])
                    validatorReward['validatorsList'][address(_279)] = 0xffffffffffffffffffffffffffffffffffffffff
                    require validatorCount['validatorCount'] + 1 >= validatorCount['validatorCount']
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorCount'
                    validatorCount['validatorCount']++
                    require idx < arg2.length
                    _408 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    _421 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'validatorsRewards'
                    mem[(32 * arg2.length) + (32 * arg3.length) + 177] = address(_408)
                    mem[0] = sha3('validatorsRewards', address(_408))
                    mem[32] = 2
                    validatorReward['validatorsRewards'][address(_408)] = address(_421)
                    require idx < arg2.length
                    _440 = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
                    emit ValidatorAdded(mem[(32 * arg2.length) + (32 * arg3.length) + 160], address(_440));
        idx = idx + 1
        continue 
    validatorCount['requiredSignatures'] = arg1
    validatorCount['deployedAtBlock'] = block.number
    stor4['isInitialized'] = 1
    emit RequiredSignaturesChanged(arg1);
    return bool(stor4['isInitialized'])
}



}
