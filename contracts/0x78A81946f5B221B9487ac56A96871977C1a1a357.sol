contract main {




// =====================  Runtime code  =====================


#
#  - submit(address arg1, uint256 arg2, bytes arg3)
#
array of uint256 class;
array of uint256 sub_cb4774c4;
array of uint256 description;
uint256 sub_e24ff744;
uint256 sub_c47d1a7a;
address stakersAddress;
address signersAddress;
address sub_a31c2e88Address;
address sub_8ef631f3Address;
address regulatorAddress;
mapping of struct stor16;
uint256 sub_07a48ee1;
mapping of struct sub_0dbfe4e3;
mapping of uint8 stor19;
mapping of uint8 registered;
mapping of address sub_f0296596;
mapping of uint8 stor22;
mapping of uint256 stor23;
mapping of address stor24;

function sub_07a48ee1(?) {
    return sub_07a48ee1
}

function sub_0dbfe4e3(?) {
    require calldata.size - 4 >= 64
    return uint8(sub_0dbfe4e3[arg1][arg2].field_0), sub_0dbfe4e3[arg1][arg2].field_256
}

function confirmations(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor19[arg1][arg2])
}

function signers() {
    return signersAddress
}

function description() {
    return description[0 len description.length]
}

function sub_8ef631f3(?) {
    return sub_8ef631f3Address
}

function sub_a31c2e88(?) {
    return sub_a31c2e88Address
}

function registered(address arg1) {
    require calldata.size - 4 >= 32
    return registered[arg1]
}

function class() {
    return class[0 len class.length]
}

function sub_c47d1a7a(?) {
    return sub_c47d1a7a
}

function sub_cb4774c4(?) {
    return sub_cb4774c4[0 len sub_cb4774c4.length]
}

function regulator() {
    return regulatorAddress
}

function sub_e24ff744(?) {
    return sub_e24ff744
}

function sub_f0296596(?) {
    require calldata.size - 4 >= 32
    return sub_f0296596[arg1]
}

function stakers() {
    return stakersAddress
}

function _fallback() payable {
    if 0 < msg.value:
        emit Deposit(msg.value, msg.sender);
}

function sub_edb9c6a1(?) {
    require calldata.size - 4 >= 64
    if uint8(stor16[arg1].field_0) != 1:
        return 0
    if stor19[arg1][address(arg2)]:
        return 0
    if 0 == uint8(sub_0dbfe4e3[arg1][stor23[address(arg2)]].field_0):
        return 0
    return 1
}

function sub_592e0e00(?) {
    require calldata.size - 4 >= 64
    if 0 == sub_0dbfe4e3[arg1][stor23[address(arg2)]].field_256:
        return 0
    if 0 == stor22[address(arg2)]:
        return 0
    if 1 > stor22[address(arg2)]:
        revert with 0, 'Subtraction exception'
    return bool(sub_0dbfe4e3[arg1][stor23[address(arg2)]].field_256 / 2^uint8(stor22[address(arg2)] - 1)) != 0
}

function setRegulator(address arg1) {
    require calldata.size - 4 >= 32
    if regulatorAddress != 0:
        if this.address != msg.sender:
            revert with 0, 'Root.setRegulator: Access denied'
    require ext_code.size(arg1)
    staticcall arg1.0x631f9852 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setRegulator: Regulator is not sealed'
    if 0 == arg1:
        revert with 0, 'Root.setNode: Address is empty'
    regulatorAddress = arg1
    emit 0x9a81ba56: regulatorAddress
}

