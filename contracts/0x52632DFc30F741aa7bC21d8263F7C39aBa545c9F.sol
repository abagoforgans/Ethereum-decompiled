contract main {




// =====================  Runtime code  =====================


const decimals = 18


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address pendingOwner;
address stor2;
array of uint256 name;
array of uint256 symbol;
address stor5;
address stor6;

function name() {
    return name[0 len name.length]
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferPending(owner, pendingOwner);
    pendingOwner = arg1
}

function changeName(string arg1, string arg2) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
}

function totalSupply() {
    require ext_code.size(stor5)
    call stor5.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function blacklist(address arg1) {
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function allowance(address arg1, address arg2) {
    require ext_code.size(stor6)
    call stor6.allowanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor6)
    call stor6.setAllowance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require not uint8(stor1.field_160)
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(stor5)
    call stor5.subBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.subTotalSupply(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Burn(arg1, msg.sender);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor6)
    call stor6.subAllowance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.allowanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Approval(ext_call.return_data[0], msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor6)
    call stor6.addAllowance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.allowanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Approval(ext_call.return_data[0], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require arg2 > 0
    require arg1
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.subBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.addBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] == 2 * ext_call.return_data[0]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor6)
    call stor6.allowanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(stor6)
    call stor6.subAllowance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3 > 0
    require arg2
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.subBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.addBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, arg1, arg2);
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] == 2 * ext_call.return_data[0]
    return 1
}

function batchTransfer(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not uint8(stor1.field_160)
    require ext_code.size(stor2)
    call stor2.0xf9f92be4 with:
         gas gas_remaining wei
        args msg.sender
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _85 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(stor2)
        call stor2.0xf9f92be4 with:
             gas gas_remaining wei
            args address(_85)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        idx = idx + 1
        continue 
    require arg1.length > 0
    require arg1.length <= 100
    require arg2 > 0
    if not arg2:
        require ext_code.size(stor5)
        call stor5.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _165 = mem[(32 * idx) + 128]
            require arg2 > 0
            require mem[(32 * idx) + 140 len 20]
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg2
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 140 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(stor5)
            call stor5.subBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length) + 164] = arg2
            require ext_code.size(stor5)
            call stor5.addBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_165), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Transfer(arg2, msg.sender, address(_165));
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args address(_165)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 132] = msg.sender
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * ext_call.return_data[0] == 2 * ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        require arg2
        require arg2 * arg1.length / arg2 == arg1.length
        require ext_code.size(stor5)
        call stor5.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg2 * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _162 = mem[(32 * idx) + 128]
            require arg2 > 0
            require mem[(32 * idx) + 140 len 20]
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg2
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 140 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(stor5)
            call stor5.subBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length) + 164] = arg2
            require ext_code.size(stor5)
            call stor5.addBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_162), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Transfer(arg2, msg.sender, address(_162));
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args address(_162)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 132] = msg.sender
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * ext_call.return_data[0] == 2 * ext_call.return_data[0]
            idx = idx + 1
            continue 
    return 1
}



}
