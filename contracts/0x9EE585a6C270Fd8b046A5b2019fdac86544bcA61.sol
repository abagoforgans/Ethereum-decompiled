contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() {
    require code.data[3079 len 20]
    require code.data[3111 len 20]
    require code.data[3131 len 32]
    stor0 = msg.sender
    stor1 = code.data[3079 len 20]
    stor2 = code.data[3111 len 20]
    stor3 = code.data[3131 len 32]
    stor4 = code.data[3163 len 32]
    if not stor4:
        stor4 = block.timestamp
    return code.data[398 len 2669]
}



// =====================  Runtime code  =====================


address owner;
address receiverAddress;
address walletAddress;
uint256 disbursementPeriod;
uint256 startDate;
uint256 withdrawnTokens;
address tokenAddress;

function withdrawnTokens() {
    return withdrawnTokens
}

function startDate() {
    return startDate
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function disbursementPeriod() {
    return disbursementPeriod
}

function receiver() {
    return receiverAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setup(address arg1) {
    require msg.sender == owner
    require not tokenAddress
    require arg1
    tokenAddress = arg1
}

function walletWithdraw() {
    require msg.sender == walletAddress
    require tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    withdrawnTokens += ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args walletAddress, ext_call.return_data[0]
    require ext_call.success
}

function calcMaxWithdraw() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require disbursementPeriod
    if withdrawnTokens < (block.timestamp * ext_call.return_data[0]) - (startDate * ext_call.return_data[0]) + (block.timestamp * withdrawnTokens) - (startDate * withdrawnTokens) / disbursementPeriod:
        if startDate <= block.timestamp:
            return (((block.timestamp * ext_call.return_data[0]) - (startDate * ext_call.return_data[0]) + (block.timestamp * withdrawnTokens) - (startDate * withdrawnTokens) / disbursementPeriod) - withdrawnTokens)
        else:
            return 0
    else:
        return 0
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == receiverAddress
    require tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require disbursementPeriod
    if withdrawnTokens >= (block.timestamp * ext_call.return_data[0]) - (startDate * ext_call.return_data[0]) + (block.timestamp * withdrawnTokens) - (startDate * withdrawnTokens) / disbursementPeriod:
        require arg2 <= 0
    else:
        if startDate <= block.timestamp:
            require arg2 <= ((block.timestamp * ext_call.return_data[0]) - (startDate * ext_call.return_data[0]) + (block.timestamp * withdrawnTokens) - (startDate * withdrawnTokens) / disbursementPeriod) - withdrawnTokens
        else:
            require arg2 <= 0
    withdrawnTokens += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
}



}
