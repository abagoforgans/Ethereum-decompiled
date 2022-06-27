contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
array of uint256 version;
array of uint256 stor2;
mapping of uint256 vipPrice;
mapping of address owner;
mapping of uint8 stor7;

function initialized() {
    return bool(stor7['rs_multisender_initialized'])
}

function getVipPrice(uint256 arg1) {
    return vipPrice['vip'][arg1]
}

function getUnlimAccess(address arg1) {
    return vipPrice['unlimAccess'][arg1]
}

function version() {
    return version[0 len version.length]
}

function implementation() {
    return address(stor2.length)
}

function upgradeabilityOwner() {
    return address(stor0.length)
}

function owner() {
    return owner['owner']
}

function arrayLimit() {
    return vipPrice['arrayLimit']
}

function txCount(address arg1) {
    return vipPrice['txCount'][arg1]
}

function fee() {
    return vipPrice['fee']
}

function pendingOwner() {
    return owner['pendingOwner']
}

function discountStep() {
    return vipPrice['discountStep']
}

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function setFee(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    vipPrice['fee'] = arg1
}

function setVipPrice(uint256 arg1, uint256 arg2) {
    require msg.sender == owner['owner']
    vipPrice['vip'][arg1] = arg2
}

function setArrayLimit(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    vipPrice['arrayLimit'] = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner['owner']
    require arg1
    owner['pendingOwner'] = arg1
}

function setDiscountStep(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    vipPrice['discountStep'] = arg1
}

function claimOwnership() {
    require msg.sender == owner['pendingOwner']
    emit OwnershipTransferred(owner['owner'], owner['pendingOwner']);
    owner['owner'] = owner['pendingOwner']
    owner['pendingOwner'] = 0
}

function getDeadline(uint256 arg1) {
    if not arg1:
        return (block.timestamp + (24 * 3600))
    if 1 == arg1:
        return (block.timestamp + (168 * 24 * 3600))
    if arg1 != 2:
        return 0
    return (block.timestamp + (876000 * 24 * 3600))
}

function discountRate(address arg1) {
    if not vipPrice['txCount'][arg1]:
        return 0
    require vipPrice['discountStep'] * vipPrice['txCount'][arg1] / vipPrice['txCount'][arg1] == vipPrice['discountStep']
    return (vipPrice['discountStep'] * vipPrice['txCount'][arg1])
}

function setAddressToVip(address arg1, uint256 arg2) {
    require msg.sender == owner['owner']
    if not arg2:
        vipPrice['unlimAccess'][arg1] = block.timestamp + (24 * 3600)
    else:
        if 1 == arg2:
            vipPrice['unlimAccess'][arg1] = block.timestamp + (168 * 24 * 3600)
        else:
            if arg2 != 2:
                vipPrice['unlimAccess'][arg1] = 0
            else:
                vipPrice['unlimAccess'][arg1] = block.timestamp + (876000 * 24 * 3600)
    emit PurchaseVIP(msg.sender, arg2);
}

function buyVip(uint256 arg1) payable {
    require msg.value >= vipPrice['vip'][arg1]
    if not arg1:
        vipPrice['unlimAccess'][msg.sender] = block.timestamp + (24 * 3600)
    else:
        if 1 == arg1:
            vipPrice['unlimAccess'][msg.sender] = block.timestamp + (168 * 24 * 3600)
        else:
            if arg1 != 2:
                vipPrice['unlimAccess'][msg.sender] = 0
            else:
                vipPrice['unlimAccess'][msg.sender] = block.timestamp + (876000 * 24 * 3600)
    emit PurchaseVIP(msg.sender, arg1);
}

