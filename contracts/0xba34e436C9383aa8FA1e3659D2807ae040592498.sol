contract main {




// =====================  Runtime code  =====================


const SELFDESTRUCT_DELAY = (672 * 24 * 3600)


address owner;
array of uint256 stor1;
array of uint256 stor10;
uint256 storFF1C;
array of uint256 stor2;
uint8 stor3;
address selfDestructBeneficiaryAddress; offset 8
mapping of uint256 sub_de5eb832;
mapping of uint256 sub_e1686e72;
address oracleAddress;
uint256 rateStalePeriod;
array of uint256 stor8;
uint256 storC609;
mapping of struct sub_d95bb9a1;

function rateStalePeriod() {
    return rateStalePeriod
}

function initiationTime() {
    return stor2.length
}

function nominatedOwner() {
    return address(stor1.length)
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function rateIsFrozen(bytes4 arg1) {
    return bool(uint8(sub_d95bb9a1[Mask(32, 224, arg1)].field_768))
}

function rateForCurrency(bytes4 arg1) {
    return sub_de5eb832[Mask(32, 224, arg1)]
}

function selfDestructInitiated() {
    return bool(stor3)
}

function lastRateUpdateTimeForCurrency(bytes4 arg1) {
    return sub_e1686e72[Mask(32, 224, arg1)]
}

function selfDestructBeneficiary() {
    return selfDestructBeneficiaryAddress
}

function sub_d95bb9a1(?) {
    return sub_d95bb9a1[Mask(32, 224, arg1)].field_0, 
           sub_d95bb9a1[Mask(32, 224, arg1)].field_256,
           sub_d95bb9a1[Mask(32, 224, arg1)].field_512,
           bool(uint8(sub_d95bb9a1[Mask(32, 224, arg1)].field_768))
}

function sub_de5eb832(?) {
    return sub_de5eb832[Mask(32, 224, arg1)]
}

function sub_e1686e72(?) {
    return sub_e1686e72[Mask(32, 224, arg1)]
}

function selfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    if not stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct has not yet been initiated'
    if stor2.length + (672 * 24 * 3600) >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct delay has not yet elapsed'
    emit SelfDestructed(selfDestructBeneficiaryAddress);
    selfdestruct(selfDestructBeneficiaryAddress)
}

function _fallback() payable {
    revert
}

function sub_aa687daf(?) {
    require arg1 < 5
    return (stor8[0.125 / arg1] / 256^(4 * arg1 % 8) << 224)
}

function invertedKeys(uint256 arg1) {
    require arg1 < stor10.length
    return (stor10[0.125 / arg1].field_0 / 256^(4 * arg1 % 8) << 224)
}

function setOracle(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    oracleAddress = arg1
    emit OracleUpdated(arg1);
}

function terminateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    stor2.length = 0
    stor3 = 0
    emit SelfDestructTerminated()
}

function nominateNewOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    address(stor1.length) = arg1
    emit OwnerNominated(arg1);
}

function setRateStalePeriod(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    rateStalePeriod = arg1
    emit RateStalePeriodUpdated(arg1);
}

function rateIsStale(bytes4 arg1) {
    if Mask(32, 224, arg1) == 'sUSD':
        return 0
    require rateStalePeriod + sub_e1686e72[Mask(32, 224, arg1)] >= sub_e1686e72[Mask(32, 224, arg1)]
    return (rateStalePeriod + sub_e1686e72[Mask(32, 224, arg1)] < block.timestamp)
}

function initiateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    stor2.length = block.timestamp
    stor3 = 1
    emit SelfDestructInitiated((672 * 24 * 3600));
}

function acceptOwnership() {
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, address(stor1.length));
    owner = address(stor1.length)
    address(stor1.length) = 0
}

function deleteRate(bytes4 arg1) {
    if oracleAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the oracle can perform this action'
    if sub_de5eb832[Mask(32, 224, arg1)] <= 0:
        revert with 0, 'Rate is zero'
    sub_de5eb832[Mask(32, 224, arg1)] = 0
    sub_e1686e72[Mask(32, 224, arg1)] = 0
    emit RateDeleted(Mask(32, 224, arg1));
}

function setSelfDestructBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Beneficiary must not be the zero address'
    selfDestructBeneficiaryAddress = arg1
    emit SelfDestructBeneficiaryUpdated(arg1);
}

