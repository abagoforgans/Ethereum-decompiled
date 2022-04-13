contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;

function _fallback() {
    stor0 = code.data[2781 len 20]
    stor1 = msg.sender
    stor2 = code.data[2813 len 20]
    stor3 = code.data[2845 len 20]
    stor4 = code.data[2865 len 32]
    return code.data[356 len 2413]
}



// =====================  Runtime code  =====================


address walletAddress;
address owner;
address sweeperAddress;
address sub_0f8b270fAddress;
uint256 gasLimit;

function sub_0f8b270f(?) {
    return sub_0f8b270fAddress
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function sweeper() {
    return sweeperAddress
}

function gasLimit() {
    return gasLimit
}

function sub_4cec4ed1(?) {
    require msg.sender == owner
    sweeperAddress = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
}

function changeGasLimit(uint256 arg1) {
    if sweeperAddress != msg.sender:
        require msg.sender == owner
    gasLimit = arg1
}

function _fallback() payable {
    call walletAddress with:
       value msg.value wei
         gas gasLimit wei
    require ext_call.success
}

function sweep(address arg1) {
    if sweeperAddress != msg.sender:
        require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args sub_0f8b270fAddress, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
