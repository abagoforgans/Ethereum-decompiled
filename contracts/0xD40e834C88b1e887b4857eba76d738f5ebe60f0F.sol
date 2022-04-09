contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[1197 len 32]
    stor3 = code.data[1241 len 20]
    stor4 = code.data[1241 len 20]
    return code.data[138 len 1059]
}



// =====================  Runtime code  =====================


address owner;
uint256 lastMintingTime;
uint256 lastMintingAmount;
address prosperaTokenAddress;
address prosperaTokenAddress;

function lastMintingTime() {
    return lastMintingTime
}

function prosperaToken() {
    return prosperaTokenAddress
}

function lastMintingAmount() {
    return lastMintingAmount
}

function owner() {
    return owner
}

function prosperaTokenAddress() {
    return prosperaTokenAddress
}

function _fallback() payable {
    revert
}

function calculateMintAmount() {
    return (10295 * lastMintingAmount / 10000)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
    return arg1
}

function mint() {
    if block.timestamp < lastMintingTime + (720 * 24 * 3600):
        return 0
    require owner == msg.sender
    require ext_code.size(prosperaTokenAddress)
    call prosperaTokenAddress.mintToAccount(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10295 * lastMintingAmount / 10000
    require ext_call.success
    lastMintingAmount = 10295 * lastMintingAmount / 10000
    lastMintingTime = block.timestamp
    require ext_code.size(prosperaTokenAddress)
    call prosperaTokenAddress.incrementTotalSupply(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (10295 * lastMintingAmount / 10000)
    require ext_call.success
    return 1
}



}