function anyRateIsStale(bytes4[] arg1) {
    idx = 0
    while idx < arg1.length:
        if 'sUSD' == Mask(32, 224, cd[((32 * idx) + arg1 + 36)]):
            idx = idx + 1
            continue 
        require idx < arg1.length
        mem[0] = Mask(32, 224, cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        require rateStalePeriod + sub_e1686e72[Mask(32, 224, cd[((32 * idx) + arg1 + 36)])] >= sub_e1686e72[Mask(32, 224, cd[((32 * idx) + arg1 + 36)])]
        if rateStalePeriod + sub_e1686e72[Mask(32, 224, cd[((32 * idx) + arg1 + 36)])] >= block.timestamp:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function ratesForCurrencies(bytes4[] arg1) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[9310 len 32 * arg1.length]
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = Mask(32, 224, mem[(32 * uint8(idx)) + 128])
        mem[32] = 4
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] = sub_de5eb832[Mask(32, 224, mem[(32 * uint8(idx)) + 128])]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function lastRateUpdateTimesForCurrencies(bytes4[] arg1) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[9310 len 32 * arg1.length]
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = Mask(32, 224, mem[(32 * uint8(idx)) + 128])
        mem[32] = 5
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] = sub_e1686e72[Mask(32, 224, mem[(32 * uint8(idx)) + 128])]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function removeInversePricing(bytes4 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    sub_d95bb9a1[Mask(32, 224, arg1)].field_0 = 0
    sub_d95bb9a1[Mask(32, 224, arg1)].field_256 = 0
    sub_d95bb9a1[Mask(32, 224, arg1)].field_512 = 0
    uint8(sub_d95bb9a1[Mask(32, 224, arg1)].field_768) = 0
    idx = 0
    while uint8(idx) < stor10.length:
        mem[0] = 10
        if stor10[uint8(idx) / 8].field_0 / 256^(4 * idx % 8) << 224 != Mask(32, 224, arg1):
            idx = idx + 1
            continue 
        require uint8(idx) < stor10.length
        stor10[uint8(idx) / 8].field_0 = !(test266151307() * 256^(4 * idx % 8)) and stor10[uint8(idx) / 8].field_0
        require stor10.length - 1 < stor10.length
        require uint8(idx) < stor10.length
        stor10[uint8(idx) / 8].field_0 = stor('array', ('div', 0.125, ('add', -1, ('stor', 256, 0, ('length', ('name', 'stor10', 10))))), ('name', 'stor10', 10))[uint8(stor10.length - 1)] * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and stor10[uint8(idx) / 8].field_0
        stor10.length--
        if stor10.length > stor10.length - 1:
            idx = sha3(10) + (stor10.length + 6 / 8)
            while sha3(10) + (stor10.length + 7 / 8) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit InversePriceConfigured(Mask(32, 224, arg1), 0, 0, 0);
    emit InversePriceConfigured(Mask(32, 224, arg1), 0, 0, 0);
}

function setInversePricing(bytes4 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    if arg2 <= 0:
        revert with 0, 'entryPoint must be above 0'
    if arg4 <= 0:
        revert with 0, 'lowerLimit must be above 0'
    if arg3 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'upperLimit must be above the entryPoint'
    if not arg2:
        if arg3 >= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'upperLimit must be less than double entryPoint'
    else:
        require 2 * arg2 / arg2 == 2
        if arg3 >= 2 * arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'upperLimit must be less than double entryPoint'
    if arg4 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'lowerLimit must be below the entryPoint'
    if sub_d95bb9a1[Mask(32, 224, arg1)].field_0 <= 0:
        stor10.length++
        stor10[Mask(253, 0, stor10.length.field_3)].field_0 = arg1 * 256^(4 * stor10.length % 8) or !(test266151307() * 256^(4 * stor10.length % 8)) and stor10[Mask(253, 0, stor10.length.field_3)].field_0
    sub_d95bb9a1[Mask(32, 224, arg1)].field_0 = arg2
    sub_d95bb9a1[Mask(32, 224, arg1)].field_256 = arg3
    sub_d95bb9a1[Mask(32, 224, arg1)].field_512 = arg4
    uint8(sub_d95bb9a1[Mask(32, 224, arg1)].field_768) = 0
    emit InversePriceConfigured(Mask(32, 224, arg1), arg2, arg3, arg4);
}

