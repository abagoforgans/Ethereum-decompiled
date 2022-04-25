contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    require code.data[3243 len 20]
    require code.data[3275 len 20]
    require code.data[3307 len 20]
    require code.data[3339 len 20]
    require code.data[3359 len 32] > 0
    require code.data[3275 len 20] != code.data[3243 len 20]
    require code.data[3307 len 20] != code.data[3243 len 20]
    require code.data[3339 len 20] != code.data[3243 len 20]
    stor2 = code.data[3243 len 20]
    stor3 = code.data[3275 len 20]
    stor4 = code.data[3307 len 20]
    stor5 = code.data[3339 len 20]
    stor6 = code.data[3359 len 32]
    stor7 = 0
    return code.data[420 len 2811]
}



// =====================  Runtime code  =====================


const time = block.timestamp


address authorityAddress;
uint8 stor1; offset 160
address owner;
address keyAddress;
address hotWalletAddress;
address coldWalletAddress;
address withdrawerAddress;
uint256 withdrawLimit;
uint256 lastWithdrawTime;

function hotWallet() {
    return hotWalletAddress
}

function key() {
    return keyAddress
}

function coldWallet() {
    return coldWalletAddress
}

function stopped() {
    return bool(stor1)
}

function owner() {
    return owner
}

function lastWithdrawTime() {
    return lastWithdrawTime
}

function authority() {
    return authorityAddress
}

function withdrawer() {
    return withdrawerAddress
}

function withdrawLimit() {
    return withdrawLimit
}

function _fallback() payable {
    revert
}

function restoreToColdWallet(uint256 arg1) {
    require withdrawerAddress == msg.sender
    require arg1 > 0
    require ext_code.size(keyAddress)
    call keyAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args coldWalletAddress, arg1
    require ext_call.success
}

function transferTokens(address arg1, uint256 arg2, address arg3) {
    require withdrawerAddress == msg.sender
    require keyAddress != arg3
    if arg2 > 0:
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
        require ext_call.success
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function setWithdrawer(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    withdrawerAddress = arg1
    emit LogSetWithdrawer(arg1);
}

function setWithdrawLimit(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    withdrawLimit = arg1
    emit LogSetWithdrawLimit(arg1, msg.sender);
}

function forwardToHotWallet(uint256 arg1) {
    require not stor1
    require withdrawerAddress == msg.sender
    require arg1 > 0
    require block.timestamp > lastWithdrawTime + (24 * 3600)
    require ext_code.size(keyAddress)
    if arg1 <= withdrawLimit:
        call keyAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args hotWalletAddress, arg1
    else:
        call keyAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args hotWalletAddress, withdrawLimit
    require ext_call.success
    lastWithdrawTime = block.timestamp
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 0
}



}
