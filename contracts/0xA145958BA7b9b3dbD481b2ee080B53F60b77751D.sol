contract main {




// =====================  Runtime code  =====================


address owner;
address sub_0c12af16Address;
uint256 sub_8f6ea118;
uint256 initialTimestamp;
mapping of uint8 stor4;
mapping of uint256 bought;
array of uint256 limitPerDay;
uint256 stor7;
uint8 stor8; offset 160
uint128 stor8; offset 160
address sub_72f3b851Address;

function sub_0c12af16(?) {
    return sub_0c12af16Address
}

function bought(address arg1) {
    return bought[arg1]
}

function sub_72f3b851(?) {
    return sub_72f3b851Address
}

function limitPerDay(uint256 arg1) {
    require arg1 < 2
    return limitPerDay[arg1]
}

function owner() {
    return owner
}

function sub_8f6ea118(?) {
    return sub_8f6ea118
}

function initialTimestamp() {
    return initialTimestamp
}

function whitelisted(address arg1) {
    return bool(stor4[arg1])
}

function kill() {
    require msg.sender == owner
    require ext_code.size(sub_0c12af16Address)
    call sub_0c12af16Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    selfdestruct(msg.sender)
}

function sub_cebe7aa1(?) {
    require msg.sender == owner
    stor7 = arg1
}

function sub_40e3bc45(?) {
    require msg.sender == owner
    sub_8f6ea118 = arg1
}

function sub_09db2894(?) {
    require msg.sender == owner
    limitPerDay.length = arg1
}

function addUser(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
    emit 0x142def06: arg1
}

function removeUser(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
    emit 0xb5ab038b: arg1
}

function getDay() {
    require initialTimestamp <= block.timestamp
    return (block.timestamp - initialTimestamp / 24 * 3600)
}

function sub_f665fd71(?) {
    require msg.sender == owner
    require uint8(stor8.field_160)
    Mask(96, 0, stor8.field_160) = 0
}

function sub_28b8dfc1(?) {
    require msg.sender == owner
    require not uint8(stor8.field_160)
    Mask(96, 0, stor8.field_160) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_82927368(?) {
    require msg.sender == owner
    emit 0x9e8d4456: arg1
    require ext_code.size(sub_0c12af16Address)
    call sub_0c12af16Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_1e141227(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length < 100000
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit 0xb5ab038b: mem[(32 * arg1.length) + 128]
        idx = idx + 1
        continue 
}

function addManyUsers(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length < 100000
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit 0x142def06: mem[(32 * arg1.length) + 128]
        idx = idx + 1
        continue 
}

function buy() payable {
    require initialTimestamp <= block.timestamp
    require block.timestamp - initialTimestamp / 24 * 3600 >= 0
    require uint8(stor8.field_160)
    require msg.sender
    require stor4[address(msg.sender)]
    require initialTimestamp <= block.timestamp
    if not block.timestamp - initialTimestamp / 24 * 3600:
        require block.timestamp - initialTimestamp / 24 * 3600 < 2
        require bought[address(msg.sender)] <= limitPerDay[block.timestamp - stor3 / 24 * 3600]
        require msg.value <= limitPerDay[block.timestamp - stor3 / 24 * 3600] - bought[address(msg.sender)]
    else:
        if block.timestamp - initialTimestamp / 24 * 3600 == 1:
            require block.timestamp - initialTimestamp / 24 * 3600 < 2
            require bought[address(msg.sender)] <= limitPerDay[block.timestamp - stor3 / 24 * 3600]
            require msg.value <= limitPerDay[block.timestamp - stor3 / 24 * 3600] - bought[address(msg.sender)]
    require ext_code.size(sub_0c12af16Address)
    call sub_0c12af16Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require 0 <= ext_call.return_data[0]
        require bought[address(msg.sender)] + msg.value >= bought[address(msg.sender)]
        bought[address(msg.sender)] += msg.value
        call sub_72f3b851Address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_0c12af16Address)
        call sub_0c12af16Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x12b115c0: msg.sender, 0
    else:
        require msg.value
        require msg.value * sub_8f6ea118 / msg.value == sub_8f6ea118
        require msg.value * sub_8f6ea118 <= ext_call.return_data[0]
        require bought[address(msg.sender)] + msg.value >= bought[address(msg.sender)]
        bought[address(msg.sender)] += msg.value
        call sub_72f3b851Address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_0c12af16Address)
        call sub_0c12af16Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * sub_8f6ea118
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x12b115c0: msg.sender, msg.value * sub_8f6ea118
}

function _fallback() payable {
    require initialTimestamp <= block.timestamp
    require block.timestamp - initialTimestamp / 24 * 3600 >= 0
    require uint8(stor8.field_160)
    require msg.sender
    require stor4[address(msg.sender)]
    require initialTimestamp <= block.timestamp
    if not block.timestamp - initialTimestamp / 24 * 3600:
        require block.timestamp - initialTimestamp / 24 * 3600 < 2
        require bought[address(msg.sender)] <= limitPerDay[block.timestamp - stor3 / 24 * 3600]
        require msg.value <= limitPerDay[block.timestamp - stor3 / 24 * 3600] - bought[address(msg.sender)]
    else:
        if block.timestamp - initialTimestamp / 24 * 3600 == 1:
            require block.timestamp - initialTimestamp / 24 * 3600 < 2
            require bought[address(msg.sender)] <= limitPerDay[block.timestamp - stor3 / 24 * 3600]
            require msg.value <= limitPerDay[block.timestamp - stor3 / 24 * 3600] - bought[address(msg.sender)]
    require ext_code.size(sub_0c12af16Address)
    call sub_0c12af16Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require 0 <= ext_call.return_data[0]
        require bought[address(msg.sender)] + msg.value >= bought[address(msg.sender)]
        bought[address(msg.sender)] += msg.value
        call sub_72f3b851Address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_0c12af16Address)
        call sub_0c12af16Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x12b115c0: msg.sender, 0
    else:
        require msg.value
        require msg.value * sub_8f6ea118 / msg.value == sub_8f6ea118
        require msg.value * sub_8f6ea118 <= ext_call.return_data[0]
        require bought[address(msg.sender)] + msg.value >= bought[address(msg.sender)]
        bought[address(msg.sender)] += msg.value
        call sub_72f3b851Address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_0c12af16Address)
        call sub_0c12af16Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * sub_8f6ea118
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x12b115c0: msg.sender, msg.value * sub_8f6ea118
}



}
