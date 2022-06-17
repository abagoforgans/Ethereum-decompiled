contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
array of uint256 stor1;
mapping of address custodianChangeReqs;
address erc20ProxyAddress;
address erc20StoreAddress;
mapping of uint8 stor5;
mapping of struct sub_dd3d1513;

function custodian() {
    return address(stor1.length)
}

function erc20Proxy() {
    return erc20ProxyAddress
}

function sub_c453fa42(?) {
    return sub_dd3d1513[arg1].field_0, uint256(sub_dd3d1513[arg1].field_256), bool(uint8(sub_dd3d1513[arg1].field_512))
}

function lockRequestCount() {
    return lockRequestCount
}

function sub_ce6bfe83(?) {
    return bool(stor5[arg1])
}

function custodianChangeReqs(bytes32 arg1) {
    return custodianChangeReqs[arg1]
}

function sub_dd3d1513(?) {
    return sub_dd3d1513[arg1].field_0, uint256(sub_dd3d1513[arg1].field_256), bool(uint8(sub_dd3d1513[arg1].field_512))
}

function erc20Store() {
    return erc20StoreAddress
}

function _fallback() payable {
    revert
}

function sub_5a82b77f(?) {
    require msg.sender == address(stor1.length)
    stor5[address(arg1)] = 0
    emit 0x7bbd500e: address(arg1), 0
}

function sub_827afcb5(?) {
    require msg.sender == address(stor1.length)
    stor5[address(arg1)] = 1
    emit 0x7bbd500e: address(arg1), 1
}

function confirmCustodianChange(bytes32 arg1) {
    require msg.sender == address(stor1.length)
    require custodianChangeReqs[arg1]
    address(stor1.length) = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, address(stor1.length));
}

function requestCustodianChange(address arg1) {
    require arg1
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function authTransfer(address arg1, address arg2, uint256 arg3) {
    require stor5[msg.sender]
    require 100 == calldata.size
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
    call erc20StoreAddress.0xe30443bc with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x21e5383a with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.0x23de6651 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_56fb2bf8(?) {
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xbe10862b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x47fe6472 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xbe10862b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x21e5383a with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xf7ea7a3d with:
         gas gas_remaining wei
        args (2 * ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xbe10862b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xc4362834 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xbe10862b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.0x23de6651 with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function releaseTeam() {
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x85f2aef2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x47fe6472 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xec08f0ba with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= ext_call.return_data[0] + (26280 * 24 * 3600):
        return 0
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x85f2aef2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x21e5383a with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xf7ea7a3d with:
         gas gas_remaining wei
        args (2 * ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x85f2aef2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xc4362834 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x85f2aef2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20ProxyAddress)
    call erc20ProxyAddress.0x23de6651 with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_7d6b2b49(?) {
    require stor5[msg.sender]
    sub_dd3d1513[arg1].field_0 = 0
    uint256(sub_dd3d1513[arg1].field_256) = 0
    uint8(sub_dd3d1513[arg1].field_512) = 0
    require ext_code.size(erc20StoreAddress)
    if not uint8(sub_dd3d1513[arg1].field_512):
        call erc20StoreAddress.0x21e5383a with:
             gas gas_remaining wei
            args sub_dd3d1513[arg1].field_0, uint256(sub_dd3d1513[arg1].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xecdd5335 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20ProxyAddress)
        call erc20ProxyAddress.0x23de6651 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), sub_dd3d1513[arg1].field_0, uint256(sub_dd3d1513[arg1].field_256)
    else:
        call erc20StoreAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xf7ea7a3d with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - uint256(sub_dd3d1513[arg1].field_256))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xecdd5335 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20ProxyAddress)
        call erc20ProxyAddress.0x23de6651 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 0, uint256(sub_dd3d1513[arg1].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xecdd5335 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0x27e235e3 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xecdd5335 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20StoreAddress)
    call erc20StoreAddress.0xe30443bc with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0] - uint256(sub_dd3d1513[arg1].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe4f14350: arg1, sub_dd3d1513[arg1].field_0, uint256(sub_dd3d1513[arg1].field_256)
}

function sub_2b1de827(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor5[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _65 = mem[(32 * idx) + 128]
        require stor5[msg.sender]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 6
        _67 = sha3(mem[(32 * idx) + 128], 6)
        sub_dd3d1513[mem[(32 * idx) + 128]].field_0 = 0
        uint256(sub_dd3d1513[mem[(32 * idx) + 128]].field_256) = 0
        uint8(sub_dd3d1513[mem[(32 * idx) + 128]].field_512) = 0
        if not uint8(sub_dd3d1513[mem[(32 * idx) + 128]].field_512):
            mem[mem[64] + 4] = sub_dd3d1513[mem[(32 * idx) + 128]].field_0
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0x21e5383a with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], uint256(stor1[_67])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xecdd5335 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 68] = uint256(stor1[_67])
            require ext_code.size(erc20ProxyAddress)
            call erc20ProxyAddress.0x23de6651 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), stor[_67], uint256(stor1[_67])
        else:
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xf7ea7a3d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - uint256(sub_dd3d1513[mem[(32 * idx) + 128]].field_256))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xecdd5335 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 68] = uint256(sub_dd3d1513[mem[(32 * idx) + 128]].field_256)
            require ext_code.size(erc20ProxyAddress)
            call erc20ProxyAddress.0x23de6651 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0, uint256(stor1[_67])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xecdd5335 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0x27e235e3 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xecdd5335 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xe30443bc with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0] - uint256(stor1[_67])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = _65
        mem[mem[64] + 32] = stor[_67]
        mem[mem[64] + 64] = uint256(stor1[_67])
        emit 0xe4f14350: _65, stor[_67], uint256(stor1[_67])
        idx = idx + 1
        continue 
    return 1
}

