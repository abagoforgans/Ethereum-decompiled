contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9d3c8cc4Address;
address beneficiaryAddress;
uint8 stor4;
mapping of uint8 stor5;
mapping of address sub_2b55c8af;
mapping of uint16 sub_b181a977;
mapping of uint8 stor8;
address affiliateAddress;
address sub_63f0385cAddress;
address ratesAddress;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
mapping of uint256 sub_2c4aa70b;
mapping of uint256 sub_bacda826;
mapping of address sub_d02f75e8;
mapping of uint8 stor20;
mapping of uint8 stor21;
uint256 stor22;
uint256 sub_175da5ee;

function sub_175da5ee(?) {
    return sub_175da5ee
}

function sub_1b99cb98(?) {
    require calldata.size - 4 >= 64
    return bool(stor20[arg1 << 240][arg2 << 240])
}

function sub_2b55c8af(?) {
    require calldata.size - 4 >= 32
    return sub_2b55c8af[arg1 << 240]
}

function sub_2c4aa70b(?) {
    require calldata.size - 4 >= 32
    return sub_2c4aa70b[arg1]
}

function sub_2fceedab(?) {
    require calldata.size - 4 >= 32
    return sub_2b55c8af[arg1]
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

function sub_4c20c4d7(?) {
    require calldata.size - 4 >= 64
    return bool(stor8[arg1][arg2])
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

function sub_b02473d9(?) {
    require calldata.size - 4 >= 64
    return bool(stor8[arg1 << 240][arg2])
}

function sub_b181a977(?) {
    require calldata.size - 4 >= 32
    return sub_b181a977[address(arg1)]
}

function sub_bacda826(?) {
    require calldata.size - 4 >= 32
    return sub_bacda826[arg1]
}

function sub_c1f6a316(?) {
    require calldata.size - 4 >= 64
    return bool(stor20[arg1][arg2])
}

function sub_c5454ad4(?) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function sub_d02f75e8(?) {
    require calldata.size - 4 >= 32
    return sub_d02f75e8[arg1]
}

function sub_e179401d(?) {
    require calldata.size - 4 >= 32
    return sub_b181a977[arg1]
}

function managers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
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
    if stor15 + (stor13 * block.timestamp - stor12 / 24 * 3600) >= stor14:
        return stor14, stor14
    return stor15 + (stor13 * block.timestamp - stor12 / 24 * 3600), stor14
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

function sub_88861a7c(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor12 = arg1
}

function sub_fdae8043(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    ratesAddress = arg1
}

function sub_2b610fac(?) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor8[arg1 << 240][arg2] = 1
}

function sub_a7e7c42b(?) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor8[arg1 << 240][arg2] = 0
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

function sub_deed1093(?) {
    require calldata.size - 4 >= 96
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor20[arg1 << 240][arg2 << 240] = uint8(arg3)
}

function setMaintenanceStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor4 = uint8(arg1)
    emit 0xf887ef1c: arg1
}

function sub_24e206f5(?) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    sub_2b55c8af[arg2 << 240] = arg1
    sub_b181a977[address(arg1)] = arg2
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
    if stor15 + (stor13 * block.timestamp - stor12 / 24 * 3600) >= stor14:
        if stor14:
            return (stor14 * arg2 * sub_2c4aa70b[arg1 << 240] / stor14)
    else:
        if stor14:
            return ((stor15 * arg2 * sub_2c4aa70b[arg1 << 240]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 240]) / stor14)
    ('iszero', ('stor', ('name', 'stor14', 14)))
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
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xc1d94b74: address(arg1), arg2
}

