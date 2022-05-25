contract main {




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
    require arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] / arrayLimit['txCount'][arg1] == arrayLimit['discountStep']
    return (arrayLimit['discountStep'] * arrayLimit['txCount'][arg1])
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
    arrayLimit['fee'] = 5 * 10^15
    stor7['rs_multisender_initialized'] = 1
}

function claimTokens(address arg1) {
    require msg.sender == owner['owner']
    if not arg1:
        call owner['owner'] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner['owner'], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] / arrayLimit['txCount'][arg1] == arrayLimit['discountStep']:
                if arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] <= arrayLimit['fee']:
                    return (arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][arg1]))
    else:
        if arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']:
            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                return 0
            if not arrayLimit['txCount'][arg1]:
                if 0 <= arrayLimit['fee']:
                    return arrayLimit['fee']
            else:
                if arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] / arrayLimit['txCount'][arg1] == arrayLimit['discountStep']:
                    if arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] <= arrayLimit['fee']:
                        return (arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][arg1]))
    revert
}

function multisendEther(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 167] = address(msg.sender)
    if not arrayLimit['txCount'][msg.sender]:
        if arrayLimit['fee'] <= 0:
            require msg.value >= 0
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
            require arg1.length <= arrayLimit['arrayLimit']
            require 0 <= msg.value
            idx = 0
            s = msg.value
            while idx < arg1.length:
                require idx < arg2.length
                require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                require idx < arg2.length
                require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                require idx < arg1.length
                require idx < arg2.length
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                continue 
        else:
            mem[(32 * arg2.length) + (32 * arg1.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                require msg.value >= arrayLimit['fee']
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
                require arg1.length <= arrayLimit['arrayLimit']
                require arrayLimit['fee'] <= msg.value
                idx = 0
                s = msg.value - arrayLimit['fee']
                while idx < arg1.length:
                    require idx < arg2.length
                    require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                    require idx < arg2.length
                    require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                    require idx < arg1.length
                    require idx < arg2.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                    continue 
            else:
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
                require arg1.length <= arrayLimit['arrayLimit']
                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                idx = 0
                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                while idx < arg1.length:
                    require idx < arg2.length
                    require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                    require idx < arg2.length
                    require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                    require idx < arg1.length
                    require idx < arg2.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                    continue 
    else:
        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
            require msg.value >= 0
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
            require arg1.length <= arrayLimit['arrayLimit']
            require 0 <= msg.value
            idx = 0
            s = msg.value
            while idx < arg1.length:
                require idx < arg2.length
                require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                require idx < arg2.length
                require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                require idx < arg1.length
                require idx < arg2.length
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                continue 
        else:
            mem[(32 * arg2.length) + (32 * arg1.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                require msg.value >= arrayLimit['fee']
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
                require arg1.length <= arrayLimit['arrayLimit']
                require arrayLimit['fee'] <= msg.value
                idx = 0
                s = msg.value - arrayLimit['fee']
                while idx < arg1.length:
                    require idx < arg2.length
                    require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                    require idx < arg2.length
                    require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                    require idx < arg1.length
                    require idx < arg2.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                    continue 
            else:
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
                require arg1.length <= arrayLimit['arrayLimit']
                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                idx = 0
                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                while idx < arg1.length:
                    require idx < arg2.length
                    require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                    require idx < arg2.length
                    require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                    require idx < arg1.length
                    require idx < arg2.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                    continue 
    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
    arrayLimit['txCount'][msg.sender]++
    emit Multisended(msg.value, 48879);
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
    if not arrayLimit['txCount'][msg.sender]:
        if arrayLimit['fee'] <= 0:
            if arg1 != 48879:
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                require arg2.length <= arrayLimit['arrayLimit']
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _2605 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _2826 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2605)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2826
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_2605), _2826
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                    continue 
                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                arrayLimit['txCount'][msg.sender]++
                emit Multisended(_2986 * None, arg1);
            else:
                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                if not arrayLimit['txCount'][msg.sender]:
                    if arrayLimit['fee'] <= 0:
                        require msg.value >= 0
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        require 0 <= msg.value
                        idx = 0
                        s = msg.value
                        while idx < arg2.length:
                            require idx < arg3.length
                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                            require idx < arg3.length
                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                            require idx < arg2.length
                            require idx < arg3.length
                            call mem[(32 * idx) + 140 len 20] with:
                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                            continue 
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            require 0 <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee']
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee']
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                else:
                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                        require msg.value >= 0
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        require 0 <= msg.value
                        idx = 0
                        s = msg.value
                        while idx < arg2.length:
                            require idx < arg3.length
                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                            require idx < arg3.length
                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                            require idx < arg2.length
                            require idx < arg3.length
                            call mem[(32 * idx) + 140 len 20] with:
                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                            continue 
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            require 0 <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee']
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee']
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                arrayLimit['txCount'][msg.sender]++
                emit Multisended(msg.value, 48879);
        else:
            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                if arrayLimit['fee'] <= 0:
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _2713 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _2853 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2713)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2853
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_2713), _2853
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_3007 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
                else:
                    require msg.value >= 0
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _2749 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _2862 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2749)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2862
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_2749), _2862
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_3014 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
            else:
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                if arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= 0:
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _2641 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _2835 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2641)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2835
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_2641), _2835
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_2993 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
                else:
                    require msg.value >= 0
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _2677 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _2844 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2677)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2844
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_2677), _2844
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_3000 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
    else:
        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
            if arg1 != 48879:
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                require arg2.length <= arrayLimit['arrayLimit']
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _2425 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _2781 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2425)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2781
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_2425), _2781
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                    continue 
                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                arrayLimit['txCount'][msg.sender]++
                emit Multisended(_2951 * None, arg1);
            else:
                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                if not arrayLimit['txCount'][msg.sender]:
                    if arrayLimit['fee'] <= 0:
                        require msg.value >= 0
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        require 0 <= msg.value
                        idx = 0
                        s = msg.value
                        while idx < arg2.length:
                            require idx < arg3.length
                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                            require idx < arg3.length
                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                            require idx < arg2.length
                            require idx < arg3.length
                            call mem[(32 * idx) + 140 len 20] with:
                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                            continue 
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            require 0 <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee']
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee']
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                else:
                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                        require msg.value >= 0
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        require 0 <= msg.value
                        idx = 0
                        s = msg.value
                        while idx < arg2.length:
                            require idx < arg3.length
                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                            require idx < arg3.length
                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                            require idx < arg2.length
                            require idx < arg3.length
                            call mem[(32 * idx) + 140 len 20] with:
                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                            continue 
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            require 0 <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee']
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee']
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                arrayLimit['txCount'][msg.sender]++
                emit Multisended(msg.value, 48879);
        else:
            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                if arrayLimit['fee'] <= 0:
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _2533 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _2808 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2533)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2808
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_2533), _2808
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_2972 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
                else:
                    require msg.value >= 0
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _2569 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _2817 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2569)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2817
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_2569), _2817
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_2979 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
            else:
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                if arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= 0:
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _2461 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _2790 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2461)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2790
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_2461), _2790
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_2958 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
                else:
                    require msg.value >= 0
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _2497 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _2799 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_2497)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _2799
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_2497), _2799
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_2965 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
}



}
