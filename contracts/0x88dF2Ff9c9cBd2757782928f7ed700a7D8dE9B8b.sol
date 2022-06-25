contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9d3c8cc4Address;
address beneficiaryAddress;
uint8 stor4;
mapping of uint8 stor5;
address affiliateAddress;
address sub_63f0385cAddress;
address ratesAddress;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
mapping of uint256 sub_2c4aa70b;
mapping of uint256 sub_bacda826;
mapping of address sub_d02f75e8;
mapping of uint8 stor18;
uint256 stor19;
uint256 sub_175da5ee;
uint256 sub_9e6c7bf3;

function sub_175da5ee(?) {
    return sub_175da5ee
}

function sub_2c4aa70b(?) {
    require calldata.size - 4 >= 32
    return sub_2c4aa70b[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function rates() {
    return ratesAddress
}

function affiliate() {
    return affiliateAddress
}

function sub_63f0385c(?) {
    return sub_63f0385cAddress
}

function owner() {
    return owner
}

function sub_9d3c8cc4(?) {
    return sub_9d3c8cc4Address
}

function sub_9e6c7bf3(?) {
    return sub_9e6c7bf3
}

function sub_bacda826(?) {
    require calldata.size - 4 >= 32
    return sub_bacda826[arg1]
}

function sub_c5454ad4(?) {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function sub_d02f75e8(?) {
    require calldata.size - 4 >= 32
    return sub_d02f75e8[arg1]
}

function managers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
  stop
}

function setSecondary(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    sub_9d3c8cc4Address = arg1
}

function setBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    beneficiaryAddress = arg1
}

function getCurrentDiscount() {
    if stor13 + (stor11 * block.timestamp - stor10 / 24 * 3600) >= stor12:
        return stor12, stor12
    return stor13 + (stor11 * block.timestamp - stor10 / 24 * 3600), stor12
}

function setManager(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_9d3c8cc4Address != msg.sender:
            revert with 0, 'Only owner or secondary'
    stor5[address(arg1)] = 1
}

function deleteManager(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_9d3c8cc4Address != msg.sender:
            revert with 0, 'Only owner or secondary'
    stor5[address(arg1)] = 0
}

function sub_bc148756(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor9 = arg1
}

function sub_88861a7c(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor10 = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
}

function sub_fdae8043(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    ratesAddress = arg1
}

function sub_873208e4(?) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    sub_d02f75e8[arg1 << 240] = arg2
}

function sub_912d2c0a(?) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    sub_bacda826[arg1 << 248] += arg2
}

function setAffiliate(address arg1) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    affiliateAddress = arg1
}

function setMaintenanceStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor4 = uint8(arg1)
    emit 0xf887ef1c: arg1
}

function sub_3f1e4fa9(?) {
    require calldata.size - 4 >= 128
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    sub_d02f75e8[arg1 << 240] = arg2
    sub_2c4aa70b[arg1 << 240] = arg4
    sub_bacda826[arg1 << 240] = arg3
}

function withdrawalAll() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(eth.balance(this.address));
}

function withdrawERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc1d94b74: address(arg1), arg2
}

function withdrawal(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(arg1);
}

function sub_abbd1276(?) {
    require calldata.size - 4 >= 64
    if stor13 + (stor11 * block.timestamp - stor10 / 24 * 3600) >= stor12:
        if stor12:
            return (stor12 * arg2 * sub_2c4aa70b[arg1 << 240] / stor12)
    else:
        if stor12:
            return ((stor13 * arg2 * sub_2c4aa70b[arg1 << 240]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 240]) / stor12)
    ('iszero', ('stor', ('name', 'stor12', 12)))
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x5472616e7366657220746f206e756c6c2061646472657373206973206e6f7420616c6c6f776500,
                    mem[203 len 25]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f8f346dc(?) {
    require calldata.size - 4 >= 64
    if stor13 + (stor11 * block.timestamp - stor10 / 24 * 3600) >= stor12:
        if stor12:
            return arg2 * sub_2c4aa70b[arg1 << 240], stor12 * arg2 * sub_2c4aa70b[arg1 << 240] / stor12
    else:
        if stor12:
            return arg2 * sub_2c4aa70b[arg1 << 240], 
                   (stor13 * arg2 * sub_2c4aa70b[arg1 << 240]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 240]) / stor12
    ('iszero', ('stor', ('name', 'stor12', 12)))
    revert
}