function currentFee(address arg1) {
    if not vipPrice['txCount'][arg1]:
        if vipPrice['fee'] <= 0:
            return 0
        if 0 <= vipPrice['fee']:
            return vipPrice['fee']
    else:
        if vipPrice['discountStep'] * vipPrice['txCount'][arg1] / vipPrice['txCount'][arg1] == vipPrice['discountStep']:
            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][arg1]:
                return 0
            if vipPrice['discountStep'] * vipPrice['txCount'][arg1] <= vipPrice['fee']:
                return (vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][arg1]))
    revert
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    if stor7['rs_multisender_initialized']:
        require msg.sender == owner['owner']
    emit OwnershipTransferred(owner['owner'], arg1);
    owner['owner'] = arg1
    require msg.sender == owner['owner']
    require arg2
    vipPrice['arrayLimit'] = arg2
    require msg.sender == owner['owner']
    require arg3
    vipPrice['discountStep'] = arg3
    require msg.sender == owner['owner']
    require arg4
    vipPrice['fee'] = arg4
    require msg.sender == owner['owner']
    uint256(stor3[('map', "'vip'", ('name', 'stor0', 0))]) = arg5
    require msg.sender == owner['owner']
    stor3[('map', "'vip'", ('name', 'version', 1))] = arg6
    require msg.sender == owner['owner']
    uint256(stor3[('map', "'vip'", ('name', 'stor2', 2))]) = arg7
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

function sub_35d1f0e5(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 167] = address(msg.sender)
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'discountStep'
    if not vipPrice['txCount'][msg.sender]:
        if vipPrice['fee'] <= 0:
            require msg.value >= 0
            require arg3 >= arg1.length
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
            require 0 <= vipPrice['fee']
            require msg.value >= vipPrice['fee']
            require arg3 >= arg1.length
            require vipPrice['fee'] <= msg.value
            idx = 0
            s = msg.value - vipPrice['fee']
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
        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
            require msg.value >= 0
            require arg3 >= arg1.length
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
            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
            require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
            require arg3 >= arg1.length
            require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
            idx = 0
            s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
    vipPrice['txCount'][msg.sender]++
    emit code.data[7926 len 32]: msg.value, 48879
}

