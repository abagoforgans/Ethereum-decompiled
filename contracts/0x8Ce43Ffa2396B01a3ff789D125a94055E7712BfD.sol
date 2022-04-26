contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 1000000 * 10^18
    stor3 = 0
    require not msg.value
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    return code.data[123 len 2203]
}



// =====================  Runtime code  =====================


address authorityAddress;
uint8 stopped; offset 160
address owner;
uint256 maxReward;
uint256 consumed;
mapping of uint8 stor4;

function consumers(address arg1) {
    return bool(stor4[arg1])
}

function maxReward() {
    return maxReward
}

function consumed() {
    return consumed
}

function stopped() {
    return bool(stopped)
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function available(uint256 arg1) {
    if owner != msg.sender:
        require stor4[address(msg.sender)]
    require arg1 + consumed >= consumed
    return arg1 + consumed <= maxReward
}

function consume(uint256 arg1) {
    if owner != msg.sender:
        require stor4[address(msg.sender)]
        if owner != msg.sender:
            require stor4[address(msg.sender)]
    require arg1 + consumed >= consumed
    require arg1 + consumed <= maxReward
    require arg1 + consumed >= consumed
    consumed += arg1
    emit Consume(arg1, msg.sender);
    return 1
}

function changeMaxReward(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    maxReward = arg1
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

function addConsumer(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor4[address(arg1)] = 1
    emit ConsumerAddition(arg1);
}

function removeConsumer(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor4[address(arg1)] = 0
    emit ConsumerRemoval(arg1);
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
    stopped = 1
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
    stopped = 0
}



}
