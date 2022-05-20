contract main {




// =====================  Runtime code  =====================


address owner;
address authorizedCallerAddress;
uint8 stor2; offset 160
address destinationAddress;
address defaultSweeperAddress;
mapping of address stor4;

function defaultSweeper() {
    return defaultSweeperAddress
}

function owner() {
    return owner
}

function authorizedCaller() {
    return authorizedCallerAddress
}

function destination() {
    return destinationAddress
}

function halted() {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function start() {
    require msg.sender == owner
    stor2 = 0
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeDestination(address arg1) {
    require msg.sender == owner
    destinationAddress = arg1
}

function halt() {
    require msg.sender == authorizedCallerAddress
    require msg.sender == owner
    stor2 = 1
}

function addSweeper(address arg1, address arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = arg2
}

function changeAuthorizedCaller(address arg1) {
    require msg.sender == owner
    authorizedCallerAddress = arg1
}

function logSweep(address arg1, address arg2, address arg3, uint256 arg4) {
    emit LogSweep(arg4, arg1, arg2, arg3);
}

function sweeperOf(address arg1) {
    if stor4[address(arg1)]:
        return stor4[address(arg1)]
    return defaultSweeperAddress
}

function makeWallet() {
    require msg.sender == authorizedCallerAddress
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[1527 len 626], address(this.address)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogNewWallet(address(create.new_address));
    return address(create.new_address)
}



}
