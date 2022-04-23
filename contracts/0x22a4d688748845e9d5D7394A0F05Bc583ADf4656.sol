contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    require code.data[5367 len 32] >= code.data[5335 len 32]
    stor0 = code.data[5367 len 32]
    stor1 = code.data[5335 len 32]
    stor2 = code.data[5399 len 32]
    return code.data[100 len 5235]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
mapping of address stor4;
mapping of uint256 stor5;
mapping of uint256 migrationInitiated;
mapping of address migrationNew;

function migrationNewAddress(address arg1) {
    return migrationNew[arg1]
}

function migrationInitiated(address arg1) {
    return migrationInitiated[arg1]
}

function _fallback() payable {
    revert
}

function isRecovery(address arg1, address arg2) {
    return (arg2 == stor4[address(arg1)])
}

function isOwner(address arg1, address arg2) {
    if stor3[address(arg1)][address(arg2)] <= 0:
        return (stor3[address(arg1)][address(arg2)] > 0)
    return stor1 + stor3[address(arg1)][address(arg2)] <= block.timestamp
}

function isOlderOwner(address arg1, address arg2) {
    if stor3[address(arg1)][address(arg2)] <= 0:
        return (stor3[address(arg1)][address(arg2)] > 0)
    return stor0 + stor3[address(arg1)][address(arg2)] <= block.timestamp
}

function registerIdentity(address arg1, address arg2) {
    require arg2
    require not stor4[address(msg.sender)]
    stor3[address(msg.sender)][address(arg1)] = block.timestamp - stor0
    stor4[address(msg.sender)] = arg2
    emit LogIdentityCreated(arg1, msg.sender, msg.sender, arg2);
}

function cancelMigration(address arg1) {
    require stor3[address(arg1)][address(msg.sender)] > 0
    require stor1 + stor3[address(arg1)][address(msg.sender)] <= block.timestamp
    migrationInitiated[address(arg1)] = 0
    migrationNew[address(arg1)] = 0
    emit LogMigrationCanceled(msg.sender, arg1, migrationNew[address(arg1)]);
}

function initiateMigration(address arg1, address arg2) {
    require stor3[address(arg1)][address(msg.sender)] > 0
    require stor0 + stor3[address(arg1)][address(msg.sender)] <= block.timestamp
    require arg2
    migrationInitiated[address(arg1)] = block.timestamp
    migrationNew[address(arg1)] = arg2
    emit LogMigrationInitiated(msg.sender, arg1, arg2);
}

function createIdentity(address arg1, address arg2) {
    require arg2
    create contract with 0 wei
                    code: code.data[4240 len 952]
    require create.new_address
    stor3[address(create.new_address)][address(arg1)] = block.timestamp - stor0
    stor4[address(create.new_address)] = arg2
    emit LogIdentityCreated(arg1, address(create.new_address), msg.sender, arg2);
}

function changeRecovery(address arg1, address arg2) {
    require stor3[address(arg1)][address(msg.sender)] > 0
    require stor0 + stor3[address(arg1)][address(msg.sender)] <= block.timestamp
    require stor5[address(arg1)][address(msg.sender)] < block.timestamp - stor2
    stor5[address(arg1)][address(msg.sender)] = block.timestamp
    require arg2
    stor4[address(arg1)] = arg2
    emit LogRecoveryChanged(msg.sender, arg1, arg2);
}

function forwardTo(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require stor3[address(arg1)][address(msg.sender)] > 0
    require stor1 + stor3[address(arg1)][address(msg.sender)] <= block.timestamp
    require ext_code.size(arg1)
    call arg1.forward(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
}

function removeOwner(address arg1, address arg2) {
    require stor3[address(arg1)][address(msg.sender)] > 0
    require stor0 + stor3[address(arg1)][address(msg.sender)] <= block.timestamp
    require stor5[address(arg1)][address(msg.sender)] < block.timestamp - stor2
    stor5[address(arg1)][address(msg.sender)] = block.timestamp
    require arg2 != msg.sender
    stor3[address(arg1)][address(arg2)] = 0
    emit LogOwnerRemoved(msg.sender, arg1, arg2);
}

function addOwnerFromRecovery(address arg1, address arg2) {
    require stor4[address(arg1)] == msg.sender
    require stor5[address(arg1)][address(msg.sender)] < block.timestamp - stor2
    stor5[address(arg1)][address(msg.sender)] = block.timestamp
    if stor3[address(arg1)][address(arg2)] > 0:
        require stor1 + stor3[address(arg1)][address(arg2)] > block.timestamp
    stor3[address(arg1)][address(arg2)] = block.timestamp
    emit LogOwnerAdded(msg.sender, arg1, arg2);
}

function addOwner(address arg1, address arg2) {
    require stor3[address(arg1)][address(msg.sender)] > 0
    require stor0 + stor3[address(arg1)][address(msg.sender)] <= block.timestamp
    require stor5[address(arg1)][address(msg.sender)] < block.timestamp - stor2
    stor5[address(arg1)][address(msg.sender)] = block.timestamp
    if stor3[address(arg1)][address(arg2)] > 0:
        require stor1 + stor3[address(arg1)][address(arg2)] > block.timestamp
    stor3[address(arg1)][address(arg2)] = block.timestamp - stor1
    emit LogOwnerAdded(msg.sender, arg1, arg2);
}

function finalizeMigration(address arg1) {
    require stor3[address(arg1)][address(msg.sender)] > 0
    require stor0 + stor3[address(arg1)][address(msg.sender)] <= block.timestamp
    require migrationInitiated[address(arg1)]
    require stor0 + migrationInitiated[address(arg1)] < block.timestamp
    migrationInitiated[address(arg1)] = 0
    migrationNew[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.transfer(address rg1) with:
         gas gas_remaining - 710 wei
        args migrationNew[address(arg1)]
    require ext_call.success
    stor4[address(arg1)] = 0
    stor3[address(arg1)][address(msg.sender)] = 0
    emit LogMigrationFinalized(msg.sender, arg1, migrationNew[address(arg1)]);
}

function createIdentityWithCall(address arg1, address arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg2
    mem[ceil32(arg4.length) + 128 len 952] = code.data[4240 len 952]
    create contract with 0 wei
                    code: code.data[4240 len 952]
    require create.new_address
    stor3[address(create.new_address)][address(arg1)] = block.timestamp - stor0
    stor4[address(create.new_address)] = arg2
    emit LogIdentityCreated(arg1, address(create.new_address), msg.sender, arg2);
    mem[ceil32(arg4.length) + 128] = 0xd7f31eb900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 260 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).forward(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args address(arg3), 0, 96, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 260] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 292 len arg4.length % 32]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).forward(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args address(arg3), 0, 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 260 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
    require ext_call.success
}



}
