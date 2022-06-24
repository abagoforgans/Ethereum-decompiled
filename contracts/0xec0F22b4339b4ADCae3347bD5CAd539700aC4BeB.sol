contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address worker;
address minterManagerAddress;

function owner() {
    return owner
}

function getMinterManager() {
    return minterManagerAddress
}

function getWorker(address arg1) {
    return worker[address(arg1)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMinterManager(address arg1) {
    require msg.sender == owner
    emit MinterManagerSet(minterManagerAddress, arg1);
    minterManagerAddress = arg1
}

function removeController(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller must be a non-zero address'
    if not worker[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Worker must be a non-zero address'
    worker[address(arg1)] = 0
    emit ControllerRemoved(arg1);
}

function configureController(address arg1, address arg2) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller must be a non-zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Worker must be a non-zero address'
    worker[address(arg1)] = arg2
    emit ControllerConfigured(arg1, arg2);
}

function removeMinter() {
    if not worker[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The value of controllers[msg.sender] must be non-zero'
    emit MinterRemoved(msg.sender, worker[address(msg.sender)]);
    require ext_code.size(minterManagerAddress)
    call minterManagerAddress.removeMinter(address arg1) with:
         gas gas_remaining wei
        args worker[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function configureMinter(uint256 arg1) {
    if not worker[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The value of controllers[msg.sender] must be non-zero'
    emit MinterConfigured(arg1, msg.sender, worker[address(msg.sender)]);
    require ext_code.size(minterManagerAddress)
    call minterManagerAddress.configureMinter(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args worker[address(msg.sender)], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function incrementMinterAllowance(uint256 arg1) {
    if not worker[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The value of controllers[msg.sender] must be non-zero'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allowance increment must be greater than 0'
    require ext_code.size(minterManagerAddress)
    call minterManagerAddress.0xaa271e1a with:
         gas gas_remaining wei
        args worker[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only increment allowance for minters in minterManager'
    require ext_code.size(minterManagerAddress)
    call minterManagerAddress.minterAllowance(address arg1) with:
         gas gas_remaining wei
        args worker[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg1 >= ext_call.return_data[0]
    emit MinterAllowanceIncremented(arg1, ext_call.return_data[0] + arg1, msg.sender, worker[address(msg.sender)]);
    require ext_code.size(minterManagerAddress)
    call minterManagerAddress.configureMinter(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args worker[address(msg.sender)], ext_call.return_data[0] + arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decrementMinterAllowance(uint256 arg1) {
    if not worker[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The value of controllers[msg.sender] must be non-zero'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allowance decrement must be greater than 0'
    require ext_code.size(minterManagerAddress)
    call minterManagerAddress.0xaa271e1a with:
         gas gas_remaining wei
        args worker[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only decrement allowance for minters in minterManager'
    require ext_code.size(minterManagerAddress)
    call minterManagerAddress.minterAllowance(address arg1) with:
         gas gas_remaining wei
        args worker[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > arg1:
        require arg1 <= ext_call.return_data[0]
        emit MinterAllowanceDecremented(arg1, ext_call.return_data[0] - arg1, msg.sender, worker[address(msg.sender)]);
        require ext_code.size(minterManagerAddress)
        call minterManagerAddress.configureMinter(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args worker[address(msg.sender)], ext_call.return_data[0] - arg1
    else:
        require ext_call.return_data[0] <= ext_call.return_data[0]
        emit MinterAllowanceDecremented(ext_call.return_data[0], 0, msg.sender, worker[address(msg.sender)]);
        require ext_code.size(minterManagerAddress)
        call minterManagerAddress.configureMinter(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args worker[address(msg.sender)], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
