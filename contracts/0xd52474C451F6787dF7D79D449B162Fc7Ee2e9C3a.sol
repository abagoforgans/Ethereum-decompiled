contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;

function _fallback() {
    require code.data[5882 len 32] >= code.data[5850 len 32]
    stor0 = code.data[5882 len 32]
    stor1 = code.data[5850 len 32]
    stor2 = code.data[5914 len 32]
    stor3 = code.data[5958 len 20]
    return code.data[135 len 5715]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
mapping of uint256 stor4;
mapping of address stor5;
mapping of uint256 stor6;
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
    return (arg2 == stor5[address(arg1)])
}

function isOwner(address arg1, address arg2) {
    if stor4[address(arg1)][address(arg2)] <= 0:
        return (stor4[address(arg1)][address(arg2)] > 0)
    return stor1 + stor4[address(arg1)][address(arg2)] <= block.timestamp
}

function isOlderOwner(address arg1, address arg2) {
    if stor4[address(arg1)][address(arg2)] <= 0:
        return (stor4[address(arg1)][address(arg2)] > 0)
    return stor0 + stor4[address(arg1)][address(arg2)] <= block.timestamp
}

function registerIdentity(address arg1, address arg2) {
    require arg2
    require not stor5[address(msg.sender)]
    stor4[address(msg.sender)][address(arg1)] = block.timestamp - stor0
    stor5[address(msg.sender)] = arg2
    emit LogIdentityCreated(arg1, msg.sender, msg.sender, arg2);
}

function createIdentity(address arg1, address arg2) {
    require arg2
    create contract with 0 wei
                    code: code.data[4720 len 952]
    require create.new_address
    stor4[address(create.new_address)][address(arg1)] = block.timestamp - stor0
    stor5[address(create.new_address)] = arg2
    emit LogIdentityCreated(arg1, address(create.new_address), msg.sender, arg2);
}

function cancelMigration(address arg1, address arg2) {
    if stor3 != msg.sender:
        require calldata.size >= 36
        require msg.sender == arg1
    require stor4[address(arg2)][address(arg1)] > 0
    require stor1 + stor4[address(arg2)][address(arg1)] <= block.timestamp
    migrationInitiated[address(arg2)] = 0
    migrationNew[address(arg2)] = 0
    emit LogMigrationCanceled(arg1, arg2, migrationNew[address(arg2)]);
}

function initiateMigration(address arg1, address arg2, address arg3) {
    if stor3 != msg.sender:
        require calldata.size >= 36
        require msg.sender == arg1
    require stor4[address(arg2)][address(arg1)] > 0
    require stor0 + stor4[address(arg2)][address(arg1)] <= block.timestamp
    migrationInitiated[address(arg2)] = block.timestamp
    migrationNew[address(arg2)] = arg3
    emit LogMigrationInitiated(arg1, arg2, arg3);
}

function changeRecovery(address arg1, address arg2, address arg3) {
    if stor3 != msg.sender:
        require calldata.size >= 36
        require msg.sender == arg1
    require stor4[address(arg2)][address(arg1)] > 0
    require stor0 + stor4[address(arg2)][address(arg1)] <= block.timestamp
    require stor6[address(arg2)][address(arg1)] < block.timestamp - stor2
    stor6[address(arg2)][address(arg1)] = block.timestamp
    require arg3
    stor5[address(arg2)] = arg3
    emit LogRecoveryChanged(arg1, arg2, arg3);
}

function removeOwner(address arg1, address arg2, address arg3) {
    if stor3 != msg.sender:
        require calldata.size >= 36
        require msg.sender == arg1
    require stor4[address(arg2)][address(arg1)] > 0
    require stor0 + stor4[address(arg2)][address(arg1)] <= block.timestamp
    require stor6[address(arg2)][address(arg1)] < block.timestamp - stor2
    stor6[address(arg2)][address(arg1)] = block.timestamp
    require arg3 != arg1
    stor4[address(arg2)][address(arg3)] = 0
    emit LogOwnerRemoved(arg1, arg2, arg3);
}

function forwardTo(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5) {
    if stor3 != msg.sender:
        require calldata.size >= 36
        require msg.sender == arg1
    require stor4[address(arg2)][address(arg1)] > 0
    require stor1 + stor4[address(arg2)][address(arg1)] <= block.timestamp
    require ext_code.size(arg2)
    call arg2.forward(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining - 710 wei
        args address(arg3), arg4, Array(len=arg5.length, data=arg5[all])
    require ext_call.success
}

function addOwnerFromRecovery(address arg1, address arg2, address arg3) {
    if stor3 != msg.sender:
        require calldata.size >= 36
        require msg.sender == arg1
    require arg1 == stor5[address(arg2)]
    require stor6[address(arg2)][address(arg1)] < block.timestamp - stor2
    stor6[address(arg2)][address(arg1)] = block.timestamp
    if stor4[address(arg2)][address(arg3)] > 0:
        require stor1 + stor4[address(arg2)][address(arg3)] > block.timestamp
    stor4[address(arg2)][address(arg3)] = block.timestamp
    emit LogOwnerAdded(arg1, arg2, arg3);
}

function addOwner(address arg1, address arg2, address arg3) {
    if stor3 != msg.sender:
        require calldata.size >= 36
        require msg.sender == arg1
    require stor4[address(arg2)][address(arg1)] > 0
    require stor0 + stor4[address(arg2)][address(arg1)] <= block.timestamp
    require stor6[address(arg2)][address(arg1)] < block.timestamp - stor2
    stor6[address(arg2)][address(arg1)] = block.timestamp
    if stor4[address(arg2)][address(arg3)] > 0:
        require stor1 + stor4[address(arg2)][address(arg3)] > block.timestamp
    stor4[address(arg2)][address(arg3)] = block.timestamp - stor1
    emit LogOwnerAdded(arg1, arg2, arg3);
}

function finalizeMigration(address arg1, address arg2) {
    if stor3 != msg.sender:
        require calldata.size >= 36
        require msg.sender == arg1
    require stor4[address(arg2)][address(arg1)] > 0
    require stor0 + stor4[address(arg2)][address(arg1)] <= block.timestamp
    require migrationInitiated[address(arg2)]
    require stor0 + migrationInitiated[address(arg2)] < block.timestamp
    migrationInitiated[address(arg2)] = 0
    migrationNew[address(arg2)] = 0
    require ext_code.size(arg2)
    call arg2.transfer(address rg1) with:
         gas gas_remaining - 710 wei
        args migrationNew[address(arg2)]
    require ext_call.success
    stor5[address(arg2)] = 0
    stor4[address(arg2)][address(arg1)] = 0
    emit LogMigrationFinalized(arg1, arg2, migrationNew[address(arg2)]);
}

function createIdentityWithCall(address arg1, address arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg2
    mem[ceil32(arg4.length) + 128 len 952] = code.data[4720 len 952]
    create contract with 0 wei
                    code: code.data[4720 len 952]
    require create.new_address
    stor4[address(create.new_address)][address(arg1)] = block.timestamp - stor0
    stor5[address(create.new_address)] = arg2
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
