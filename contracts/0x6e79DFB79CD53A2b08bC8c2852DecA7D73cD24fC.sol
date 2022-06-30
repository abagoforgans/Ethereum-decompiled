contract main {




// =====================  Runtime code  =====================


const EMPTY = 0

const VERSION = 2


address sub_cdf5195bAddress;
address validatorsAddress;
uint256 sub_19de73e7;
array of struct sub_b1c90122;

function sub_19de73e7(?) {
    return sub_19de73e7
}

function sub_b1c90122(?) {
    if not arg1:
        revert with 0, 'ID must not be empty!'
    mem[384] = sub_b1c90122[arg2 << 240][arg3 << 248][arg1][1].field_0
    idx = 384
    s = 0
    while sub_b1c90122[arg2 << 240][arg3 << 248][arg1][1].length + 352 > idx:
        mem[idx + 32] = sub_b1c90122[arg2 << 240][arg3 << 248][arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_b1c90122[arg2 << 240][arg3 << 248][arg1].field_0, 
           Array(len=sub_b1c90122[arg2 << 240][arg3 << 248][arg1][1].length, data=mem[384 len sub_b1c90122[arg2 << 240][arg3 << 248][arg1][1].length]),
           sub_b1c90122[arg2 << 240][arg3 << 248][arg1].field_512,
           sub_b1c90122[arg2 << 240][arg3 << 248][arg1].field_768
}

function sub_b7f425e1(?) {
    return sub_b1c90122[arg1][arg2].field_256
}

function validators() {
    return validatorsAddress
}

function sub_cdf5195b(?) {
    return sub_cdf5195bAddress
}

function _fallback() payable {
    revert
}

function sub_c0050637(?) {
    if not arg1:
        revert with 0, 'ID must not be empty!'
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        revert with 0, 'ID must not be empty!'
    mem[384] = sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1][1].field_0
    idx = 384
    s = 0
    while sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1][1].length + 352 > idx:
        mem[idx + 32] = sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_0, 
           Array(len=sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1][1].length, data=mem[384 len sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1][1].length]),
           sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_512,
           sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_768
}

function sub_a466ad90(?) {
    if not arg1:
        revert with 0, 'ID must not be empty!'
    if 0 >= arg2.length:
        revert with 0, 'Profile must not be empty!'
    if arg3 <= 0:
        revert with 0, 'Value must be greater than 0!'
    if block.timestamp < block.timestamp:
        revert with 0, 'Starting time must be in the future'
    require ext_code.size(sub_cdf5195bAddress)
    call sub_cdf5195bAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient allowance!'
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_0:
        sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_0 = arg1
        sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_512 = block.timestamp
    require arg3 + sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_768 >= sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_768
    sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_768 += arg3
    if sub_19de73e7 > arg3 + sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_768:
        revert with 0, 'Subscription value is too low!'
    require arg3 + sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 >= sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256
    sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 += arg3
    emit 0x31e5b8ad: arg3, block.timestamp, msg.sender, arg1
}

function sub_cacb767b(?) {
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.0x27a15d0 with:
         gas gas_remaining wei
        args delegate.return_data[0] << 240, uint8(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.0xf6cc72af with:
         gas gas_remaining wei
        args delegate.return_data[0] << 240, uint8(delegate.return_data[32])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        revert with 0, 'ID must not be empty!'
    if 0 >= arg2.length:
        revert with 0, 'Profile must not be empty!'
    if arg3 <= 0:
        revert with 0, 'Value must be greater than 0!'
    if delegate.return_data[0] < block.timestamp:
        revert with 0, 'Starting time must be in the future'
    require ext_code.size(sub_cdf5195bAddress)
    call sub_cdf5195bAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient allowance!'
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_0:
        sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_0 = arg1
        sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_512 = delegate.return_data[0]
    require arg3 + sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_768 >= sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_768
    sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_768 += arg3
    if sub_19de73e7 > arg3 + sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248][arg1].field_768:
        revert with 0, 'Subscription value is too low!'
    require arg3 + sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 >= sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256
    sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 += arg3
    emit 0x31e5b8ad: arg3, delegate.return_data[0], msg.sender, arg1
}

