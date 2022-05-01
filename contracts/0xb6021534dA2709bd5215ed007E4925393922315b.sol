contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 5392]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
mapping of uint256 vestingBalance;
mapping of uint256 receiverVestings;
array of struct vestings;

function vestingBalance(address arg1) {
    return vestingBalance[arg1]
}

function receiverVestings(address arg1, address arg2) {
    return receiverVestings[arg1][arg2]
}

function pendingContractOwner() {
    return pendingContractOwner
}

function getVesting(uint256 arg1) {
    require arg1 < vestings.length
    return vestings[arg1].field_0, 
           vestings[arg1].field_256,
           vestings[arg1].field_512,
           vestings[arg1].field_768,
           vestings[arg1].field_1024,
           vestings[arg1].field_1280,
           vestings[arg1].field_1536
}

function getReceiverVesting(address arg1, address arg2) {
    return receiverVestings[address(arg1)][address(arg2)]
}

function vestings(uint256 arg1) {
    require arg1 < vestings.length
    return vestings[arg1].field_0, 
           vestings[arg1].field_256,
           vestings[arg1].field_512,
           vestings[arg1].field_768,
           vestings[arg1].field_1024,
           vestings[arg1].field_1280,
           vestings[arg1].field_1536
}

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
    revert
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function getExtraTokens(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return (ext_call.return_data[0] - vestingBalance[address(arg1)])
}

function changeReceiver(uint256 arg1, address arg2) {
    require arg2
    require arg1 < vestings.length
    require vestings[arg1].field_0 == msg.sender
    require arg1 < vestings.length
    vestings[arg1].field_0 = arg2
    emit ReceiverChanged(arg1, msg.sender, arg2);
    return 1
}

function withdrawExtraTokens(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args contractOwner, ext_call.return_data[0] - vestingBalance[address(arg1)]
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function sendVesting(uint256 arg1) {
    require arg1 < vestings.length
    require block.timestamp >= vestings[arg1].field_1280 + vestings[arg1].field_1024 + (vestings[arg1].field_1536 * vestings[arg1].field_1024)
    require arg1 < vestings.length
    require ext_code.size(vestings[arg1].field_256)
    call vestings[arg1].field_256.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestings[arg1].field_0, vestings[arg1].field_512
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 < vestings.length
    emit VestingSent(vestings[arg1].field_0, 0, vestings[arg1].field_512, arg1, vestings[arg1].field_1536);
    vestings[arg1].field_1536++
    vestingBalance[stor4[arg1].field_256] -= vestings[arg1].field_512
    receiverVestings[stor4[arg1].field_0][stor4[arg1].field_256] -= vestings[arg1].field_512
    if vestings[arg1].field_1536 == vestings[arg1].field_768:
        require arg1 < vestings.length
        vestings[arg1].field_0 = 0
        vestings[arg1].field_256 = 0
        vestings[arg1].field_512 = 0
        vestings[arg1].field_768 = 0
        vestings[arg1].field_1024 = 0
        vestings[arg1].field_1280 = 0
        vestings[arg1].field_1536 = 0
    return 1
}

function createVesting(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require arg1
    require arg4 > 0
    require arg3 > 0
    require arg4 <= 10000
    if not arg5:
        require arg6 >= arg6
        require arg6 <= block.timestamp + (43800 * 24 * 3600)
    else:
        require arg4 * arg5 / arg5 == arg4
        require (arg4 * arg5) + arg6 >= arg6
        require (arg4 * arg5) + arg6 <= block.timestamp + (43800 * 24 * 3600)
    vestings.length++
    if not vestings.length <= vestings.length + 1:
        idx = (7 * vestings.length) + 7
        while 7 * vestings.length > idx:
            vestings[idx].field_0 = 0
            vestings[idx].field_256 = 0
            vestings[idx].field_512 = 0
            vestings[idx].field_768 = 0
            vestings[idx].field_1024 = 0
            vestings[idx].field_1280 = 0
            vestings[idx].field_1536 = 0
            idx = idx + 7
            continue 
    vestings[vestings.length].field_0 = arg1
    vestings[vestings.length].field_256 = arg2
    vestings[vestings.length].field_512 = arg3
    vestings[vestings.length].field_768 = arg4
    vestings[vestings.length].field_1024 = arg5
    vestings[vestings.length].field_1280 = arg6
    vestings[vestings.length].field_1536 = 0
    if not arg3:
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), 0
    else:
        require arg4 * arg3 / arg3 == arg4
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg4 * arg3
    require ext_call.success
    require ext_call.return_data[0]
    require (arg4 * arg3) + vestingBalance[address(arg2)] >= vestingBalance[address(arg2)]
    vestingBalance[address(arg2)] += arg4 * arg3
    require (arg4 * arg3) + receiverVestings[address(arg1)][address(arg2)] >= receiverVestings[address(arg1)][address(arg2)]
    receiverVestings[address(arg1)][address(arg2)] += arg4 * arg3
    emit VestingCreated(msg.sender, address(arg1), address(arg2), arg3, vestings.length - 1, arg4, arg5, arg6);
    return 1
}



}
