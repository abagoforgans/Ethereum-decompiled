contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 6351]




// =====================  Runtime code  =====================


address bmcPlatformAddress;
uint256 smbl;
array of uint256 name;
array of uint256 symbol;
address latestVersionAddress;
address pendingVersionAddress;
uint256 pendingVersionTimestamp;
mapping of address stor8;

function name() {
    return name[0 len name.length]
}

function getLatestVersion() {
    return latestVersionAddress
}

function bmcPlatform() {
    return bmcPlatformAddress
}

function getPendingVersionTimestamp() {
    return pendingVersionTimestamp
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getPendingVersion() {
    return pendingVersionAddress
}

function smbl() {
    return smbl
}

function optIn() {
    stor8[address(msg.sender)] = 0
    return 1
}

function optOut() {
    if stor8[address(msg.sender)]:
        return 0
    stor8[address(msg.sender)] = latestVersionAddress
    return 1
}

function getVersionFor(address arg1) {
    if not stor8[address(arg1)]:
        return latestVersionAddress
    return stor8[address(arg1)]
}

function emitApprove(address arg1, address arg2, uint256 arg3) {
    if bmcPlatformAddress == msg.sender:
        emit Approval(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if bmcPlatformAddress == msg.sender:
        emit Transfer(arg3, arg1, arg2);
}

function stringToBytes32(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function totalSupply() {
    require ext_code.size(bmcPlatformAddress)
    call bmcPlatformAddress.0xb524abcf with:
         gas gas_remaining - 710 wei
        args smbl
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(bmcPlatformAddress)
    call bmcPlatformAddress.0xdc86e6f0 with:
         gas gas_remaining - 710 wei
        args smbl
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(bmcPlatformAddress)
    call bmcPlatformAddress.0x4d30b6be with:
         gas gas_remaining - 710 wei
        args address(arg1), smbl
    require ext_call.success
    return ext_call.return_data[0]
}

function commitUpgrade() {
    if not pendingVersionAddress:
        return 0
    if pendingVersionTimestamp + (72 * 24 * 3600) > block.timestamp:
        return 0
    latestVersionAddress = pendingVersionAddress
    pendingVersionAddress = 0
    pendingVersionTimestamp = 0
    return 1
}

function allowance(address arg1, address arg2) {
    require ext_code.size(bmcPlatformAddress)
    call bmcPlatformAddress.0x1c8d5d38 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), smbl
    require ext_call.success
    return ext_call.return_data[0]
}

function init(address arg1, string arg2, string arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    if bmcPlatformAddress:
        return 0
    bmcPlatformAddress = arg1
    symbol[] = Array(len=arg2.length, data=arg2[all])
    smbl = mem[128]
    name[] = Array(len=arg3.length, data=arg3[all])
    return 1
}

function purgeUpgrade() {
    require ext_code.size(bmcPlatformAddress)
    call bmcPlatformAddress.0xe96b462a with:
         gas gas_remaining - 710 wei
        args msg.sender, smbl
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not pendingVersionAddress:
        return 0
    pendingVersionAddress = 0
    pendingVersionTimestamp = 0
    return 1
}

function __approve(address arg1, uint256 arg2, address arg3) {
    if not stor8[address(arg3)]:
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if stor8[address(arg3)] != msg.sender:
            return 0
    require ext_code.size(bmcPlatformAddress)
    call bmcPlatformAddress.0x14712e2f with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, smbl, arg3
    require ext_call.success
    return (ext_call.return_data[0] == 1)
}

function __transferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    if not stor8[address(arg4)]:
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if stor8[address(arg4)] != msg.sender:
            return 0
    require ext_code.size(bmcPlatformAddress)
    call bmcPlatformAddress.0x57a96dd0 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, smbl, Array(len=arg3.length, data=arg3[all]), address(arg4)
    require ext_call.success
    return (ext_call.return_data[0] == 1)
}

function proposeUpgrade(address arg1) {
    require ext_code.size(bmcPlatformAddress)
    call bmcPlatformAddress.0xe96b462a with:
         gas gas_remaining - 710 wei
        args msg.sender, smbl
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if pendingVersionAddress:
        return 0
    if not arg1:
        return 0
    if not latestVersionAddress:
        latestVersionAddress = arg1
    else:
        pendingVersionAddress = arg1
        pendingVersionTimestamp = block.timestamp
        emit UpgradeProposal(arg1);
    return 1
}

function __transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    if not stor8[address(arg5)]:
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if stor8[address(arg5)] != msg.sender:
            return 0
    require ext_code.size(bmcPlatformAddress)
    call bmcPlatformAddress.0x161ff662 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3, smbl, Array(len=arg4.length, data=arg4[all]), address(arg5)
    require ext_call.success
    return (ext_call.return_data[0] == 1)
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        return 0
    if not stor8[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0x6a630ee7 with:
             gas gas_remaining - 710 wei
            args 0, 0, arg2, 128, msg.sender, 0
    else:
        require ext_code.size(stor8[address(msg.sender)])
        call stor8[address(msg.sender)].0x6a630ee7 with:
             gas gas_remaining - 710 wei
            args 0, 0, arg2, 128, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    if not arg1:
        return 0
    if not stor8[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0x7b7054c8 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2, msg.sender
    else:
        require ext_code.size(stor8[address(msg.sender)])
        call stor8[address(msg.sender)].0x7b7054c8 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg2:
        return 0
    if not stor8[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xec698a28 with:
             gas gas_remaining - 710 wei
            args 0, 0, 0, arg3, 160, msg.sender, 0, mem[292]
    else:
        require ext_code.size(stor8[address(msg.sender)])
        call stor8[address(msg.sender)].0xec698a28 with:
             gas gas_remaining - 710 wei
            args 0, 0, 0, arg3, 160, msg.sender, 0, mem[292]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if not stor8[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.__process(bytes rg1, address rg2) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    else:
        require ext_code.size(stor8[address(msg.sender)])
        call stor8[address(msg.sender)].__process(bytes rg1, address rg2) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    require ext_call.success
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    if not arg1:
        return 0
    if not stor8[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0x6a630ee7 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    else:
        require ext_code.size(stor8[address(msg.sender)])
        call stor8[address(msg.sender)].0x6a630ee7 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
