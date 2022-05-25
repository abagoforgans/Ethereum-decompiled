contract main {




// =====================  Runtime code  =====================


#
#  - utilityTokens(bytes32 arg1)
#
const blocksToWaitShort = 17280

const blocksToWaitLong = 120960

const TOKEN_DECIMALS = 18

const DECIMALSFACTOR = 10^18


address owner;
address proposedOwner;
address opsAddress;
address adminAddress;
uint256 chainIdValue;
address valueTokenAddress;
address registrarAddress;
array of uint256 uuids;
uint8 stor8;
mapping of address core;
mapping of struct stor10;
mapping of uint256 stor11;
mapping of struct stakes;
mapping of struct unstakes;

function chainIdValue() {
    return chainIdValue
}

function uuids(uint256 arg1) {
    require arg1 < uuids.length
    return uuids[arg1]
}

function registrar() {
    return registrarAddress
}

function deactivated() {
    return bool(stor8)
}

function getUuidsSize() {
    return uuids.length
}

function owner() {
    return owner
}

function opsAddress() {
    return opsAddress
}

function stakes(bytes32 arg1) {
    return stakes[arg1].field_0, 
           stakes[arg1].field_256,
           stakes[arg1].field_512,
           stakes[arg1].field_768,
           stakes[arg1].field_1024,
           stakes[arg1].field_1280,
           stakes[arg1].field_1536
}

function unstakes(bytes32 arg1) {
    return unstakes[arg1].field_0, 
           unstakes[arg1].field_256,
           unstakes[arg1].field_512,
           unstakes[arg1].field_768,
           unstakes[arg1].field_1024,
           unstakes[arg1].field_1280
}

function core(uint256 arg1) {
    return core[arg1]
}

function proposedOwner() {
    return proposedOwner
}

function valueToken() {
    return valueTokenAddress
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function getNextNonce(address arg1) {
    return (stor11[address(arg1)] + 1)
}

function deactivate() {
    require adminAddress
    require adminAddress == msg.sender
    stor8 = 1
    return 1
}

function initiateOwnershipTransfer(address arg1) {
    require msg.sender == owner
    proposedOwner = arg1
    emit OwnershipTransferInitiated(arg1);
    return 1
}

function hashRedemptionIntent(bytes32 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6) {
    return sha3(arg1, arg2, arg3, arg4, arg5, arg6)
}

function hashStakingIntent(bytes32 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    return sha3(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
}

function completeOwnershipTransfer() {
    require msg.sender == proposedOwner
    owner = proposedOwner
    proposedOwner = 0
    emit OwnershipTransferCompleted(proposedOwner);
    return 1
}

function setOpsAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if adminAddress:
        require adminAddress != arg1
    opsAddress = arg1
    emit OpsAddressChanged(arg1);
    return 1
}

function setAdminAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if opsAddress:
        require arg1 != opsAddress
    adminAddress = arg1
    emit AdminAddressChanged(arg1);
    return 1
}

function revokeProtocolTransfer(address arg1) {
    require adminAddress
    require adminAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x5b9ce56c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function initiateProtocolTransfer(address arg1, address arg2) {
    require adminAddress
    require adminAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x10bea39b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function revertUnstaking(bytes32 arg1) {
    require arg1
    require 0 < unstakes[arg1].field_1280
    require block.number >= unstakes[arg1].field_1280
    unstakes[arg1].field_0 = 0
    unstakes[arg1].field_256 = 0
    unstakes[arg1].field_512 = 0
    unstakes[arg1].field_768 = 0
    unstakes[arg1].field_1024 = 0
    unstakes[arg1].field_1280 = 0
    emit RevertedUnstake(unstakes[arg1].field_256, unstakes[arg1].field_512, unstakes[arg1].field_768, unstakes[arg1].field_0, arg1);
    return unstakes[arg1].field_0, unstakes[arg1].field_256, unstakes[arg1].field_512, unstakes[arg1].field_768
}

function addCore(address arg1) {
    require msg.sender == registrarAddress
    require arg1
    require ext_code.size(arg1)
    call arg1.0x2b20e397 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == registrarAddress
    require ext_code.size(arg1)
    call arg1.0x4418c081 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not core[ext_call.return_data[0]]
    core[ext_call.return_data[0]] = arg1
    return 1
}

function processUnstaking(bytes32 arg1) {
    require arg1
    require msg.sender == unstakes[arg1].field_256
    require block.number < unstakes[arg1].field_1280
    require stor10[stor13[arg1].field_0].field_1280
    require ext_code.size(stor10[stor13[arg1].field_0].field_1280)
    call stor10[stor13[arg1].field_0].field_1280.0x4e06bad1 with:
         gas gas_remaining wei
        args unstakes[arg1].field_512, unstakes[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit ProcessedUnstake(stor10[stor13[arg1].field_0].field_1280, unstakes[arg1].field_256, unstakes[arg1].field_512, unstakes[arg1].field_768, unstakes[arg1].field_0, arg1);
    unstakes[arg1].field_0 = 0
    unstakes[arg1].field_256 = 0
    unstakes[arg1].field_512 = 0
    unstakes[arg1].field_768 = 0
    unstakes[arg1].field_1024 = 0
    unstakes[arg1].field_1280 = 0
    return stor10[stor13[arg1].field_0].field_1280
}

function revertStaking(bytes32 arg1) {
    require arg1
    require 0 < stakes[arg1].field_1536
    require block.number >= stakes[arg1].field_1536
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stakes[arg1].field_1024
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stakes[arg1].field_256, stakes[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit RevertedStake(stakes[arg1].field_256, stakes[arg1].field_1024, stakes[arg1].field_1280, stakes[arg1].field_0, arg1);
    stakes[arg1].field_0 = 0
    stakes[arg1].field_256 = 0
    stakes[arg1].field_512 = 0
    stakes[arg1].field_768 = 0
    stakes[arg1].field_1024 = 0
    stakes[arg1].field_1280 = 0
    stakes[arg1].field_1536 = 0
    return stakes[arg1].field_0, stakes[arg1].field_1024, stakes[arg1].field_256
}

function processStaking(bytes32 arg1) {
    require arg1
    if stakes[arg1].field_256 != msg.sender:
        require msg.sender == registrarAddress
    require stor10[stor12[arg1].field_0].field_1280
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stakes[arg1].field_1024
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor10[stor12[arg1].field_0].field_1280, stakes[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit ProcessedStake(stor10[stor12[arg1].field_0].field_1280, stakes[arg1].field_256, stakes[arg1].field_1024, stakes[arg1].field_1280, stakes[arg1].field_0, arg1);
    stakes[arg1].field_0 = 0
    stakes[arg1].field_256 = 0
    stakes[arg1].field_512 = 0
    stakes[arg1].field_768 = 0
    stakes[arg1].field_1024 = 0
    stakes[arg1].field_1280 = 0
    stakes[arg1].field_1536 = 0
    return stor10[stor12[arg1].field_0].field_1280
}

function hashUuid(string arg1, string arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, uint8 arg7) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg2.length + (arg1.length % 32) + 32], arg4, arg5, arg6, arg7)
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}

function confirmRedemptionIntent(bytes32 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, bytes32 arg7) {
    require msg.sender == registrarAddress
    require stor10[arg1].field_1280
    require arg5 > 0
    require arg4
    require arg6 > 0
    require arg7
    require arg3 == stor11[address(arg2)] + 1
    stor11[address(arg2)]++
    require sha3(arg1, arg2, stor11[address(arg2)] + 1, arg4, arg5, arg6) == arg7
    require 10^stor10[arg1].field_768
    require arg5 >= stor10[arg1].field_512 / 10^stor10[arg1].field_768
    if arg5:
        require arg5
        require 10^stor10[arg1].field_768 * arg5 / arg5 == 10^stor10[arg1].field_768
    require stor10[arg1].field_512
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args stor10[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 10^stor10[arg1].field_768 * arg5 / stor10[arg1].field_512
    unstakes[arg1][arg2][stor11[address(arg2)] + 1][arg4][arg5][arg6].field_0 = arg1
    unstakes[arg1][arg2][stor11[address(arg2)] + 1][arg4][arg5][arg6].field_256 = arg2
    unstakes[arg1][arg2][stor11[address(arg2)] + 1][arg4][arg5][arg6].field_512 = arg4
    unstakes[arg1][arg2][stor11[address(arg2)] + 1][arg4][arg5][arg6].field_768 = 10^stor10[arg1].field_768 * arg5 / stor10[arg1].field_512
    unstakes[arg1][arg2][stor11[address(arg2)] + 1][arg4][arg5][arg6].field_1024 = arg5
    unstakes[arg1][arg2][stor11[address(arg2)] + 1][arg4][arg5][arg6].field_1280 = block.number + 17280
    emit RedemptionIntentConfirmed(sha3(arg1, arg2, stor11[address(arg2)] + 1, arg4, arg5, arg6), address(arg2), address(arg4), 10^stor10[arg1].field_768 * arg5 / stor10[arg1].field_512, arg5, block.number + 17280, arg1);
    return 10^stor10[arg1].field_768 * arg5 / stor10[arg1].field_512, block.number + 17280
}

function stake(bytes32 arg1, uint256 arg2, address arg3) {
    require not stor8
    require arg2 > 0
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args tx.origin, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require stor10[arg1].field_1280
    require arg3
    if stor10[arg1].field_1536:
        require msg.sender == stor10[arg1].field_1536
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args tx.origin, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg2:
        require arg2
        require stor10[arg1].field_512 * arg2 / arg2 == stor10[arg1].field_512
    require 10^stor10[arg1].field_768
    stor11[tx.origin]++
    stakes[arg1][tx.origin][stor11[tx.origin] + 1][arg3][arg2][stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768][block.number + 120960].field_0 = arg1
    stakes[arg1][tx.origin][stor11[tx.origin] + 1][arg3][arg2][stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768][block.number + 120960].field_256 = tx.origin
    stakes[arg1][tx.origin][stor11[tx.origin] + 1][arg3][arg2][stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768][block.number + 120960].field_512 = arg3
    stakes[arg1][tx.origin][stor11[tx.origin] + 1][arg3][arg2][stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768][block.number + 120960].field_768 = stor11[tx.origin] + 1
    stakes[arg1][tx.origin][stor11[tx.origin] + 1][arg3][arg2][stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768][block.number + 120960].field_1024 = arg2
    stakes[arg1][tx.origin][stor11[tx.origin] + 1][arg3][arg2][stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768][block.number + 120960].field_1280 = stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768
    stakes[arg1][tx.origin][stor11[tx.origin] + 1][arg3][arg2][stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768][block.number + 120960].field_1536 = block.number + 120960
    emit StakingIntentDeclared(stor11[tx.origin] + 1, address(arg3), arg2, stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768, block.number + 120960, sha3(arg1, tx.origin, stor11[tx.origin] + 1, arg3, arg2, stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768, block.number + 120960), stor10[arg1].field_1024, arg1, tx.origin);
    return stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768, 
           stor11[tx.origin] + 1,
           block.number + 120960,
           sha3(arg1, tx.origin, stor11[tx.origin] + 1, arg3, arg2, stor10[arg1].field_512 * arg2 / 10^stor10[arg1].field_768, block.number + 120960)
}

function registerUtilityToken(string arg1, string arg2, uint256 arg3, uint8 arg4, uint256 arg5, address arg6, bytes32 arg7) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == registrarAddress
    require 0 < arg2.length
    require 0 < arg1.length
    require arg3 > 0
    require arg4 <= 5
    require ext_code.size(core[arg5])
    call core[arg5].0xf7060b68 with:
         gas gas_remaining wei
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = chainIdValue
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 192] = arg5
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 224] = address(ext_call.return_data[0])
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 244] = arg3
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 276] = arg4 << 248
    _659 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg2.length + (arg1.length % 32) + 32], arg5, address(ext_call.return_data[0]), arg3, arg4)
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg2.length + (arg1.length % 32) + 32], arg5, address(ext_call.return_data[0]), arg3, arg4) == arg7
    require not stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg2.length + (arg1.length % 32) + 32]][arg5][address(ext_call.return_data[0])][arg3][arg4].field_1280
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 1709] = code.data[10341 len 1709]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1869] = valueTokenAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1901] = this.address
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1933] = _659
    create contract with 0 wei
                    code: code.data[10341 len 1709], valueTokenAddress, address(this.address), _659
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    stor10[_659][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor10[_659][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor10[_659].field_512 = arg3
    stor10[_659].field_768 = arg4
    stor10[_659].field_776 = 18
    stor10[_659].field_1024 = arg5
    stor10[_659].field_1280 = address(create.new_address)
    stor10[_659].field_1536 = arg6
    uuids.length++
    uuids[uuids.length] = _659
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 640 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 640] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 672 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit UtilityTokenRegistered(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 640 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 224, 18, arg3, arg4 << 248, arg5, _659, address(create.new_address), arg6);
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 672] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 704 len arg2.length % 32]
        emit UtilityTokenRegistered(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 640 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 224, 18, arg3, arg4 << 248, arg5, _659, address(create.new_address), arg6);
    return _659
}



}