function sub_f8f346dc(?) {
    require calldata.size - 4 >= 64
    if stor15 + (stor13 * block.timestamp - stor12 / 24 * 3600) >= stor14:
        if stor14:
            return arg2 * sub_2c4aa70b[arg1 << 240], stor14 * arg2 * sub_2c4aa70b[arg1 << 240] / stor14
    else:
        if stor14:
            return arg2 * sub_2c4aa70b[arg1 << 240], 
                   (stor15 * arg2 * sub_2c4aa70b[arg1 << 240]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 240]) / stor14
    ('iszero', ('stor', ('name', 'stor14', 14)))
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
        mem[32] = 21
        stor21[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_584d317a(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg2.length
    if arg2.length:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[13611 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(arg1 << 240, 8)
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * idx) + 160] = bool(stor8[arg1 << 240][mem[(32 * idx) + 128]])
        idx = idx + 1
        continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = arg2.length
    s = 0
    while arg2.length < 32 * arg2.length:
        mem[(66 * arg2.length) + 224] = mem[(34 * arg2.length) + 160]
        s = arg2.length + 32
        continue 
    return memory
      from (64 * arg2.length) + 160
       len (161 * arg2.length) + 64
}

function openBox(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor4
    require block.timestamp > stor12
    require ext_code.size(sub_63f0385cAddress)
    staticcall sub_63f0385cAddress.0x6352211e with:
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
    call sub_d02f75e8[ext_call.return_data[31 len 1]].0xed8c43f6 with:
         gas gas_remaining wei
        args arg1, 0 < sub_175da5ee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        sub_175da5ee--
    stor22++
    require ext_code.size(sub_63f0385cAddress)
    call sub_63f0385cAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_58fbb277(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128 len 320] = code.data[13611 len 320]
    mem[(32 * arg1.length) + 448 len 320] = code.data[13611 len 320]
    mem[(32 * arg1.length) + 768 len 320] = code.data[13611 len 320]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require stor14
        require idx < 10
        if stor15 + (stor13 * block.timestamp - stor12 / 24 * 3600) >= stor14:
            mem[(32 * idx) + (32 * arg1.length) + 448] = stor14 * sub_2c4aa70b[mem[(32 * idx) + 128] << 240] / stor14
        else:
            mem[(32 * idx) + (32 * arg1.length) + 448] = (stor15 * sub_2c4aa70b[mem[(32 * idx) + 128] << 240]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * sub_2c4aa70b[mem[(32 * idx) + 128] << 240]) / stor14
        mem[(32 * idx) + (32 * arg1.length) + 128] = sub_2c4aa70b[mem[(32 * idx) + 158 len 2]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 158 len 2]
        mem[32] = 18
        require idx < 10
        mem[(32 * idx) + (32 * arg1.length) + 768] = sub_bacda826[mem[(32 * idx) + 158 len 2]]
        idx = idx + 1
        continue 
    return mem[(32 * arg1.length) + 128 len 320], mem[(32 * arg1.length) + 448 len 320], mem[(32 * arg1.length) + 768 len 320]
}

