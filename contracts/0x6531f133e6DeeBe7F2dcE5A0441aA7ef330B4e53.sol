contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 6541]




// =====================  Runtime code  =====================


address chronoBankPlatformAddress;
uint256 stor1;
array of uint256 name;
array of uint256 symbol;
address latestVersionAddress;
address pendingVersionAddress;
uint256 pendingVersionTimestamp;
mapping of address stor7;

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
    return symbol[0 len symbol.length]
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
    if chronoBankPlatformAddress == msg.sender:
        emit Approval(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if chronoBankPlatformAddress == msg.sender:
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
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.0xb524abcf with:
         gas gas_remaining - 50 wei
        args stor1
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.0xdc86e6f0 with:
         gas gas_remaining - 50 wei
        args stor1
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.0x4d30b6be with:
         gas gas_remaining - 50 wei
        args address(arg1), stor1
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
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.0x1c8d5d38 with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), stor1
    require ext_call.success
    return ext_call.return_data[0]
}

function purgeUpgrade() {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.0xe96b462a with:
         gas gas_remaining - 50 wei
        args msg.sender, stor1
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
    if not stor7[address(arg3)]:
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if stor7[address(arg3)] != msg.sender:
            return 0
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.0x14712e2f with:
         gas gas_remaining - 50 wei
        args 0, 0, arg2, stor1, arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0x6a630ee7 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg2, 128, msg.sender, 0
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0x6a630ee7 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg2, 128, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0x7b7054c8 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, msg.sender
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0x7b7054c8 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xec698a28 with:
             gas gas_remaining - 50 wei
            args 0, 0, 0, arg3, 160, msg.sender, 0
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xec698a28 with:
             gas gas_remaining - 50 wei
            args 0, 0, 0, arg3, 160, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function proposeUpgrade(address arg1) {
    require ext_code.size(chronoBankPlatformAddress)
    call chronoBankPlatformAddress.0xe96b462a with:
         gas gas_remaining - 50 wei
        args msg.sender, stor1
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

function _fallback() payable {
    if not stor7[address(msg.sender)]:
        require ext_code.size(latestVersionAddress)
        call latestVersionAddress.0xf2d6e0ab with:
           value msg.value wei
             gas gas_remaining - 9050 wei
            args Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    else:
        require ext_code.size(stor7[address(msg.sender)])
        call stor7[address(msg.sender)].0xf2d6e0ab with:
           value msg.value wei
             gas gas_remaining - 9050 wei
            args Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    require ext_call.success
}

function init(address arg1, string arg2, string arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if chronoBankPlatformAddress:
        return 0
    chronoBankPlatformAddress = arg1
    symbol.length = (2 * arg2.length) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = 128
    while arg2.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg2.length + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (symbol.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1 = mem[128]
    name.length = (2 * arg3.length) + 1
    s = 0
    idx = ceil32(arg2.length) + 160
    while ceil32(arg2.length) + arg3.length + 160 > idx:
        name[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if name.length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        name[Mask(251, 0, arg3.length + 31) >> 5] = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while name.length + 31 / 32 > idx:
            name[idx] = 0
            idx = idx + 1
            continue 
    return 1
}

function __transferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    mem[128 len arg3.length] = arg3[all]
    if not stor7[address(arg4)]:
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if stor7[address(arg4)] != msg.sender:
            return 0
    mem[ceil32(arg3.length) + 128] = 0x57a96dd000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = stor1
    mem[ceil32(arg3.length) + 260] = arg4
    mem[ceil32(arg3.length) + 228] = 160
    mem[ceil32(arg3.length) + 292] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            require ext_code.size(chronoBankPlatformAddress)
            call chronoBankPlatformAddress.0x57a96dd0 with:
                 gas gas_remaining - 50 wei
                args 0, 0, uint32(arg2), stor1, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
            require ext_code.size(chronoBankPlatformAddress)
            call chronoBankPlatformAddress.0x57a96dd0 with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2, stor1, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
    else:
        mem[ceil32(arg3.length) + 324] = mem[128]
        mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(chronoBankPlatformAddress)
        call chronoBankPlatformAddress.0x57a96dd0 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, stor1, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function __transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    mem[128 len arg4.length] = arg4[all]
    if not stor7[address(arg5)]:
        if latestVersionAddress != msg.sender:
            return 0
    else:
        if stor7[address(arg5)] != msg.sender:
            return 0
    mem[ceil32(arg4.length) + 128] = 0x161ff66200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 228] = stor1
    mem[ceil32(arg4.length) + 292] = arg5
    mem[ceil32(arg4.length) + 260] = 192
    mem[ceil32(arg4.length) + 324] = arg4.length
    if not arg4.length:
        if not arg4.length % 32:
            require ext_code.size(chronoBankPlatformAddress)
            call chronoBankPlatformAddress.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, arg3, stor1, 192, address(arg5), arg4.length, mem[ceil32(arg4.length) + 356 len arg4.length]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 356] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 388 len arg4.length % 32]
            require ext_code.size(chronoBankPlatformAddress)
            call chronoBankPlatformAddress.0x161ff662 with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(arg2), arg3, stor1, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len floor32(arg4.length) + 32]), address(arg5)
    else:
        mem[ceil32(arg4.length) + 356] = mem[128]
        mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        require ext_code.size(chronoBankPlatformAddress)
        call chronoBankPlatformAddress.0x161ff662 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), arg3, stor1, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length]), address(arg5)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 0x6a630ee700000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 228] = msg.sender
    mem[ceil32(arg3.length) + 196] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not stor7[address(msg.sender)]:
        if not arg3.length:
            if not arg3.length % 32:
                require ext_code.size(latestVersionAddress)
                call latestVersionAddress.0x6a630ee7 with:
                     gas gas_remaining - 50 wei
                    args 0, 0, arg2, 128, msg.sender, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                require ext_code.size(latestVersionAddress)
                call latestVersionAddress.0x6a630ee7 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32]), msg.sender
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(latestVersionAddress)
            call latestVersionAddress.0x6a630ee7 with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length]), msg.sender
    else:
        if not arg3.length:
            if not arg3.length % 32:
                require ext_code.size(stor7[address(msg.sender)])
                call stor7[address(msg.sender)].0x6a630ee7 with:
                     gas gas_remaining - 50 wei
                    args 0, 0, arg2, 128, msg.sender, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                require ext_code.size(stor7[address(msg.sender)])
                call stor7[address(msg.sender)].0x6a630ee7 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32]), msg.sender
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(stor7[address(msg.sender)])
            call stor7[address(msg.sender)].0x6a630ee7 with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = 0xec698a2800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 260] = msg.sender
    mem[ceil32(arg4.length) + 228] = 160
    mem[ceil32(arg4.length) + 292] = arg4.length
    if not stor7[address(msg.sender)]:
        if not arg4.length:
            if not arg4.length % 32:
                require ext_code.size(latestVersionAddress)
                call latestVersionAddress.0xec698a28 with:
                     gas gas_remaining - 50 wei
                    args 0, 0, 0, arg3, 160, msg.sender, arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(latestVersionAddress)
                call latestVersionAddress.0xec698a28 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), msg.sender
        else:
            mem[ceil32(arg4.length) + 324] = mem[128]
            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
            require ext_code.size(latestVersionAddress)
            call latestVersionAddress.0xec698a28 with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), msg.sender
    else:
        if not arg4.length:
            if not arg4.length % 32:
                require ext_code.size(stor7[address(msg.sender)])
                call stor7[address(msg.sender)].0xec698a28 with:
                     gas gas_remaining - 50 wei
                    args 0, 0, 0, arg3, 160, msg.sender, arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(stor7[address(msg.sender)])
                call stor7[address(msg.sender)].0xec698a28 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), msg.sender
        else:
            mem[ceil32(arg4.length) + 324] = mem[128]
            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
            require ext_code.size(stor7[address(msg.sender)])
            call stor7[address(msg.sender)].0xec698a28 with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
