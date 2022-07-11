contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9d3c8cc4Address;
address beneficiaryAddress;
uint8 stor4;
mapping of uint8 stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
address stor16;
address stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function sub_9d3c8cc4(?) {
    return sub_9d3c8cc4Address
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

function setMaintenanceStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    stor4 = uint8(arg1)
    emit 0xf887ef1c: arg1
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
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, beneficiaryAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_db2e5007(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    require ext_code.size(stor14)
    staticcall stor14.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != stor22:
        idx = stor22
        while idx <= arg1 + stor22:
            if idx == ext_call.return_data[0]:
            require ext_code.size(stor14)
            staticcall stor14.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.tokens(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[100] = address(ext_call.return_data[0])
            mem[132] = uint8(ext_call.return_data[0])
            require ext_code.size(stor15)
            call stor15.mint(address arg1, uint8 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), uint8(ext_call.return_data[0])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor22++
            idx = idx + 1
            continue 
}

function sub_d98dd887(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    require ext_code.size(stor12)
    staticcall stor12.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != stor21:
        idx = stor21
        while idx <= arg1 + stor21:
            if idx == ext_call.return_data[0]:
            require ext_code.size(stor12)
            staticcall stor12.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.carType(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = address(ext_call.return_data[0])
            mem[132] = uint16(ext_call.return_data[0])
            require ext_code.size(stor13)
            call stor13.mint(address arg1, uint16 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), uint16(ext_call.return_data[0])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor21++
            idx = idx + 1
            continue 
}

function sub_8e146833(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    require ext_code.size(stor10)
    staticcall stor10.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != stor20:
        idx = stor20
        while idx <= arg1 + stor20:
            if idx == ext_call.return_data[0]:
            require ext_code.size(stor10)
            staticcall stor10.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.'A1<;' with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0x352926a800000000000000000000000000000000000000000000000000000000
            mem[100] = address(ext_call.return_data[0])
            mem[132] = uint8(ext_call.return_data[0])
            mem[164] = 1
            require ext_code.size(stor11)
            call stor11.mint(address arg1, uint8 arg2, uint8 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0] << 248, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor20++
            idx = idx + 1
            continue 
}

function sub_8a9d91fa(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    require ext_code.size(stor16)
    staticcall stor16.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != stor23:
        idx = stor23
        while idx <= arg1 + stor23:
            if idx == ext_call.return_data[0]:
            require ext_code.size(stor16)
            staticcall stor16.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor16)
            staticcall stor16.tokens(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[96] = 0xeee0d7a800000000000000000000000000000000000000000000000000000000
            mem[100] = address(ext_call.return_data[0])
            mem[132] = uint8(ext_call.return_data[0])
            mem[164] = uint8(ext_call.return_data[32])
            require ext_code.size(stor17)
            call stor17.0xeee0d7a8 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0] << 248, uint8(ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor23++
            idx = idx + 1
            continue 
}

function sub_302dfcba(?) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
    require ext_code.size(stor8)
    staticcall stor8.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != stor19:
        idx = stor19
        while idx <= arg1 + stor19:
            if idx == ext_call.return_data[0]:
            require ext_code.size(stor8)
            staticcall stor8.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            staticcall stor8.tokens(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[100] = address(ext_call.return_data[0])
            mem[132] = uint8(ext_call.return_data[0])
            mem[164] = uint8(ext_call.return_data[32])
            mem[196] = uint64(ext_call.return_data[64])
            require ext_code.size(stor9)
            call stor9.0x86f91719 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0] << 248, ext_call.return_data[32] << 248, uint64(ext_call.return_data[64])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor19++
            idx = idx + 1
            continue 
}

function sub_52049d66(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[msg.sender]:
        if stor19 < arg1:
            if var14001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor8)
                call stor8.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor19--
                if stor19 - 1:
                    var14001 = var14001 - 1
                    continue 
        else:
            if var14001 <= stor19 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor8)
                call stor8.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor19--
                if stor19 - 1:
                    var14001 = var14001 - 1
                    continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        if stor19 < arg1:
            if var15001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor8)
                call stor8.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor19--
                if stor19 - 1:
                    var15001 = var15001 - 1
                    continue 
        else:
            if var15001 <= stor19 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor8)
                call stor8.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor19--
                if stor19 - 1:
                    var15001 = var15001 - 1
                    continue 
}

function sub_e2629bc3(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[msg.sender]:
        if stor18 < arg1:
            if var14001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor6)
                call stor6.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor18--
                if stor18 - 1:
                    var14001 = var14001 - 1
                    continue 
        else:
            if var14001 <= stor18 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor6)
                call stor6.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor18--
                if stor18 - 1:
                    var14001 = var14001 - 1
                    continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        if stor18 < arg1:
            if var15001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor6)
                call stor6.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor18--
                if stor18 - 1:
                    var15001 = var15001 - 1
                    continue 
        else:
            if var15001 <= stor18 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor6)
                call stor6.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor18--
                if stor18 - 1:
                    var15001 = var15001 - 1
                    continue 
}

function sub_166c7459(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[msg.sender]:
        if stor21 < arg1:
            if var14001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor12)
                call stor12.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor21--
                if stor21 - 1:
                    var14001 = var14001 - 1
                    continue 
        else:
            if var14001 <= stor21 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor12)
                call stor12.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor21--
                if stor21 - 1:
                    var14001 = var14001 - 1
                    continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        if stor21 < arg1:
            if var15001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor12)
                call stor12.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor21--
                if stor21 - 1:
                    var15001 = var15001 - 1
                    continue 
        else:
            if var15001 <= stor21 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor12)
                call stor12.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor21--
                if stor21 - 1:
                    var15001 = var15001 - 1
                    continue 
}

