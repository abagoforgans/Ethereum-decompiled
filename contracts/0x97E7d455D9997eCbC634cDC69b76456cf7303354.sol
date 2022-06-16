contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address erc20ProxyAddress;
address erc20StoreAddress;
address sweeperAddress;
uint256 sweepMsg;
mapping of uint8 stor7;
mapping of struct pendingPrintMap;

function pendingPrintMap(bytes32 arg1) {
    return pendingPrintMap[arg1].field_0, pendingPrintMap[arg1].field_256
}

function custodian() {
    return custodianAddress
}

function erc20Proxy() {
    return erc20ProxyAddress
}

function sweeper() {
    return sweeperAddress
}

function lockRequestCount() {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) {
    return custodianChangeReqs[arg1]
}

function sweepMsg() {
    return sweepMsg
}

function sweptSet(address arg1) {
    return bool(stor7[arg1])
}

function erc20Store() {
    return erc20StoreAddress
}

function _fallback() payable {
    revert
}

function confirmCustodianChange(bytes32 arg1) {
    require msg.sender == custodianAddress
    require custodianChangeReqs[arg1]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function totalSupply() {
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x27e235e3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x5c658165 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function requestCustodianChange(address arg1) {
    require arg1
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function requestPrint(address arg1, uint256 arg2) {
    require arg1
    lockRequestCount++
    pendingPrintMap[block.hash(block.number - 1)][this.address][stor0 + 1].field_0 = arg1
    pendingPrintMap[block.hash(block.number - 1)][this.address][stor0 + 1].field_256 = arg2
    emit PrintingLocked(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), address(arg1), arg2);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function approveWithSender(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ProxyAddress
    require arg2
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.setAllowance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.emitApproval(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function increaseApprovalWithSender(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ProxyAddress
    require arg2
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x5c658165 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.setAllowance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.emitApproval(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function decreaseApprovalWithSender(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ProxyAddress
    require arg2
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x5c658165 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] - arg3 <= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.setAllowance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.emitApproval(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferWithSender(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ProxyAddress
    require arg2
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x27e235e3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.setBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.addBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.emitTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burn(uint256 arg1) {
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x27e235e3 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.setBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.setTotalSupply(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.emitTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function confirmPrint(bytes32 arg1) {
    require msg.sender == custodianAddress
    require pendingPrintMap[arg1].field_0
    pendingPrintMap[arg1].field_0 = 0
    pendingPrintMap[arg1].field_256 = 0
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + pendingPrintMap[arg1].field_256 >= ext_call.return_data[0]:
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.setTotalSupply(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] + pendingPrintMap[arg1].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.addBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pendingPrintMap[arg1].field_0, pendingPrintMap[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit PrintingConfirmed(arg1, pendingPrintMap[arg1].field_0, pendingPrintMap[arg1].field_256);
        require ext_code.size(erc20ProxyAddress)
        call erc20ProxyAddress.emitTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0, pendingPrintMap[arg1].field_0, pendingPrintMap[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transferFromWithSender(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == erc20ProxyAddress
    require arg3
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x27e235e3 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 <= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x5c658165 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 <= ext_call.return_data[0]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.setBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0] - arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.addBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.setAllowance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg1), ext_call.return_data[0] - arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.emitTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function replaySweep(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == sweeperAddress
    require arg2
    s = 0
    t = 0
    idx = 0
    t = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        if not stor7[mem[(32 * idx) + 140 len 20]]:
            s = s
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            t = t
            continue 
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0x27e235e3 with:
             gas gas_remaining wei
            args address(_17)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            s = ext_call.return_data[0]
            t = _17
            idx = idx + 1
            t = t
            continue 
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_17), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128] = 0x23de665100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_17)
        mem[(32 * arg1.length) + 164] = arg2
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
        require ext_code.size(erc20ProxyAddress)
        call erc20ProxyAddress.emitTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_17), address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = ext_call.return_data[0]
        t = _17
        idx = idx + 1
        t = t + ext_call.return_data[0]
        continue 
    if t > 0:
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.addBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x27e235e3 with:
         gas gas_remaining wei
        args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    idx = 0
    s = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    while idx < arg1.length:
        require idx < arg1.length
        _27 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        _31 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require s >= mem[(32 * idx) + (32 * arg1.length) + 160]
        if msg.sender == mem[(32 * idx) + 140 len 20]:
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x23de665100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_27)
            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _31
            require ext_code.size(erc20ProxyAddress)
            call erc20ProxyAddress.emitTransfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(_27), _31
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = _31
            s = _27
            idx = idx + 1
            s = s
            continue 
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.addBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _31
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x23de665100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_27)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _31
        require ext_code.size(erc20ProxyAddress)
        call erc20ProxyAddress.emitTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(_27), _31
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = _31
        s = _27
        idx = idx + 1
        s = s - _31
        continue 
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.setBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function enableSweep(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, address arg4) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == sweeperAddress
    require arg4
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    s = 0
    t = 0
    idx = 0
    t = 0
    while idx < arg1.length:
        require idx < mem[96]
        _32 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _34 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _36 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _37 = mem[64]
        mem[64] = mem[64] + 32
        mem[_37 + 32] = sweepMsg
        mem[_37 + 64] = uint8(_32)
        mem[_37 + 96] = _34
        mem[_37 + 128] = _36
        signer = erecover(sweepMsg, _32 << 248, _34, _36) 
        mem[_37] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            s = s
            t = signer
            idx = idx + 1
            t = t
            continue 
        mem[0] = address(signer)
        mem[32] = 7
        stor7[address(signer)] = 1
        mem[_37 + 36] = address(signer)
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0x27e235e3 with:
             gas gas_remaining wei
            args address(signer)
        mem[_37 + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            s = ext_call.return_data[0]
            t = signer
            idx = idx + 1
            t = t
            continue 
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(signer), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_37 + 32] = 0x23de665100000000000000000000000000000000000000000000000000000000
        mem[_37 + 36] = address(signer)
        mem[_37 + 68] = arg4
        mem[_37 + 100] = ext_call.return_data[0]
        require ext_code.size(erc20ProxyAddress)
        call erc20ProxyAddress.emitTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(signer), address(arg4), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = ext_call.return_data[0]
        t = signer
        idx = idx + 1
        t = t + ext_call.return_data[0]
        continue 
    if t > 0:
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.addBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
