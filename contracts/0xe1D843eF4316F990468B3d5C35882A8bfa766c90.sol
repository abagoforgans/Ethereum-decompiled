contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    require code.data[5127 len 20]
    require code.data[5159 len 20]
    require code.data[5179 len 32] <= code.data[5211 len 32]
    require code.data[5211 len 32] <= 10^18
    stor1 = code.data[5127 len 20]
    stor2 = code.data[5159 len 20]
    stor3 = code.data[5179 len 32]
    stor4 = code.data[5211 len 32]
    return code.data[246 len 4869]
}



// =====================  Runtime code  =====================


const sub_70dea08a(?) = 10^18


address owner;
address veTokenAddress;
address sub_0d4ce662Address;
uint256 minPrice;
uint256 maxPrice;
mapping of struct stor5;

function sub_0d4ce662(?) {
    return sub_0d4ce662Address
}

function exists(bytes32 arg1) {
    return bool(stor5[arg1].field_256)
}

function veToken() {
    return veTokenAddress
}

function owner() {
    return owner
}

function maxPrice() {
    return maxPrice
}

function minPrice() {
    return minPrice
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_17))
        call address(_17).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = ext_call.return_data[0]
        s = _17
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function setMinPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= maxPrice
    minPrice = arg1
}

function setMaxPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= minPrice
    require arg1 <= 10^18
    maxPrice = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ratio() {
    require ext_code.size(sub_0d4ce662Address)
    call sub_0d4ce662Address.0x71ca337d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function maxVeriAmount() {
    require ext_code.size(sub_0d4ce662Address)
    call sub_0d4ce662Address.0x9204b2bd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function minVeriAmount() {
    require ext_code.size(sub_0d4ce662Address)
    call sub_0d4ce662Address.0xc3f843d7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function minDuration() {
    require ext_code.size(sub_0d4ce662Address)
    call sub_0d4ce662Address.0x56715761 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[28 len 4]
}

function maxDuration() {
    require ext_code.size(sub_0d4ce662Address)
    call sub_0d4ce662Address.0x6db5c8fd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[28 len 4]
}

function checkRatio(uint256 arg1, uint256 arg2) {
    require ext_code.size(sub_0d4ce662Address)
    call sub_0d4ce662Address.0xded1e438 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function calculateId(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) {
    require ext_code.size(sub_0d4ce662Address)
    call sub_0d4ce662Address.0xafe98be1 with:
         gas gas_remaining - 710 wei
        args 0, uint32(arg1), arg2, arg3 << 224, arg4
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_a56ac1e9(?) payable {
    require arg1
    require arg2
    require arg4 >= minPrice
    require minPrice <= maxPrice
    require ext_code.size(veTokenAddress)
    call veTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(veTokenAddress)
    call veTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args sub_0d4ce662Address, arg3
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_0d4ce662Address)
    call sub_0d4ce662Address.0xafe98be1 with:
         gas gas_remaining - 710 wei
        args 0, uint32(arg3), msg.value, arg5 << 224, arg6
    require ext_call.success
    require not stor5[ext_call.return_data[0]].field_256
    stor5[ext_call.return_data[0]].field_0 = ext_call.return_data[0]
    stor5[ext_call.return_data[0]].field_256 = arg1
    stor5[ext_call.return_data[0]].field_512 = arg2
    stor5[ext_call.return_data[0]].field_768 = arg3
    stor5[ext_call.return_data[0]].field_1024 = arg4
    stor5[ext_call.return_data[0]].field_1280 = msg.value
    stor5[ext_call.return_data[0]].field_1536 = 0
    stor5[ext_call.return_data[0]].field_1792 = 0
    stor5[ext_call.return_data[0]].field_1800 = 0
    emit 0xd7997adb: arg3, msg.value, arg4, arg5, ext_call.return_data[0], arg1, arg2
    require ext_code.size(sub_0d4ce662Address)
    call sub_0d4ce662Address.0xbad1f08f with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args arg3, arg5 << 224, arg6
    require ext_call.success
    return 0
}

function settle(bytes32 arg1) {
    require stor5[arg1].field_256
    if stor5[arg1].field_256 != msg.sender:
        if stor5[arg1].field_512 != msg.sender:
            if stor5[arg1].field_256 != msg.sender:
                require stor5[arg1].field_512 == msg.sender
            if not stor5[arg1].field_1792:
                if not stor5[arg1].field_1800:
                    require ext_code.size(sub_0d4ce662Address)
                    call sub_0d4ce662Address.0x987757dd with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    stor5[arg1].field_1536 = ext_call.return_data[0]
            if stor5[arg1].field_256 == msg.sender:
                require not stor5[arg1].field_1792
                if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                    stor5[arg1].field_1792 = 1
                    emit 0xa543ebb3: 0, stor5[arg1].field_0, msg.sender
                else:
                    if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                        require stor5[arg1].field_1536 - stor5[arg1].field_1280
                        require (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == stor5[arg1].field_1024
                    stor5[arg1].field_1792 = 1
                    if (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 > 0:
                        call stor5[arg1].field_256 with:
                           value (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0xa543ebb3: ((stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18), stor5[arg1].field_0, msg.sender
            if stor5[arg1].field_512 == msg.sender:
                require not stor5[arg1].field_1800
                if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                    stor5[arg1].field_1800 = 1
                    if stor5[arg1].field_1536 > 0:
                        call stor5[arg1].field_512 with:
                           value stor5[arg1].field_1536 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0x916ee8e5: stor5[arg1].field_1536, stor5[arg1].field_0, msg.sender
                else:
                    require stor5[arg1].field_1024 <= 10^18
                    if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                        require stor5[arg1].field_1536 - stor5[arg1].field_1280
                        require (10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == -stor5[arg1].field_1024 + 10^18
                    require ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 >= stor5[arg1].field_1280
                    stor5[arg1].field_1800 = 1
                    if ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 > 0:
                        call stor5[arg1].field_512 with:
                           value ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0x916ee8e5: (((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280), stor5[arg1].field_0, msg.sender
        else:
            if stor5[arg1].field_256 != msg.sender:
                require not stor5[arg1].field_1800
            if not stor5[arg1].field_1792:
                if not stor5[arg1].field_1800:
                    require ext_code.size(sub_0d4ce662Address)
                    call sub_0d4ce662Address.0x987757dd with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    stor5[arg1].field_1536 = ext_call.return_data[0]
            if stor5[arg1].field_256 == msg.sender:
                require not stor5[arg1].field_1792
                if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                    stor5[arg1].field_1792 = 1
                    emit 0xa543ebb3: 0, stor5[arg1].field_0, msg.sender
                else:
                    if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                        require stor5[arg1].field_1536 - stor5[arg1].field_1280
                        require (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == stor5[arg1].field_1024
                    stor5[arg1].field_1792 = 1
                    if (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 > 0:
                        call stor5[arg1].field_256 with:
                           value (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0xa543ebb3: ((stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18), stor5[arg1].field_0, msg.sender
            if not stor5[arg1].field_1800:
                require stor5[arg1].field_512 == msg.sender
                require not stor5[arg1].field_1800
                if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                    stor5[arg1].field_1800 = 1
                    if stor5[arg1].field_1536 > 0:
                        call stor5[arg1].field_512 with:
                           value stor5[arg1].field_1536 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0x916ee8e5: stor5[arg1].field_1536, stor5[arg1].field_0, msg.sender
                else:
                    require stor5[arg1].field_1024 <= 10^18
                    if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                        require stor5[arg1].field_1536 - stor5[arg1].field_1280
                        require (10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == -stor5[arg1].field_1024 + 10^18
                    require ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 >= stor5[arg1].field_1280
                    stor5[arg1].field_1800 = 1
                    if ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 > 0:
                        call stor5[arg1].field_512 with:
                           value ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0x916ee8e5: (((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280), stor5[arg1].field_0, msg.sender
    else:
        if stor5[arg1].field_512 != msg.sender:
            if not stor5[arg1].field_1792:
                if not stor5[arg1].field_1800:
                    require ext_code.size(sub_0d4ce662Address)
                    call sub_0d4ce662Address.0x987757dd with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    stor5[arg1].field_1536 = ext_call.return_data[0]
                if not stor5[arg1].field_1792:
                    require stor5[arg1].field_256 == msg.sender
                    require not stor5[arg1].field_1792
                    if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                        stor5[arg1].field_1792 = 1
                        emit 0xa543ebb3: 0, stor5[arg1].field_0, msg.sender
                    else:
                        if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                            require stor5[arg1].field_1536 - stor5[arg1].field_1280
                            require (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == stor5[arg1].field_1024
                        stor5[arg1].field_1792 = 1
                        if (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 > 0:
                            call stor5[arg1].field_256 with:
                               value (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        emit 0xa543ebb3: ((stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18), stor5[arg1].field_0, msg.sender
            else:
                require stor5[arg1].field_512 == msg.sender
                if not stor5[arg1].field_1792:
                    if not stor5[arg1].field_1800:
                        require ext_code.size(sub_0d4ce662Address)
                        call sub_0d4ce662Address.0x987757dd with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        stor5[arg1].field_1536 = ext_call.return_data[0]
                    if not stor5[arg1].field_1792:
                        require stor5[arg1].field_256 == msg.sender
                        require not stor5[arg1].field_1792
                        if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                            stor5[arg1].field_1792 = 1
                            emit 0xa543ebb3: 0, stor5[arg1].field_0, msg.sender
                        else:
                            if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                                require stor5[arg1].field_1536 - stor5[arg1].field_1280
                                require (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == stor5[arg1].field_1024
                            stor5[arg1].field_1792 = 1
                            if (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 > 0:
                                call stor5[arg1].field_256 with:
                                   value (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            emit 0xa543ebb3: ((stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18), stor5[arg1].field_0, msg.sender
            if stor5[arg1].field_512 == msg.sender:
                require not stor5[arg1].field_1800
                if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                    stor5[arg1].field_1800 = 1
                    if stor5[arg1].field_1536 > 0:
                        call stor5[arg1].field_512 with:
                           value stor5[arg1].field_1536 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0x916ee8e5: stor5[arg1].field_1536, stor5[arg1].field_0, msg.sender
                else:
                    require stor5[arg1].field_1024 <= 10^18
                    if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                        require stor5[arg1].field_1536 - stor5[arg1].field_1280
                        require (10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == -stor5[arg1].field_1024 + 10^18
                    require ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 >= stor5[arg1].field_1280
                    stor5[arg1].field_1800 = 1
                    if ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 > 0:
                        call stor5[arg1].field_512 with:
                           value ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0x916ee8e5: (((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280), stor5[arg1].field_0, msg.sender
        else:
            if not stor5[arg1].field_1792:
                if not stor5[arg1].field_1800:
                    require ext_code.size(sub_0d4ce662Address)
                    call sub_0d4ce662Address.0x987757dd with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    stor5[arg1].field_1536 = ext_call.return_data[0]
                if not stor5[arg1].field_1792:
                    require stor5[arg1].field_256 == msg.sender
                    require not stor5[arg1].field_1792
                    if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                        stor5[arg1].field_1792 = 1
                        emit 0xa543ebb3: 0, stor5[arg1].field_0, msg.sender
                    else:
                        if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                            require stor5[arg1].field_1536 - stor5[arg1].field_1280
                            require (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == stor5[arg1].field_1024
                        stor5[arg1].field_1792 = 1
                        if (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 > 0:
                            call stor5[arg1].field_256 with:
                               value (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        emit 0xa543ebb3: ((stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18), stor5[arg1].field_0, msg.sender
            else:
                require not stor5[arg1].field_1800
                if not stor5[arg1].field_1792:
                    if not stor5[arg1].field_1800:
                        require ext_code.size(sub_0d4ce662Address)
                        call sub_0d4ce662Address.0x987757dd with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        stor5[arg1].field_1536 = ext_call.return_data[0]
                    if not stor5[arg1].field_1792:
                        require stor5[arg1].field_256 == msg.sender
                        require not stor5[arg1].field_1792
                        if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                            stor5[arg1].field_1792 = 1
                            emit 0xa543ebb3: 0, stor5[arg1].field_0, msg.sender
                        else:
                            if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                                require stor5[arg1].field_1536 - stor5[arg1].field_1280
                                require (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == stor5[arg1].field_1024
                            stor5[arg1].field_1792 = 1
                            if (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 > 0:
                                call stor5[arg1].field_256 with:
                                   value (stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            emit 0xa543ebb3: ((stor5[arg1].field_1536 * stor5[arg1].field_1024) - (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18), stor5[arg1].field_0, msg.sender
            if not stor5[arg1].field_1800:
                require stor5[arg1].field_512 == msg.sender
                require not stor5[arg1].field_1800
                if stor5[arg1].field_1536 <= stor5[arg1].field_1280:
                    stor5[arg1].field_1800 = 1
                    if stor5[arg1].field_1536 > 0:
                        call stor5[arg1].field_512 with:
                           value stor5[arg1].field_1536 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0x916ee8e5: stor5[arg1].field_1536, stor5[arg1].field_0, msg.sender
                else:
                    require stor5[arg1].field_1024 <= 10^18
                    if stor5[arg1].field_1536 - stor5[arg1].field_1280:
                        require stor5[arg1].field_1536 - stor5[arg1].field_1280
                        require (10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / stor5[arg1].field_1536 - stor5[arg1].field_1280 == -stor5[arg1].field_1024 + 10^18
                    require ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 >= stor5[arg1].field_1280
                    stor5[arg1].field_1800 = 1
                    if ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 > 0:
                        call stor5[arg1].field_512 with:
                           value ((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit 0x916ee8e5: (((10^18 * stor5[arg1].field_1536) - (10^18 * stor5[arg1].field_1280) - (stor5[arg1].field_1536 * stor5[arg1].field_1024) + (stor5[arg1].field_1280 * stor5[arg1].field_1024) / 10^18) + stor5[arg1].field_1280), stor5[arg1].field_0, msg.sender
    if stor5[arg1].field_1792:
        if stor5[arg1].field_1800:
            stor5[arg1].field_0 = 0
            stor5[arg1].field_256 = 0
            stor5[arg1].field_512 = 0
            stor5[arg1].field_768 = 0
            stor5[arg1].field_1024 = 0
            stor5[arg1].field_1280 = 0
            stor5[arg1].field_1536 = 0
            stor5[arg1].field_1792 = 0
}



}