function sub_cc3ef92d(?) {
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.0xaef47ba9 with:
         gas gas_remaining wei
        args arg1 << 240, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = uint16(delegate.return_data[0])
    mem[132] = uint8(delegate.return_data[0])
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.0xaef47ba9 with:
         gas gas_remaining wei
        args delegate.return_data[0] << 240, uint8(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < delegate.return_data[0]:
        revert with 0, 'Can't distribute future fees!'
    mem[96] = 0xb7ab4db500000000000000000000000000000000000000000000000000000000
    require ext_code.size(validatorsAddress)
    call validatorsAddress.getValidators() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _22 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    _24 = mem[mem[96] + 96]
    mem[0] = arg2
    mem[32] = sha3(arg1 << 240, 3)
    require mem[mem[96] + 96] > 0
    require mem[mem[96] + 96]
    if sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / mem[mem[96] + 96] <= 0:
        revert with 0, 'Fee must be greater than 0!'
    s = 0
    s = 0
    idx = 0
    while idx < _24:
        require idx < mem[_22 + 96]
        _38 = mem[(32 * idx) + _22 + 128]
        if idx != 0:
            require sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24 <= sub_b1c90122[arg1 << 240][arg2 << 248].field_256
            sub_b1c90122[arg1 << 240][arg2 << 248].field_256 -= sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24
            mem[ceil32(return_data.size) + 100] = mem[(32 * idx) + _22 + 140 len 20]
            mem[ceil32(return_data.size) + 132] = sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24
            require ext_code.size(sub_cdf5195bAddress)
            call sub_cdf5195bAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 100], sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24
            emit 0x56505e8d: (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24), address(_38)
            s = sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24
            s = _38
            idx = idx + 1
            continue 
        require _24
        require (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 % _24) + (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24) >= sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24
        require (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 % _24) + (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24) <= sub_b1c90122[arg1 << 240][arg2 << 248].field_256
        sub_b1c90122[arg1 << 240][arg2 << 248].field_256 = sub_b1c90122[arg1 << 240][arg2 << 248].field_256 - (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 % _24) - (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24)
        mem[ceil32(return_data.size) + 100] = mem[(32 * idx) + _22 + 140 len 20]
        mem[ceil32(return_data.size) + 132] = (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 % _24) + (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24)
        require ext_code.size(sub_cdf5195bAddress)
        call sub_cdf5195bAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 100], (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 % _24) + (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 % _24) + (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24)
        emit 0x56505e8d: ((sub_b1c90122[arg1 << 240][arg2 << 248].field_256 % _24) + (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24)), address(_38)
        s = (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 % _24) + (sub_b1c90122[arg1 << 240][arg2 << 248].field_256 / _24)
        s = _38
        idx = idx + 1
        continue 
}

function distributeFees() {
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.0xaef47ba9 with:
         gas gas_remaining wei
        args delegate.return_data[0] << 240, uint8(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = uint16(delegate.return_data[0])
    mem[132] = uint8(delegate.return_data[0])
    require ext_code.size(0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b)
    delegate 0xd8ddbbd9c89112bf0a3a4a94f7f666d13cc9014b.0xaef47ba9 with:
         gas gas_remaining wei
        args delegate.return_data[0] << 240, uint8(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < delegate.return_data[0]:
        revert with 0, 'Can't distribute future fees!'
    mem[96] = 0xb7ab4db500000000000000000000000000000000000000000000000000000000
    require ext_code.size(validatorsAddress)
    call validatorsAddress.getValidators() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _30 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    _32 = mem[mem[96] + 96]
    mem[0] = uint8(delegate.return_data[0])
    mem[32] = sha3(delegate.return_data[0] << 240, 3)
    require mem[mem[96] + 96] > 0
    require mem[mem[96] + 96]
    if sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / mem[mem[96] + 96] <= 0:
        revert with 0, 'Fee must be greater than 0!'
    s = 0
    s = 0
    idx = 0
    while idx < _32:
        require idx < mem[_30 + 96]
        _46 = mem[(32 * idx) + _30 + 128]
        if idx != 0:
            require sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32 <= sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256
            sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 -= sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32
            mem[ceil32(return_data.size) + 100] = mem[(32 * idx) + _30 + 140 len 20]
            mem[ceil32(return_data.size) + 132] = sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32
            require ext_code.size(sub_cdf5195bAddress)
            call sub_cdf5195bAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 100], sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32
            emit 0x56505e8d: (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32), address(_46)
            s = sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32
            s = _46
            idx = idx + 1
            continue 
        require _32
        require (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 % _32) + (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32) >= sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32
        require (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 % _32) + (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32) <= sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256
        sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 = sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 - (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 % _32) - (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32)
        mem[ceil32(return_data.size) + 100] = mem[(32 * idx) + _30 + 140 len 20]
        mem[ceil32(return_data.size) + 132] = (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 % _32) + (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32)
        require ext_code.size(sub_cdf5195bAddress)
        call sub_cdf5195bAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 100], (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 % _32) + (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 % _32) + (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32)
        emit 0x56505e8d: ((sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 % _32) + (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32)), address(_46)
        s = (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 % _32) + (sub_b1c90122[delegate.return_data[0] << 240][delegate.return_data[0] << 248].field_256 / _32)
        s = _46
        idx = idx + 1
        continue 
}



}
