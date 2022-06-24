contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 6352]




// =====================  Runtime code  =====================


address upgradeabilityOwner;
array of uint256 version;
address implementationAddress;
mapping of uint256 arrayLimit;
mapping of address owner;
mapping of uint8 stor7;

function initialized() {
    return bool(stor7['rs_multisender_initialized'])
}

function version() {
    return version[0 len version.length]
}

function implementation() {
    return implementationAddress
}

function upgradeabilityOwner() {
    return upgradeabilityOwner
}

function owner() {
    return owner['owner']
}

function arrayLimit() {
    return arrayLimit['arrayLimit']
}

function txCount(address arg1) {
    return arrayLimit['txCount'][arg1]
}

function fee() {
    return arrayLimit['fee']
}

function pendingOwner() {
    return owner['pendingOwner']
}

function discountStep() {
    return arrayLimit['discountStep']
}

function _fallback() payable {
  stop
}

function setFee(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    arrayLimit['fee'] = arg1
}

function setArrayLimit(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    arrayLimit['arrayLimit'] = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner['owner']
    require arg1
    owner['pendingOwner'] = arg1
}

function setDiscountStep(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    arrayLimit['discountStep'] = arg1
}

function claimOwnership() {
    require msg.sender == owner['pendingOwner']
    emit OwnershipTransferred(owner['owner'], owner['pendingOwner']);
    owner['owner'] = owner['pendingOwner']
    owner['pendingOwner'] = 0
}

function discountRate(address arg1) {
    if not arrayLimit['txCount'][arg1]:
        return 0
    require arrayLimit['txCount'][arg1]
    require arrayLimit['txCount'][arg1] * arrayLimit['discountStep'] / arrayLimit['txCount'][arg1] == arrayLimit['discountStep']
    return (arrayLimit['txCount'][arg1] * arrayLimit['discountStep'])
}

function initialize(address arg1) {
    require not stor7['rs_multisender_initialized']
    emit OwnershipTransferred(owner['owner'], arg1);
    owner['owner'] = arg1
    require msg.sender == owner['owner']
    arrayLimit['arrayLimit'] = 200
    require msg.sender == owner['owner']
    arrayLimit['discountStep'] = 5 * 10^13
    require msg.sender == owner['owner']
    arrayLimit['fee'] = 5 * 10^16
    stor7['rs_multisender_initialized'] = 1
}

function claimTokens(address arg1) {
    require msg.sender == owner['owner']
    if not arg1:
        call owner['owner'] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner['owner'], ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(address(arg1), owner['owner'], ext_call.return_data[0]);
}