function sub_34261b75(?) {
    require stor5[msg.sender]
    require 100 == calldata.size
    require arg1
    lockRequestCount++
    sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_0 = arg1
    uint256(sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_256) = arg2
    uint8(sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_512) = uint8(arg3)
    require ext_code.size(erc20StoreAddress)
    if arg3:
        call erc20StoreAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xf7ea7a3d with:
             gas gas_remaining wei
            args (ext_call.return_data[0] + arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xecdd5335 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20ProxyAddress)
        call erc20ProxyAddress.0x23de6651 with:
             gas gas_remaining wei
            args 0, address(ext_call.return_data[0]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xecdd5335 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0x21e5383a with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xcbbbc9e4: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), address(arg1), arg2, 1
    else:
        call erc20StoreAddress.0x27e235e3 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > ext_call.return_data[0]:
            sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_0 = 0
            uint256(sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_256) = 0
            uint8(sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_512) = 0
            emit 0xcbbbc9e4: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), address(arg1), arg2, 0
        else:
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0] - arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xecdd5335 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20ProxyAddress)
            call erc20ProxyAddress.0x23de6651 with:
                 gas gas_remaining wei
                args address(arg1), address(ext_call.return_data[0]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xecdd5335 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0x21e5383a with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xcbbbc9e4: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), address(arg1), arg2, 1
}