function sub_13fe294d(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 18
        stor18[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_2364de82(?) {
    require calldata.size - 4 >= 96
    require stor12
    require ext_code.size(ratesAddress)
    if stor13 + (stor11 * block.timestamp - stor10 / 24 * 3600) >= stor12:
        staticcall ratesAddress.0x7c0de1ca with:
                gas gas_remaining wei
               args address(arg3), stor12 * arg2 * sub_2c4aa70b[arg1 << 240] / stor12
    else:
        staticcall ratesAddress.0x7c0de1ca with:
                gas gas_remaining wei
               args address(arg3), (stor13 * arg2 * sub_2c4aa70b[arg1 << 240]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 240]) / stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_58fbb277(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128 len 320] = code.data[10380 len 320]
    mem[(32 * arg1.length) + 448 len 320] = code.data[10380 len 320]
    mem[(32 * arg1.length) + 768 len 320] = code.data[10380 len 320]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require stor12
        require idx < 10
        if stor13 + (stor11 * block.timestamp - stor10 / 24 * 3600) >= stor12:
            mem[(32 * idx) + (32 * arg1.length) + 448] = stor12 * sub_2c4aa70b[mem[(32 * idx) + 128] << 240] / stor12
        else:
            mem[(32 * idx) + (32 * arg1.length) + 448] = (stor13 * sub_2c4aa70b[mem[(32 * idx) + 128] << 240]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * sub_2c4aa70b[mem[(32 * idx) + 128] << 240]) / stor12
        mem[(32 * idx) + (32 * arg1.length) + 128] = sub_2c4aa70b[mem[(32 * idx) + 158 len 2]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 158 len 2]
        mem[32] = 16
        require idx < 10
        mem[(32 * idx) + (32 * arg1.length) + 768] = sub_bacda826[mem[(32 * idx) + 158 len 2]]
        idx = idx + 1
        continue 
    return mem[(32 * arg1.length) + 128 len 320], mem[(32 * arg1.length) + 448 len 320], mem[(32 * arg1.length) + 768 len 320]
}

function openBox(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor4
    require block.timestamp > stor10
    require ext_code.size(sub_63f0385cAddress)
    staticcall sub_63f0385cAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_63f0385cAddress)
    staticcall sub_63f0385cAddress.'A1<;' with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d02f75e8[ext_call.return_data[31 len 1]])
    if 0 >= sub_175da5ee:
        call sub_d02f75e8[ext_call.return_data[31 len 1]].open(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, 0
    else:
        if not sub_9e6c7bf3:
            call sub_d02f75e8[ext_call.return_data[31 len 1]].open(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, stor19 - sub_9e6c7bf3
        else:
            if sub_9e6c7bf3 + stor9 >= stor19:
                call sub_d02f75e8[ext_call.return_data[31 len 1]].open(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, 0
            else:
                call sub_d02f75e8[ext_call.return_data[31 len 1]].open(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, stor19 - sub_9e6c7bf3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        sub_9e6c7bf3 = stor19
        sub_175da5ee--
    stor19++
    require ext_code.size(sub_63f0385cAddress)
    call sub_63f0385cAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d88e70d9(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        sub_d02f75e8[mem[(32 * idx) + 158 len 2]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require idx < arg4.length
        require idx < arg1.length
        sub_2c4aa70b[mem[(32 * idx) + 158 len 2]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require idx < arg3.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 158 len 2]
        mem[32] = 16
        sub_bacda826[mem[(32 * idx) + 158 len 2]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        idx = idx + 1
        continue 
}

function sub_2789bd31(?) payable {
    require calldata.size - 4 >= 128
    require not stor4
    require block.timestamp > stor10
    require stor12
    if stor13 + (stor11 * block.timestamp - stor10 / 24 * 3600) >= stor12:
        require stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 <= msg.value
        require arg2 <= sub_bacda826[arg1 << 248]
        require arg2 > 0
        sub_bacda826[arg1 << 248] -= arg2
        require ext_code.size(affiliateAddress)
        call affiliateAddress.0x39ad691a with:
             gas gas_remaining wei
            args address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_63f0385cAddress)
        call sub_63f0385cAddress.mint(address arg1, uint8 arg2, uint8 arg3) with:
             gas gas_remaining wei
            args address(arg3), arg1 << 248, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(affiliateAddress)
        staticcall affiliateAddress.0x7b95d3ea with:
                gas gas_remaining wei
               args address(arg3), stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(affiliateAddress)
            call affiliateAddress.'|d	$' with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if stor18[address(msg.sender)]:
            require stor12
            call msg.sender with:
               value stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 * stor14 / stor12 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require stor12
                emit 0x64da42cd: msg.sender, stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 * stor14 / stor12
        if not stor18[address(msg.sender)]:
            call beneficiaryAddress with:
               value (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout(((stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) - ext_call.return_data[0]));
        else:
            require stor12
            call beneficiaryAddress with:
               value (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) - ext_call.return_data[0] - (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 * stor14 / stor12) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout(((stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) - ext_call.return_data[0] - (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 * stor14 / stor12)));
        if msg.value > stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12:
            call msg.sender with:
               value msg.value - (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit 0x64da42cd: msg.sender, msg.value - (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12)
    else:
        require (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 <= msg.value
        require arg2 <= sub_bacda826[arg1 << 248]
        require arg2 > 0
        sub_bacda826[arg1 << 248] -= arg2
        require ext_code.size(affiliateAddress)
        call affiliateAddress.0x39ad691a with:
             gas gas_remaining wei
            args address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_63f0385cAddress)
        call sub_63f0385cAddress.mint(address arg1, uint8 arg2, uint8 arg3) with:
             gas gas_remaining wei
            args address(arg3), arg1 << 248, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(affiliateAddress)
        staticcall affiliateAddress.0x7b95d3ea with:
                gas gas_remaining wei
               args address(arg3), (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(affiliateAddress)
            call affiliateAddress.'|d	$' with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if stor18[address(msg.sender)]:
            require stor12
            call msg.sender with:
               value (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 * stor14 / stor12 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require stor12
                emit 0x64da42cd: msg.sender, (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 * stor14 / stor12
        if not stor18[address(msg.sender)]:
            call beneficiaryAddress with:
               value ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout((((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) - ext_call.return_data[0]));
        else:
            require stor12
            call beneficiaryAddress with:
               value ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) - ext_call.return_data[0] - ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 * stor14 / stor12) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout((((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) - ext_call.return_data[0] - ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 * stor14 / stor12)));
        if msg.value > (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12:
            call msg.sender with:
               value msg.value - ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit 0x64da42cd: msg.sender, msg.value - ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12)
}

function sub_ab1ad06a(?) payable {
    require calldata.size - 4 >= 160
    require not stor4
    require block.timestamp > stor10
    require stor12
    require arg2 <= sub_bacda826[arg1 << 248]
    require arg2 > 0
    sub_bacda826[arg1 << 248] -= arg2
    if stor13 + (stor11 * block.timestamp - stor10 / 24 * 3600) >= stor12:
        if not arg3:
            require stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 <= msg.value
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x39ad691a with:
                 gas gas_remaining wei
                args msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_63f0385cAddress)
            call sub_63f0385cAddress.mint(address arg1, uint8 arg2, uint8 arg3) with:
                 gas gas_remaining wei
                args msg.sender, arg1 << 248, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(affiliateAddress)
            staticcall affiliateAddress.0x7b95d3ea with:
                    gas gas_remaining wei
                   args msg.sender, stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(affiliateAddress)
                call affiliateAddress.'|d	$' with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if stor18[address(msg.sender)]:
                require stor12
                call msg.sender with:
                   value stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 * stor14 / stor12 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require stor12
                    emit 0x64da42cd: msg.sender, stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 * stor14 / stor12
            if not stor18[address(msg.sender)]:
                call beneficiaryAddress with:
                   value (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) - ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout(((stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) - ext_call.return_data[0]));
            else:
                require stor12
                call beneficiaryAddress with:
                   value (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) - ext_call.return_data[0] - (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 * stor14 / stor12) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout(((stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) - ext_call.return_data[0] - (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12 * stor14 / stor12)));
            call msg.sender with:
               value msg.value - (stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(ratesAddress)
            call ratesAddress.0xae1297b6 with:
                 gas gas_remaining wei
                args address(arg3), stor12 * arg2 * sub_2c4aa70b[arg1 << 248] / stor12, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require ext_code.size(arg3)
            call arg3.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x39ad691a with:
                 gas gas_remaining wei
                args msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_63f0385cAddress)
            call sub_63f0385cAddress.mint(address arg1, uint8 arg2, uint8 arg3) with:
                 gas gas_remaining wei
                args msg.sender, arg1 << 248, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(affiliateAddress)
            staticcall affiliateAddress.0x7b95d3ea with:
                    gas gas_remaining wei
                   args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3:
                require ext_code.size(arg3)
                if ext_call.return_data[0] > 0:
                    call arg3.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x617c9ad6: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg3
                call arg3.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xc1d94b74: address(arg3), 0
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(affiliateAddress)
                    call affiliateAddress.'|d	$' with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor18[address(msg.sender)]:
                    require stor12
                    call msg.sender with:
                       value ext_call.return_data[0] * stor14 / stor12 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require stor12
                        emit 0x64da42cd: msg.sender, ext_call.return_data[0] * stor14 / stor12
                if not stor18[address(msg.sender)]:
                    call beneficiaryAddress with:
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(0);
                else:
                    require stor12
                    call beneficiaryAddress with:
                       value -ext_call.return_data[0] * stor14 / stor12 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(-(ext_call.return_data[0] * stor14 / stor12));
    else:
        if not arg3:
            require (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 <= msg.value
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x39ad691a with:
                 gas gas_remaining wei
                args msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_63f0385cAddress)
            call sub_63f0385cAddress.mint(address arg1, uint8 arg2, uint8 arg3) with:
                 gas gas_remaining wei
                args msg.sender, arg1 << 248, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(affiliateAddress)
            staticcall affiliateAddress.0x7b95d3ea with:
                    gas gas_remaining wei
                   args msg.sender, (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(affiliateAddress)
                call affiliateAddress.'|d	$' with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if stor18[address(msg.sender)]:
                require stor12
                call msg.sender with:
                   value (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 * stor14 / stor12 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require stor12
                    emit 0x64da42cd: msg.sender, (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 * stor14 / stor12
            if not stor18[address(msg.sender)]:
                call beneficiaryAddress with:
                   value ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) - ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout((((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) - ext_call.return_data[0]));
            else:
                require stor12
                call beneficiaryAddress with:
                   value ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) - ext_call.return_data[0] - ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 * stor14 / stor12) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout((((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) - ext_call.return_data[0] - ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12 * stor14 / stor12)));
            call msg.sender with:
               value msg.value - ((stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(ratesAddress)
            call ratesAddress.0xae1297b6 with:
                 gas gas_remaining wei
                args address(arg3), (stor13 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor11 * block.timestamp - stor10 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor12, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require ext_code.size(arg3)
            call arg3.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x39ad691a with:
                 gas gas_remaining wei
                args msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_63f0385cAddress)
            call sub_63f0385cAddress.mint(address arg1, uint8 arg2, uint8 arg3) with:
                 gas gas_remaining wei
                args msg.sender, arg1 << 248, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(affiliateAddress)
            staticcall affiliateAddress.0x7b95d3ea with:
                    gas gas_remaining wei
                   args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3:
                require ext_code.size(arg3)
                if ext_call.return_data[0] > 0:
                    call arg3.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x617c9ad6: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg3
                call arg3.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xc1d94b74: address(arg3), 0
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(affiliateAddress)
                    call affiliateAddress.'|d	$' with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor18[address(msg.sender)]:
                    require stor12
                    call msg.sender with:
                       value ext_call.return_data[0] * stor14 / stor12 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require stor12
                        emit 0x64da42cd: msg.sender, ext_call.return_data[0] * stor14 / stor12
                if not stor18[address(msg.sender)]:
                    call beneficiaryAddress with:
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(0);
                else:
                    require stor12
                    call beneficiaryAddress with:
                       value -ext_call.return_data[0] * stor14 / stor12 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(-(ext_call.return_data[0] * stor14 / stor12));
}



}
