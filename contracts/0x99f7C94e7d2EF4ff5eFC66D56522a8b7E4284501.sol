contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 4925]




// =====================  Runtime code  =====================


address chronoBankPlatformAddress;
uint256 symbol;
array of uint256 name;
uint64 stor3;
uint128 stor3; offset 64
address latestVersionAddress;
uint64 stor4;
address pendingVersionAddress;
uint256 pendingVersionTimestamp;
mapping of struct stor6;

function name() {
    return name[0 len name.length]
}

function getLatestVersion() {
    return latestVersionAddress
}

function chronoBankPlatform() {
    return chronoBankPlatformAddress
}

function getPendingVersionTimestamp() {
    return pendingVersionTimestamp
}

function symbol() {
    return symbol
}

function getPendingVersion() {
    return address(pendingVersionAddress)
}

function optIn() {
    address(stor6[address(msg.sender)].field_0) = 0
    return 1
}

function emitApprove(address arg1, address arg2, uint256 arg3) {
    if chronoBankPlatformAddress == msg.sender:
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if chronoBankPlatformAddress == msg.sender:
        emit Transfer(arg3, arg1, arg2);
}

function getVersionFor(address arg1) {
    if not address(stor6[address(arg1)].field_0):
        return latestVersionAddress
    return address(stor6[address(arg1)].field_0)
}

function optOut() {
    if address(stor6[address(msg.sender)].field_0):
        return 0
    uint64(stor6[address(msg.sender)].field_0) = uint64(stor3.field_0)
    Mask(96, 0, stor6[address(msg.sender)].field_64) = 0
    return 1
}

function totalSupply() {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.totalSupply(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.baseUnit(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args symbol
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.balanceOf(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function commitUpgrade() {
    if not address(pendingVersionAddress):
        return 0
    if pendingVersionTimestamp + (72 * 24 * 3600) < block.timestamp:
        return 0
    uint64(stor3.field_0) = uint64(stor4)
    Mask(96, 0, stor3.field_64) = 0
    address(pendingVersionAddress) = 0
    pendingVersionTimestamp = 0
    return 1
}

function allowance(address arg1, address arg2) {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.allowance(address rg1, address rg2, bytes32 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function purgeUpgrade() {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.isOwner(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not address(pendingVersionAddress):
        return 0
    address(pendingVersionAddress) = 0
    pendingVersionTimestamp = 0
    return 1
}

function __approve(address arg1, uint256 arg2, address arg3) {
    if not address(stor6[address(arg3)].field_0):
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if address(stor6[address(arg3)].field_0) != msg.sender:
            return 0
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3, address rg4) with:
         gas gas_remaining - 50 wei
        args 0, 0, arg2, symbol, arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    if not address(stor6[address(msg.sender)].field_0):
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0x7b7054c8 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, msg.sender
    else:
        require ext_code.size(address(stor6[address(msg.sender)].field_0))
        call address(stor6[address(msg.sender)].field_0).0x7b7054c8 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    if not address(stor6[address(msg.sender)].field_0):
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0x6a630ee7 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg2, 128, msg.sender, 0, 0, None
    else:
        require ext_code.size(address(stor6[address(msg.sender)].field_0))
        call address(stor6[address(msg.sender)].field_0).0x6a630ee7 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg2, 128, msg.sender, 0, 0, None
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function proposeUpgrade(address arg1) {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.isOwner(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(pendingVersionAddress):
        return 0
    if not arg1:
        return 0
    if not latestVersionAddress:
        latestVersionAddress = arg1
    else:
        address(pendingVersionAddress) = arg1
        pendingVersionTimestamp = block.timestamp
        emit UpgradeProposal(arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not address(stor6[address(msg.sender)].field_0):
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xec698a28 with:
             gas gas_remaining - 50 wei
            args 0, 0, 0, arg3, 160, msg.sender, 0, 0, None
    else:
        require ext_code.size(address(stor6[address(msg.sender)].field_0))
        call address(stor6[address(msg.sender)].field_0).0xec698a28 with:
             gas gas_remaining - 50 wei
            args 0, 0, 0, arg3, 160, msg.sender, 0, 0, None
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function __transferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    if not address(stor6[address(arg4)].field_0):
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if address(stor6[address(arg4)].field_0) != msg.sender:
            return 0
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4, address rg5) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all]), address(arg4)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    if not address(stor6[address(msg.sender)].field_0):
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0x6a630ee7 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    else:
        require ext_code.size(address(stor6[address(msg.sender)].field_0))
        call address(stor6[address(msg.sender)].field_0).0x6a630ee7 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_d7e2477f(?) {
    mem[128 len arg3.length] = arg3[all]
    if chronoBankPlatformAddress:
        return 0
    chronoBankPlatformAddress = arg1
    symbol = arg2
    name.length = (2 * arg3.length) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = 128
    while arg3.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg3.length + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (name.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return 1
}

function __transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    if not address(stor6[address(arg5)].field_0):
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if address(stor6[address(arg5)].field_0) != msg.sender:
            return 0
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5, address rg6) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=arg4[all]), address(arg5)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if not address(stor6[address(msg.sender)].field_0):
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.__process(bytes rg1, address rg2) with:
           value msg.value wei
             gas gas_remaining - 9050 wei
            args Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    else:
        require ext_code.size(address(stor6[address(msg.sender)].field_0))
        call address(stor6[address(msg.sender)].field_0).__process(bytes rg1, address rg2) with:
           value msg.value wei
             gas gas_remaining - 9050 wei
            args Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    require ext_call.success
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) {
    if not address(stor6[address(msg.sender)].field_0):
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xec698a28 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), msg.sender
    else:
        require ext_code.size(address(stor6[address(msg.sender)].field_0))
        call address(stor6[address(msg.sender)].field_0).0xec698a28 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