function sub_97431ee3(?) payable {
    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
        require arg3 >= 0
        require msg.value >= arg3
        require 0 <= msg.value
        mem[(32 * arg2.length) + (32 * arg1.length) + 409 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * arg2.length) + 409] = arg2.length
        mem[(64 * arg1.length) + (32 * arg2.length) + 441 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        create contract with callvalue wei
                        code: code.data[7773 len 153], Array(len=(32 * arg1.length) + 96, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg2.length) + (32 * arg1.length) + floor32(arg1.length) + 409 len (32 * arg2.length) + (32 * arg1.length) + -floor32(arg1.length) + 32])
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        emit code.data[7926 len 32]: msg.value, 48879
    else:
        if not vipPrice['txCount'][msg.sender]:
            if vipPrice['fee'] <= 0:
                require arg3 >= 0
                require msg.value >= arg3
                require 0 <= msg.value
                mem[(32 * arg2.length) + (32 * arg1.length) + 409 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[(64 * arg1.length) + (32 * arg2.length) + 409] = arg2.length
                mem[(64 * arg1.length) + (32 * arg2.length) + 441 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                create contract with callvalue wei
                                code: code.data[7773 len 153], Array(len=(32 * arg1.length) + 96, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg2.length) + (32 * arg1.length) + floor32(arg1.length) + 409 len (32 * arg2.length) + (32 * arg1.length) + -floor32(arg1.length) + 32])
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                emit code.data[7926 len 32]: msg.value, 48879
            else:
                require 0 <= vipPrice['fee']
                require arg3 + vipPrice['fee'] >= vipPrice['fee']
                require msg.value >= arg3 + vipPrice['fee']
                require vipPrice['fee'] <= msg.value
                mem[(32 * arg2.length) + (32 * arg1.length) + 409 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[(64 * arg1.length) + (32 * arg2.length) + 409] = arg2.length
                mem[(64 * arg1.length) + (32 * arg2.length) + 441 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                code: code.data[7773 len 153], Array(len=(32 * arg1.length) + 96, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg2.length) + (32 * arg1.length) + floor32(arg1.length) + 409 len (32 * arg2.length) + (32 * arg1.length) + -floor32(arg1.length) + 32])
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
        else:
            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                require arg3 >= 0
                require msg.value >= arg3
                require 0 <= msg.value
                mem[(32 * arg2.length) + (32 * arg1.length) + 409 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[(64 * arg1.length) + (32 * arg2.length) + 409] = arg2.length
                mem[(64 * arg1.length) + (32 * arg2.length) + 441 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                create contract with callvalue wei
                                code: code.data[7773 len 153], Array(len=(32 * arg1.length) + 96, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg2.length) + (32 * arg1.length) + floor32(arg1.length) + 409 len (32 * arg2.length) + (32 * arg1.length) + -floor32(arg1.length) + 32])
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                emit code.data[7926 len 32]: msg.value, 48879
            else:
                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                require arg3 >= 0
                require msg.value >= arg3 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                mem[(32 * arg2.length) + (32 * arg1.length) + 409 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[(64 * arg1.length) + (32 * arg2.length) + 409] = arg2.length
                mem[(64 * arg1.length) + (32 * arg2.length) + 441 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                code: code.data[7773 len 153], Array(len=(32 * arg1.length) + 96, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg2.length) + (32 * arg1.length) + floor32(arg1.length) + 409 len (32 * arg2.length) + (32 * arg1.length) + -floor32(arg1.length) + 32])
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not vipPrice['txCount'][msg.sender]:
        if vipPrice['fee'] <= 0:
            mem[(32 * arg3.length) + (32 * arg2.length) + 171] = address(msg.sender)
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
            require arg2.length <= vipPrice['arrayLimit']
            if vipPrice['unlimAccess'][msg.sender] < block.timestamp:
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _359 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _400 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_359)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _400
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_359), _400
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                    continue 
            else:
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _365 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _403 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_365)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _403
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_365), _403
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                    continue 
        else:
            require 0 <= vipPrice['fee']
            mem[(32 * arg3.length) + (32 * arg2.length) + 171] = address(msg.sender)
            if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                require arg2.length <= vipPrice['arrayLimit']
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _383 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _412 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_383)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _412
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_383), _412
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                    continue 
            else:
                if vipPrice['fee'] <= 0:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                    require arg2.length <= vipPrice['arrayLimit']
                    idx = 0
                    s = 0
                    while uint8(idx) < arg2.length:
                        require uint8(idx) < arg2.length
                        _371 = mem[(32 * uint8(idx)) + 128]
                        require uint8(idx) < arg3.length
                        _406 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_371)
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _406
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_371), _406
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < arg3.length
                        idx = idx + 1
                        s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        continue 
                else:
                    if vipPrice['fee'] > msg.value:
                        revert with 0, 'no fee'
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                    require arg2.length <= vipPrice['arrayLimit']
                    idx = 0
                    s = 0
                    while uint8(idx) < arg2.length:
                        require uint8(idx) < arg2.length
                        _377 = mem[(32 * uint8(idx)) + 128]
                        require uint8(idx) < arg3.length
                        _409 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_377)
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _409
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_377), _409
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < arg3.length
                        idx = idx + 1
                        s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        continue 
    else:
        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
            mem[(32 * arg3.length) + (32 * arg2.length) + 171] = address(msg.sender)
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
            require arg2.length <= vipPrice['arrayLimit']
            if vipPrice['unlimAccess'][msg.sender] < block.timestamp:
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _329 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _385 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_329)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _385
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_329), _385
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                    continue 
            else:
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _335 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _388 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_335)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _388
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_335), _388
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                    continue 
        else:
            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
            mem[(32 * arg3.length) + (32 * arg2.length) + 171] = address(msg.sender)
            if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                require arg2.length <= vipPrice['arrayLimit']
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _353 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _397 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_353)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _397
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_353), _397
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                    continue 
            else:
                if vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= 0:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                    require arg2.length <= vipPrice['arrayLimit']
                    idx = 0
                    s = 0
                    while uint8(idx) < arg2.length:
                        require uint8(idx) < arg2.length
                        _341 = mem[(32 * uint8(idx)) + 128]
                        require uint8(idx) < arg3.length
                        _391 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_341)
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _391
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_341), _391
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < arg3.length
                        idx = idx + 1
                        s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        continue 
                else:
                    if vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) > msg.value:
                        revert with 0, 'no fee'
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                    require arg2.length <= vipPrice['arrayLimit']
                    idx = 0
                    s = 0
                    while uint8(idx) < arg2.length:
                        require uint8(idx) < arg2.length
                        _347 = mem[(32 * uint8(idx)) + 128]
                        require uint8(idx) < arg3.length
                        _394 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_347)
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _394
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_347), _394
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < arg3.length
                        idx = idx + 1
                        s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                        continue 
    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
    vipPrice['txCount'][msg.sender]++
    emit code.data[7926 len 32]: s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, arg1
}