function sub_2789bd31(?) payable {
    require calldata.size - 4 >= 128
    require not stor4
    require block.timestamp > stor12
    require stor14
    if stor15 + (stor13 * block.timestamp - stor12 / 24 * 3600) >= stor14:
        require stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 <= msg.value
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
               args address(arg3), stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x7c640924 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if stor21[address(msg.sender)]:
            require stor14
            call msg.sender with:
               value stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require stor14
                emit 0x64da42cd: msg.sender, stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14
        if not stor21[address(msg.sender)]:
            call beneficiaryAddress with:
               value (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout(((stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0]));
        else:
            require stor14
            call beneficiaryAddress with:
               value (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] - (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout(((stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] - (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14)));
        if msg.value > stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14:
            call msg.sender with:
               value msg.value - (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit 0x64da42cd: msg.sender, msg.value - (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14)
    else:
        require (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 <= msg.value
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
               args address(arg3), (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x7c640924 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if stor21[address(msg.sender)]:
            require stor14
            call msg.sender with:
               value (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require stor14
                emit 0x64da42cd: msg.sender, (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14
        if not stor21[address(msg.sender)]:
            call beneficiaryAddress with:
               value ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout((((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0]));
        else:
            require stor14
            call beneficiaryAddress with:
               value ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] - ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout((((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] - ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14)));
        if msg.value > (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14:
            call msg.sender with:
               value msg.value - ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit 0x64da42cd: msg.sender, msg.value - ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14)
}

function sub_eb52d231(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require not stor4
    require block.timestamp > stor12
    require arg3.length < 255
    require stor20[arg1 << 248][arg2 << 240]
    require uint8(arg3.length) <= sub_bacda826[arg1 << 248]
    require uint8(arg3.length) > 0
    sub_bacda826[arg1 << 248] -= uint8(arg3.length)
    require stor14
    if stor15 + (stor13 * block.timestamp - stor12 / 24 * 3600) >= stor14:
        require stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 <= msg.value
        mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg3.length) + 128] = 0
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(arg2 << 240, 8)
            require not stor8[arg2 << 240][mem[(32 * idx) + 128]]
            require idx < arg3.length
            _323 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = mem[(32 * idx) + 128]
            require ext_code.size(sub_2b55c8af[arg2 << 240])
            staticcall sub_2b55c8af[arg2 << 240].0x6352211e with:
                    gas gas_remaining wei
                   args _323
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(ext_call.return_data[0]) == arg4
            idx = idx + 1
            continue 
        require ext_code.size(affiliateAddress)
        call affiliateAddress.0x39ad691a with:
             gas gas_remaining wei
            args address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(sub_63f0385cAddress)
        call sub_63f0385cAddress.0x328639f8 with:
             gas gas_remaining wei
            args address(arg4), arg1 << 248, arg2 << 240, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(affiliateAddress)
        staticcall affiliateAddress.0x7b95d3ea with:
                gas gas_remaining wei
               args address(arg4), stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x7c640924 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if stor21[address(msg.sender)]:
            require stor14
            call msg.sender with:
               value stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require stor14
                emit 0x64da42cd: msg.sender, stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14
        if not stor21[address(msg.sender)]:
            call beneficiaryAddress with:
               value (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout(((stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0]));
        else:
            require stor14
            call beneficiaryAddress with:
               value (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] - (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout(((stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] - (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14)));
        if msg.value > stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14:
            call msg.sender with:
               value msg.value - (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit 0x64da42cd: msg.sender, msg.value - (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14)
    else:
        require (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 <= msg.value
        mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg3.length) + 128] = 0
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(arg2 << 240, 8)
            require not stor8[arg2 << 240][mem[(32 * idx) + 128]]
            require idx < arg3.length
            _328 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = mem[(32 * idx) + 128]
            require ext_code.size(sub_2b55c8af[arg2 << 240])
            staticcall sub_2b55c8af[arg2 << 240].0x6352211e with:
                    gas gas_remaining wei
                   args _328
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(ext_call.return_data[0]) == arg4
            idx = idx + 1
            continue 
        require ext_code.size(affiliateAddress)
        call affiliateAddress.0x39ad691a with:
             gas gas_remaining wei
            args address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(sub_63f0385cAddress)
        call sub_63f0385cAddress.0x328639f8 with:
             gas gas_remaining wei
            args address(arg4), arg1 << 248, arg2 << 240, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(affiliateAddress)
        staticcall affiliateAddress.0x7b95d3ea with:
                gas gas_remaining wei
               args address(arg4), (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x7c640924 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if stor21[address(msg.sender)]:
            require stor14
            call msg.sender with:
               value (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require stor14
                emit 0x64da42cd: msg.sender, (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14
        if not stor21[address(msg.sender)]:
            call beneficiaryAddress with:
               value ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout((((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0]));
        else:
            require stor14
            call beneficiaryAddress with:
               value ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] - ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BeneficiaryPayout((((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] - ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14)));
        if msg.value > (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14:
            call msg.sender with:
               value msg.value - ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit 0x64da42cd: msg.sender, msg.value - ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14)
}

function sub_8b2f41a5(?) payable {
    require calldata.size - 4 >= 128
    require not stor4
    require block.timestamp > stor12
    require stor14
    require arg2 <= sub_bacda826[arg1 << 248]
    require arg2 > 0
    sub_bacda826[arg1 << 248] -= arg2
    if stor15 + (stor13 * block.timestamp - stor12 / 24 * 3600) >= stor14:
        if not arg3:
            require stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 <= msg.value
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
                   args msg.sender, stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(affiliateAddress)
                call affiliateAddress.0x7c640924 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if stor21[address(msg.sender)]:
                require stor14
                call msg.sender with:
                   value stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require stor14
                    emit 0x64da42cd: msg.sender, stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14
            if not stor21[address(msg.sender)]:
                call beneficiaryAddress with:
                   value (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout(((stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0]));
            else:
                require stor14
                call beneficiaryAddress with:
                   value (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] - (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout(((stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] - (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14)));
            call msg.sender with:
               value msg.value - (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(ratesAddress)
            staticcall ratesAddress.0x37cef791 with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] > 0
            require ext_call.return_data[32]
            require ext_code.size(arg3)
            call arg3.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ext_call.return_data[0] * stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_call.return_data[32]
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
                   args msg.sender, stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32]
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
                    require return_data.size >= 32
                    emit 0x617c9ad6: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg3
                call arg3.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xc1d94b74: address(arg3), (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0]
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(affiliateAddress)
                    call affiliateAddress.0x7c640924 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor21[address(msg.sender)]:
                    require stor14
                    call msg.sender with:
                       value stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32] * stor16 / stor14 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require stor14
                        emit 0x64da42cd: msg.sender, stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32] * stor16 / stor14
                if not stor21[address(msg.sender)]:
                    call beneficiaryAddress with:
                       value (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(((stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0]));
                else:
                    require stor14
                    call beneficiaryAddress with:
                       value (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0] - (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32] * stor16 / stor14) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(((stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0] - (stor14 * arg2 * sub_2c4aa70b[arg1 << 248] / stor14 * ext_call.return_data[0] / ext_call.return_data[32] * stor16 / stor14)));
    else:
        if not arg3:
            require (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 <= msg.value
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
                   args msg.sender, (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(affiliateAddress)
                call affiliateAddress.0x7c640924 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if stor21[address(msg.sender)]:
                require stor14
                call msg.sender with:
                   value (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require stor14
                    emit 0x64da42cd: msg.sender, (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14
            if not stor21[address(msg.sender)]:
                call beneficiaryAddress with:
                   value ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout((((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0]));
            else:
                require stor14
                call beneficiaryAddress with:
                   value ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] - ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout((((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] - ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14)));
            call msg.sender with:
               value msg.value - ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(ratesAddress)
            staticcall ratesAddress.0x37cef791 with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] > 0
            require ext_call.return_data[32]
            require ext_code.size(arg3)
            call arg3.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ext_call.return_data[0] * (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_call.return_data[32]
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
                   args msg.sender, (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32]
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
                    require return_data.size >= 32
                    emit 0x617c9ad6: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg3
                call arg3.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xc1d94b74: address(arg3), ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0]
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(affiliateAddress)
                    call affiliateAddress.0x7c640924 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor21[address(msg.sender)]:
                    require stor14
                    call msg.sender with:
                       value (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32] * stor16 / stor14 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require stor14
                        emit 0x64da42cd: msg.sender, (stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32] * stor16 / stor14
                if not stor21[address(msg.sender)]:
                    call beneficiaryAddress with:
                       value ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout((((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0]));
                else:
                    require stor14
                    call beneficiaryAddress with:
                       value ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0] - ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32] * stor16 / stor14) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout((((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32]) - ext_call.return_data[0] - ((stor15 * arg2 * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * arg2 * sub_2c4aa70b[arg1 << 248]) / stor14 * ext_call.return_data[0] / ext_call.return_data[32] * stor16 / stor14)));
}

function sub_8442c09b(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require not stor4
    require block.timestamp > stor12
    require arg3.length < 255
    require stor20[arg1 << 248][arg2 << 240]
    require uint8(arg3.length) <= sub_bacda826[arg1 << 248]
    require uint8(arg3.length) > 0
    sub_bacda826[arg1 << 248] -= uint8(arg3.length)
    require stor14
    if stor15 + (stor13 * block.timestamp - stor12 / 24 * 3600) >= stor14:
        if not arg4:
            require stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 <= msg.value
            mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[(32 * arg3.length) + 128] = 0
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(arg2 << 240, 8)
                require not stor8[arg2 << 240][mem[(32 * idx) + 128]]
                require idx < arg3.length
                _565 = mem[(32 * idx) + 128]
                mem[(32 * arg3.length) + 132] = mem[(32 * idx) + 128]
                require ext_code.size(sub_2b55c8af[arg2 << 240])
                staticcall sub_2b55c8af[arg2 << 240].0x6352211e with:
                        gas gas_remaining wei
                       args _565
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0]) == msg.sender
                idx = idx + 1
                continue 
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x39ad691a with:
                 gas gas_remaining wei
                args msg.sender, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(sub_63f0385cAddress)
            call sub_63f0385cAddress.0x328639f8 with:
                 gas gas_remaining wei
                args msg.sender, arg1 << 248, arg2 << 240, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(affiliateAddress)
            staticcall affiliateAddress.0x7b95d3ea with:
                    gas gas_remaining wei
                   args msg.sender, stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(affiliateAddress)
                call affiliateAddress.0x7c640924 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if stor21[address(msg.sender)]:
                require stor14
                call msg.sender with:
                   value stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require stor14
                    emit 0x64da42cd: msg.sender, stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14
            if not stor21[address(msg.sender)]:
                call beneficiaryAddress with:
                   value (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout(((stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0]));
            else:
                require stor14
                call beneficiaryAddress with:
                   value (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] - (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout(((stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) - ext_call.return_data[0] - (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 * stor16 / stor14)));
            if msg.value > stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14:
                call msg.sender with:
                   value msg.value - (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit 0x64da42cd: msg.sender, msg.value - (stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14)
        else:
            require ext_code.size(ratesAddress)
            staticcall ratesAddress.0x37cef791 with:
                    gas gas_remaining wei
                   args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] > 0
            require ext_call.return_data[32]
            mem[100] = msg.sender
            mem[132] = this.address
            mem[164] = ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]
            require ext_code.size(arg4)
            call arg4.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[(32 * arg3.length) + 128] = 0
            require ext_call.return_data[32]
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(arg2 << 240, 8)
                require not stor8[arg2 << 240][mem[(32 * idx) + 128]]
                require idx < arg3.length
                _570 = mem[(32 * idx) + 128]
                mem[(32 * arg3.length) + 132] = mem[(32 * idx) + 128]
                require ext_code.size(sub_2b55c8af[arg2 << 240])
                staticcall sub_2b55c8af[arg2 << 240].0x6352211e with:
                        gas gas_remaining wei
                       args _570
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0]) == msg.sender
                idx = idx + 1
                continue 
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x39ad691a with:
                 gas gas_remaining wei
                args msg.sender, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(sub_63f0385cAddress)
            call sub_63f0385cAddress.0x328639f8 with:
                 gas gas_remaining wei
                args msg.sender, arg1 << 248, arg2 << 240, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(affiliateAddress)
            staticcall affiliateAddress.0x7b95d3ea with:
                    gas gas_remaining wei
                   args msg.sender, ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg4:
                require ext_code.size(arg4)
                if ext_call.return_data[0] > 0:
                    call arg4.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0x617c9ad6: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg4
                call arg4.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, (ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xc1d94b74: address(arg4), (ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]) - ext_call.return_data[0]
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(affiliateAddress)
                    call affiliateAddress.0x7c640924 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor21[address(msg.sender)]:
                    require stor14
                    call msg.sender with:
                       value ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32] * stor16 / stor14 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require stor14
                        emit 0x64da42cd: msg.sender, ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32] * stor16 / stor14
                if not stor21[address(msg.sender)]:
                    call beneficiaryAddress with:
                       value (ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]) - ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(((ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]) - ext_call.return_data[0]));
                else:
                    require stor14
                    call beneficiaryAddress with:
                       value (ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]) - ext_call.return_data[0] - (ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32] * stor16 / stor14) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(((ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32]) - ext_call.return_data[0] - (ext_call.return_data[0] * stor14 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248] / stor14 / ext_call.return_data[32] * stor16 / stor14)));
    else:
        if not arg4:
            require (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 <= msg.value
            mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[(32 * arg3.length) + 128] = 0
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(arg2 << 240, 8)
                require not stor8[arg2 << 240][mem[(32 * idx) + 128]]
                require idx < arg3.length
                _575 = mem[(32 * idx) + 128]
                mem[(32 * arg3.length) + 132] = mem[(32 * idx) + 128]
                require ext_code.size(sub_2b55c8af[arg2 << 240])
                staticcall sub_2b55c8af[arg2 << 240].0x6352211e with:
                        gas gas_remaining wei
                       args _575
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0]) == msg.sender
                idx = idx + 1
                continue 
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x39ad691a with:
                 gas gas_remaining wei
                args msg.sender, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(sub_63f0385cAddress)
            call sub_63f0385cAddress.0x328639f8 with:
                 gas gas_remaining wei
                args msg.sender, arg1 << 248, arg2 << 240, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(affiliateAddress)
            staticcall affiliateAddress.0x7b95d3ea with:
                    gas gas_remaining wei
                   args msg.sender, (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(affiliateAddress)
                call affiliateAddress.0x7c640924 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if stor21[address(msg.sender)]:
                require stor14
                call msg.sender with:
                   value (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require stor14
                    emit 0x64da42cd: msg.sender, (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14
            if not stor21[address(msg.sender)]:
                call beneficiaryAddress with:
                   value ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout((((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0]));
            else:
                require stor14
                call beneficiaryAddress with:
                   value ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] - ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BeneficiaryPayout((((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) - ext_call.return_data[0] - ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 * stor16 / stor14)));
            if msg.value > (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14:
                call msg.sender with:
                   value msg.value - ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit 0x64da42cd: msg.sender, msg.value - ((stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14)
        else:
            require ext_code.size(ratesAddress)
            staticcall ratesAddress.0x37cef791 with:
                    gas gas_remaining wei
                   args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] > 0
            require ext_call.return_data[32]
            mem[100] = msg.sender
            mem[132] = this.address
            mem[164] = ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]
            require ext_code.size(arg4)
            call arg4.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[(32 * arg3.length) + 128] = 0
            require ext_call.return_data[32]
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(arg2 << 240, 8)
                require not stor8[arg2 << 240][mem[(32 * idx) + 128]]
                require idx < arg3.length
                _580 = mem[(32 * idx) + 128]
                mem[(32 * arg3.length) + 132] = mem[(32 * idx) + 128]
                require ext_code.size(sub_2b55c8af[arg2 << 240])
                staticcall sub_2b55c8af[arg2 << 240].0x6352211e with:
                        gas gas_remaining wei
                       args _580
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0]) == msg.sender
                idx = idx + 1
                continue 
            require ext_code.size(affiliateAddress)
            call affiliateAddress.0x39ad691a with:
                 gas gas_remaining wei
                args msg.sender, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(sub_63f0385cAddress)
            call sub_63f0385cAddress.0x328639f8 with:
                 gas gas_remaining wei
                args msg.sender, arg1 << 248, arg2 << 240, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(affiliateAddress)
            staticcall affiliateAddress.0x7b95d3ea with:
                    gas gas_remaining wei
                   args msg.sender, ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg4:
                require ext_code.size(arg4)
                if ext_call.return_data[0] > 0:
                    call arg4.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0x617c9ad6: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg4
                call arg4.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, (ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xc1d94b74: address(arg4), (ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]) - ext_call.return_data[0]
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(affiliateAddress)
                    call affiliateAddress.0x7c640924 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor21[address(msg.sender)]:
                    require stor14
                    call msg.sender with:
                       value ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32] * stor16 / stor14 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        require stor14
                        emit 0x64da42cd: msg.sender, ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32] * stor16 / stor14
                if not stor21[address(msg.sender)]:
                    call beneficiaryAddress with:
                       value (ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]) - ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(((ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]) - ext_call.return_data[0]));
                else:
                    require stor14
                    call beneficiaryAddress with:
                       value (ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]) - ext_call.return_data[0] - (ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32] * stor16 / stor14) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BeneficiaryPayout(((ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32]) - ext_call.return_data[0] - (ext_call.return_data[0] * (stor15 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) + (stor13 * block.timestamp - stor12 / 24 * 3600 * uint8(arg3.length) * sub_2c4aa70b[arg1 << 248]) / stor14 / ext_call.return_data[32] * stor16 / stor14)));
}



}