function updateRates(bytes4[] arg1, uint256[] arg2, uint256 arg3) {
    if oracleAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the oracle can perform this action'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 'Currency key array length must match rates array length.'
    if arg3 >= block.timestamp + 600:
        revert with 0, 'Time is too far into the future'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if not mem[(32 * arg1.length) + (32 * idx) + 160]:
            revert with 0, 'Zero is not a valid rate, please call deleteRate instead.'
        require idx < arg1.length
        if 'sUSD' == Mask(32, 224, mem[(32 * idx) + 128]):
            revert with 0, 'Rate of sUSD cannot be updated, it's always UNIT.'
        require idx < arg1.length
        mem[0] = Mask(32, 224, mem[(32 * idx) + 128])
        mem[32] = 5
        if arg3 >= sub_e1686e72[Mask(32, 224, mem[(32 * idx) + 128])]:
            require idx < arg1.length
            require idx < arg2.length
            _452 = mem[(32 * idx) + (32 * arg1.length) + 160]
            _453 = sha3(Mask(32, 224, mem[(32 * idx) + 128]), 9)
            if 0 >= sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0:
                require idx < arg2.length
                mem[(32 * arg1.length) + (32 * idx) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < arg2.length
                require idx < arg1.length
                sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = _452
            else:
                if uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768):
                    require idx < arg2.length
                    mem[(32 * arg1.length) + (32 * idx) + 160] = sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])]
                    require idx < arg2.length
                    require idx < arg1.length
                else:
                    if not sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0:
                        if 0 <= mem[(32 * idx) + (32 * arg1.length) + 160]:
                            if 0 >= sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                    uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                    emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                    require idx < arg2.length
                                    mem[(32 * arg1.length) + (32 * idx) + 160] = uint256(stor1[_453])
                                    require idx < arg2.length
                                    require idx < arg1.length
                                    sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = uint256(stor1[_453])
                                else:
                                    if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256 != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256
                                    else:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = uint256(stor1[_453])
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = uint256(stor1[_453])
                            else:
                                if 0 > sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                    if 0 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                    else:
                                        if 0 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                            uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                            emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                    require idx < arg2.length
                                    mem[(32 * arg1.length) + (32 * idx) + 160] = 0
                                    require idx < arg2.length
                                    require idx < arg1.length
                                    sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = 0
                                else:
                                    if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = stor2[_453]
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = stor2[_453]
                                    else:
                                        if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512 != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512
                                        else:
                                            uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                            emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = stor2[_453]
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = stor2[_453]
                        else:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] <= 0
                            if -mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                    uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                    emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                    require idx < arg2.length
                                    mem[(32 * arg1.length) + (32 * idx) + 160] = uint256(stor1[_453])
                                    require idx < arg2.length
                                    require idx < arg1.length
                                    sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = uint256(stor1[_453])
                                else:
                                    if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256 != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256
                                    else:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = uint256(stor1[_453])
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = uint256(stor1[_453])
                            else:
                                if -mem[(32 * idx) + (32 * arg1.length) + 160] > sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                    if -mem[(32 * idx) + (32 * arg1.length) + 160] == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = -_452
                                    else:
                                        if -mem[(32 * idx) + (32 * arg1.length) + 160] != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = -mem[(32 * idx) + (32 * arg1.length) + 160]
                                        else:
                                            uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                            emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = -_452
                                    require idx < arg2.length
                                    require idx < arg1.length
                                    sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = -_452
                                else:
                                    if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = stor2[_453]
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = stor2[_453]
                                    else:
                                        if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512 != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512
                                        else:
                                            uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                            emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = stor2[_453]
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = stor2[_453]
                    else:
                        require 2 * sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0 / sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0 == 2
                        if 2 * sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0 <= mem[(32 * idx) + (32 * arg1.length) + 160]:
                            if 0 >= sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                    uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                    emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                    require idx < arg2.length
                                    mem[(32 * arg1.length) + (32 * idx) + 160] = uint256(stor1[_453])
                                    require idx < arg2.length
                                    require idx < arg1.length
                                    sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = uint256(stor1[_453])
                                else:
                                    if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256 != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256
                                    else:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = uint256(stor1[_453])
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = uint256(stor1[_453])
                            else:
                                if 0 > sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                    if 0 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                    else:
                                        if 0 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                            uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                            emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                    require idx < arg2.length
                                    mem[(32 * arg1.length) + (32 * idx) + 160] = 0
                                    require idx < arg2.length
                                    require idx < arg1.length
                                    sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = 0
                                else:
                                    if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = stor2[_453]
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = stor2[_453]
                                    else:
                                        if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512 != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512
                                        else:
                                            uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                            emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = stor2[_453]
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = stor2[_453]
                        else:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] <= 2 * sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0
                            if (2 * sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0) - mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                    uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                    emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                    require idx < arg2.length
                                    mem[(32 * arg1.length) + (32 * idx) + 160] = uint256(stor1[_453])
                                    require idx < arg2.length
                                    require idx < arg1.length
                                    sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = uint256(stor1[_453])
                                else:
                                    if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256 != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256
                                    else:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = uint256(stor1[_453])
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = uint256(stor1[_453])
                            else:
                                if (2 * sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0) - mem[(32 * idx) + (32 * arg1.length) + 160] > sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                    if (2 * sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0) - mem[(32 * idx) + (32 * arg1.length) + 160] == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = (2 * stor[_453]) - _452
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = (2 * stor[_453]) - _452
                                    else:
                                        if (2 * sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0) - mem[(32 * idx) + (32 * arg1.length) + 160] != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = (2 * sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0) - mem[(32 * idx) + (32 * arg1.length) + 160]
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = (2 * sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_0) - _452
                                        else:
                                            uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                            emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = (2 * stor[_453]) - _452
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = (2 * stor[_453]) - _452
                                else:
                                    if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512 == sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_256:
                                        uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                        emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                        require idx < arg2.length
                                        mem[(32 * arg1.length) + (32 * idx) + 160] = stor2[_453]
                                        require idx < arg2.length
                                        require idx < arg1.length
                                        sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = stor2[_453]
                                    else:
                                        if sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512 != sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512:
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_512
                                        else:
                                            uint8(sub_d95bb9a1[Mask(32, 224, mem[(32 * idx) + 128])].field_768) = 1
                                            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(32, 224, mem[(32 * idx) + 128])
                                            emit InversePriceFrozen(mem[(32 * arg2.length) + (32 * arg1.length) + 160]);
                                            require idx < arg2.length
                                            mem[(32 * arg1.length) + (32 * idx) + 160] = stor2[_453]
                                            require idx < arg2.length
                                            require idx < arg1.length
                                            sub_de5eb832[Mask(32, 224, mem[(32 * idx) + 128])] = stor2[_453]
            require idx < arg1.length
            mem[0] = Mask(32, 224, mem[(32 * idx) + 128])
            mem[32] = 5
            sub_e1686e72[Mask(32, 224, mem[(32 * idx) + 128])] = arg3
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg1.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 256] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 288 len floor32(arg2.length)] = mem[(32 * arg1.length) + 160 len floor32(arg2.length)]
    emit RatesUpdated(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg2.length) + (32 * arg1.length) + floor32(arg1.length) + 256 len (32 * arg2.length) + (32 * arg1.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96);
    idx = 0
    s = 0
    while idx < 5:
        mem[0] = stor8[0.125 / idx] / 256^(4 * idx % 8) << 224
        mem[32] = 4
        require s + sub_de5eb832[stor8[0.125 / idx] / 256^(4 * idx % 8) << 224] >= sub_de5eb832[stor8[0.125 / idx] / 256^(4 * idx % 8) << 224]
        idx = idx + 1
        s = s + sub_de5eb832[stor8[0.125 / idx] / 256^(4 * idx % 8) << 224]
        continue 
    storFF1C = 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec1 * s
    storC609 = arg3
    mem[(32 * arg2.length) + (32 * arg1.length) + 384 len 0] = None
    mem[(32 * arg2.length) + (32 * arg1.length) + 448 len 0] = None
    emit RatesUpdated(bytes4[] arg1, uint256[] arg2):
                      64,
                      128,
                      1,
                      mem[(32 * arg2.length) + (32 * arg1.length) + 384],
                      1,
                      0,
                      mem[(32 * arg2.length) + (32 * arg1.length) + 448],
    return 1
}



}
