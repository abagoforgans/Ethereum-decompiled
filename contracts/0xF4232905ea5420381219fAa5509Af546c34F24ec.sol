contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
address stor8;
address stor9;
array of uint256 stor10;
uint256 stor11;

function _fallback() {
    mem[96 len -15277] = code.data[18073 len -15277]
    mem[64] = -15181
    stor0 = msg.sender
    s = 0
    idx = 0
    while idx < mem[mem[256] + 96] - 1:
        s = idx + 1
        while s < mem[mem[256] + 96]:
            require s < mem[mem[256] + 96]
            require idx < mem[mem[256] + 96]
            require mem[(32 * idx) + mem[256] + 128] < mem[(32 * s) + mem[256] + 128]
            s = s + 1
            continue 
        s = mem[mem[256] + 96]
        idx = idx + 1
        continue 
    stor2 = mem[108 len 20]
    stor3 = mem[140 len 20]
    stor7 = mem[172 len 20]
    stor8 = mem[204 len 20]
    stor9 = mem[236 len 20]
    stor10.length = mem[mem[256] + 96]
    mem[0] = 10
    if not mem[mem[256] + 96]:
        idx = 0
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[256] + 128
        while mem[256] + (32 * mem[mem[256] + 96]) + 128 > idx:
            stor10[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[256] + 96]) + 31) >> 5
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    stor11 = mem[288]
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x5d8b59d3 with:
         gas gas_remaining - 710 wei
        args 1, 0x1c5a9d9c00000000000000000000000000000000000000000000000000000000
    require delegate.return_code
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x5d8b59d3 with:
         gas gas_remaining - 710 wei
        args 1, 0xa79309b00000000000000000000000000000000000000000000000000000000
    require delegate.return_code
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x5d8b59d3 with:
         gas gas_remaining - 710 wei
        args 1, 0x72e670b000000000000000000000000000000000000000000000000000000000
    require delegate.return_code
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0x1c5a9d9c00000000000000000000000000000000000000000000000000000000, this.address
    require delegate.return_code
    stor4 = delegate.return_data[12 len 20] or Mask(96, 160, stor4)
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xa79309b00000000000000000000000000000000000000000000000000000000, this.address
    require delegate.return_code
    stor5 = delegate.return_data[12 len 20] or Mask(96, 160, stor5)
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0x72e670b000000000000000000000000000000000000000000000000000000000, this.address
    require delegate.return_code
    stor6 = delegate.return_data[12 len 20] or Mask(96, 160, stor6)
    return code.data[2796 len 15277]
}



// =====================  Runtime code  =====================


address owner;
address workerAddress;
address tokenAddress;
address sub_7ab49736Address;
address sub_258f04dcAddress;
address sub_6ef64054Address;
address loggerAddress;
address sub_06a0e035Address;
address distributorAddress;
array of uint256 tiers;
uint256 sub_62ed33c8;
uint256 totalLocked;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8
mapping of struct memberships;

function tiers(uint256 arg1) {
    require arg1 < tiers.length
    return tiers[arg1]
}

function sub_06a0e035(?) {
    return sub_06a0e035Address
}

function deprecated() {
    return bool(uint8(stor13.field_0))
}

function sub_258f04dc(?) {
    return sub_258f04dcAddress
}

function worker() {
    return workerAddress
}

function totalLocked() {
    return totalLocked
}

function sub_62ed33c8(?) {
    return sub_62ed33c8
}

function sub_6ef64054(?) {
    return sub_6ef64054Address
}

function memberships(address arg1) {
    return memberships[arg1].field_0, 
           memberships[arg1].field_256,
           memberships[arg1].field_512,
           memberships[arg1].field_768,
           bool(memberships[arg1].field_1024),
           bool(memberships[arg1].field_1032),
           bool(memberships[arg1].field_1040)
}

function sub_7ab49736(?) {
    return sub_7ab49736Address
}

function owner() {
    return owner
}

function distributor() {
    return distributorAddress
}

function logger() {
    return loggerAddress
}

function token() {
    return tokenAddress
}

