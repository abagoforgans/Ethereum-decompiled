contract main {




// =====================  Runtime code  =====================


address owner;
address secureAddress;
uint8 stor10;
uint256 stor10;
uint256 stor11;
array of uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
mapping of address wallets;
mapping of uint256 depositOf;
mapping of struct sub_56084664;
uint256 sub_955a015b;
uint256 minPayment;
address sub_fb90f9e9Address;
address sub_b82b245eAddress;
address sub_7024dc2eAddress;
address stor853B;
uint256 finishTime;
uint256 stor8;
uint256 stor9;

function depositOf(address arg1) {
    require calldata.size - 4 >= 32
    return depositOf[address(arg1)]
}

function minPayment() {
    return minPayment
}

function sub_56084664(?) {
    require calldata.size - 4 >= 32
    return sub_56084664[arg1].field_0, 
           sub_56084664[arg1].field_256,
           sub_56084664[arg1].field_512,
           sub_56084664[arg1].field_768,
           sub_56084664[arg1].field_1024
}

function finishTime() {
    return finishTime
}

function sub_7024dc2e(?) {
    return sub_7024dc2eAddress
}

function wallets(uint256 arg1) {
    require calldata.size - 4 >= 32
    return wallets[arg1]
}

function owner() {
    return owner
}

function sub_955a015b(?) {
    return sub_955a015b
}

function secure() {
    return secureAddress
}

function sub_b82b245e(?) {
    return sub_b82b245eAddress
}

function sub_fb90f9e9(?) {
    return sub_fb90f9e9Address
}

function lastWinner() {
    return sub_56084664[stor2].field_0
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_6d427fa3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minPayment = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_63b4b112(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    secureAddress = arg1
    return 1
}

function getFunds() payable {
    if sub_fb90f9e9Address != msg.sender:
        if sub_b82b245eAddress != msg.sender:
            require msg.sender == sub_7024dc2eAddress
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    depositOf[msg.sender] = 0
    call msg.sender with:
       value depositOf[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(depositOf[msg.sender], msg.sender);
}

function _fallback() payable {
    if sub_fb90f9e9Address != msg.sender:
        if sub_b82b245eAddress != msg.sender:
            if sub_7024dc2eAddress != msg.sender:
                if msg.value:
                    revert with 0, 'You can't do nonzero transaction'
                if not depositOf[address(msg.sender)]:
                    revert with 0, 'You have zero balance'
                depositOf[msg.sender] = 0
                call msg.sender with:
                   value depositOf[msg.sender] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawn(depositOf[msg.sender], msg.sender);
}

function participate() {
    if msg.sender == sub_fb90f9e9Address:
        require secureAddress
        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor8, 1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor8 = delegate.return_data[0]
        require ext_code.size(wallets[0])
        staticcall wallets[0].totalPlayers() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wallets[1])
        staticcall wallets[1].totalPlayers() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor853B)
        staticcall stor853B.totalPlayers() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args delegate.return_data[0], uint8(ext_call.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor10) = delegate.return_data[0]
        if block.timestamp < finishTime:
            if uint256(stor10) >= stor9:
                require ext_code.size(sub_fb90f9e9Address)
                call sub_fb90f9e9Address.0xead3a0fe with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor13, ext_call.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor13 = delegate.return_data[0]
                require ext_code.size(sub_b82b245eAddress)
                call sub_b82b245eAddress.0xead3a0fe with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], ext_call.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor13 = delegate.return_data[0]
                require ext_code.size(sub_7024dc2eAddress)
                call sub_7024dc2eAddress.0xead3a0fe with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args delegate.return_data[0], ext_call.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor13 = delegate.return_data[0]
                if delegate.return_data[0]:
                    idx = 0
                    while uint8(idx) < 3:
                        mem[0] = uint8(idx)
                        mem[32] = 16
                        require ext_code.size(wallets[idx << 248])
                        staticcall wallets[idx << 248].totalPlayers() with:
                                gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[31 len 1] > 0:
                            stor12.length++
                            mem[0] = 12
                            stor12[stor12.length.field_5].field_0 = !(255 * 256^stor12.length % 32) and stor12[stor12.length.field_5].field_0 or 256^stor12.length % 32 * uint8(idx)
                        idx = idx + 1
                        continue 
                    require ext_code.size(secureAddress)
                    staticcall secureAddress.0x74550831 with:
                            gas gas_remaining wei
                           args 0, uint32(stor12.length), uint8(stor10), sub_955a015b, stor8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[31 len 1] < stor12.length
                    stor11 = stor('array', ('mask_shl', 3, 5, -5, ('ext_call.return_data', 0, 32)), ('name', 'stor12', 12))[uint8(ext_call.return_data[0])]
                    require ext_code.size(wallets[stor11])
                    staticcall wallets[stor11].totalPlayers() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor10) = ext_call.return_data[31 len 1]
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor13, 15
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], 100
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor14 = delegate.return_data[0]
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor13, delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor15 = delegate.return_data[0]
                    idx = 1
                    s = 0
                    s = 0
                    s = 0
                    while uint8(idx) <= uint256(stor10):
                        require ext_code.size(wallets[stor11])
                        staticcall wallets[stor11].0x7e0ecc00 with:
                                gas gas_remaining wei
                               args uint8(idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[128] = ext_call.return_data[32]
                        mem[96] = address(ext_call.return_data[0])
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 10000
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(wallets[stor11])
                        staticcall wallets[stor11].totalBets() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor15, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], 10000
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args s, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[164] = depositOf[address(ext_call.return_data[0])]
                        mem[196] = delegate.return_data[0]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args depositOf[address(ext_call.return_data[0])], delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = 17
                        depositOf[address(ext_call.return_data[0])] = delegate.return_data[0]
                        mem[160] = delegate.return_data[0]
                        emit Deposited(delegate.return_data[0], address(ext_call.return_data[0]));
                        idx = idx + 1
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        s = delegate.return_data[0]
                        continue 
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor13, _2128 * None
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args depositOf[stor0], delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    depositOf[stor0] = delegate.return_data[0]
                    emit Deposited(delegate.return_data[0], owner);
                    sub_56084664[stor2].field_0 = wallets[stor11]
                    sub_56084664[stor2].field_256 = block.timestamp
                    sub_56084664[stor2].field_512 = sub_fb90f9e9Address
                    sub_56084664[stor2].field_768 = sub_b82b245eAddress
                    sub_56084664[stor2].field_1024 = sub_7024dc2eAddress
                    emit 0x666f956e: stor13, wallets[stor11]
                    stor13 = 0
                    stor12.length = 0
                    idx = 0
                    while stor12.length + 31 / 32 > idx:
                        stor12[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args block.timestamp, 24 * 3600
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    finishTime = delegate.return_data[0]
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_955a015b, 1
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_955a015b = delegate.return_data[0]
                    require ext_code.size(wallets[0])
                    call wallets[0].closeContract() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(wallets[1])
                    call wallets[1].closeContract() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor853B)
                    call stor853B.closeContract() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'break on switch'
                    create contract with 0 wei
                                    code: code.data[8240 len 1406], sub_955a015b, minPayment
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_fb90f9e9Address = address(create.new_address)
                    wallets[0] = address(create.new_address)
                    create contract with 0 wei
                                    code: code.data[8240 len 1406], sub_955a015b, minPayment
                    sub_b82b245eAddress = address(create.new_address)
                    wallets[1] = address(create.new_address)
                    create contract with 0 wei
                                    code: code.data[8240 len 1406], sub_955a015b, minPayment
                    sub_7024dc2eAddress = address(create.new_address)
                    stor853B = address(create.new_address)
        else:
            if 1 == uint256(stor10):
                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args block.timestamp, 24 * 3600
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                finishTime = delegate.return_data[0]
            else:
                if block.timestamp >= finishTime:
                    require ext_code.size(sub_fb90f9e9Address)
                    call sub_fb90f9e9Address.0xead3a0fe with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor13, ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor13 = delegate.return_data[0]
                    require ext_code.size(sub_b82b245eAddress)
                    call sub_b82b245eAddress.0xead3a0fe with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor13 = delegate.return_data[0]
                    require ext_code.size(sub_7024dc2eAddress)
                    call sub_7024dc2eAddress.0xead3a0fe with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor13 = delegate.return_data[0]
                    if delegate.return_data[0]:
                        idx = 0
                        while uint8(idx) < 3:
                            mem[0] = uint8(idx)
                            mem[32] = 16
                            require ext_code.size(wallets[idx << 248])
                            staticcall wallets[idx << 248].totalPlayers() with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[31 len 1] > 0:
                                stor12.length++
                                mem[0] = 12
                                stor12[stor12.length.field_5].field_0 = !(255 * 256^stor12.length % 32) and stor12[stor12.length.field_5].field_0 or 256^stor12.length % 32 * uint8(idx)
                            idx = idx + 1
                            continue 
                        require ext_code.size(secureAddress)
                        staticcall secureAddress.0x74550831 with:
                                gas gas_remaining wei
                               args 0, uint32(stor12.length), uint8(stor10), sub_955a015b, stor8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[31 len 1] < stor12.length
                        stor11 = stor('array', ('mask_shl', 3, 5, -5, ('ext_call.return_data', 0, 32)), ('name', 'stor12', 12))[uint8(ext_call.return_data[0])]
                        require ext_code.size(wallets[stor11])
                        staticcall wallets[stor11].totalPlayers() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor10) = ext_call.return_data[31 len 1]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, 15
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], 100
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor14 = delegate.return_data[0]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor15 = delegate.return_data[0]
                        idx = 1
                        s = 0
                        s = 0
                        s = 0
                        while uint8(idx) <= uint256(stor10):
                            require ext_code.size(wallets[stor11])
                            staticcall wallets[stor11].0x7e0ecc00 with:
                                    gas gas_remaining wei
                                   args uint8(idx)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[128] = ext_call.return_data[32]
                            mem[96] = address(ext_call.return_data[0])
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 10000
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(wallets[stor11])
                            staticcall wallets[stor11].totalBets() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor15, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], 10000
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args s, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[164] = depositOf[address(ext_call.return_data[0])]
                            mem[196] = delegate.return_data[0]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args depositOf[address(ext_call.return_data[0])], delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = 17
                            depositOf[address(ext_call.return_data[0])] = delegate.return_data[0]
                            mem[160] = delegate.return_data[0]
                            emit Deposited(delegate.return_data[0], address(ext_call.return_data[0]));
                            idx = idx + 1
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            continue 
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, _2130 * None
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args depositOf[stor0], delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        depositOf[stor0] = delegate.return_data[0]
                        emit Deposited(delegate.return_data[0], owner);
                        sub_56084664[stor2].field_0 = wallets[stor11]
                        sub_56084664[stor2].field_256 = block.timestamp
                        sub_56084664[stor2].field_512 = sub_fb90f9e9Address
                        sub_56084664[stor2].field_768 = sub_b82b245eAddress
                        sub_56084664[stor2].field_1024 = sub_7024dc2eAddress
                        emit 0x666f956e: stor13, wallets[stor11]
                        stor13 = 0
                        stor12.length = 0
                        idx = 0
                        while stor12.length + 31 / 32 > idx:
                            stor12[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args block.timestamp, 24 * 3600
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        finishTime = delegate.return_data[0]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_955a015b, 1
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_955a015b = delegate.return_data[0]
                        require ext_code.size(wallets[0])
                        call wallets[0].closeContract() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(wallets[1])
                        call wallets[1].closeContract() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor853B)
                        call stor853B.closeContract() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'break on switch'
                        create contract with 0 wei
                                        code: code.data[8240 len 1406], sub_955a015b, minPayment
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_fb90f9e9Address = address(create.new_address)
                        wallets[0] = address(create.new_address)
                        create contract with 0 wei
                                        code: code.data[8240 len 1406], sub_955a015b, minPayment
                        sub_b82b245eAddress = address(create.new_address)
                        wallets[1] = address(create.new_address)
                        create contract with 0 wei
                                        code: code.data[8240 len 1406], sub_955a015b, minPayment
                        sub_7024dc2eAddress = address(create.new_address)
                        stor853B = address(create.new_address)
                else:
                    if uint256(stor10) >= stor9:
                        require ext_code.size(sub_fb90f9e9Address)
                        call sub_fb90f9e9Address.0xead3a0fe with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor13 = delegate.return_data[0]
                        require ext_code.size(sub_b82b245eAddress)
                        call sub_b82b245eAddress.0xead3a0fe with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor13 = delegate.return_data[0]
                        require ext_code.size(sub_7024dc2eAddress)
                        call sub_7024dc2eAddress.0xead3a0fe with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor13 = delegate.return_data[0]
                        if delegate.return_data[0]:
                            idx = 0
                            while uint8(idx) < 3:
                                mem[0] = uint8(idx)
                                mem[32] = 16
                                require ext_code.size(wallets[idx << 248])
                                staticcall wallets[idx << 248].totalPlayers() with:
                                        gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[31 len 1] > 0:
                                    stor12.length++
                                    mem[0] = 12
                                    stor12[stor12.length.field_5].field_0 = !(255 * 256^stor12.length % 32) and stor12[stor12.length.field_5].field_0 or 256^stor12.length % 32 * uint8(idx)
                                idx = idx + 1
                                continue 
                            require ext_code.size(secureAddress)
                            staticcall secureAddress.0x74550831 with:
                                    gas gas_remaining wei
                                   args 0, uint32(stor12.length), uint8(stor10), sub_955a015b, stor8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[31 len 1] < stor12.length
                            stor11 = stor('array', ('mask_shl', 3, 5, -5, ('ext_call.return_data', 0, 32)), ('name', 'stor12', 12))[uint8(ext_call.return_data[0])]
                            require ext_code.size(wallets[stor11])
                            staticcall wallets[stor11].totalPlayers() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor10) = ext_call.return_data[31 len 1]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, 15
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], 100
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor14 = delegate.return_data[0]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor15 = delegate.return_data[0]
                            idx = 1
                            s = 0
                            s = 0
                            s = 0
                            while uint8(idx) <= uint256(stor10):
                                require ext_code.size(wallets[stor11])
                                staticcall wallets[stor11].0x7e0ecc00 with:
                                        gas gas_remaining wei
                                       args uint8(idx)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[128] = ext_call.return_data[32]
                                mem[96] = address(ext_call.return_data[0])
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[32], 10000
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(wallets[stor11])
                                staticcall wallets[stor11].totalBets() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], ext_call.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor15, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], 10000
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args s, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[164] = depositOf[address(ext_call.return_data[0])]
                                mem[196] = delegate.return_data[0]
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args depositOf[address(ext_call.return_data[0])], delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(ext_call.return_data[0])
                                mem[32] = 17
                                depositOf[address(ext_call.return_data[0])] = delegate.return_data[0]
                                mem[160] = delegate.return_data[0]
                                emit Deposited(delegate.return_data[0], address(ext_call.return_data[0]));
                                idx = idx + 1
                                s = delegate.return_data[0]
                                s = delegate.return_data[0]
                                s = delegate.return_data[0]
                                continue 
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, _2132 * None
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args depositOf[stor0], delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            depositOf[stor0] = delegate.return_data[0]
                            emit Deposited(delegate.return_data[0], owner);
                            sub_56084664[stor2].field_0 = wallets[stor11]
                            sub_56084664[stor2].field_256 = block.timestamp
                            sub_56084664[stor2].field_512 = sub_fb90f9e9Address
                            sub_56084664[stor2].field_768 = sub_b82b245eAddress
                            sub_56084664[stor2].field_1024 = sub_7024dc2eAddress
                            emit 0x666f956e: stor13, wallets[stor11]
                            stor13 = 0
                            stor12.length = 0
                            idx = 0
                            while stor12.length + 31 / 32 > idx:
                                stor12[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args block.timestamp, 24 * 3600
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            finishTime = delegate.return_data[0]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_955a015b, 1
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_955a015b = delegate.return_data[0]
                            require ext_code.size(wallets[0])
                            call wallets[0].closeContract() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(wallets[1])
                            call wallets[1].closeContract() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor853B)
                            call stor853B.closeContract() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'break on switch'
                            create contract with 0 wei
                                            code: code.data[8240 len 1406], sub_955a015b, minPayment
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_fb90f9e9Address = address(create.new_address)
                            wallets[0] = address(create.new_address)
                            create contract with 0 wei
                                            code: code.data[8240 len 1406], sub_955a015b, minPayment
                            sub_b82b245eAddress = address(create.new_address)
                            wallets[1] = address(create.new_address)
                            create contract with 0 wei
                                            code: code.data[8240 len 1406], sub_955a015b, minPayment
                            sub_7024dc2eAddress = address(create.new_address)
                            stor853B = address(create.new_address)
    else:
        if msg.sender == sub_b82b245eAddress:
            require secureAddress
            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor8, 1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor8 = delegate.return_data[0]
            require ext_code.size(wallets[0])
            staticcall wallets[0].totalPlayers() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wallets[1])
            staticcall wallets[1].totalPlayers() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor853B)
            staticcall stor853B.totalPlayers() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], uint8(ext_call.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor10) = delegate.return_data[0]
            if block.timestamp < finishTime:
                if uint256(stor10) >= stor9:
                    require ext_code.size(sub_fb90f9e9Address)
                    call sub_fb90f9e9Address.0xead3a0fe with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor13, ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor13 = delegate.return_data[0]
                    require ext_code.size(sub_b82b245eAddress)
                    call sub_b82b245eAddress.0xead3a0fe with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor13 = delegate.return_data[0]
                    require ext_code.size(sub_7024dc2eAddress)
                    call sub_7024dc2eAddress.0xead3a0fe with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor13 = delegate.return_data[0]
                    if delegate.return_data[0]:
                        idx = 0
                        while uint8(idx) < 3:
                            mem[0] = uint8(idx)
                            mem[32] = 16
                            require ext_code.size(wallets[idx << 248])
                            staticcall wallets[idx << 248].totalPlayers() with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[31 len 1] > 0:
                                stor12.length++
                                mem[0] = 12
                                stor12[stor12.length.field_5].field_0 = !(255 * 256^stor12.length % 32) and stor12[stor12.length.field_5].field_0 or 256^stor12.length % 32 * uint8(idx)
                            idx = idx + 1
                            continue 
                        require ext_code.size(secureAddress)
                        staticcall secureAddress.0x74550831 with:
                                gas gas_remaining wei
                               args 0, uint32(stor12.length), uint8(stor10), sub_955a015b, stor8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[31 len 1] < stor12.length
                        stor11 = stor('array', ('mask_shl', 3, 5, -5, ('ext_call.return_data', 0, 32)), ('name', 'stor12', 12))[uint8(ext_call.return_data[0])]
                        require ext_code.size(wallets[stor11])
                        staticcall wallets[stor11].totalPlayers() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor10) = ext_call.return_data[31 len 1]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, 15
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], 100
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor14 = delegate.return_data[0]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor15 = delegate.return_data[0]
                        idx = 1
                        s = 0
                        s = 0
                        s = 0
                        while uint8(idx) <= uint256(stor10):
                            require ext_code.size(wallets[stor11])
                            staticcall wallets[stor11].0x7e0ecc00 with:
                                    gas gas_remaining wei
                                   args uint8(idx)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[128] = ext_call.return_data[32]
                            mem[96] = address(ext_call.return_data[0])
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 10000
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(wallets[stor11])
                            staticcall wallets[stor11].totalBets() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor15, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], 10000
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args s, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[164] = depositOf[address(ext_call.return_data[0])]
                            mem[196] = delegate.return_data[0]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args depositOf[address(ext_call.return_data[0])], delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = 17
                            depositOf[address(ext_call.return_data[0])] = delegate.return_data[0]
                            mem[160] = delegate.return_data[0]
                            emit Deposited(delegate.return_data[0], address(ext_call.return_data[0]));
                            idx = idx + 1
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            continue 
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, _2134 * None
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args depositOf[stor0], delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        depositOf[stor0] = delegate.return_data[0]
                        emit Deposited(delegate.return_data[0], owner);
                        sub_56084664[stor2].field_0 = wallets[stor11]
                        sub_56084664[stor2].field_256 = block.timestamp
                        sub_56084664[stor2].field_512 = sub_fb90f9e9Address
                        sub_56084664[stor2].field_768 = sub_b82b245eAddress
                        sub_56084664[stor2].field_1024 = sub_7024dc2eAddress
                        emit 0x666f956e: stor13, wallets[stor11]
                        stor13 = 0
                        stor12.length = 0
                        idx = 0
                        while stor12.length + 31 / 32 > idx:
                            stor12[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args block.timestamp, 24 * 3600
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        finishTime = delegate.return_data[0]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_955a015b, 1
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_955a015b = delegate.return_data[0]
                        require ext_code.size(wallets[0])
                        call wallets[0].closeContract() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(wallets[1])
                        call wallets[1].closeContract() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor853B)
                        call stor853B.closeContract() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'break on switch'
                        create contract with 0 wei
                                        code: code.data[8240 len 1406], sub_955a015b, minPayment
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_fb90f9e9Address = address(create.new_address)
                        wallets[0] = address(create.new_address)
                        create contract with 0 wei
                                        code: code.data[8240 len 1406], sub_955a015b, minPayment
                        sub_b82b245eAddress = address(create.new_address)
                        wallets[1] = address(create.new_address)
                        create contract with 0 wei
                                        code: code.data[8240 len 1406], sub_955a015b, minPayment
                        sub_7024dc2eAddress = address(create.new_address)
                        stor853B = address(create.new_address)
            else:
                if 1 == uint256(stor10):
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args block.timestamp, 24 * 3600
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    finishTime = delegate.return_data[0]
                else:
                    if block.timestamp >= finishTime:
                        require ext_code.size(sub_fb90f9e9Address)
                        call sub_fb90f9e9Address.0xead3a0fe with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor13 = delegate.return_data[0]
                        require ext_code.size(sub_b82b245eAddress)
                        call sub_b82b245eAddress.0xead3a0fe with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor13 = delegate.return_data[0]
                        require ext_code.size(sub_7024dc2eAddress)
                        call sub_7024dc2eAddress.0xead3a0fe with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor13 = delegate.return_data[0]
                        if delegate.return_data[0]:
                            idx = 0
                            while uint8(idx) < 3:
                                mem[0] = uint8(idx)
                                mem[32] = 16
                                require ext_code.size(wallets[idx << 248])
                                staticcall wallets[idx << 248].totalPlayers() with:
                                        gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[31 len 1] > 0:
                                    stor12.length++
                                    mem[0] = 12
                                    stor12[stor12.length.field_5].field_0 = !(255 * 256^stor12.length % 32) and stor12[stor12.length.field_5].field_0 or 256^stor12.length % 32 * uint8(idx)
                                idx = idx + 1
                                continue 
                            require ext_code.size(secureAddress)
                            staticcall secureAddress.0x74550831 with:
                                    gas gas_remaining wei
                                   args 0, uint32(stor12.length), uint8(stor10), sub_955a015b, stor8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[31 len 1] < stor12.length
                            stor11 = stor('array', ('mask_shl', 3, 5, -5, ('ext_call.return_data', 0, 32)), ('name', 'stor12', 12))[uint8(ext_call.return_data[0])]
                            require ext_code.size(wallets[stor11])
                            staticcall wallets[stor11].totalPlayers() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor10) = ext_call.return_data[31 len 1]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, 15
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], 100
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor14 = delegate.return_data[0]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor15 = delegate.return_data[0]
                            idx = 1
                            s = 0
                            s = 0
                            s = 0
                            while uint8(idx) <= uint256(stor10):
                                require ext_code.size(wallets[stor11])
                                staticcall wallets[stor11].0x7e0ecc00 with:
                                        gas gas_remaining wei
                                       args uint8(idx)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[128] = ext_call.return_data[32]
                                mem[96] = address(ext_call.return_data[0])
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[32], 10000
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(wallets[stor11])
                                staticcall wallets[stor11].totalBets() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], ext_call.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor15, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], 10000
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args s, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[164] = depositOf[address(ext_call.return_data[0])]
                                mem[196] = delegate.return_data[0]
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args depositOf[address(ext_call.return_data[0])], delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(ext_call.return_data[0])
                                mem[32] = 17
                                depositOf[address(ext_call.return_data[0])] = delegate.return_data[0]
                                mem[160] = delegate.return_data[0]
                                emit Deposited(delegate.return_data[0], address(ext_call.return_data[0]));
                                idx = idx + 1
                                s = delegate.return_data[0]
                                s = delegate.return_data[0]
                                s = delegate.return_data[0]
                                continue 
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, _2136 * None
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args depositOf[stor0], delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            depositOf[stor0] = delegate.return_data[0]
                            emit Deposited(delegate.return_data[0], owner);
                            sub_56084664[stor2].field_0 = wallets[stor11]
                            sub_56084664[stor2].field_256 = block.timestamp
                            sub_56084664[stor2].field_512 = sub_fb90f9e9Address
                            sub_56084664[stor2].field_768 = sub_b82b245eAddress
                            sub_56084664[stor2].field_1024 = sub_7024dc2eAddress
                            emit 0x666f956e: stor13, wallets[stor11]
                            stor13 = 0
                            stor12.length = 0
                            idx = 0
                            while stor12.length + 31 / 32 > idx:
                                stor12[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args block.timestamp, 24 * 3600
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            finishTime = delegate.return_data[0]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_955a015b, 1
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_955a015b = delegate.return_data[0]
                            require ext_code.size(wallets[0])
                            call wallets[0].closeContract() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(wallets[1])
                            call wallets[1].closeContract() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor853B)
                            call stor853B.closeContract() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'break on switch'
                            create contract with 0 wei
                                            code: code.data[8240 len 1406], sub_955a015b, minPayment
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_fb90f9e9Address = address(create.new_address)
                            wallets[0] = address(create.new_address)
                            create contract with 0 wei
                                            code: code.data[8240 len 1406], sub_955a015b, minPayment
                            sub_b82b245eAddress = address(create.new_address)
                            wallets[1] = address(create.new_address)
                            create contract with 0 wei
                                            code: code.data[8240 len 1406], sub_955a015b, minPayment
                            sub_7024dc2eAddress = address(create.new_address)
                            stor853B = address(create.new_address)
                    else:
                        if uint256(stor10) >= stor9:
                            require ext_code.size(sub_fb90f9e9Address)
                            call sub_fb90f9e9Address.0xead3a0fe with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, ext_call.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor13 = delegate.return_data[0]
                            require ext_code.size(sub_b82b245eAddress)
                            call sub_b82b245eAddress.0xead3a0fe with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor13 = delegate.return_data[0]
                            require ext_code.size(sub_7024dc2eAddress)
                            call sub_7024dc2eAddress.0xead3a0fe with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor13 = delegate.return_data[0]
                            if delegate.return_data[0]:
                                idx = 0
                                while uint8(idx) < 3:
                                    mem[0] = uint8(idx)
                                    mem[32] = 16
                                    require ext_code.size(wallets[idx << 248])
                                    staticcall wallets[idx << 248].totalPlayers() with:
                                            gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[31 len 1] > 0:
                                        stor12.length++
                                        mem[0] = 12
                                        stor12[stor12.length.field_5].field_0 = !(255 * 256^stor12.length % 32) and stor12[stor12.length.field_5].field_0 or 256^stor12.length % 32 * uint8(idx)
                                    idx = idx + 1
                                    continue 
                                require ext_code.size(secureAddress)
                                staticcall secureAddress.0x74550831 with:
                                        gas gas_remaining wei
                                       args 0, uint32(stor12.length), uint8(stor10), sub_955a015b, stor8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[31 len 1] < stor12.length
                                stor11 = stor('array', ('mask_shl', 3, 5, -5, ('ext_call.return_data', 0, 32)), ('name', 'stor12', 12))[uint8(ext_call.return_data[0])]
                                require ext_code.size(wallets[stor11])
                                staticcall wallets[stor11].totalPlayers() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor10) = ext_call.return_data[31 len 1]
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor13, 15
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], 100
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                stor14 = delegate.return_data[0]
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor13, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                stor15 = delegate.return_data[0]
                                idx = 1
                                s = 0
                                s = 0
                                s = 0
                                while uint8(idx) <= uint256(stor10):
                                    require ext_code.size(wallets[stor11])
                                    staticcall wallets[stor11].0x7e0ecc00 with:
                                            gas gas_remaining wei
                                           args uint8(idx)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[128] = ext_call.return_data[32]
                                    mem[96] = address(ext_call.return_data[0])
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[32], 10000
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(wallets[stor11])
                                    staticcall wallets[stor11].totalBets() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args delegate.return_data[0], ext_call.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor15, delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args delegate.return_data[0], 10000
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args s, delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[164] = depositOf[address(ext_call.return_data[0])]
                                    mem[196] = delegate.return_data[0]
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args depositOf[address(ext_call.return_data[0])], delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = 17
                                    depositOf[address(ext_call.return_data[0])] = delegate.return_data[0]
                                    mem[160] = delegate.return_data[0]
                                    emit Deposited(delegate.return_data[0], address(ext_call.return_data[0]));
                                    idx = idx + 1
                                    s = delegate.return_data[0]
                                    s = delegate.return_data[0]
                                    s = delegate.return_data[0]
                                    continue 
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor13, _2138 * None
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args depositOf[stor0], delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                depositOf[stor0] = delegate.return_data[0]
                                emit Deposited(delegate.return_data[0], owner);
                                sub_56084664[stor2].field_0 = wallets[stor11]
                                sub_56084664[stor2].field_256 = block.timestamp
                                sub_56084664[stor2].field_512 = sub_fb90f9e9Address
                                sub_56084664[stor2].field_768 = sub_b82b245eAddress
                                sub_56084664[stor2].field_1024 = sub_7024dc2eAddress
                                emit 0x666f956e: stor13, wallets[stor11]
                                stor13 = 0
                                stor12.length = 0
                                idx = 0
                                while stor12.length + 31 / 32 > idx:
                                    stor12[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args block.timestamp, 24 * 3600
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                finishTime = delegate.return_data[0]
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_955a015b, 1
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_955a015b = delegate.return_data[0]
                                require ext_code.size(wallets[0])
                                call wallets[0].closeContract() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(wallets[1])
                                call wallets[1].closeContract() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor853B)
                                call stor853B.closeContract() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'break on switch'
                                create contract with 0 wei
                                                code: code.data[8240 len 1406], sub_955a015b, minPayment
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                sub_fb90f9e9Address = address(create.new_address)
                                wallets[0] = address(create.new_address)
                                create contract with 0 wei
                                                code: code.data[8240 len 1406], sub_955a015b, minPayment
                                sub_b82b245eAddress = address(create.new_address)
                                wallets[1] = address(create.new_address)
                                create contract with 0 wei
                                                code: code.data[8240 len 1406], sub_955a015b, minPayment
                                sub_7024dc2eAddress = address(create.new_address)
                                stor853B = address(create.new_address)
        else:
            require msg.sender == sub_7024dc2eAddress
            require secureAddress
            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor8, 1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor8 = delegate.return_data[0]
            require ext_code.size(wallets[0])
            staticcall wallets[0].totalPlayers() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wallets[1])
            staticcall wallets[1].totalPlayers() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, uint8(ext_call.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor853B)
            staticcall stor853B.totalPlayers() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args delegate.return_data[0], uint8(ext_call.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor10) = delegate.return_data[0]
            if block.timestamp < finishTime:
                if uint256(stor10) >= stor9:
                    require ext_code.size(sub_fb90f9e9Address)
                    call sub_fb90f9e9Address.0xead3a0fe with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor13, ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor13 = delegate.return_data[0]
                    require ext_code.size(sub_b82b245eAddress)
                    call sub_b82b245eAddress.0xead3a0fe with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor13 = delegate.return_data[0]
                    require ext_code.size(sub_7024dc2eAddress)
                    call sub_7024dc2eAddress.0xead3a0fe with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor13 = delegate.return_data[0]
                    if delegate.return_data[0]:
                        idx = 0
                        while uint8(idx) < 3:
                            mem[0] = uint8(idx)
                            mem[32] = 16
                            require ext_code.size(wallets[idx << 248])
                            staticcall wallets[idx << 248].totalPlayers() with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[31 len 1] > 0:
                                stor12.length++
                                mem[0] = 12
                                stor12[stor12.length.field_5].field_0 = !(255 * 256^stor12.length % 32) and stor12[stor12.length.field_5].field_0 or 256^stor12.length % 32 * uint8(idx)
                            idx = idx + 1
                            continue 
                        require ext_code.size(secureAddress)
                        staticcall secureAddress.0x74550831 with:
                                gas gas_remaining wei
                               args 0, uint32(stor12.length), uint8(stor10), sub_955a015b, stor8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[31 len 1] < stor12.length
                        stor11 = stor('array', ('mask_shl', 3, 5, -5, ('ext_call.return_data', 0, 32)), ('name', 'stor12', 12))[uint8(ext_call.return_data[0])]
                        require ext_code.size(wallets[stor11])
                        staticcall wallets[stor11].totalPlayers() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor10) = ext_call.return_data[31 len 1]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, 15
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], 100
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor14 = delegate.return_data[0]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor15 = delegate.return_data[0]
                        idx = 1
                        s = 0
                        s = 0
                        s = 0
                        while uint8(idx) <= uint256(stor10):
                            require ext_code.size(wallets[stor11])
                            staticcall wallets[stor11].0x7e0ecc00 with:
                                    gas gas_remaining wei
                                   args uint8(idx)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[128] = ext_call.return_data[32]
                            mem[96] = address(ext_call.return_data[0])
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 10000
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(wallets[stor11])
                            staticcall wallets[stor11].totalBets() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor15, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], 10000
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args s, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[164] = depositOf[address(ext_call.return_data[0])]
                            mem[196] = delegate.return_data[0]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args depositOf[address(ext_call.return_data[0])], delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = 17
                            depositOf[address(ext_call.return_data[0])] = delegate.return_data[0]
                            mem[160] = delegate.return_data[0]
                            emit Deposited(delegate.return_data[0], address(ext_call.return_data[0]));
                            idx = idx + 1
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            s = delegate.return_data[0]
                            continue 
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, _2140 * None
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args depositOf[stor0], delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        depositOf[stor0] = delegate.return_data[0]
                        emit Deposited(delegate.return_data[0], owner);
                        sub_56084664[stor2].field_0 = wallets[stor11]
                        sub_56084664[stor2].field_256 = block.timestamp
                        sub_56084664[stor2].field_512 = sub_fb90f9e9Address
                        sub_56084664[stor2].field_768 = sub_b82b245eAddress
                        sub_56084664[stor2].field_1024 = sub_7024dc2eAddress
                        emit 0x666f956e: stor13, wallets[stor11]
                        stor13 = 0
                        stor12.length = 0
                        idx = 0
                        while stor12.length + 31 / 32 > idx:
                            stor12[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args block.timestamp, 24 * 3600
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        finishTime = delegate.return_data[0]
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_955a015b, 1
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_955a015b = delegate.return_data[0]
                        require ext_code.size(wallets[0])
                        call wallets[0].closeContract() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(wallets[1])
                        call wallets[1].closeContract() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor853B)
                        call stor853B.closeContract() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'break on switch'
                        create contract with 0 wei
                                        code: code.data[8240 len 1406], sub_955a015b, minPayment
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_fb90f9e9Address = address(create.new_address)
                        wallets[0] = address(create.new_address)
                        create contract with 0 wei
                                        code: code.data[8240 len 1406], sub_955a015b, minPayment
                        sub_b82b245eAddress = address(create.new_address)
                        wallets[1] = address(create.new_address)
                        create contract with 0 wei
                                        code: code.data[8240 len 1406], sub_955a015b, minPayment
                        sub_7024dc2eAddress = address(create.new_address)
                        stor853B = address(create.new_address)
            else:
                if 1 == uint256(stor10):
                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args block.timestamp, 24 * 3600
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    finishTime = delegate.return_data[0]
                else:
                    if block.timestamp >= finishTime:
                        require ext_code.size(sub_fb90f9e9Address)
                        call sub_fb90f9e9Address.0xead3a0fe with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor13, ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor13 = delegate.return_data[0]
                        require ext_code.size(sub_b82b245eAddress)
                        call sub_b82b245eAddress.0xead3a0fe with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor13 = delegate.return_data[0]
                        require ext_code.size(sub_7024dc2eAddress)
                        call sub_7024dc2eAddress.0xead3a0fe with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                        delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args delegate.return_data[0], ext_call.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor13 = delegate.return_data[0]
                        if delegate.return_data[0]:
                            idx = 0
                            while uint8(idx) < 3:
                                mem[0] = uint8(idx)
                                mem[32] = 16
                                require ext_code.size(wallets[idx << 248])
                                staticcall wallets[idx << 248].totalPlayers() with:
                                        gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[31 len 1] > 0:
                                    stor12.length++
                                    mem[0] = 12
                                    stor12[stor12.length.field_5].field_0 = !(255 * 256^stor12.length % 32) and stor12[stor12.length.field_5].field_0 or 256^stor12.length % 32 * uint8(idx)
                                idx = idx + 1
                                continue 
                            require ext_code.size(secureAddress)
                            staticcall secureAddress.0x74550831 with:
                                    gas gas_remaining wei
                                   args 0, uint32(stor12.length), uint8(stor10), sub_955a015b, stor8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[31 len 1] < stor12.length
                            stor11 = stor('array', ('mask_shl', 3, 5, -5, ('ext_call.return_data', 0, 32)), ('name', 'stor12', 12))[uint8(ext_call.return_data[0])]
                            require ext_code.size(wallets[stor11])
                            staticcall wallets[stor11].totalPlayers() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor10) = ext_call.return_data[31 len 1]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, 15
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], 100
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor14 = delegate.return_data[0]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor15 = delegate.return_data[0]
                            idx = 1
                            s = 0
                            s = 0
                            s = 0
                            while uint8(idx) <= uint256(stor10):
                                require ext_code.size(wallets[stor11])
                                staticcall wallets[stor11].0x7e0ecc00 with:
                                        gas gas_remaining wei
                                       args uint8(idx)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[128] = ext_call.return_data[32]
                                mem[96] = address(ext_call.return_data[0])
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[32], 10000
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(wallets[stor11])
                                staticcall wallets[stor11].totalBets() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], ext_call.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor15, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], 10000
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args s, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[164] = depositOf[address(ext_call.return_data[0])]
                                mem[196] = delegate.return_data[0]
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args depositOf[address(ext_call.return_data[0])], delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(ext_call.return_data[0])
                                mem[32] = 17
                                depositOf[address(ext_call.return_data[0])] = delegate.return_data[0]
                                mem[160] = delegate.return_data[0]
                                emit Deposited(delegate.return_data[0], address(ext_call.return_data[0]));
                                idx = idx + 1
                                s = delegate.return_data[0]
                                s = delegate.return_data[0]
                                s = delegate.return_data[0]
                                continue 
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, _2142 * None
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args depositOf[stor0], delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            depositOf[stor0] = delegate.return_data[0]
                            emit Deposited(delegate.return_data[0], owner);
                            sub_56084664[stor2].field_0 = wallets[stor11]
                            sub_56084664[stor2].field_256 = block.timestamp
                            sub_56084664[stor2].field_512 = sub_fb90f9e9Address
                            sub_56084664[stor2].field_768 = sub_b82b245eAddress
                            sub_56084664[stor2].field_1024 = sub_7024dc2eAddress
                            emit 0x666f956e: stor13, wallets[stor11]
                            stor13 = 0
                            stor12.length = 0
                            idx = 0
                            while stor12.length + 31 / 32 > idx:
                                stor12[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args block.timestamp, 24 * 3600
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            finishTime = delegate.return_data[0]
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_955a015b, 1
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_955a015b = delegate.return_data[0]
                            require ext_code.size(wallets[0])
                            call wallets[0].closeContract() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(wallets[1])
                            call wallets[1].closeContract() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor853B)
                            call stor853B.closeContract() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'break on switch'
                            create contract with 0 wei
                                            code: code.data[8240 len 1406], sub_955a015b, minPayment
                            if not create.new_address:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_fb90f9e9Address = address(create.new_address)
                            wallets[0] = address(create.new_address)
                            create contract with 0 wei
                                            code: code.data[8240 len 1406], sub_955a015b, minPayment
                            sub_b82b245eAddress = address(create.new_address)
                            wallets[1] = address(create.new_address)
                            create contract with 0 wei
                                            code: code.data[8240 len 1406], sub_955a015b, minPayment
                            sub_7024dc2eAddress = address(create.new_address)
                            stor853B = address(create.new_address)
                    else:
                        if uint256(stor10) >= stor9:
                            require ext_code.size(sub_fb90f9e9Address)
                            call sub_fb90f9e9Address.0xead3a0fe with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor13, ext_call.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor13 = delegate.return_data[0]
                            require ext_code.size(sub_b82b245eAddress)
                            call sub_b82b245eAddress.0xead3a0fe with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor13 = delegate.return_data[0]
                            require ext_code.size(sub_7024dc2eAddress)
                            call sub_7024dc2eAddress.0xead3a0fe with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                            delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor13 = delegate.return_data[0]
                            if delegate.return_data[0]:
                                idx = 0
                                while uint8(idx) < 3:
                                    mem[0] = uint8(idx)
                                    mem[32] = 16
                                    require ext_code.size(wallets[idx << 248])
                                    staticcall wallets[idx << 248].totalPlayers() with:
                                            gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[31 len 1] > 0:
                                        stor12.length++
                                        mem[0] = 12
                                        stor12[stor12.length.field_5].field_0 = !(255 * 256^stor12.length % 32) and stor12[stor12.length.field_5].field_0 or 256^stor12.length % 32 * uint8(idx)
                                    idx = idx + 1
                                    continue 
                                require ext_code.size(secureAddress)
                                staticcall secureAddress.0x74550831 with:
                                        gas gas_remaining wei
                                       args 0, uint32(stor12.length), uint8(stor10), sub_955a015b, stor8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[31 len 1] < stor12.length
                                stor11 = stor('array', ('mask_shl', 3, 5, -5, ('ext_call.return_data', 0, 32)), ('name', 'stor12', 12))[uint8(ext_call.return_data[0])]
                                require ext_code.size(wallets[stor11])
                                staticcall wallets[stor11].totalPlayers() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor10) = ext_call.return_data[31 len 1]
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor13, 15
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args delegate.return_data[0], 100
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                stor14 = delegate.return_data[0]
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor13, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                stor15 = delegate.return_data[0]
                                idx = 1
                                s = 0
                                s = 0
                                s = 0
                                while uint8(idx) <= uint256(stor10):
                                    require ext_code.size(wallets[stor11])
                                    staticcall wallets[stor11].0x7e0ecc00 with:
                                            gas gas_remaining wei
                                           args uint8(idx)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[128] = ext_call.return_data[32]
                                    mem[96] = address(ext_call.return_data[0])
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[32], 10000
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(wallets[stor11])
                                    staticcall wallets[stor11].totalBets() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args delegate.return_data[0], ext_call.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.mul(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor15, delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.div(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args delegate.return_data[0], 10000
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args s, delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[164] = depositOf[address(ext_call.return_data[0])]
                                    mem[196] = delegate.return_data[0]
                                    require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                    delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args depositOf[address(ext_call.return_data[0])], delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = 17
                                    depositOf[address(ext_call.return_data[0])] = delegate.return_data[0]
                                    mem[160] = delegate.return_data[0]
                                    emit Deposited(delegate.return_data[0], address(ext_call.return_data[0]));
                                    idx = idx + 1
                                    s = delegate.return_data[0]
                                    s = delegate.return_data[0]
                                    s = delegate.return_data[0]
                                    continue 
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.sub(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor13, _2144 * None
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args depositOf[stor0], delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                depositOf[stor0] = delegate.return_data[0]
                                emit Deposited(delegate.return_data[0], owner);
                                sub_56084664[stor2].field_0 = wallets[stor11]
                                sub_56084664[stor2].field_256 = block.timestamp
                                sub_56084664[stor2].field_512 = sub_fb90f9e9Address
                                sub_56084664[stor2].field_768 = sub_b82b245eAddress
                                sub_56084664[stor2].field_1024 = sub_7024dc2eAddress
                                emit 0x666f956e: stor13, wallets[stor11]
                                stor13 = 0
                                stor12.length = 0
                                idx = 0
                                while stor12.length + 31 / 32 > idx:
                                    stor12[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args block.timestamp, 24 * 3600
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                finishTime = delegate.return_data[0]
                                require ext_code.size(0x231773551c008d9df068e8742691c52d1d86b2fe)
                                delegate 0x231773551c008d9df068e8742691c52d1d86b2fe.add(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_955a015b, 1
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_955a015b = delegate.return_data[0]
                                require ext_code.size(wallets[0])
                                call wallets[0].closeContract() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(wallets[1])
                                call wallets[1].closeContract() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor853B)
                                call stor853B.closeContract() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'break on switch'
                                create contract with 0 wei
                                                code: code.data[8240 len 1406], sub_955a015b, minPayment
                                if not create.new_address:
                                    revert with ext_call.return_data[0 len return_data.size]
                                sub_fb90f9e9Address = address(create.new_address)
                                wallets[0] = address(create.new_address)
                                create contract with 0 wei
                                                code: code.data[8240 len 1406], sub_955a015b, minPayment
                                sub_b82b245eAddress = address(create.new_address)
                                wallets[1] = address(create.new_address)
                                create contract with 0 wei
                                                code: code.data[8240 len 1406], sub_955a015b, minPayment
                                sub_7024dc2eAddress = address(create.new_address)
                                stor853B = address(create.new_address)
}



}
