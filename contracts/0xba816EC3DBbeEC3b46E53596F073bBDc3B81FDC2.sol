contract main {




// =====================  Runtime code  =====================


address owner;
address proposedOwner;
address adminAddress;
mapping of uint256 workers;

function workers(address arg1) payable {
    require calldata.size - 4 >= 32
    return workers[arg1]
}

function owner() payable {
    return owner
}

function proposedOwner() payable {
    return proposedOwner
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function isWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    return (block.number < workers[address(arg1)])
}

function isOrganization(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner == arg1:
        return True
    return (adminAddress == arg1)
}

function completeOwnershipTransfer() payable {
    if proposedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e43616c6c6572206973206e6f742070726f706f736564206f776e65722061646472657373,
                    mem[201 len 27]
    emit OwnershipTransferCompleted(proposedOwner, owner);
    owner = proposedOwner
    proposedOwner = 0
    return 1
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xfe4f6e6c79206f776e657220616e642061646d696e2061726520616c6c6f77656420746f2063616c6c2074686973206d6574686f64,
                        mem[217 len 11]
    if adminAddress != arg1:
        emit 0x4c6c9f2e: adminAddress, arg1
        adminAddress = arg1
    return 1
}

function unsetWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xfe4f6e6c79206f776e657220616e642061646d696e2061726520616c6c6f77656420746f2063616c6c2074686973206d6574686f64,
                        mem[217 len 11]
    if workers[address(arg1)] <= 0:
        return 0
    workers[address(arg1)] = 0
    emit 0x40311c75: arg1
    return 1
}

function initiateOwnershipTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e4f6e6c79206f776e657220697320616c6c6f77656420746f2063616c6c2074686973206d6574686f64,
                    mem[206 len 22]
    if owner == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x2e50726f706f736564206f776e657220616464726573732063616e27742062652063757272656e74206f776e65722061646472657373,
                    mem[218 len 10]
    proposedOwner = arg1
    emit OwnershipTransferInitiated(owner, arg1);
    return 1
}

function setWorker(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xfe4f6e6c79206f776e657220616e642061646d696e2061726520616c6c6f77656420746f2063616c6c2074686973206d6574686f64,
                        mem[217 len 11]
    if not arg1:
        revert with 0, 'Worker address cannot be null.'
    if arg2 <= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x2e45787069726174696f6e20686569676874206d75737420626520696e2074686520667574757265,
                    mem[204 len 24]
    workers[address(arg1)] = arg2
    emit 0x7a423874: arg2, arg1
}



}