function sub_c9930b26(?) {
    require msg.sender == owner
    require arg1
    workerAddress = arg1
}

function deprecate() {
    require msg.sender == sub_06a0e035Address
    require not uint8(stor13.field_0)
    uint8(stor13.field_0) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9b1d0b41(?) {
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, arg1
    require delegate.return_code
    return delegate.return_data[12 len 20]
}

function _fallback() {
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, msg.sender
    require delegate.return_code
    require not delegate.return_data[12 len 20]
    require not uint8(stor13.field_0)
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0xd66cf471 with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, msg.sender, msg.sender, tokenAddress, distributorAddress
    require delegate.return_code
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, msg.sender
    require delegate.return_code
    memberships[delegate.return_data[12 len 20]].field_1040 = 1
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, msg.sender
    require delegate.return_code
    require ext_code.size(loggerAddress)
    call loggerAddress.0xfcfde0e0 with:
         gas gas_remaining - 710 wei
        args address(delegate.return_data[0]), msg.sender, msg.sender
    require ext_call.success
}

function sub_72e670b0(?) {
    if sub_6ef64054Address != msg.sender:
        require msg.sender == workerAddress
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, arg1
    require delegate.return_code
    require delegate.return_data[12 len 20]
    require memberships[delegate.return_data[12 len 20]].field_256
    if msg.sender == workerAddress:
        memberships[delegate.return_data[12 len 20]].field_1032 = 1
    else:
        require memberships[delegate.return_data[12 len 20]].field_1032
        require memberships[delegate.return_data[12 len 20]].field_0 < tiers.length
        require tiers[stor14[delegate.return_data[12 len 20]].field_0] <= totalLocked
        totalLocked -= tiers[stor14[delegate.return_data[12 len 20]].field_0]
        memberships[address(delegate.return_data[0])].field_0 = 0
        memberships[address(delegate.return_data[0])].field_256 = 0
        memberships[address(delegate.return_data[0])].field_512 = 0
        memberships[address(delegate.return_data[0])].field_768 = 0
        memberships[address(delegate.return_data[0])].field_1024 = 0
        memberships[address(delegate.return_data[0])].field_1032 = 0
        memberships[address(delegate.return_data[0])].field_1040 = 0
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).retrieveTokens() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(loggerAddress)
        call loggerAddress.0x7a911479 with:
             gas gas_remaining - 710 wei
            args address(delegate.return_data[0]), block.timestamp
        require ext_call.success
}

function sub_b3d0a72f(?) {
    require not uint8(stor13.field_8)
    Mask(248, 0, stor13.field_8) = 1
    require memberships[address(msg.sender)].field_256
    if not memberships[address(msg.sender)].field_1024:
        memberships[address(msg.sender)].field_512 = block.timestamp
        require sub_62ed33c8
        memberships[address(msg.sender)].field_768 = sub_62ed33c8 - (memberships[address(msg.sender)].field_512 - memberships[address(msg.sender)].field_256 % sub_62ed33c8)
        memberships[address(msg.sender)].field_1024 = 1
        require ext_code.size(loggerAddress)
        call loggerAddress.0xde297a88 with:
             gas gas_remaining - 710 wei
            args msg.sender, memberships[address(msg.sender)].field_512 + memberships[address(msg.sender)].field_768
    else:
        require block.timestamp >= memberships[address(msg.sender)].field_512 + memberships[address(msg.sender)].field_768
        require memberships[address(msg.sender)].field_0 < tiers.length
        require tiers[stor14[address(msg.sender)].field_0] <= totalLocked
        totalLocked -= tiers[stor14[address(msg.sender)].field_0]
        memberships[address(msg.sender)].field_0 = 0
        memberships[address(msg.sender)].field_256 = 0
        memberships[address(msg.sender)].field_512 = 0
        memberships[address(msg.sender)].field_768 = 0
        memberships[address(msg.sender)].field_1024 = 0
        memberships[address(msg.sender)].field_1032 = 0
        memberships[address(msg.sender)].field_1040 = 0
        require ext_code.size(msg.sender)
        call msg.sender.retrieveTokens() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(loggerAddress)
        call loggerAddress.0x7a911479 with:
             gas gas_remaining - 710 wei
            args msg.sender, block.timestamp
    require ext_call.success
    Mask(248, 0, stor13.field_8) = 0
}