function revoke(uint256 arg1) {
    require calldata.size - 4 >= 32
    if registered[address(msg.sender)] != 1:
        revert with 0, 'Root.onlyWallet: Access denied'
    if 0 < uint32(ext_code.size(msg.sender)):
        revert with 0, 'Root.onlyWallet: Is not node'
    if 0 == sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_256:
        revert with 0, 'Root.onlyEligible: Not eligible'
    if 0 == stor22[address(msg.sender)]:
        revert with 0, 'Root.onlyEligible: Not eligible'
    if 1 > stor22[address(msg.sender)]:
        revert with 0, 'Subtraction exception'
    if 0 == bool(sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_256 / 2^uint8(stor22[address(msg.sender)] - 1)):
        revert with 0, 'Root.onlyEligible: Not eligible'
    if uint8(stor16[arg1].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.revoke: Transaction has been completed'
    uint8(stor16[arg1].field_0) = 4
    emit Revocation(msg.sender, arg1);
    return 1
}

function sub_b47876ea(?) {
    require calldata.size - 4 >= 32
    if signersAddress != 0:
        if this.address != msg.sender:
            revert with 0, 'Root.setSigners: Access denied'
    if 0 == arg1:
        revert with 0, 'Root.setNode: Address is empty'
    if registered[address(arg1)] != 0:
        revert with 0, 'Root.setNode: Duplicated node'
    if signersAddress != 0:
        if 0 < uint32(ext_code.size(signersAddress)):
            require ext_code.size(signersAddress)
            call signersAddress.term() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        registered[stor12] = 0
    if 0 >= uint32(ext_code.size(arg1)):
        registered[address(arg1)] = 1
    else:
        registered[address(arg1)] = 2
        require ext_code.size(arg1)
        call arg1.init(address arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    signersAddress = arg1
    emit 0x1c3f6ae7: signersAddress
    return 1
}

function sub_d4ab68e4(?) {
    require calldata.size - 4 >= 32
    if registered[address(msg.sender)] != 2:
        revert with 0, 'Root.onlyNode: Access denied'
    if 0 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.detachWalletOrNode: Wallet address is empty'
    if 0 == registered[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Root.detachWalletOrNode: Wallet address is not registered'
    if 0 < uint32(ext_code.size(arg1)):
        require ext_code.size(arg1)
        call arg1.term() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(msg.sender)
        staticcall msg.sender.0xc47d1a7a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor24[ext_call.return_data[0]] = 0
    registered[address(arg1)] = 0
    sub_f0296596[address(arg1)] = 0
    stor22[address(arg1)] = 0
    stor23[address(arg1)] = 0
    emit 0xd3ebb8da: arg1
    return 1
}

function sub_c27dbe63(?) {
    require calldata.size - 4 >= 32
    if stakersAddress != 0:
        if this.address != msg.sender:
            revert with 0, 'Root.setStakers: Access denied'
    if 0 < uint32(ext_code.size(arg1)):
        require ext_code.size(arg1)
        staticcall arg1.walletCount() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 >= ext_call.return_data[31 len 1]:
            revert with 0, 'Root.setStakers: No wallet'
    if 0 == arg1:
        revert with 0, 'Root.setNode: Address is empty'
    if registered[address(arg1)] != 0:
        revert with 0, 'Root.setNode: Duplicated node'
    if stakersAddress != 0:
        if 0 < uint32(ext_code.size(stakersAddress)):
            require ext_code.size(stakersAddress)
            call stakersAddress.term() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        registered[stor11] = 0
    if 0 >= uint32(ext_code.size(arg1)):
        registered[address(arg1)] = 1
    else:
        registered[address(arg1)] = 2
        require ext_code.size(arg1)
        call arg1.init(address arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stakersAddress = arg1
    emit 0x79b7992d: stakersAddress
}

function sub_c4def70a(?) {
    require calldata.size - 4 >= 32
    if registered[address(msg.sender)] != 2:
        revert with 0, 'Root.onlyNode: Access denied'
    if 0 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.attachWalletOrNode: Wallet address is empty'
    if registered[address(arg1)] != 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.attachWalletOrNode: Duplicated wallet address'
    require ext_code.size(msg.sender)
    staticcall msg.sender.0xc47d1a7a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f0296596[address(arg1)] = msg.sender
    require ext_code.size(msg.sender)
    staticcall msg.sender.0xc79e6429 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor22[address(arg1)] = uint8(ext_call.return_data[0])
    stor23[address(arg1)] = ext_call.return_data[0]
    stor24[ext_call.return_data[0]] = msg.sender
    if 0 >= uint32(ext_code.size(arg1)):
        registered[address(arg1)] = 1
    else:
        registered[address(arg1)] = 2
        require ext_code.size(arg1)
        call arg1.init(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x85c59ad3: arg1
    return 1
}

function sub_26bc178c(?) {
    require calldata.size - 4 >= 32
    if sub_a31c2e88Address != 0:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setStakersController: Access denied'
    if 0 < uint32(ext_code.size(arg1)):
        require ext_code.size(arg1)
        staticcall arg1.walletCount() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 >= ext_call.return_data[31 len 1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setStakersController: No wallet'
    if 0 == arg1:
        revert with 0, 'Root.setNode: Address is empty'
    if registered[address(arg1)] != 0:
        revert with 0, 'Root.setNode: Duplicated node'
    if sub_a31c2e88Address != 0:
        if 0 < uint32(ext_code.size(sub_a31c2e88Address)):
            require ext_code.size(sub_a31c2e88Address)
            call sub_a31c2e88Address.term() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        registered[stor13] = 0
    if 0 >= uint32(ext_code.size(arg1)):
        registered[address(arg1)] = 1
    else:
        registered[address(arg1)] = 2
        require ext_code.size(arg1)
        call arg1.init(address arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    sub_a31c2e88Address = arg1
    emit 0xcd8b3417: sub_a31c2e88Address
}

function sub_51d996bf(?) {
    require calldata.size - 4 >= 32
    if sub_8ef631f3Address != 0:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setSignersController: Access denied'
    if 0 < uint32(ext_code.size(arg1)):
        require ext_code.size(arg1)
        staticcall arg1.walletCount() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 >= ext_call.return_data[31 len 1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setSignersController: No wallet'
    if 0 == arg1:
        revert with 0, 'Root.setNode: Address is empty'
    if registered[address(arg1)] != 0:
        revert with 0, 'Root.setNode: Duplicated node'
    if sub_8ef631f3Address != 0:
        if 0 < uint32(ext_code.size(sub_8ef631f3Address)):
            require ext_code.size(sub_8ef631f3Address)
            call sub_8ef631f3Address.term() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        registered[stor14] = 0
    if 0 >= uint32(ext_code.size(arg1)):
        registered[address(arg1)] = 1
    else:
        registered[address(arg1)] = 2
        require ext_code.size(arg1)
        call arg1.init(address arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    sub_8ef631f3Address = arg1
    emit 0xdbe94348: sub_8ef631f3Address
}

function sub_81309cdd(?) {
    require calldata.size - 4 >= 96
    if regulatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.onlyRegulator: Access denied'
    if 0 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setRequirement: Confirmation flag is empty'
    if arg3 != 255:
        if sub_0dbfe4e3[stor17][arg1].field_256 != 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setRequirement: Duplicated requirement'
        uint8(sub_0dbfe4e3[stor17][arg1].field_0) = arg3
        sub_0dbfe4e3[stor17][arg1].field_256 = arg2
        if uint8(uint8(stor16[stor17].field_8) + arg3) < uint8(stor16[stor17].field_8):
            revert with 0, 'Addition exception'
        uint8(stor16[stor17].field_8) = uint8(uint8(stor16[stor17].field_8) + arg3)
        emit 0xa2b35f0b: arg1, arg2, arg3, sub_07a48ee1
    else:
        if 0 == stor24[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setRequirement: Node is not found'
        require ext_code.size(stor24[arg1])
        staticcall stor24[arg1].walletCount() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor24[arg1] != signersAddress:
            if 0 >= ext_call.return_data[31 len 1]:
                revert with 0, 'Root.setRequirement: No wallet'
            if sub_0dbfe4e3[stor17][arg1].field_256 != 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setRequirement: Duplicated requirement'
            uint8(sub_0dbfe4e3[stor17][arg1].field_0) = uint8(ext_call.return_data[0])
            sub_0dbfe4e3[stor17][arg1].field_256 = arg2
            if uint8(uint8(stor16[stor17].field_8) + ext_call.return_data[0]) < uint8(stor16[stor17].field_8):
                revert with 0, 'Addition exception'
            uint8(stor16[stor17].field_8) = uint8(uint8(stor16[stor17].field_8) + ext_call.return_data[0])
            emit 0xa2b35f0b: arg1, arg2, uint8(ext_call.return_data[0]), sub_07a48ee1
        else:
            if ext_call.return_data[31 len 1] != 0:
                if 0 >= ext_call.return_data[31 len 1]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Root.setRequirement: Confirmation required is empty'
                if sub_0dbfe4e3[stor17][arg1].field_256 != 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.setRequirement: Duplicated requirement'
                uint8(sub_0dbfe4e3[stor17][arg1].field_0) = uint8(ext_call.return_data[0])
                sub_0dbfe4e3[stor17][arg1].field_256 = arg2
                if uint8(uint8(stor16[stor17].field_8) + ext_call.return_data[0]) < uint8(stor16[stor17].field_8):
                    revert with 0, 'Addition exception'
                uint8(stor16[stor17].field_8) = uint8(uint8(stor16[stor17].field_8) + ext_call.return_data[0])
                emit 0xa2b35f0b: arg1, arg2, uint8(ext_call.return_data[0]), sub_07a48ee1
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 16
    mem[96] = stor16[arg1][2].length
    mem[128] = stor16[arg1][2].field_0
    idx = 128
    s = 0
    while stor16[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor16[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 160
    mem[ceil32(stor16[arg1][2].length) + 128] = stor16[arg1][3].length
    mem[0] = sha3(arg1, 16) + 3
    mem[ceil32(stor16[arg1][2].length) + 160] = stor16[arg1][3].field_0
    idx = ceil32(stor16[arg1][2].length) + 160
    s = 0
    while ceil32(stor16[arg1][2].length) + stor16[arg1][3].length + 128 > idx:
        mem[idx + 32] = stor16[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 160] = uint8(stor16[arg1].field_0)
    mem[ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 192] = uint8(stor16[arg1].field_8)
    mem[ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 224] = address(stor16[arg1].field_16)
    mem[ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 256] = stor16[arg1].field_256
    mem[ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 288] = 192
    mem[ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 352] = stor16[arg1][2].length
    mem[ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 384 len ceil32(stor16[arg1][2].length)] = mem[128 len ceil32(stor16[arg1][2].length)]
    mem[ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 320] = stor16[arg1][2].length + 224
    mem[stor16[arg1][2].length + ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 384] = stor16[arg1][3].length
    mem[stor16[arg1][2].length + ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 416 len ceil32(stor16[arg1][3].length)] = mem[ceil32(stor16[arg1][2].length) + 160 len ceil32(stor16[arg1][3].length)]
    if not stor16[arg1][3].length % 32:
        return uint8(stor16[arg1].field_0), 
               uint8(stor16[arg1].field_0),
               address(stor16[arg1].field_0),
               stor16[arg1].field_256,
               Array(len=stor16[arg1][2].length, data=mem[128 len ceil32(stor16[arg1][2].length)], mem[(2 * ceil32(stor16[arg1][2].length)) + ceil32(stor16[arg1][3].length) + 384 len stor16[arg1][3].length + stor16[arg1][2].length + -ceil32(stor16[arg1][2].length) + 32]),
               stor16[arg1][2].length + 224
    mem[floor32(stor16[arg1][3].length) + stor16[arg1][2].length + ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + 416] = mem[floor32(stor16[arg1][3].length) + stor16[arg1][2].length + ceil32(stor16[arg1][2].length) + ceil32(stor16[arg1][3].length) + -stor16[arg1][3].length % 32 + 448 len stor16[arg1][3].length % 32]
    return uint8(stor16[arg1].field_0), 
           uint8(stor16[arg1].field_0),
           address(stor16[arg1].field_0),
           stor16[arg1].field_256,
           Array(len=stor16[arg1][2].length, data=mem[128 len ceil32(stor16[arg1][2].length)], mem[(2 * ceil32(stor16[arg1][2].length)) + ceil32(stor16[arg1][3].length) + 384 len floor32(stor16[arg1][3].length) + stor16[arg1][2].length + -ceil32(stor16[arg1][2].length) + 64]),
           stor16[arg1][2].length + 224
}

function confirm(uint256 arg1) {
    require calldata.size - 4 >= 32
    if registered[address(msg.sender)] != 1:
        revert with 0, 'Root.onlyWallet: Access denied'
    if 0 < uint32(ext_code.size(msg.sender)):
        revert with 0, 'Root.onlyWallet: Is not node'
    if 0 == sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_256:
        revert with 0, 'Root.onlyEligible: Not eligible'
    if 0 == stor22[address(msg.sender)]:
        revert with 0, 'Root.onlyEligible: Not eligible'
    if 1 > stor22[address(msg.sender)]:
        revert with 0, 'Subtraction exception'
    if 0 == bool(sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_256 / 2^uint8(stor22[address(msg.sender)] - 1)):
        revert with 0, 'Root.onlyEligible: Not eligible'
    if uint8(stor16[arg1].field_0) != 1:
        revert with 0, 'Root.onlySignable: Not signable'
    if stor19[arg1][address(msg.sender)]:
        revert with 0, 'Root.onlySignable: Not signable'
    if 0 == uint8(sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_0):
        revert with 0, 'Root.onlySignable: Not signable'
    if 0 == sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.confirmTransaction: Requirement is empty'
    if 0 == uint8(sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.confirmTransaction: Requirement is empty'
    if stor19[arg1][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'root.confirmTransaction: Duplicated confirmation'
    mem[32] = sha3(arg1, 19)
    stor19[arg1][address(msg.sender)] = 1
    if 1 > uint8(sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_0):
        revert with 0, 'Subtraction exception'
    uint8(sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_0) = uint8(uint8(sub_0dbfe4e3[arg1][stor23[address(msg.sender)]].field_0) - 1)
    if 1 > uint8(stor16[arg1].field_8):
        revert with 0, 'Subtraction exception'
    uint8(stor16[arg1].field_8) = uint8(uint8(stor16[arg1].field_8) - 1)
    emit Confirmation(msg.sender, arg1);
    if uint8(stor16[arg1].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Root.executeTransaction: Status not active'
    if uint8(stor16[arg1].field_8) != 0:
        return 1
    uint8(stor16[arg1].field_0) = 2
    mem[0] = sha3(arg1, 16) + 2
    mem[96] = stor16[arg1][2].field_0
    idx = 96
    s = 0
    while stor16[arg1][2].length + 96 > idx + 32:
        mem[idx + 32] = stor16[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call address(stor16[arg1].field_16).mem[96 len 4] with:
       value stor16[arg1].field_256 wei
         gas gas_remaining wei
        args mem[100 len stor16[arg1][2].length - 4]
    if not return_data.size:
        if ext_call.success:
            emit Execution(arg1);
        else:
            if 0 == mem[96]:
                mem[128] = 'Root.executeTransaction: Functio'
                mem[160] = 'n call failed'
                stor16[arg1].field_768 = 91
                s = 0
                idx = 128
                while 173 > idx:
                    stor16[arg1][s + 3].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor16[arg1][3].length + 31 / 32 > idx:
                    stor16[arg1][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if 0 == mem[96]:
                    mem[128] = 'Root.executeTransaction: Functio'
                    mem[160] = 'n call failed'
                    stor16[arg1].field_768 = 91
                    s = 0
                    idx = 128
                    while 173 > idx:
                        stor16[arg1][s + 3].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor16[arg1][3].length + 31 / 32 > idx:
                        stor16[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                        mem[128] = 'Root.executeTransaction: Functio'
                        mem[160] = 'n call failed'
                        stor16[arg1].field_768 = 91
                        s = 0
                        idx = 128
                        while 173 > idx:
                            stor16[arg1][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 2
                        while stor16[arg1][3].length + 31 / 32 > idx:
                            stor16[arg1][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[64] = ceil32(mem[96]) + 128
                        if not mem[96]:
                            if 4 > var71002:
                                revert with 0, 'Subtraction exception'
                            if var75002 < var75001:
                                if var79002 + 4 >= var79002:
                                    require var81001 < mem[96]
                                    require var81006 < mem[96]
                                    mem[var81006 + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 81001)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 81001)), 32))), 0) - 256
                                    s = var81001
                                    t = var81006
                                    while t + 1 >= t:
                                        if 4 > mem[96]:
                                            revert with 0, 'Subtraction exception'
                                        if t + 1 < mem[96] - 4:
                                            require t + 6 < mem[96]
                                            require t + 1 < mem[96]
                                            mem[t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) - 256
                                            s = t + 5
                                            t = t + 1
                                            continue 
                                        require mem[96] >= 32
                                        _4360 = mem[128]
                                        require mem[128] <= 4294967296
                                        require mem[128] + 64 <= mem[96] + 32
                                        require mem[mem[128] + 128] <= 4294967296 and mem[128] + mem[mem[128] + 128] + 64 <= mem[96] + 32
                                        _4376 = mem[mem[128] + 128]
                                        mem[0] = sha3(arg1, 16) + 3
                                        stor16[arg1].field_768 = (2 * mem[mem[128] + 128]) + 1
                                        u = sha3(sha3(arg1, 16) + 3)
                                        idx = mem[128] + 160
                                        while _4360 + _4376 + 160 > idx:
                                            stor[u] = mem[idx]
                                            require s < mem[96]
                                            require t < mem[96]
                                            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                            u = u + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(arg1, 16) + 3) + (Mask(251, 0, _4376 + 31) >> 5)
                                        while sha3(sha3(arg1, 16) + 3) + (stor16[arg1][3].length + 31 / 32) > idx:
                                            stor[idx] = 0
                                            require s < mem[96]
                                            require t < mem[96]
                                            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                            idx = idx + 1
                                            continue 
                                        uint8(stor16[arg1].field_0) = 3
                                        emit ExecutionFailure(arg1);
                                        return bool(ext_call.success)
                                revert with 0, 'Addition exception'
                        else:
                            mem[128 len mem[96]] = code.data[23958 len mem[96]]
                            if 4 > var72002:
                                revert with 0, 'Subtraction exception'
                            if var76002 < var76001:
                                if var80002 + 4 >= var80002:
                                    require var82001 < mem[96]
                                    require var82006 < mem[96]
                                    mem[var82006 + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 82001)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 82001)), 32))), 0) - 256
                                    s = var82001
                                    t = var82006
                                    while t + 1 >= t:
                                        if 4 > mem[96]:
                                            revert with 0, 'Subtraction exception'
                                        if t + 1 < mem[96] - 4:
                                            require t + 6 < mem[96]
                                            require t + 1 < mem[96]
                                            mem[t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) - 256
                                            s = t + 5
                                            t = t + 1
                                            continue 
                                        require mem[96] >= 32
                                        _4361 = mem[128]
                                        require mem[128] <= 4294967296
                                        require mem[128] + 64 <= mem[96] + 32
                                        require mem[mem[128] + 128] <= 4294967296 and mem[128] + mem[mem[128] + 128] + 64 <= mem[96] + 32
                                        _4377 = mem[mem[128] + 128]
                                        mem[0] = sha3(arg1, 16) + 3
                                        stor16[arg1].field_768 = (2 * mem[mem[128] + 128]) + 1
                                        u = sha3(sha3(arg1, 16) + 3)
                                        idx = mem[128] + 160
                                        while _4361 + _4377 + 160 > idx:
                                            stor[u] = mem[idx]
                                            require s < mem[96]
                                            require t < mem[96]
                                            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                            u = u + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(arg1, 16) + 3) + (Mask(251, 0, _4377 + 31) >> 5)
                                        while sha3(sha3(arg1, 16) + 3) + (stor16[arg1][3].length + 31 / 32) > idx:
                                            stor[idx] = 0
                                            require s < mem[96]
                                            require t < mem[96]
                                            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                            idx = idx + 1
                                            continue 
                                        uint8(stor16[arg1].field_0) = 3
                                        emit ExecutionFailure(arg1);
                                        return bool(ext_call.success)
                                revert with 0, 'Addition exception'
                        require mem[96] >= 32
                        require mem[128] <= 4294967296
                        require mem[128] + 64 <= mem[96] + 32
                        require mem[mem[128] + 128] <= 4294967296 and mem[128] + mem[mem[128] + 128] + 64 <= mem[96] + 32
                        stor16[arg1][3][].field_0 = Array(len=mem[mem[128] + 128], data=mem[mem[128] + 160 len mem[mem[128] + 128]])
            uint8(stor16[arg1].field_0) = 3
            emit ExecutionFailure(arg1);
    else:
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            emit Execution(arg1);
        else:
            if 0 == return_data.size:
                mem[ceil32(return_data.size) + 129] = 'Root.executeTransaction: Functio'
                mem[ceil32(return_data.size) + 161] = 'n call failed'
                stor16[arg1].field_768 = 91
                s = 0
                idx = ceil32(return_data.size) + 129
                while ceil32(return_data.size) + 174 > idx:
                    stor16[arg1][s + 3].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor16[arg1][3].length + 31 / 32 > idx:
                    stor16[arg1][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if 0 == return_data.size:
                    mem[ceil32(return_data.size) + 129] = 'Root.executeTransaction: Functio'
                    mem[ceil32(return_data.size) + 161] = 'n call failed'
                    stor16[arg1].field_768 = 91
                    s = 0
                    idx = ceil32(return_data.size) + 129
                    while ceil32(return_data.size) + 174 > idx:
                        stor16[arg1][s + 3].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor16[arg1][3].length + 31 / 32 > idx:
                        stor16[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                        mem[ceil32(return_data.size) + 129] = 'Root.executeTransaction: Functio'
                        mem[ceil32(return_data.size) + 161] = 'n call failed'
                        stor16[arg1].field_768 = 91
                        s = 0
                        idx = ceil32(return_data.size) + 129
                        while ceil32(return_data.size) + 174 > idx:
                            stor16[arg1][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 2
                        while stor16[arg1][3].length + 31 / 32 > idx:
                            stor16[arg1][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[ceil32(return_data.size) + 97] = return_data.size
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 129
                        if not return_data.size:
                            if 4 > var71002:
                                revert with 0, 'Subtraction exception'
                            if var75002 < var75001:
                                if var79002 + 4 >= var79002:
                                    require var81001 < return_data.size
                                    require var81006 < return_data.size
                                    mem[ceil32(return_data.size) + var81006 + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 81001)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 81001)), 32))), 0) - 256
                                    s = var81001
                                    t = var81006
                                    while t + 1 >= t:
                                        if 4 > return_data.size:
                                            revert with 0, 'Subtraction exception'
                                        if t + 1 < return_data.size - 4:
                                            require t + 6 < return_data.size
                                            require t + 1 < return_data.size
                                            mem[ceil32(return_data.size) + t + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) - 256
                                            s = t + 5
                                            t = t + 1
                                            continue 
                                        require return_data.size >= 32
                                        _4362 = mem[ceil32(return_data.size) + 129]
                                        require mem[ceil32(return_data.size) + 129] <= 4294967296
                                        require mem[ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                                        require mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] <= 4294967296 and mem[ceil32(return_data.size) + 129] + mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                                        _4378 = mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129]
                                        mem[0] = sha3(arg1, 16) + 3
                                        stor16[arg1].field_768 = (2 * mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129]) + 1
                                        u = sha3(sha3(arg1, 16) + 3)
                                        idx = mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 161
                                        while _4362 + ceil32(return_data.size) + _4378 + 161 > idx:
                                            stor[u] = mem[idx]
                                            require s < return_data.size
                                            require t < return_data.size
                                            mem[ceil32(return_data.size) + t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                            u = u + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(arg1, 16) + 3) + (Mask(251, 0, _4378 + 31) >> 5)
                                        while sha3(sha3(arg1, 16) + 3) + (stor16[arg1][3].length + 31 / 32) > idx:
                                            stor[idx] = 0
                                            require s < return_data.size
                                            require t < return_data.size
                                            mem[ceil32(return_data.size) + t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                            idx = idx + 1
                                            continue 
                                        uint8(stor16[arg1].field_0) = 3
                                        emit ExecutionFailure(arg1);
                                        return bool(ext_call.success)
                                revert with 0, 'Addition exception'
                        else:
                            mem[ceil32(return_data.size) + 129 len return_data.size] = code.data[23958 len return_data.size]
                            if 4 > var72002:
                                revert with 0, 'Subtraction exception'
                            if var76002 < var76001:
                                if var80002 + 4 >= var80002:
                                    require var82001 < return_data.size
                                    require var82006 < return_data.size
                                    mem[ceil32(return_data.size) + var82006 + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 82001)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 82001)), 32))), 0) - 256
                                    s = var82001
                                    t = var82006
                                    while t + 1 >= t:
                                        if 4 > return_data.size:
                                            revert with 0, 'Subtraction exception'
                                        if t + 1 < return_data.size - 4:
                                            require t + 6 < return_data.size
                                            require t + 1 < return_data.size
                                            mem[ceil32(return_data.size) + t + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 134, ('var', 2)), 32))), 0) - 256
                                            s = t + 5
                                            t = t + 1
                                            continue 
                                        require return_data.size >= 32
                                        _4363 = mem[ceil32(return_data.size) + 129]
                                        require mem[ceil32(return_data.size) + 129] <= 4294967296
                                        require mem[ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                                        require mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] <= 4294967296 and mem[ceil32(return_data.size) + 129] + mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                                        _4379 = mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129]
                                        mem[0] = sha3(arg1, 16) + 3
                                        stor16[arg1].field_768 = (2 * mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129]) + 1
                                        u = sha3(sha3(arg1, 16) + 3)
                                        idx = mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 161
                                        while _4363 + ceil32(return_data.size) + _4379 + 161 > idx:
                                            stor[u] = mem[idx]
                                            require s < return_data.size
                                            require t < return_data.size
                                            mem[ceil32(return_data.size) + t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                            u = u + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(arg1, 16) + 3) + (Mask(251, 0, _4379 + 31) >> 5)
                                        while sha3(sha3(arg1, 16) + 3) + (stor16[arg1][3].length + 31 / 32) > idx:
                                            stor[idx] = 0
                                            require s < return_data.size
                                            require t < return_data.size
                                            mem[ceil32(return_data.size) + t + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
                                            idx = idx + 1
                                            continue 
                                        uint8(stor16[arg1].field_0) = 3
                                        emit ExecutionFailure(arg1);
                                        return bool(ext_call.success)
                                revert with 0, 'Addition exception'
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 129] <= 4294967296
                        require mem[ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                        require mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] <= 4294967296 and mem[ceil32(return_data.size) + 129] + mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129] + 64 <= return_data.size + 32
                        stor16[arg1][3][].field_0 = Array(len=mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129], data=mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 161 len mem[mem[ceil32(return_data.size) + 129] + ceil32(return_data.size) + 129]])
            uint8(stor16[arg1].field_0) = 3
            emit ExecutionFailure(arg1);
    return bool(ext_call.success)
}



}
