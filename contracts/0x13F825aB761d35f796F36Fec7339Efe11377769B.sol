contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 3949]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address activeContracts;
mapping of uint8 stor3;

function activeContracts(uint256 arg1) {
    return activeContracts[arg1]
}

function owner() {
    return owner
}

function existsManagedContract(uint256 arg1, address arg2) {
    require arg1
    require arg2
    return bool(stor1[arg1][address(arg2)])
}

function managedContracts(uint256 arg1, address arg2) {
    return bool(stor1[arg1][arg2])
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

function getActiveContractAddress(uint256 arg1) {
    require not stor3[arg1]
    require arg1
    require activeContracts[arg1]
    require ext_code.size(activeContracts[arg1])
    call activeContracts[arg1].active() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    return activeContracts[arg1]
}

function rollbackContract(uint256 arg1, address arg2) {
    require msg.sender == owner
    require not stor3[arg1]
    require arg1
    require arg2
    stor3[arg1] = 1
    require ext_code.size(arg2)
    call arg2.identifier() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 == ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.active() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require arg1
    require arg2
    require stor1[arg1][address(arg2)]
    if activeContracts[arg1]:
        require ext_code.size(activeContracts[arg1])
        call activeContracts[arg1].deactivate() with:
             gas gas_remaining - 710 wei
        require ext_call.success
    require ext_code.size(arg2)
    call arg2.activate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    activeContracts[arg1] = arg2
    stor3[arg1] = 0
    emit RollbackedContract(arg1, activeContracts[arg1], arg2);
}

function upgradeContract(uint256 arg1, address arg2) {
    require msg.sender == owner
    require not stor3[arg1]
    require arg1
    require arg2
    stor3[arg1] = 1
    require ext_code.size(arg2)
    call arg2.active() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.identifier() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 == ext_call.return_data[0]
    require arg1
    require arg2
    require not stor1[arg1][address(arg2)]
    if activeContracts[arg1]:
        require ext_code.size(activeContracts[arg1])
        call activeContracts[arg1].active() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        if activeContracts[arg1]:
            require ext_code.size(activeContracts[arg1])
            call activeContracts[arg1].deactivate() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
    require ext_code.size(arg2)
    call arg2.activate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    activeContracts[arg1] = arg2
    stor1[arg1][address(arg2)] = 1
    stor3[arg1] = 0
    emit UpgradedContract(arg1, activeContracts[arg1], arg2);
}



}