function retrieve(address arg1) {
    if sub_258f04dcAddress != msg.sender:
        require msg.sender == workerAddress
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, arg1
    require delegate.return_code
    require delegate.return_data[12 len 20]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(delegate.return_data[0])
    require ext_call.success
    require ext_call.return_data[0]
    if not memberships[delegate.return_data[12 len 20]].field_256:
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).retrieveTokens() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(loggerAddress)
        call loggerAddress.0x143a2e31 with:
             gas gas_remaining - 710 wei
            args address(delegate.return_data[0]), ext_call.return_data[0]
    else:
        require memberships[delegate.return_data[12 len 20]].field_0 < tiers.length
        require ext_call.return_data[0] - tiers[stor14[delegate.return_data[12 len 20]].field_0]
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).retrieveTokens(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] - tiers[stor14[delegate.return_data[12 len 20]].field_0])
        require ext_call.success
        require ext_code.size(loggerAddress)
        call loggerAddress.0x143a2e31 with:
             gas gas_remaining - 710 wei
            args address(delegate.return_data[0]), ext_call.return_data[0] - tiers[stor14[delegate.return_data[12 len 20]].field_0]
    require ext_call.success
}

function sub_cae91300(?) {
    require not uint8(stor13.field_0)
    require memberships[address(msg.sender)].field_1040
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require tiers.length - 1 >= 0
    require tiers.length - 1 < tiers.length
    idx = tiers.length - 1
    while ext_call.return_data[0] < tiers[idx]:
        require idx - 1 >= 0
        require idx - 1 < tiers.length
        mem[0] = 10
        idx = idx - 1
        continue 
    if not memberships[address(msg.sender)].field_1024:
        if not memberships[address(msg.sender)].field_256:
            require idx < tiers.length
            require totalLocked + tiers[idx] >= totalLocked
            totalLocked += tiers[idx]
        else:
            require idx != memberships[address(msg.sender)].field_0
            require memberships[address(msg.sender)].field_0 < tiers.length
            require idx < tiers.length
            require tiers[stor14[address(msg.sender)].field_0] <= tiers[idx]
            require totalLocked + tiers[idx] - tiers[stor14[address(msg.sender)].field_0] >= totalLocked
            totalLocked = totalLocked + tiers[idx] - tiers[stor14[address(msg.sender)].field_0]
    else:
        if idx > memberships[address(msg.sender)].field_0:
            require memberships[address(msg.sender)].field_0 < tiers.length
            require idx < tiers.length
            require tiers[stor14[address(msg.sender)].field_0] <= tiers[idx]
            require totalLocked + tiers[idx] - tiers[stor14[address(msg.sender)].field_0] >= totalLocked
            totalLocked = totalLocked + tiers[idx] - tiers[stor14[address(msg.sender)].field_0]
        else:
            if idx < memberships[address(msg.sender)].field_0:
                require idx < tiers.length
                require memberships[address(msg.sender)].field_0 < tiers.length
                require tiers[idx] <= tiers[stor14[address(msg.sender)].field_0]
                require tiers[stor14[address(msg.sender)].field_0] - tiers[idx] <= totalLocked
                totalLocked = totalLocked - tiers[stor14[address(msg.sender)].field_0] + tiers[idx]
        memberships[address(msg.sender)].field_1024 = 0
        memberships[address(msg.sender)].field_512 = 0
        memberships[address(msg.sender)].field_768 = 0
    memberships[address(msg.sender)].field_0 = idx
    memberships[address(msg.sender)].field_256 = block.timestamp
    memberships[address(msg.sender)].field_1040 = 0
    require ext_code.size(loggerAddress)
    call loggerAddress.0x901945c3 with:
         gas gas_remaining - 710 wei
        args msg.sender, memberships[address(msg.sender)].field_0, memberships[address(msg.sender)].field_256
    require ext_call.success
}

