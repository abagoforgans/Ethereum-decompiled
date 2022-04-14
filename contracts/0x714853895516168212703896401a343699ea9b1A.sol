contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[4354 len 2067], address(this.address)
    require create.new_address
    stor3 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor2 = msg.sender
    stor1 = msg.sender
    return code.data[396 len 3958]
}



// =====================  Runtime code  =====================


address owner;
address authorizedCallerAddress;
uint8 halted; offset 160
uint128 stor2; offset 160
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
    return bool(halted)
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
    if authorizedCallerAddress != msg.sender:
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
    if authorizedCallerAddress != msg.sender:
        require msg.sender == owner
    create contract with 0 wei
                    code: code.data[3142 len 773], address(this.address)
    require create.new_address
    emit LogNewWallet(address(create.new_address));
    return address(create.new_address)
}



}