function sub_1aab4438(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require stor5[msg.sender]
    require arg1.length == arg2.length
    require arg3.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _73 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _75 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _77 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        mem[0] = msg.sender
        mem[32] = 5
        require stor5[msg.sender]
        require 100 == calldata.size
        require mem[(32 * idx) + 140 len 20]
        lockRequestCount++
        mem[mem[64] + 32] = address(this.address)
        _82 = mem[64]
        mem[64] = mem[64] + 96
        mem[_82] = address(_73)
        mem[_82 + 32] = _75
        mem[_82 + 64] = bool(_77)
        mem[0] = sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
        mem[32] = 6
        sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_0 = address(_73)
        uint256(sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_256) = _75
        uint8(sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_512) = uint8(bool(_77))
        require ext_code.size(erc20StoreAddress)
        if _77:
            call erc20StoreAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xf7ea7a3d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] + _75)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xecdd5335 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20ProxyAddress)
            call erc20ProxyAddress.0x23de6651 with:
                 gas gas_remaining wei
                args 0, address(ext_call.return_data[0]), _75
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xecdd5335 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0x21e5383a with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _75
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
            mem[mem[64] + 32] = address(_73)
            mem[mem[64] + 64] = _75
            mem[mem[64] + 96] = 1
            emit 0xcbbbc9e4: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), address(_73), _75, 1
        else:
            call erc20StoreAddress.0x27e235e3 with:
                 gas gas_remaining wei
                args address(_73)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _75 > ext_call.return_data[0]:
                mem[0] = sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
                mem[32] = 6
                sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_0 = 0
                uint256(sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_256) = 0
                uint8(sub_dd3d1513[block.hash(block.number - 1)][this.address][stor0 + 1].field_512) = 0
                mem[mem[64]] = sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
                mem[mem[64] + 32] = address(_73)
                mem[mem[64] + 64] = _75
                mem[mem[64] + 96] = 0
                emit 0xcbbbc9e4: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), address(_73), _75, 0
            else:
                require ext_code.size(erc20StoreAddress)
                call erc20StoreAddress.0xe30443bc with:
                     gas gas_remaining wei
                    args address(_73), ext_call.return_data[0] - _75
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(erc20StoreAddress)
                call erc20StoreAddress.0xecdd5335 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(erc20ProxyAddress)
                call erc20ProxyAddress.0x23de6651 with:
                     gas gas_remaining wei
                    args address(_73), address(ext_call.return_data[0]), _75
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(erc20StoreAddress)
                call erc20StoreAddress.0xecdd5335 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(erc20StoreAddress)
                call erc20StoreAddress.0x21e5383a with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _75
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
                mem[mem[64] + 32] = address(_73)
                mem[mem[64] + 64] = _75
                mem[mem[64] + 96] = 1
                emit 0xcbbbc9e4: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), address(_73), _75, 1
        idx = idx + 1
        continue 
    return 1
}

function sub_9cc963ba(?) {
    require stor5[msg.sender]
    if arg2 > uint256(sub_dd3d1513[arg1].field_256):
        emit 0x984e0191: arg1, sub_dd3d1513[arg1].field_0, address(arg3), arg2, 0
    else:
        if uint256(sub_dd3d1513[arg1].field_256) - arg2:
            uint256(sub_dd3d1513[arg1].field_256) -= arg2
        else:
            sub_dd3d1513[arg1].field_0 = 0
            uint256(sub_dd3d1513[arg1].field_256) = 0
            uint8(sub_dd3d1513[arg1].field_512) = 0
        require ext_code.size(erc20StoreAddress)
        if uint8(sub_dd3d1513[arg1].field_512):
            call erc20StoreAddress.0x41fbb050 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0x47fe6472 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(erc20StoreAddress)
                call erc20StoreAddress.0x41fbb050 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(erc20StoreAddress)
                if ext_call.return_data[0] >= arg2:
                    call erc20StoreAddress.0x21e5383a with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0xf7ea7a3d with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] + arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0x41fbb050 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0xc4362834 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0x41fbb050 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(erc20ProxyAddress)
                    call erc20ProxyAddress.0x23de6651 with:
                         gas gas_remaining wei
                        args 0, address(ext_call.return_data[0]), arg2
                else:
                    call erc20StoreAddress.0x21e5383a with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0xf7ea7a3d with:
                         gas gas_remaining wei
                        args (2 * ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0x41fbb050 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0xc4362834 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0x41fbb050 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(erc20ProxyAddress)
                    call erc20ProxyAddress.0x23de6651 with:
                         gas gas_remaining wei
                        args 0, address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        call erc20StoreAddress.0xecdd5335 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0x27e235e3 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xecdd5335 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xe30443bc with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0] - arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0x21e5383a with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(erc20StoreAddress)
        call erc20StoreAddress.0xecdd5335 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(erc20ProxyAddress)
        call erc20ProxyAddress.0x23de6651 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x984e0191: arg1, sub_dd3d1513[arg1].field_0, address(arg3), arg2, 1
}

