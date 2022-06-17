contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address destinationAddress;
address defaultSweeperAddress;
mapping of address sweepers;

function defaultSweeper() {
    return defaultSweeperAddress
}

function owner() {
    return owner
}

function sweepers(address arg1) {
    return sweepers[arg1]
}

function destination() {
    return destinationAddress
}

function authorized(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function setDestination(address arg1) {
    destinationAddress = arg1
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function authorize(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function deauthorize(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function addSweeper(address arg1, address arg2) {
    require msg.sender == owner
    sweepers[address(arg1)] = arg2
}

function logEthDeposit(address arg1, address arg2, uint256 arg3) {
    emit 0x1d34d197: address(arg1), address(arg2), arg3
}

function sweeperOf(address arg1) {
    if sweepers[address(arg1)]:
        return sweepers[address(arg1)]
    return defaultSweeperAddress
}

function logSweep(address arg1, address arg2, address arg3, uint256 arg4) {
    emit 0xde2ecff7: address(arg1), address(arg2), address(arg3), arg4
}

function createWallet() {
    require stor1[address(msg.sender)]
    create contract with 0 wei
                    code: code.data[3520 len 1093], address(this.address)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit WalletCreated(address(create.new_address));
}

function createWallets(uint256 arg1) {
    require stor1[address(msg.sender)]
    idx = 0
    while idx < arg1:
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        mem[96 len 1093] = code.data[3520 len 1093]
        mem[1189] = this.address
        create contract with 0 wei
                        code: code.data[3520 len 1093], this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = address(create.new_address)
        emit WalletCreated(address(create.new_address));
        idx = idx + 1
        continue 
}



}