function sub_ff5320ac(?) {
    require msg.sender == workerAddress
    require not uint8(stor13.field_0)
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, arg1
    require delegate.return_code
    require not delegate.return_data[12 len 20]
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    if arg2:
        delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0xd66cf471 with:
             gas gas_remaining - 710 wei
            args 0, 0, 0, address(arg1), address(arg2), tokenAddress, distributorAddress
        require delegate.return_code
        require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
        delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
             gas gas_remaining - 710 wei
            args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, msg.sender
        require delegate.return_code
        memberships[delegate.return_data[12 len 20]].field_1040 = 1
        require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
        delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
             gas gas_remaining - 710 wei
            args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, arg1
        require delegate.return_code
        require ext_code.size(loggerAddress)
        call loggerAddress.0xfcfde0e0 with:
             gas gas_remaining - 710 wei
            args address(delegate.return_data[0]), address(arg1), arg2
    else:
        delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0xd66cf471 with:
             gas gas_remaining - 710 wei
            args 0, 0, 0, address(arg1), address(arg1), tokenAddress, distributorAddress
        require delegate.return_code
        require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
        delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
             gas gas_remaining - 710 wei
            args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, msg.sender
        require delegate.return_code
        memberships[delegate.return_data[12 len 20]].field_1040 = 1
        require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
        delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
             gas gas_remaining - 710 wei
            args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, arg1
        require delegate.return_code
        require ext_code.size(loggerAddress)
        call loggerAddress.0xfcfde0e0 with:
             gas gas_remaining - 710 wei
            args address(delegate.return_data[0]), address(arg1), arg1
    require ext_call.success
}

function activate(address arg1) {
    require msg.sender == sub_7ab49736Address
    require not uint8(stor13.field_0)
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, arg1
    require delegate.return_code
    require delegate.return_data[12 len 20]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(delegate.return_data[0])
    require ext_call.success
    require tiers.length - 1 >= 0
    require tiers.length - 1 < tiers.length
    idx = tiers.length - 1
    while ext_call.return_data[0] < tiers[idx]:
        require idx - 1 >= 0
        require idx - 1 < tiers.length
        mem[0] = 10
        idx = idx - 1
        continue 
    if not memberships[delegate.return_data[12 len 20]].field_1024:
        if not memberships[delegate.return_data[12 len 20]].field_256:
            require idx < tiers.length
            require totalLocked + tiers[idx] >= totalLocked
            totalLocked += tiers[idx]
        else:
            require idx != memberships[delegate.return_data[12 len 20]].field_0
            require memberships[delegate.return_data[12 len 20]].field_0 < tiers.length
            require idx < tiers.length
            require tiers[stor14[delegate.return_data[12 len 20]].field_0] <= tiers[idx]
            require totalLocked + tiers[idx] - tiers[stor14[delegate.return_data[12 len 20]].field_0] >= totalLocked
            totalLocked = totalLocked + tiers[idx] - tiers[stor14[delegate.return_data[12 len 20]].field_0]
    else:
        if idx > memberships[delegate.return_data[12 len 20]].field_0:
            require memberships[delegate.return_data[12 len 20]].field_0 < tiers.length
            require idx < tiers.length
            require tiers[stor14[delegate.return_data[12 len 20]].field_0] <= tiers[idx]
            require totalLocked + tiers[idx] - tiers[stor14[delegate.return_data[12 len 20]].field_0] >= totalLocked
            totalLocked = totalLocked + tiers[idx] - tiers[stor14[delegate.return_data[12 len 20]].field_0]
        else:
            if idx < memberships[delegate.return_data[12 len 20]].field_0:
                require idx < tiers.length
                require memberships[delegate.return_data[12 len 20]].field_0 < tiers.length
                require tiers[idx] <= tiers[stor14[delegate.return_data[12 len 20]].field_0]
                require tiers[stor14[delegate.return_data[12 len 20]].field_0] - tiers[idx] <= totalLocked
                totalLocked = totalLocked - tiers[stor14[delegate.return_data[12 len 20]].field_0] + tiers[idx]
        memberships[delegate.return_data[12 len 20]].field_1024 = 0
        memberships[delegate.return_data[12 len 20]].field_512 = 0
        memberships[delegate.return_data[12 len 20]].field_768 = 0
    memberships[delegate.return_data[12 len 20]].field_0 = idx
    memberships[delegate.return_data[12 len 20]].field_256 = block.timestamp
    require ext_code.size(loggerAddress)
    call loggerAddress.0x901945c3 with:
         gas gas_remaining - 710 wei
        args address(delegate.return_data[0]), memberships[delegate.return_data[12 len 20]].field_0, memberships[delegate.return_data[12 len 20]].field_256
    require ext_call.success
}