function sub_8c1b0e35(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[0] = msg.sender
    require stor5[msg.sender]
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _330 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _332 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _334 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require stor5[msg.sender]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 6
        _336 = sha3(mem[(32 * idx) + 128], 6)
        if mem[(32 * idx) + (32 * arg1.length) + 160] > uint256(sub_dd3d1513[mem[(32 * idx) + 128]].field_256):
            mem[mem[64]] = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = stor[_336]
            mem[mem[64] + 64] = address(_334)
            mem[mem[64] + 96] = _332
            mem[mem[64] + 128] = 0
            emit 0x984e0191: mem[mem[64]], stor[_336], address(_334), _332, 0
        else:
            if uint256(sub_dd3d1513[mem[(32 * idx) + 128]].field_256) - mem[(32 * idx) + (32 * arg1.length) + 160]:
                uint256(sub_dd3d1513[mem[(32 * idx) + 128]].field_256) -= mem[(32 * idx) + (32 * arg1.length) + 160]
            else:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 6
                sub_dd3d1513[mem[(32 * idx) + 128]].field_0 = 0
                uint256(sub_dd3d1513[mem[(32 * idx) + 128]].field_256) = 0
                uint8(sub_dd3d1513[mem[(32 * idx) + 128]].field_512) = 0
            require ext_code.size(erc20StoreAddress)
            if uint8(sub_dd3d1513[mem[(32 * idx) + 128]].field_512):
                call erc20StoreAddress.0x41fbb050 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(erc20StoreAddress)
                call erc20StoreAddress.0x47fe6472 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(erc20StoreAddress)
                    call erc20StoreAddress.0x41fbb050 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(erc20StoreAddress)
                    if ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]:
                        call erc20StoreAddress.0x21e5383a with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * idx) + (32 * arg1.length) + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0xf7ea7a3d with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[(32 * idx) + (32 * arg1.length) + 160])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0x41fbb050 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0xc4362834 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * idx) + (32 * arg1.length) + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0x41fbb050 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(erc20ProxyAddress)
                        call erc20ProxyAddress.0x23de6651 with:
                             gas gas_remaining wei
                            args 0, address(ext_call.return_data[0]), mem[(32 * idx) + (32 * arg1.length) + 160]
                    else:
                        call erc20StoreAddress.0x21e5383a with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0xf7ea7a3d with:
                             gas gas_remaining wei
                            args (2 * ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0x41fbb050 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0xc4362834 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(erc20StoreAddress)
                        call erc20StoreAddress.0x41fbb050 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(erc20ProxyAddress)
                        call erc20ProxyAddress.0x23de6651 with:
                             gas gas_remaining wei
                            args 0, address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            call erc20StoreAddress.0xecdd5335 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0x27e235e3 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xecdd5335 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0] - mem[(32 * idx) + (32 * arg1.length) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0x21e5383a with:
                 gas gas_remaining wei
                args address(mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]), mem[(32 * idx) + (32 * arg1.length) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20StoreAddress)
            call erc20StoreAddress.0xecdd5335 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(erc20ProxyAddress)
            call erc20ProxyAddress.0x23de6651 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]), mem[(32 * idx) + (32 * arg1.length) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = stor[_336]
            mem[mem[64] + 64] = address(_334)
            mem[mem[64] + 96] = _332
            mem[mem[64] + 128] = 1
            emit 0x984e0191: _330, stor[_336], address(_334), _332, 1
        idx = idx + 1
        continue 
    return 1
}



}
