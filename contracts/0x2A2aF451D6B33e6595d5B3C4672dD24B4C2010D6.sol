contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address casinoAddress;
mapping of uint8 stor2;
address destinationAddress;
uint8 stor4; offset 160
address defaultSweeperAddress;
mapping of address sweepers;
mapping of uint8 stor6;

function defaultSweeper() {
    return defaultSweeperAddress
}

function wallets(address arg1) {
    return bool(stor6[arg1])
}

function owner() {
    return owner
}

function sweepers(address arg1) {
    return sweepers[arg1]
}

function casino() {
    return casinoAddress
}

function destination() {
    return destinationAddress
}

function authorized(address arg1) {
    return bool(stor2[arg1])
}

function halted() {
    return bool(stor4)
}

function sub_d175f57d(?) {
    return bool(stor1)
}

function _fallback() payable {
    revert
}

function start() {
    require msg.sender == owner
    stor4 = 0
}

function setDestination(address arg1) {
    destinationAddress = arg1
}

function sub_37ef9d56(?) {
    require msg.sender == owner
    stor1 = 1
}

function sub_cc0e69d6(?) {
    require msg.sender == owner
    stor1 = 0
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setCasino(address arg1) {
    require msg.sender == owner
    casinoAddress = arg1
}

function authorize(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
}

function deauthorize(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 0
}

function addSweeper(address arg1, address arg2) {
    require msg.sender == owner
    sweepers[address(arg1)] = arg2
}

function sweeperOf(address arg1) {
    if sweepers[address(arg1)]:
        return sweepers[address(arg1)]
    return defaultSweeperAddress
}

function logSweep(address arg1, address arg2, address arg3, uint256 arg4) {
    emit 0xde2ecff7: address(arg1), address(arg2), address(arg3), arg4
}

function logEthDeposit(address arg1, address arg2, uint256 arg3) {
    require stor6[msg.sender]
    emit 0x1d34d197: address(arg1), address(arg2), arg3
}

function createWallet() {
    create contract with 0 wei
                    code: code.data[2461 len 773], address(this.address)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[address(create.new_address)] = 1
    emit WalletCreated(address(create.new_address));
}

function halt() {
    if not stor2[msg.sender]:
        require stor1
        require ext_code.size(casinoAddress)
        call casinoAddress.0xb9181611 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    stor4 = 1
}

function createWallets(uint256 arg1) {
    idx = 0
    while idx < arg1:
        mem[96 len 773] = code.data[2461 len 773]
        mem[869] = this.address
        create contract with 0 wei
                        code: code.data[2461 len 773], this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = address(create.new_address)
        mem[32] = 6
        stor6[address(create.new_address)] = 1
        mem[96] = address(create.new_address)
        emit WalletCreated(address(create.new_address));
        idx = idx + 1
        continue 
}



}