function sub_62351cd0(?) {
    require msg.sender == workerAddress
    require not uint8(stor13.field_0)
    require arg2 < tiers.length
    require ext_code.size(0x3602deba95d5a69fe4cf4e26e209c54b720c9974)
    delegate 0x3602deba95d5a69fe4cf4e26e209c54b720c9974.0x2e1fc46 with:
         gas gas_remaining - 710 wei
        args 1, 0xb3d0a72f00000000000000000000000000000000000000000000000000000000, arg1
    require delegate.return_code
    require delegate.return_data[12 len 20]
    if arg2 < memberships[delegate.return_data[12 len 20]].field_0:
        require block.timestamp >= memberships[delegate.return_data[12 len 20]].field_512 + memberships[delegate.return_data[12 len 20]].field_768
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(delegate.return_data[0])
    require ext_call.success
    require arg2 < tiers.length
    require ext_call.return_data[0] >= tiers[arg2]
    if not memberships[delegate.return_data[12 len 20]].field_1024:
        if not memberships[delegate.return_data[12 len 20]].field_256:
            require arg2 < tiers.length
            require totalLocked + tiers[arg2] >= totalLocked
            totalLocked += tiers[arg2]
        else:
            require arg2 != memberships[delegate.return_data[12 len 20]].field_0
            require memberships[delegate.return_data[12 len 20]].field_0 < tiers.length
            require arg2 < tiers.length
            require tiers[stor14[delegate.return_data[12 len 20]].field_0] <= tiers[arg2]
            require totalLocked + tiers[arg2] - tiers[stor14[delegate.return_data[12 len 20]].field_0] >= totalLocked
            totalLocked = totalLocked + tiers[arg2] - tiers[stor14[delegate.return_data[12 len 20]].field_0]
    else:
        if arg2 > memberships[delegate.return_data[12 len 20]].field_0:
            require memberships[delegate.return_data[12 len 20]].field_0 < tiers.length
            require arg2 < tiers.length
            require tiers[stor14[delegate.return_data[12 len 20]].field_0] <= tiers[arg2]
            require totalLocked + tiers[arg2] - tiers[stor14[delegate.return_data[12 len 20]].field_0] >= totalLocked
            totalLocked = totalLocked + tiers[arg2] - tiers[stor14[delegate.return_data[12 len 20]].field_0]
        else:
            if arg2 < memberships[delegate.return_data[12 len 20]].field_0:
                require arg2 < tiers.length
                require memberships[delegate.return_data[12 len 20]].field_0 < tiers.length
                require tiers[arg2] <= tiers[stor14[delegate.return_data[12 len 20]].field_0]
                require tiers[stor14[delegate.return_data[12 len 20]].field_0] - tiers[arg2] <= totalLocked
                totalLocked = totalLocked - tiers[stor14[delegate.return_data[12 len 20]].field_0] + tiers[arg2]
        memberships[delegate.return_data[12 len 20]].field_1024 = 0
        memberships[delegate.return_data[12 len 20]].field_512 = 0
        memberships[delegate.return_data[12 len 20]].field_768 = 0
    memberships[delegate.return_data[12 len 20]].field_0 = arg2
    memberships[delegate.return_data[12 len 20]].field_256 = block.timestamp
    require ext_code.size(loggerAddress)
    call loggerAddress.0x901945c3 with:
         gas gas_remaining - 710 wei
        args address(delegate.return_data[0]), memberships[delegate.return_data[12 len 20]].field_0, memberships[delegate.return_data[12 len 20]].field_256
    require ext_call.success
}



}