function sub_b1d76ddf(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[msg.sender]:
        if stor23 < arg1:
            if var14001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor16)
                call stor16.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor23--
                if stor23 - 1:
                    var14001 = var14001 - 1
                    continue 
        else:
            if var14001 <= stor23 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor16)
                call stor16.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor23--
                if stor23 - 1:
                    var14001 = var14001 - 1
                    continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        if stor23 < arg1:
            if var15001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor16)
                call stor16.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor23--
                if stor23 - 1:
                    var15001 = var15001 - 1
                    continue 
        else:
            if var15001 <= stor23 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor16)
                call stor16.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor23--
                if stor23 - 1:
                    var15001 = var15001 - 1
                    continue 
}

function sub_df10c5ee(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[msg.sender]:
        if stor20 < arg1:
            if var14001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor10)
                call stor10.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor20--
                if stor20 - 1:
                    var14001 = var14001 - 1
                    continue 
        else:
            if var14001 <= stor20 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor10)
                call stor10.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor20--
                if stor20 - 1:
                    var14001 = var14001 - 1
                    continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        if stor20 < arg1:
            if var15001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor10)
                call stor10.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor20--
                if stor20 - 1:
                    var15001 = var15001 - 1
                    continue 
        else:
            if var15001 <= stor20 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor10)
                call stor10.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor20--
                if stor20 - 1:
                    var15001 = var15001 - 1
                    continue 
}

function sub_e69bb943(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[msg.sender]:
        if stor22 < arg1:
            if var14001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor14)
                call stor14.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor22--
                if stor22 - 1:
                    var14001 = var14001 - 1
                    continue 
        else:
            if var14001 <= stor22 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var14001
                require ext_code.size(stor14)
                call stor14.0x42966c68 with:
                     gas gas_remaining wei
                    args var14001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor22--
                if stor22 - 1:
                    var14001 = var14001 - 1
                    continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        if stor22 < arg1:
            if var15001 <= 0:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor14)
                call stor14.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor22--
                if stor22 - 1:
                    var15001 = var15001 - 1
                    continue 
        else:
            if var15001 <= stor22 - arg1:
                mem[96] = 0x42966c6800000000000000000000000000000000000000000000000000000000
                mem[100] = var15001
                require ext_code.size(stor14)
                call stor14.0x42966c68 with:
                     gas gas_remaining wei
                    args var15001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor22--
                if stor22 - 1:
                    var15001 = var15001 - 1
                    continue 
}

function sub_e6f469ff(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor5[msg.sender]:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _41 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0xc7bc2e1a with:
                 gas gas_remaining wei
                args stor11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0xda80ed09 with:
                 gas gas_remaining wei
                args stor13
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0x90e8aa9a with:
                 gas gas_remaining wei
                args stor15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].setCitizen(address arg1) with:
                 gas gas_remaining wei
                args stor7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0x9a9d0d68 with:
                 gas gas_remaining wei
                args stor9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length) + 128] = 0xdd9683f100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = stor17
            require ext_code.size(address(_41))
            call address(_41).0xdd9683f1 with:
                 gas gas_remaining wei
                args stor17
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _44 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0xc7bc2e1a with:
                 gas gas_remaining wei
                args stor11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0xda80ed09 with:
                 gas gas_remaining wei
                args stor13
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0x90e8aa9a with:
                 gas gas_remaining wei
                args stor15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].setCitizen(address arg1) with:
                 gas gas_remaining wei
                args stor7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0x9a9d0d68 with:
                 gas gas_remaining wei
                args stor9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length) + 128] = 0xdd9683f100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = stor17
            require ext_code.size(address(_44))
            call address(_44).0xdd9683f1 with:
                 gas gas_remaining wei
                args stor17
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_1b8247b5(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[msg.sender]:
        require ext_code.size(stor6)
        staticcall stor6.0x18160ddd with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != stor18:
            idx = stor18
            while idx <= arg1 + stor18:
                if idx == ext_call.return_data[0]:
                require ext_code.size(stor6)
                staticcall stor6.0x6352211e with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor6)
                staticcall stor6.tokens(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(stor6)
                staticcall stor6.getSpecial(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _66 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                _68 = mem[64]
                mem[mem[64]] = 0xcdff735e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                s = 0
                while s < 224:
                    mem[s + _68 + 36] = mem[s + _66]
                    s = s + 32
                    continue 
                mem[_68 + 260] = 1
                mem[_68 + 292] = ext_call.return_data[32]
                require ext_code.size(stor7)
                call stor7.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _68 + -mem[64] + 320]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor18++
                idx = idx + 1
                continue 
    else:
        if msg.sender != this.address:
            revert with 0, 32, 21, 0xfe4f6e6c79206d616e616765727320616c6c6f77656400000000000000000000
        require ext_code.size(stor6)
        staticcall stor6.0x18160ddd with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != stor18:
            idx = stor18
            while idx <= arg1 + stor18:
                if idx == ext_call.return_data[0]:
                require ext_code.size(stor6)
                staticcall stor6.0x6352211e with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor6)
                staticcall stor6.tokens(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(stor6)
                staticcall stor6.getSpecial(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _67 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                _69 = mem[64]
                mem[mem[64]] = 0xcdff735e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                s = 0
                while s < 224:
                    mem[s + _69 + 36] = mem[s + _67]
                    s = s + 32
                    continue 
                mem[_69 + 260] = 1
                mem[_69 + 292] = ext_call.return_data[32]
                require ext_code.size(stor7)
                call stor7.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _69 + -mem[64] + 320]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor18++
                idx = idx + 1
                continue 
}



}