function currentFee(address arg1) {
    if not arrayLimit['txCount'][msg.sender]:
        if arrayLimit['fee'] <= 0:
            return 0
        if not arrayLimit['txCount'][arg1]:
            if 0 <= arrayLimit['fee']:
                return arrayLimit['fee']
        else:
            if arrayLimit['txCount'][arg1]:
                if arrayLimit['txCount'][arg1] * arrayLimit['discountStep'] / arrayLimit['txCount'][arg1] == arrayLimit['discountStep']:
                    if arrayLimit['txCount'][arg1] * arrayLimit['discountStep'] <= arrayLimit['fee']:
                        return (arrayLimit['fee'] - (arrayLimit['txCount'][arg1] * arrayLimit['discountStep']))
    else:
        if arrayLimit['txCount'][msg.sender]:
            if arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']:
                if arrayLimit['fee'] <= arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep']:
                    return 0
                if not arrayLimit['txCount'][arg1]:
                    if 0 <= arrayLimit['fee']:
                        return arrayLimit['fee']
                else:
                    if arrayLimit['txCount'][arg1]:
                        if arrayLimit['txCount'][arg1] * arrayLimit['discountStep'] / arrayLimit['txCount'][arg1] == arrayLimit['discountStep']:
                            if arrayLimit['txCount'][arg1] * arrayLimit['discountStep'] <= arrayLimit['fee']:
                                return (arrayLimit['fee'] - (arrayLimit['txCount'][arg1] * arrayLimit['discountStep']))
    revert
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
    if not arrayLimit['txCount'][msg.sender]:
        if arrayLimit['fee'] <= 0:
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
            require arg2.length <= arrayLimit['arrayLimit']
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _1207 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _1353 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1207)
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1353
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(_1207), _1353
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require uint8(idx) < arg3.length
                idx = idx + 1
                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                continue 
        else:
            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                if arrayLimit['fee'] <= 0:
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                    require arg2.length <= arrayLimit['arrayLimit']
                    idx = 0
                    s = 0
                    while uint8(idx) < arg2.length:
                        require uint8(idx) < arg2.length
                        _1255 = mem[(32 * uint8(idx)) + 128]
                        require uint8(idx) < arg3.length
                        _1385 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1255)
                        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1385
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(_1255), _1385
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                        require ext_call.success
                        require uint8(idx) < arg3.length
                        idx = idx + 1
                        s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        continue 
                else:
                    mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                    if not arrayLimit['txCount'][msg.sender]:
                        if arrayLimit['fee'] <= 0:
                            require msg.value >= 0
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            idx = 0
                            s = 0
                            while uint8(idx) < arg2.length:
                                require uint8(idx) < arg2.length
                                _1279 = mem[(32 * uint8(idx)) + 128]
                                require uint8(idx) < arg3.length
                                _1401 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1279)
                                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1401
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(_1279), _1401
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                require ext_call.success
                                require uint8(idx) < arg3.length
                                idx = idx + 1
                                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                continue 
                        else:
                            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1291 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1409 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1291)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1409
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1291), _1409
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                            else:
                                require arrayLimit['txCount'][msg.sender]
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'])
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1285 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1405 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1285)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1405
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1285), _1405
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                    else:
                        require arrayLimit['txCount'][msg.sender]
                        require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                        if arrayLimit['fee'] <= arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep']:
                            require msg.value >= 0
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            idx = 0
                            s = 0
                            while uint8(idx) < arg2.length:
                                require uint8(idx) < arg2.length
                                _1261 = mem[(32 * uint8(idx)) + 128]
                                require uint8(idx) < arg3.length
                                _1389 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1261)
                                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1389
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(_1261), _1389
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                require ext_call.success
                                require uint8(idx) < arg3.length
                                idx = idx + 1
                                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                continue 
                        else:
                            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1273 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1397 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1273)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1397
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1273), _1397
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                            else:
                                require arrayLimit['txCount'][msg.sender]
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'])
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1267 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1393 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1267)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1393
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1267), _1393
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
            else:
                require arrayLimit['txCount'][msg.sender]
                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                if arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep']) <= 0:
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                    require arg2.length <= arrayLimit['arrayLimit']
                    idx = 0
                    s = 0
                    while uint8(idx) < arg2.length:
                        require uint8(idx) < arg2.length
                        _1213 = mem[(32 * uint8(idx)) + 128]
                        require uint8(idx) < arg3.length
                        _1357 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1213)
                        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1357
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(_1213), _1357
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                        require ext_call.success
                        require uint8(idx) < arg3.length
                        idx = idx + 1
                        s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        continue 
                else:
                    mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                    if not arrayLimit['txCount'][msg.sender]:
                        if arrayLimit['fee'] <= 0:
                            require msg.value >= 0
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            idx = 0
                            s = 0
                            while uint8(idx) < arg2.length:
                                require uint8(idx) < arg2.length
                                _1237 = mem[(32 * uint8(idx)) + 128]
                                require uint8(idx) < arg3.length
                                _1373 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1237)
                                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1373
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(_1237), _1373
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                require ext_call.success
                                require uint8(idx) < arg3.length
                                idx = idx + 1
                                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                continue 
                        else:
                            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1249 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1381 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1249)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1381
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1249), _1381
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                            else:
                                require arrayLimit['txCount'][msg.sender]
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'])
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1243 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1377 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1243)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1377
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1243), _1377
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                    else:
                        require arrayLimit['txCount'][msg.sender]
                        require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                        if arrayLimit['fee'] <= arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep']:
                            require msg.value >= 0
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            idx = 0
                            s = 0
                            while uint8(idx) < arg2.length:
                                require uint8(idx) < arg2.length
                                _1219 = mem[(32 * uint8(idx)) + 128]
                                require uint8(idx) < arg3.length
                                _1361 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1219)
                                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1361
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(_1219), _1361
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                require ext_call.success
                                require uint8(idx) < arg3.length
                                idx = idx + 1
                                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                continue 
                        else:
                            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1231 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1369 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1231)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1369
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1231), _1369
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                            else:
                                require arrayLimit['txCount'][msg.sender]
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'])
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1225 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1365 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1225)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1365
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1225), _1365
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
    else:
        require arrayLimit['txCount'][msg.sender]
        require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
        if arrayLimit['fee'] <= arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep']:
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
            require arg2.length <= arrayLimit['arrayLimit']
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _1117 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _1293 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1117)
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1293
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(_1117), _1293
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                require ext_call.success
                require uint8(idx) < arg3.length
                idx = idx + 1
                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                continue 
        else:
            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                if arrayLimit['fee'] <= 0:
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                    require arg2.length <= arrayLimit['arrayLimit']
                    idx = 0
                    s = 0
                    while uint8(idx) < arg2.length:
                        require uint8(idx) < arg2.length
                        _1165 = mem[(32 * uint8(idx)) + 128]
                        require uint8(idx) < arg3.length
                        _1325 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1165)
                        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1325
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(_1165), _1325
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                        require ext_call.success
                        require uint8(idx) < arg3.length
                        idx = idx + 1
                        s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        continue 
                else:
                    mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                    if not arrayLimit['txCount'][msg.sender]:
                        if arrayLimit['fee'] <= 0:
                            require msg.value >= 0
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            idx = 0
                            s = 0
                            while uint8(idx) < arg2.length:
                                require uint8(idx) < arg2.length
                                _1189 = mem[(32 * uint8(idx)) + 128]
                                require uint8(idx) < arg3.length
                                _1341 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1189)
                                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1341
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(_1189), _1341
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                require ext_call.success
                                require uint8(idx) < arg3.length
                                idx = idx + 1
                                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                continue 
                        else:
                            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1201 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1349 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1201)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1349
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1201), _1349
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                            else:
                                require arrayLimit['txCount'][msg.sender]
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'])
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1195 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1345 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1195)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1345
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1195), _1345
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                    else:
                        require arrayLimit['txCount'][msg.sender]
                        require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                        if arrayLimit['fee'] <= arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep']:
                            require msg.value >= 0
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            idx = 0
                            s = 0
                            while uint8(idx) < arg2.length:
                                require uint8(idx) < arg2.length
                                _1171 = mem[(32 * uint8(idx)) + 128]
                                require uint8(idx) < arg3.length
                                _1329 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1171)
                                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1329
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(_1171), _1329
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                require ext_call.success
                                require uint8(idx) < arg3.length
                                idx = idx + 1
                                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                continue 
                        else:
                            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1183 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1337 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1183)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1337
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1183), _1337
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                            else:
                                require arrayLimit['txCount'][msg.sender]
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'])
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1177 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1333 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1177)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1333
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1177), _1333
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
            else:
                require arrayLimit['txCount'][msg.sender]
                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                if arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep']) <= 0:
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                    require arg2.length <= arrayLimit['arrayLimit']
                    idx = 0
                    s = 0
                    while uint8(idx) < arg2.length:
                        require uint8(idx) < arg2.length
                        _1123 = mem[(32 * uint8(idx)) + 128]
                        require uint8(idx) < arg3.length
                        _1297 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1123)
                        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1297
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(_1123), _1297
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                        require ext_call.success
                        require uint8(idx) < arg3.length
                        idx = idx + 1
                        s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        continue 
                else:
                    mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                    if not arrayLimit['txCount'][msg.sender]:
                        if arrayLimit['fee'] <= 0:
                            require msg.value >= 0
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            idx = 0
                            s = 0
                            while uint8(idx) < arg2.length:
                                require uint8(idx) < arg2.length
                                _1147 = mem[(32 * uint8(idx)) + 128]
                                require uint8(idx) < arg3.length
                                _1313 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1147)
                                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1313
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(_1147), _1313
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                require ext_call.success
                                require uint8(idx) < arg3.length
                                idx = idx + 1
                                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                continue 
                        else:
                            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1159 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1321 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1159)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1321
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1159), _1321
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                            else:
                                require arrayLimit['txCount'][msg.sender]
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'])
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1153 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1317 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1153)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1317
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1153), _1317
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                    else:
                        require arrayLimit['txCount'][msg.sender]
                        require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                        if arrayLimit['fee'] <= arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep']:
                            require msg.value >= 0
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            idx = 0
                            s = 0
                            while uint8(idx) < arg2.length:
                                require uint8(idx) < arg2.length
                                _1129 = mem[(32 * uint8(idx)) + 128]
                                require uint8(idx) < arg3.length
                                _1301 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1129)
                                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1301
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, address(_1129), _1301
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                require ext_call.success
                                require uint8(idx) < arg3.length
                                idx = idx + 1
                                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                continue 
                        else:
                            mem[(32 * arg2.length) + (32 * arg3.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1141 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1309 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1141)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1309
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1141), _1309
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
                            else:
                                require arrayLimit['txCount'][msg.sender]
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['txCount'][msg.sender] * arrayLimit['discountStep'])
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _1135 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _1305 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1135)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1305
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, address(_1135), _1305
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                                    require ext_call.success
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                                    continue 
    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
    arrayLimit['txCount'][msg.sender]++
    emit Multisended(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, arg1);
}



}