function sub_5fc40398(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not vipPrice['txCount'][msg.sender]:
        if vipPrice['fee'] <= 0:
            mem[(32 * arg3.length) + (32 * arg2.length) + 171] = address(msg.sender)
            if vipPrice['unlimAccess'][msg.sender] < block.timestamp:
                if arg1 != 48879:
                    require arg5 >= arg2.length
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1710 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1710
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1710
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                    if not vipPrice['txCount'][msg.sender]:
                        if vipPrice['fee'] <= 0:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require 0 <= vipPrice['fee']
                            require msg.value >= vipPrice['fee']
                            require arg5 >= arg2.length
                            require vipPrice['fee'] <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee']
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
                        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                            require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                            require arg5 >= arg2.length
                            require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: msg.value, 48879
            else:
                if arg1 != 48879:
                    require arg5 >= arg2.length
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1717 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1717
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1717
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                    if not vipPrice['txCount'][msg.sender]:
                        if vipPrice['fee'] <= 0:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require 0 <= vipPrice['fee']
                            require msg.value >= vipPrice['fee']
                            require arg5 >= arg2.length
                            require vipPrice['fee'] <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee']
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
                        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                            require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                            require arg5 >= arg2.length
                            require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: msg.value, 48879
        else:
            require 0 <= vipPrice['fee']
            mem[(32 * arg3.length) + (32 * arg2.length) + 171] = address(msg.sender)
            if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                if arg1 != 48879:
                    require arg5 >= arg2.length
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1738 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1738
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1738
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                    if not vipPrice['txCount'][msg.sender]:
                        if vipPrice['fee'] <= 0:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require 0 <= vipPrice['fee']
                            require msg.value >= vipPrice['fee']
                            require arg5 >= arg2.length
                            require vipPrice['fee'] <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee']
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
                        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                            require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                            require arg5 >= arg2.length
                            require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: msg.value, 48879
            else:
                if vipPrice['fee'] <= 0:
                    if arg1 != 48879:
                        require arg5 >= arg2.length
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg4
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg3.length
                            _1724 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1724
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1724
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: arg4, arg1
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require msg.value >= 0
                                require arg5 >= arg2.length
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
                                require 0 <= vipPrice['fee']
                                require msg.value >= vipPrice['fee']
                                require arg5 >= arg2.length
                                require vipPrice['fee'] <= msg.value
                                idx = 0
                                s = msg.value - vipPrice['fee']
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require msg.value >= 0
                                require arg5 >= arg2.length
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
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require arg5 >= arg2.length
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                idx = 0
                                s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: msg.value, 48879
                else:
                    if vipPrice['fee'] > msg.value:
                        revert with 0, 'no fee'
                    if arg1 != 48879:
                        require arg5 >= arg2.length
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg4
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg3.length
                            _1731 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1731
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1731
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: arg4, arg1
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require msg.value >= 0
                                require arg5 >= arg2.length
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
                                require 0 <= vipPrice['fee']
                                require msg.value >= vipPrice['fee']
                                require arg5 >= arg2.length
                                require vipPrice['fee'] <= msg.value
                                idx = 0
                                s = msg.value - vipPrice['fee']
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require msg.value >= 0
                                require arg5 >= arg2.length
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
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require arg5 >= arg2.length
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                idx = 0
                                s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: msg.value, 48879
    else:
        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
            mem[(32 * arg3.length) + (32 * arg2.length) + 171] = address(msg.sender)
            if vipPrice['unlimAccess'][msg.sender] < block.timestamp:
                if arg1 != 48879:
                    require arg5 >= arg2.length
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1675 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1675
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1675
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                    if not vipPrice['txCount'][msg.sender]:
                        if vipPrice['fee'] <= 0:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require 0 <= vipPrice['fee']
                            require msg.value >= vipPrice['fee']
                            require arg5 >= arg2.length
                            require vipPrice['fee'] <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee']
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
                        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                            require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                            require arg5 >= arg2.length
                            require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: msg.value, 48879
            else:
                if arg1 != 48879:
                    require arg5 >= arg2.length
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1682 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1682
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1682
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                    if not vipPrice['txCount'][msg.sender]:
                        if vipPrice['fee'] <= 0:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require 0 <= vipPrice['fee']
                            require msg.value >= vipPrice['fee']
                            require arg5 >= arg2.length
                            require vipPrice['fee'] <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee']
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
                        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                            require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                            require arg5 >= arg2.length
                            require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: msg.value, 48879
        else:
            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
            mem[(32 * arg3.length) + (32 * arg2.length) + 171] = address(msg.sender)
            if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                if arg1 != 48879:
                    require arg5 >= arg2.length
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1703 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1703
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1703
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                    if not vipPrice['txCount'][msg.sender]:
                        if vipPrice['fee'] <= 0:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require 0 <= vipPrice['fee']
                            require msg.value >= vipPrice['fee']
                            require arg5 >= arg2.length
                            require vipPrice['fee'] <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee']
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
                        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                            require msg.value >= 0
                            require arg5 >= arg2.length
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                            require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                            require arg5 >= arg2.length
                            require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: msg.value, 48879
            else:
                if vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= 0:
                    if arg1 != 48879:
                        require arg5 >= arg2.length
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg4
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg3.length
                            _1689 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1689
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1689
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: arg4, arg1
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require msg.value >= 0
                                require arg5 >= arg2.length
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
                                require 0 <= vipPrice['fee']
                                require msg.value >= vipPrice['fee']
                                require arg5 >= arg2.length
                                require vipPrice['fee'] <= msg.value
                                idx = 0
                                s = msg.value - vipPrice['fee']
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require msg.value >= 0
                                require arg5 >= arg2.length
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
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require arg5 >= arg2.length
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                idx = 0
                                s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: msg.value, 48879
                else:
                    if vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) > msg.value:
                        revert with 0, 'no fee'
                    if arg1 != 48879:
                        require arg5 >= arg2.length
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg4
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg3.length
                            _1696 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1696
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1696
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: arg4, arg1
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'discountStep'
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require msg.value >= 0
                                require arg5 >= arg2.length
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
                                require 0 <= vipPrice['fee']
                                require msg.value >= vipPrice['fee']
                                require arg5 >= arg2.length
                                require vipPrice['fee'] <= msg.value
                                idx = 0
                                s = msg.value - vipPrice['fee']
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
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require msg.value >= 0
                                require arg5 >= arg2.length
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
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require msg.value >= vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require arg5 >= arg2.length
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                idx = 0
                                s = msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][address(msg.sender)])
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
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: msg.value, 48879
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3, uint256 arg4) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not vipPrice['txCount'][msg.sender]:
        if vipPrice['fee'] <= 0:
            if vipPrice['unlimAccess'][msg.sender] < block.timestamp:
                if arg1 != 48879:
                    require arg2.length <= vipPrice['arrayLimit']
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1370 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1370
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1370
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                        require arg4 >= 0
                        require msg.value >= arg4
                        require 0 <= msg.value
                        mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                        mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        create contract with callvalue wei
                                        code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit code.data[7926 len 32]: msg.value, 48879
                    else:
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require 0 <= vipPrice['fee']
                                require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                require msg.value >= arg4 + vipPrice['fee']
                                require vipPrice['fee'] <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                        else:
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require arg4 >= 0
                                require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
            else:
                if arg1 != 48879:
                    require arg2.length <= vipPrice['arrayLimit']
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1383 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1383
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1383
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                        require arg4 >= 0
                        require msg.value >= arg4
                        require 0 <= msg.value
                        mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                        mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        create contract with callvalue wei
                                        code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit code.data[7926 len 32]: msg.value, 48879
                    else:
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require 0 <= vipPrice['fee']
                                require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                require msg.value >= arg4 + vipPrice['fee']
                                require vipPrice['fee'] <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                        else:
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require arg4 >= 0
                                require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
        else:
            require 0 <= vipPrice['fee']
            if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                if arg1 != 48879:
                    require arg2.length <= vipPrice['arrayLimit']
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1422 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1422
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1422
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                        require arg4 >= 0
                        require msg.value >= arg4
                        require 0 <= msg.value
                        mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                        mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        create contract with callvalue wei
                                        code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit code.data[7926 len 32]: msg.value, 48879
                    else:
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require 0 <= vipPrice['fee']
                                require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                require msg.value >= arg4 + vipPrice['fee']
                                require vipPrice['fee'] <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                        else:
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require arg4 >= 0
                                require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
            else:
                if vipPrice['fee'] <= 0:
                    if arg1 != 48879:
                        require arg2.length <= vipPrice['arrayLimit']
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg4
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg3.length
                            _1396 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1396
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1396
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: arg4, arg1
                    else:
                        if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                            require arg4 >= 0
                            require msg.value >= arg4
                            require 0 <= msg.value
                            mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                            mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            create contract with callvalue wei
                                            code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit code.data[7926 len 32]: msg.value, 48879
                        else:
                            if not vipPrice['txCount'][msg.sender]:
                                if vipPrice['fee'] <= 0:
                                    require arg4 >= 0
                                    require msg.value >= arg4
                                    require 0 <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with callvalue wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value, 48879
                                else:
                                    require 0 <= vipPrice['fee']
                                    require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                    require msg.value >= arg4 + vipPrice['fee']
                                    require vipPrice['fee'] <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                                if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                    require arg4 >= 0
                                    require msg.value >= arg4
                                    require 0 <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with callvalue wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value, 48879
                                else:
                                    require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                    require arg4 >= 0
                                    require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                    require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
                else:
                    if vipPrice['fee'] > msg.value:
                        revert with 0, 'no fee'
                    if arg1 != 48879:
                        require arg2.length <= vipPrice['arrayLimit']
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg4
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg3.length
                            _1409 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1409
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1409
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: arg4, arg1
                    else:
                        if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                            require arg4 >= 0
                            require msg.value >= arg4
                            require 0 <= msg.value
                            mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                            mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            create contract with callvalue wei
                                            code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit code.data[7926 len 32]: msg.value, 48879
                        else:
                            if not vipPrice['txCount'][msg.sender]:
                                if vipPrice['fee'] <= 0:
                                    require arg4 >= 0
                                    require msg.value >= arg4
                                    require 0 <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with callvalue wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value, 48879
                                else:
                                    require 0 <= vipPrice['fee']
                                    require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                    require msg.value >= arg4 + vipPrice['fee']
                                    require vipPrice['fee'] <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                                if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                    require arg4 >= 0
                                    require msg.value >= arg4
                                    require 0 <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with callvalue wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value, 48879
                                else:
                                    require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                    require arg4 >= 0
                                    require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                    require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
    else:
        require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
        if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
            if vipPrice['unlimAccess'][msg.sender] < block.timestamp:
                if arg1 != 48879:
                    require arg2.length <= vipPrice['arrayLimit']
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1305 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1305
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1305
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                        require arg4 >= 0
                        require msg.value >= arg4
                        require 0 <= msg.value
                        mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                        mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        create contract with callvalue wei
                                        code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit code.data[7926 len 32]: msg.value, 48879
                    else:
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require 0 <= vipPrice['fee']
                                require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                require msg.value >= arg4 + vipPrice['fee']
                                require vipPrice['fee'] <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                        else:
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require arg4 >= 0
                                require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
            else:
                if arg1 != 48879:
                    require arg2.length <= vipPrice['arrayLimit']
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1318 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1318
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1318
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                        require arg4 >= 0
                        require msg.value >= arg4
                        require 0 <= msg.value
                        mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                        mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        create contract with callvalue wei
                                        code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit code.data[7926 len 32]: msg.value, 48879
                    else:
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require 0 <= vipPrice['fee']
                                require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                require msg.value >= arg4 + vipPrice['fee']
                                require vipPrice['fee'] <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                        else:
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require arg4 >= 0
                                require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
        else:
            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
            if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                if arg1 != 48879:
                    require arg2.length <= vipPrice['arrayLimit']
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg4
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg3.length
                        _1357 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1357
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1357
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                    vipPrice['txCount'][msg.sender]++
                    emit code.data[7926 len 32]: arg4, arg1
                else:
                    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                        require arg4 >= 0
                        require msg.value >= arg4
                        require 0 <= msg.value
                        mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                        mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        create contract with callvalue wei
                                        code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit code.data[7926 len 32]: msg.value, 48879
                    else:
                        if not vipPrice['txCount'][msg.sender]:
                            if vipPrice['fee'] <= 0:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require 0 <= vipPrice['fee']
                                require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                require msg.value >= arg4 + vipPrice['fee']
                                require vipPrice['fee'] <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                        else:
                            require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                            if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                require arg4 >= 0
                                require msg.value >= arg4
                                require 0 <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with callvalue wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value, 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                require arg4 >= 0
                                require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
            else:
                if vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= 0:
                    if arg1 != 48879:
                        require arg2.length <= vipPrice['arrayLimit']
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg4
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg3.length
                            _1331 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1331
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1331
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: arg4, arg1
                    else:
                        if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                            require arg4 >= 0
                            require msg.value >= arg4
                            require 0 <= msg.value
                            mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                            mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            create contract with callvalue wei
                                            code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit code.data[7926 len 32]: msg.value, 48879
                        else:
                            if not vipPrice['txCount'][msg.sender]:
                                if vipPrice['fee'] <= 0:
                                    require arg4 >= 0
                                    require msg.value >= arg4
                                    require 0 <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with callvalue wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value, 48879
                                else:
                                    require 0 <= vipPrice['fee']
                                    require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                    require msg.value >= arg4 + vipPrice['fee']
                                    require vipPrice['fee'] <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                                if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                    require arg4 >= 0
                                    require msg.value >= arg4
                                    require 0 <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with callvalue wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value, 48879
                                else:
                                    require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                    require arg4 >= 0
                                    require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                    require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
                else:
                    if vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) > msg.value:
                        revert with 0, 'no fee'
                    if arg1 != 48879:
                        require arg2.length <= vipPrice['arrayLimit']
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg4
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg3.length
                            _1344 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _1344
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _1344
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        require vipPrice['txCount'][msg.sender] + 1 >= vipPrice['txCount'][msg.sender]
                        vipPrice['txCount'][msg.sender]++
                        emit code.data[7926 len 32]: arg4, arg1
                    else:
                        if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
                            require arg4 >= 0
                            require msg.value >= arg4
                            require 0 <= msg.value
                            mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                            mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            create contract with callvalue wei
                                            code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit code.data[7926 len 32]: msg.value, 48879
                        else:
                            if not vipPrice['txCount'][msg.sender]:
                                if vipPrice['fee'] <= 0:
                                    require arg4 >= 0
                                    require msg.value >= arg4
                                    require 0 <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with callvalue wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value, 48879
                                else:
                                    require 0 <= vipPrice['fee']
                                    require arg4 + vipPrice['fee'] >= vipPrice['fee']
                                    require msg.value >= arg4 + vipPrice['fee']
                                    require vipPrice['fee'] <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3))))) wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value - vipPrice['fee'], 48879
                            else:
                                require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] / vipPrice['txCount'][msg.sender] == vipPrice['discountStep']
                                if vipPrice['fee'] <= vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]:
                                    require arg4 >= 0
                                    require msg.value >= arg4
                                    require 0 <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with callvalue wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value, 48879
                                else:
                                    require vipPrice['discountStep'] * vipPrice['txCount'][msg.sender] <= vipPrice['fee']
                                    require arg4 >= 0
                                    require msg.value >= arg4 + vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender])
                                    require vipPrice['fee'] - (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]) <= msg.value
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 409 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 409] = arg3.length
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 441 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                    create contract with ('add', 'callvalue', ('mul', -1, ('stor', ('map', ('data', "'fee'"), ('name', 'vipPrice', 3)))), ('mul', ('stor', ('map', ('data', "'discountStep'"), ('name', 'vipPrice', 3))), ('stor', ('map', ('data', "'txCount'", 'msg.sender'), ('name', 'vipPrice', 3))))) wei
                                                    code: code.data[7773 len 153], Array(len=(32 * arg2.length) + 96, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 409 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32])
                                    if not create.new_address:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit code.data[7926 len 32]: msg.value - vipPrice['fee'] + (vipPrice['discountStep'] * vipPrice['txCount'][msg.sender]), 48879
}



}
