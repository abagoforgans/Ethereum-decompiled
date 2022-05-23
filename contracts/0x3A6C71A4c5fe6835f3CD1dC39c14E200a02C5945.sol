contract main {




// =====================  Runtime code  =====================


#
#  - multisendToken(address arg1, address[] arg2, uint256[] arg3)
#
address upgradeabilityOwner;
array of uint256 version;
address implementationAddress;
mapping of uint256 arrayLimit;
mapping of address owner;
mapping of uint8 stor7;

function initialized() {
    return bool(stor7['etherchaintools_airdropper'])
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
    return arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
}

function txCount(address arg1) {
    return arrayLimit[Mask(216, 0, 'txCount', arg1, 0)]
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
    if not arrayLimit[Mask(216, 0, 'txCount', arg1, 0)]:
        return 0
    require arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] / arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] == arrayLimit['discountStep']
    return (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)])
}

function initialize(address arg1) {
    require not stor7['etherchaintools_airdropper']
    emit OwnershipTransferred(owner['owner'], arg1);
    owner['owner'] = arg1
    require msg.sender == owner['owner']
    arrayLimit['arrayLimit'] = 150
    require msg.sender == owner['owner']
    arrayLimit['discountStep'] = 2 * 10^13
    require msg.sender == owner['owner']
    arrayLimit['fee'] = 2 * 10^14
    stor7['rs_multisender_initialized'] = 0
    stor7['etherchaintools_airdropper'] = 1
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

function sub_9ec3a7b1(?) {
    if not arrayLimit['fee']:
        if not arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
            return 0
        if arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] / arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] == arrayLimit['discountStep']:
            if 0 <= arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
                return 0
            if not arrayLimit[Mask(216, 0, 'txCount', arg1, 0)]:
                return 0
            if arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] / arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] == arrayLimit['discountStep']:
                if arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] <= 0:
                    return (-1 * arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)])
    else:
        if arg2 * arrayLimit['fee'] / arrayLimit['fee'] == arg2:
            if not arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
                if arg2 * arrayLimit['fee'] <= 0:
                    return 0
                if not arrayLimit[Mask(216, 0, 'txCount', arg1, 0)]:
                    if 0 <= arg2 * arrayLimit['fee']:
                        return (arg2 * arrayLimit['fee'])
                else:
                    if arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] / arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] == arrayLimit['discountStep']:
                        if arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] <= arg2 * arrayLimit['fee']:
                            return ((arg2 * arrayLimit['fee']) - (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)]))
            else:
                if arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] / arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] == arrayLimit['discountStep']:
                    if arg2 * arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
                        return 0
                    if not arrayLimit[Mask(216, 0, 'txCount', arg1, 0)]:
                        if 0 <= arg2 * arrayLimit['fee']:
                            return (arg2 * arrayLimit['fee'])
                    else:
                        if arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] / arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] == arrayLimit['discountStep']:
                            if arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)] <= arg2 * arrayLimit['fee']:
                                return ((arg2 * arrayLimit['fee']) - (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', arg1, 0)]))
    revert
}

function multisendEther(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not arrayLimit['fee']:
        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 'txCount'
        mem[(32 * arg2.length) + (32 * arg1.length) + 199] = address(msg.sender)
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 27
        mem[(32 * arg2.length) + (32 * arg1.length) + 219 len 0] = None
        if not arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
            require msg.value >= 0
            mem[(32 * arg2.length) + (32 * arg1.length) + 251] = 'arrayLimit'
            mem[(32 * arg2.length) + (32 * arg1.length) + 219] = 10
            mem[(32 * arg2.length) + (32 * arg1.length) + 261 len 0] = None
            mem[(32 * arg2.length) + (32 * arg1.length) + 271 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 283 len 10]
            mem[(32 * arg2.length) + (32 * arg1.length) + 261 len 10] = Mask(80, 0, 'arrayLimit', 0)
            require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
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
            require arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] / arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] == arrayLimit['discountStep']
            if 0 <= arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
                require msg.value >= 0
                mem[(32 * arg2.length) + (32 * arg1.length) + 251] = 'arrayLimit'
                mem[(32 * arg2.length) + (32 * arg1.length) + 219] = 10
                mem[(32 * arg2.length) + (32 * arg1.length) + 261 len 0] = None
                mem[(32 * arg2.length) + (32 * arg1.length) + 271 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 283 len 10]
                mem[(32 * arg2.length) + (32 * arg1.length) + 261 len 10] = Mask(80, 0, 'arrayLimit', 0)
                require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
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
                mem[(32 * arg2.length) + (32 * arg1.length) + 251] = 'txCount'
                mem[(32 * arg2.length) + (32 * arg1.length) + 258] = address(msg.sender)
                mem[(32 * arg2.length) + (32 * arg1.length) + 219] = 27
                mem[(32 * arg2.length) + (32 * arg1.length) + 278 len 0] = None
                if not arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
                    require msg.value >= 0
                    mem[(32 * arg2.length) + (32 * arg1.length) + 310] = 'arrayLimit'
                    mem[(32 * arg2.length) + (32 * arg1.length) + 278] = 10
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 0] = None
                    mem[(32 * arg2.length) + (32 * arg1.length) + 330 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 342 len 10]
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 10] = Mask(80, 0, 'arrayLimit', 0)
                    require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
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
                    require arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] / arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] == arrayLimit['discountStep']
                    require arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] <= 0
                    require msg.value >= -1 * arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]
                    mem[(32 * arg2.length) + (32 * arg1.length) + 310] = 'arrayLimit'
                    mem[(32 * arg2.length) + (32 * arg1.length) + 278] = 10
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 0] = None
                    mem[(32 * arg2.length) + (32 * arg1.length) + 330 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 342 len 10]
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 10] = Mask(80, 0, 'arrayLimit', 0)
                    require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
                    require -1 * arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] <= msg.value
                    idx = 0
                    s = msg.value + (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', address(msg.sender), 0)])
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
        require arg1.length * arrayLimit['fee'] / arrayLimit['fee'] == arg1.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 'txCount'
        mem[(32 * arg2.length) + (32 * arg1.length) + 199] = address(msg.sender)
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 27
        mem[(32 * arg2.length) + (32 * arg1.length) + 219 len 0] = None
        if not arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
            if arg1.length * arrayLimit['fee'] <= 0:
                require msg.value >= 0
                mem[(32 * arg2.length) + (32 * arg1.length) + 251] = 'arrayLimit'
                mem[(32 * arg2.length) + (32 * arg1.length) + 219] = 10
                mem[(32 * arg2.length) + (32 * arg1.length) + 261 len 0] = None
                mem[(32 * arg2.length) + (32 * arg1.length) + 271 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 283 len 10]
                mem[(32 * arg2.length) + (32 * arg1.length) + 261 len 10] = Mask(80, 0, 'arrayLimit', 0)
                require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
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
                mem[(32 * arg2.length) + (32 * arg1.length) + 251] = 'txCount'
                mem[(32 * arg2.length) + (32 * arg1.length) + 258] = address(msg.sender)
                mem[(32 * arg2.length) + (32 * arg1.length) + 219] = 27
                mem[(32 * arg2.length) + (32 * arg1.length) + 278 len 0] = None
                if not arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
                    require 0 <= arg1.length * arrayLimit['fee']
                    require msg.value >= arg1.length * arrayLimit['fee']
                    mem[(32 * arg2.length) + (32 * arg1.length) + 310] = 'arrayLimit'
                    mem[(32 * arg2.length) + (32 * arg1.length) + 278] = 10
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 0] = None
                    mem[(32 * arg2.length) + (32 * arg1.length) + 330 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 342 len 10]
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 10] = Mask(80, 0, 'arrayLimit', 0)
                    require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
                    require arg1.length * arrayLimit['fee'] <= msg.value
                    idx = 0
                    s = msg.value - (arg1.length * arrayLimit['fee'])
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
                    require arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] / arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] == arrayLimit['discountStep']
                    require arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] <= arg1.length * arrayLimit['fee']
                    require msg.value >= (arg1.length * arrayLimit['fee']) - (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)])
                    mem[(32 * arg2.length) + (32 * arg1.length) + 310] = 'arrayLimit'
                    mem[(32 * arg2.length) + (32 * arg1.length) + 278] = 10
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 0] = None
                    mem[(32 * arg2.length) + (32 * arg1.length) + 330 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 342 len 10]
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 10] = Mask(80, 0, 'arrayLimit', 0)
                    require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
                    require (arg1.length * arrayLimit['fee']) - (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]) <= msg.value
                    idx = 0
                    s = msg.value - (arg1.length * arrayLimit['fee']) + (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', address(msg.sender), 0)])
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
            require arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] / arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] == arrayLimit['discountStep']
            if arg1.length * arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
                require msg.value >= 0
                mem[(32 * arg2.length) + (32 * arg1.length) + 251] = 'arrayLimit'
                mem[(32 * arg2.length) + (32 * arg1.length) + 219] = 10
                mem[(32 * arg2.length) + (32 * arg1.length) + 261 len 0] = None
                mem[(32 * arg2.length) + (32 * arg1.length) + 271 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 283 len 10]
                mem[(32 * arg2.length) + (32 * arg1.length) + 261 len 10] = Mask(80, 0, 'arrayLimit', 0)
                require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
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
                mem[(32 * arg2.length) + (32 * arg1.length) + 251] = 'txCount'
                mem[(32 * arg2.length) + (32 * arg1.length) + 258] = address(msg.sender)
                mem[(32 * arg2.length) + (32 * arg1.length) + 219] = 27
                mem[(32 * arg2.length) + (32 * arg1.length) + 278 len 0] = None
                if not arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]:
                    require 0 <= arg1.length * arrayLimit['fee']
                    require msg.value >= arg1.length * arrayLimit['fee']
                    mem[(32 * arg2.length) + (32 * arg1.length) + 310] = 'arrayLimit'
                    mem[(32 * arg2.length) + (32 * arg1.length) + 278] = 10
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 0] = None
                    mem[(32 * arg2.length) + (32 * arg1.length) + 330 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 342 len 10]
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 10] = Mask(80, 0, 'arrayLimit', 0)
                    require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
                    require arg1.length * arrayLimit['fee'] <= msg.value
                    idx = 0
                    s = msg.value - (arg1.length * arrayLimit['fee'])
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
                    require arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] / arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] == arrayLimit['discountStep']
                    require arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] <= arg1.length * arrayLimit['fee']
                    require msg.value >= (arg1.length * arrayLimit['fee']) - (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)])
                    mem[(32 * arg2.length) + (32 * arg1.length) + 310] = 'arrayLimit'
                    mem[(32 * arg2.length) + (32 * arg1.length) + 278] = 10
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 0] = None
                    mem[(32 * arg2.length) + (32 * arg1.length) + 330 len 22] = Mask(96, 0, 'arrayLimit'), mem[(32 * arg2.length) + (32 * arg1.length) + 342 len 10]
                    mem[(32 * arg2.length) + (32 * arg1.length) + 320 len 10] = Mask(80, 0, 'arrayLimit', 0)
                    require arg1.length <= arrayLimit[Mask(80, 0, 'arrayLimit', 0)]
                    require (arg1.length * arrayLimit['fee']) - (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]) <= msg.value
                    idx = 0
                    s = msg.value - (arg1.length * arrayLimit['fee']) + (arrayLimit['discountStep'] * arrayLimit[Mask(216, 0, 'txCount', address(msg.sender), 0)])
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
    require arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)] + 1 >= arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]
    arrayLimit[Mask(216, 0, 'txCount', msg.sender, 0)]++
    emit Multisended(msg.value, 48879);
}



}
