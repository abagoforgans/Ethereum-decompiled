contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 10493]




// =====================  Runtime code  =====================


address etoken2Address;
uint256 etoken2Symbol;
array of uint256 name;
array of uint256 symbol;
address latestVersionAddress;
address pendingVersionAddress;
uint256 pendingVersionTimestamp;
mapping of address stor7;

function multiAsset() {
    return etoken2Address
}

function name() {
    return name[0 len name.length]
}

function getLatestVersion() {
    return latestVersionAddress
}

function etoken2() {
    return etoken2Address
}

function getPendingVersionTimestamp() {
    return pendingVersionTimestamp
}

function symbol() {
    return symbol[0 len symbol.length]
}

function etoken2Symbol() {
    return etoken2Symbol
}

function getPendingVersion() {
    return pendingVersionAddress
}

function optIn() {
    stor7[address(msg.sender)] = 0
    return 1
}

function optOut() {
    if stor7[address(msg.sender)]:
        return 0
    stor7[address(msg.sender)] = latestVersionAddress
    return 1
}

function getVersionFor(address arg1) {
    if not stor7[address(arg1)]:
        return latestVersionAddress
    return stor7[address(arg1)]
}

function emitApprove(address arg1, address arg2, uint256 arg3) {
    if etoken2Address == msg.sender:
        emit Approval(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if etoken2Address == msg.sender:
        emit Transfer(arg3, arg1, arg2);
}

function totalSupply() {
    require ext_code.size(etoken2Address)
    call etoken2Address.totalSupply(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args etoken2Symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(etoken2Address)
    call etoken2Address.baseUnit(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args etoken2Symbol
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(etoken2Address)
    call etoken2Address.balanceOf(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), etoken2Symbol
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
    require ext_code.size(etoken2Address)
    call etoken2Address.allowance(address rg1, address rg2, bytes32 rg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), etoken2Symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function init(address arg1, string arg2, string arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    if etoken2Address:
        return 0
    etoken2Address = arg1
    etoken2Symbol = mem[128]
    name[] = Array(len=arg3.length, data=arg3[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    return 1
}

function purgeUpgrade() {
    require ext_code.size(etoken2Address)
    call etoken2Address.isOwner(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, etoken2Symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not pendingVersionAddress:
        return 0
    pendingVersionAddress = 0
    pendingVersionTimestamp = 0
    return 1
}

function _forwardApprove(address arg1, uint256 arg2, address arg3) {
    if not stor7[address(arg3)]:
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if stor7[address(arg3)] != msg.sender:
            return 0
    require ext_code.size(etoken2Address)
    call etoken2Address.proxyApprove(address rg1, uint256 rg2, bytes32 rg3, address rg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, etoken2Symbol, arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function recoverTokens(uint256 arg1) {
    require ext_code.size(etoken2Address)
    call etoken2Address.isOwner(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, etoken2Symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(this.address)
    call this.address.0xac35caee with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg1), 96, 15, 'Tokens recovery'
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0x1962df71 with:
             gas gas_remaining - 710 wei
            args 0, 0, arg2, 128, msg.sender, 0
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0x1962df71 with:
             gas gas_remaining - 710 wei
            args 0, 0, arg2, 128, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xe34f7137 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2, msg.sender
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xe34f7137 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xcca97025 with:
             gas gas_remaining - 710 wei
            args 0, 0, 0, arg3, 160, msg.sender, 0
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xcca97025 with:
             gas gas_remaining - 710 wei
            args 0, 0, 0, arg3, 160, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferToICAP(bytes32 arg1, uint256 arg2) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xc10796df with:
             gas gas_remaining - 710 wei
            args 0, uint32(arg1), arg2, 128, msg.sender, 0
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xc10796df with:
             gas gas_remaining - 710 wei
            args 0, uint32(arg1), arg2, 128, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function proposeUpgrade(address arg1) {
    require ext_code.size(etoken2Address)
    call etoken2Address.isOwner(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, etoken2Symbol
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

function transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xeb58705b with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(arg2), arg3, 160, msg.sender, 0
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xeb58705b with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(arg2), arg3, 160, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferToICAP(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xc10796df with:
             gas gas_remaining - 710 wei
            args mem[128], arg2, 128, msg.sender, 0
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xc10796df with:
             gas gas_remaining - 710 wei
            args mem[128], arg2, 128, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xc10796df with:
             gas gas_remaining - 710 wei
            args arg1, arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xc10796df with:
             gas gas_remaining - 710 wei
            args arg1, arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) {
    if not stor7[address(arg5)]:
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if stor7[address(arg5)] != msg.sender:
            return 0
    require ext_code.size(etoken2Address)
    call etoken2Address.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    if not stor7[address(arg5)]:
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if stor7[address(arg5)] != msg.sender:
            return 0
    require ext_code.size(etoken2Address)
    call etoken2Address.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5, address rg6) with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3, etoken2Symbol, Array(len=arg4.length, data=arg4[all]), address(arg5)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromToICAP(address arg1, string arg2, uint256 arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xeb58705b with:
             gas gas_remaining - 710 wei
            args address(arg1), mem[128], arg3, 160, msg.sender, 0
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xeb58705b with:
             gas gas_remaining - 710 wei
            args address(arg1), mem[128], arg3, 160, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xdb00b848 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xdb00b848 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    require ext_call.success
    return ext_call.return_data[0 len return_data.size]
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xcca97025 with:
             gas gas_remaining - 710 wei
            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), msg.sender
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xcca97025 with:
             gas gas_remaining - 710 wei
            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferToICAPWithReference(string arg1, uint256 arg2, string arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xc10796df with:
             gas gas_remaining - 710 wei
            args mem[128], arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xc10796df with:
             gas gas_remaining - 710 wei
            args mem[128], arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromToICAPWithReference(address arg1, string arg2, uint256 arg3, string arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = 0xeb58705b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 164] = arg1
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 196] = mem[128]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 228] = arg3
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 292] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 260] = 160
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 324] = arg4.length
    if 0 < arg4.length:
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 356] = mem[ceil32(arg2.length) + 160]
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xeb58705b with:
             gas gas_remaining - 710 wei
            args address(arg1), mem[128], arg3, Array(len=arg4.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 356 len arg4.length]), msg.sender
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xeb58705b with:
             gas gas_remaining - 710 wei
            args address(arg1), mem[128], arg3, Array(len=arg4.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 356 len arg4.length]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 0x1962df7100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 228] = msg.sender
    mem[ceil32(arg3.length) + 196] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not stor7[address(msg.sender)]:
        if 0 >= arg3.length:
            if not arg3.length % 32:
                require ext_code.size(latestVersionAddress)
                call latestVersionAddress.0x1962df71 with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, 128, msg.sender, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                require ext_code.size(latestVersionAddress)
                call latestVersionAddress.0x1962df71 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32]), msg.sender
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(latestVersionAddress)
            call latestVersionAddress.0x1962df71 with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length]), msg.sender
    else:
        if 0 >= arg3.length:
            if not arg3.length % 32:
                require ext_code.size(stor7[address(msg.sender)])
                call stor7[address(msg.sender)].0x1962df71 with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, 128, msg.sender, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                require ext_code.size(stor7[address(msg.sender)])
                call stor7[address(msg.sender)].0x1962df71 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32]), msg.sender
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(stor7[address(msg.sender)])
            call stor7[address(msg.sender)].0x1962df71 with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = 0xeb58705b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 260] = msg.sender
    mem[ceil32(arg4.length) + 228] = 160
    mem[ceil32(arg4.length) + 292] = arg4.length
    if not stor7[address(msg.sender)]:
        if 0 >= arg4.length:
            if not arg4.length % 32:
                require ext_code.size(latestVersionAddress)
                call latestVersionAddress.0xeb58705b with:
                     gas gas_remaining - 710 wei
                    args 0, 0, uint32(arg2), arg3, 160, msg.sender, arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(latestVersionAddress)
                call latestVersionAddress.0xeb58705b with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), msg.sender
        else:
            mem[ceil32(arg4.length) + 324] = mem[128]
            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
            require ext_code.size(latestVersionAddress)
            call latestVersionAddress.0xeb58705b with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), msg.sender
    else:
        if 0 >= arg4.length:
            if not arg4.length % 32:
                require ext_code.size(stor7[address(msg.sender)])
                call stor7[address(msg.sender)].0xeb58705b with:
                     gas gas_remaining - 710 wei
                    args 0, 0, uint32(arg2), arg3, 160, msg.sender, arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(stor7[address(msg.sender)])
                call stor7[address(msg.sender)].0xeb58705b with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), msg.sender
        else:
            mem[ceil32(arg4.length) + 324] = mem[128]
            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
            require ext_code.size(stor7[address(msg.sender)])
            call stor7[address(msg.sender)].0xeb58705b with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
