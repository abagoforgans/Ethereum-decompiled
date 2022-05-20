contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    return code.data[46 len 5674]
}



// =====================  Runtime code  =====================


const isTransferAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) = 1


array of uint256 symbol;
address contractOwner;
address pendingContractOwner;
address latestVersionAddress;
address platformAddress;
uint256 smbl;
array of uint256 name;

function name() {
    return name[0 len name.length]
}

function getLatestVersion() {
    return latestVersionAddress
}

function platform() {
    return platformAddress
}

function pendingContractOwner() {
    return pendingContractOwner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function smbl() {
    return smbl
}

function contractOwner() {
    return contractOwner
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function emitApprove(address arg1, address arg2, uint256 arg3) {
    if platformAddress == msg.sender:
        emit Approval(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if platformAddress == msg.sender:
        emit Transfer(arg3, arg1, arg2);
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function totalSupply() {
    require ext_code.size(platformAddress)
    call platformAddress.0xb524abcf with:
         gas gas_remaining - 710 wei
        args smbl
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(platformAddress)
    call platformAddress.0xdc86e6f0 with:
         gas gas_remaining - 710 wei
        args smbl
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(platformAddress)
    call platformAddress.0x4d30b6be with:
         gas gas_remaining - 710 wei
        args address(arg1), smbl
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(platformAddress)
    call platformAddress.0x1c8d5d38 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), smbl
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    require ext_code.size(latestVersionAddress)
    call latestVersionAddress.0xf2d6e0ab with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if not arg1:
        return 0
    require ext_code.size(latestVersionAddress)
    call latestVersionAddress.0x7b7054c8 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        return 0
    require ext_code.size(latestVersionAddress)
    call latestVersionAddress.0x6a630ee7 with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, 128, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function __approve(address arg1, uint256 arg2, address arg3) {
    if latestVersionAddress != msg.sender:
        return 0
    require ext_code.size(platformAddress)
    call platformAddress.0x14712e2f with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, smbl, arg3
    require ext_call.success
    return (ext_call.return_data[0] == 1)
}

function init(address arg1, string arg2, string arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    if platformAddress:
        return 0
    platformAddress = arg1
    symbol[] = Array(len=arg2.length, data=arg2[all])
    smbl = mem[128]
    name[] = Array(len=arg3.length, data=arg3[all])
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg2:
        return 0
    require ext_code.size(latestVersionAddress)
    call latestVersionAddress.0xec698a28 with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, arg3, 160, msg.sender, 0, mem[292]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function proposeUpgrade(address arg1) {
    require ext_code.size(platformAddress)
    call platformAddress.0xe96b462a with:
         gas gas_remaining - 710 wei
        args msg.sender, smbl
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not arg1:
        return 0
    latestVersionAddress = arg1
    emit UpgradeProposal(arg1);
    return 1
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    if not arg1:
        return 0
    require ext_code.size(latestVersionAddress)
    call latestVersionAddress.0x6a630ee7 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function __transferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    if latestVersionAddress != msg.sender:
        return 0
    require ext_code.size(platformAddress)
    call platformAddress.0x57a96dd0 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, smbl, Array(len=arg3.length, data=arg3[all]), address(arg4)
    require ext_call.success
    return (ext_call.return_data[0] == 1)
}

function __transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    if latestVersionAddress != msg.sender:
        return 0
    require ext_code.size(platformAddress)
    call platformAddress.0x161ff662 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3, smbl, Array(len=arg4.length, data=arg4[all]), address(arg5)
    require ext_call.success
    return (ext_call.return_data[0] == 1)
}

function withdrawnTokens(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if contractOwner != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_21))
        call address(_21).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _21
        idx = idx + 1
        continue 
    return 1
}



}
