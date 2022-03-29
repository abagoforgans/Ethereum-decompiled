contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = code.data[11937 len 20]
    return code.data[75 len 11850]
}



// =====================  Runtime code  =====================


address dbAddress;
uint256 stor0;
address sub_64beff2fAddress;

function db() {
    return address(dbAddress)
}

function sub_64beff2f(?) {
    return sub_64beff2fAddress
}

function updateContract(address arg1) {
    require sub_64beff2fAddress == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6f9dae1 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x85e7d4d with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, 192, 224, 0, address(dbAddress), 0, 0
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).superUser() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    selfdestruct(ext_call.return_data[12 len 20])
}

function _fallback() {
    revert 
}

function sub_9959f7c5(?) {
    require sub_64beff2fAddress == msg.sender
    sub_64beff2fAddress = arg1
}

function totalSupply() {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getSuperUser() {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).superUser() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function balanceOf(address arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).balances(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function getWhitelist(address arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).whitelist(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_c79e5fc7(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).superUser() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x8cd9ed99 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0xa55e8cf9: 0x8cd9ed9900000000000000000000000000000000000000000000000000000000, address(arg1), 9, 'superUser'
}

function sub_cb84adf0(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).superUser() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).setMint(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0xa55e8cf9: 0x6acd4f5500000000000000000000000000000000000000000000000000000000, address(arg1), 4, 'mint'
}

function allowance(address arg1, address arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).mint() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        if ext_code.size(address(dbAddress)):
            call address(dbAddress).0x18160ddd with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                return ext_call.return_data[0]
    else:
        if ext_code.size(address(dbAddress)):
            call address(dbAddress).allowed(address rg1, address rg2) with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2
            if ext_call.success:
                return ext_call.return_data[0]
    revert
}

function checkInvariants() {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).maxTotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf1a9864 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xb2559a1f with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xca98d424 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x89ff4027 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
}

function sub_40f53eea(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).superUser() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x1d6015d3 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0x3e043111: 0x1d6015d300000000000000000000000000000000000000000000000000000000, arg1, 19, 'maxWhiteListedUsers'
    require ext_code.size(address(dbAddress))
    call address(dbAddress).maxTotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf1a9864 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xb2559a1f with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xca98d424 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x89ff4027 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
}

function sub_248dfb73(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).superUser() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x248dfb73 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0x3e043111: 0x248dfb7300000000000000000000000000000000000000000000000000000000, arg1, 21, 'maxDailyTokenTransfer'
    require ext_code.size(address(dbAddress))
    call address(dbAddress).maxTotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf1a9864 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xb2559a1f with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xca98d424 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x89ff4027 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
}

function setMaxTotalSupply(uint256 arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).superUser() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x3f3e4c11 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0x3e043111: 0x3f3e4c1100000000000000000000000000000000000000000000000000000000, arg1, 14, 'maxTotalSupply'
    require ext_code.size(address(dbAddress))
    call address(dbAddress).maxTotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf1a9864 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xb2559a1f with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xca98d424 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x89ff4027 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    require ext_code.size(address(dbAddress))
    call address(dbAddress).whitelist(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(address(dbAddress))
    call address(dbAddress).balances(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require ext_code.size(address(dbAddress))
    call address(dbAddress).decreaseBalance(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).increaseBalance(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(address(dbAddress))
    call address(dbAddress).maxTotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf1a9864 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xb2559a1f with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xca98d424 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x89ff4027 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    return 1
}

function sub_085e7d4d(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require not address(dbAddress)
    if arg6:
        address(dbAddress) = arg6
    require ext_code.size(0xcd7527793e318f509feca2a740ffe894fa77fda)
    delegate 0xcd7527793e318f509feca2a740ffe894fa77fda.0x17e08c38 with:
         gas gas_remaining - 50 wei
        args 
    require delegate.return_code
    uint256(stor0) = delegate.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 0xc47f002700000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = 32
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 228] = mem[128]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 260 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setName(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 228 len arg3.length])
    require ext_call.success
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 0xb84c824600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = 32
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = arg4.length
    if arg4.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 228] = mem[ceil32(arg3.length) + 160]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 260 len floor32(arg4.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg4.length - 1)]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).setSymbol(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=arg4.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 228 len arg4.length])
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).setDecimals(uint8 rg1) with:
         gas gas_remaining - 50 wei
        args arg5
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x8cd9ed99 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).setMint(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).allowed(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(address(dbAddress))
        call address(dbAddress).setAllowed(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
        emit Approval(arg2, msg.sender, arg1);
        require ext_code.size(address(dbAddress))
        call address(dbAddress).maxTotalSupply() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0xf1a9864 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0xb2559a1f with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xca98d424 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0x89ff4027 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    return 1
    else:
        if not arg2:
            require ext_code.size(address(dbAddress))
            call address(dbAddress).setAllowed(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 50 wei
                args msg.sender, address(arg1), arg2
            require ext_call.success
            emit Approval(arg2, msg.sender, arg1);
            require ext_code.size(address(dbAddress))
            call address(dbAddress).maxTotalSupply() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x18160ddd with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xf1a9864 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xb2559a1f with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0xca98d424 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0x89ff4027 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        return 1
    revert 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    if ext_call.return_data[12 len 20] != msg.sender:
        call address(dbAddress).mint() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != msg.sender:
            return 0
    call address(dbAddress).whitelist(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(address(dbAddress))
    call address(dbAddress).whitelist(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(address(dbAddress))
    call address(dbAddress).balances(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        return 0
    require ext_code.size(address(dbAddress))
    call address(dbAddress).mint() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    if msg.sender == ext_call.return_data[12 len 20]:
        call address(dbAddress).0x18160ddd with:
             gas gas_remaining - 50 wei
    else:
        call address(dbAddress).allowed(address rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args address(arg1), msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf1a9864 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if arg3 > ext_call.return_data[0]:
        return 0
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xea7a4071 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    if ext_call.return_data[0] < block.timestamp / 24 * 3600:
        call address(dbAddress).0xfe7620b2 with:
             gas gas_remaining - 50 wei
            args (block.timestamp / 24 * 3600)
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x8eaab731 with:
             gas gas_remaining - 50 wei
            args arg3
    else:
        call address(dbAddress).0xf1a9864 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0xb2559a1f with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if ext_call.return_data[0] + arg3 > ext_call.return_data[0]:
            return 0
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0xb2559a1f with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x8eaab731 with:
             gas gas_remaining - 50 wei
            args (ext_call.return_data[0] + arg3)
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).decreaseBalance(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg3
    require ext_call.success
    require ext_code.size(address(dbAddress))
    if arg2:
        call address(dbAddress).increaseBalance(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg2), arg3
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).decreaseAllowed(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args address(arg1), msg.sender, arg3
        require ext_call.success
    else:
        call address(dbAddress).0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).setTotalSupply(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args (ext_call.return_data[0] - arg3)
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).balances(address rg1) with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        emit 0x2276c005: address(arg1), -arg3 << 128, ext_call.return_data[0], ext_call.return_data[0]
    emit Transfer(arg3, arg1, arg2);
    require ext_code.size(address(dbAddress))
    call address(dbAddress).maxTotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf1a9864 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xb2559a1f with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xca98d424 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x89ff4027 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    return 1
}

function sub_1f21cebb(?) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).mint() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).maxTotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] + arg2 <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xf1a9864 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xea7a4071 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(dbAddress))
    if ext_call.return_data[0] < block.timestamp / 24 * 3600:
        call address(dbAddress).0xfe7620b2 with:
             gas gas_remaining - 50 wei
            args (block.timestamp / 24 * 3600)
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x8eaab731 with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).increaseBalance(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).setTotalSupply(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args (ext_call.return_data[0] + arg2)
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).balances(address rg1) with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        emit 0x2276c005: address(arg1), arg2 << 128, ext_call.return_data[0], ext_call.return_data[0]
        emit Transfer(arg2, 0, arg1);
        require ext_code.size(address(dbAddress))
        call address(dbAddress).maxTotalSupply() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0xf1a9864 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0xb2559a1f with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xca98d424 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0x89ff4027 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[0] <= ext_call.return_data[0]:
    else:
        call address(dbAddress).0xf1a9864 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0xb2559a1f with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if ext_call.return_data[0] + arg2 <= ext_call.return_data[0]:
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0xb2559a1f with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x8eaab731 with:
                 gas gas_remaining - 50 wei
                args (ext_call.return_data[0] + arg2)
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).increaseBalance(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x18160ddd with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).setTotalSupply(uint256 rg1) with:
                 gas gas_remaining - 50 wei
                args (ext_call.return_data[0] + arg2)
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).balances(address rg1) with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x18160ddd with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            emit 0x2276c005: address(arg1), arg2 << 128, ext_call.return_data[0], ext_call.return_data[0]
            emit Transfer(arg2, 0, arg1);
            require ext_code.size(address(dbAddress))
            call address(dbAddress).maxTotalSupply() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x18160ddd with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xf1a9864 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xb2559a1f with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0xca98d424 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0x89ff4027 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
    revert 
}

function setWhitelist(address arg1, bool arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).mint() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(dbAddress))
    call address(dbAddress).whitelist(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(dbAddress))
    if ext_call.return_data[0]:
        call address(dbAddress).whitelist(address rg1) with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
        if arg2:
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x89ff4027 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0xafd36a28 with:
             gas gas_remaining - 50 wei
            args (ext_call.return_data[0] - 1)
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x53d6fd59 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2
        require ext_call.success
        emit 0xb9eccffd: address(arg1), arg2
        require ext_code.size(address(dbAddress))
        call address(dbAddress).maxTotalSupply() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(dbAddress))
        call address(dbAddress).0x18160ddd with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0xf1a9864 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0xb2559a1f with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xca98d424 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0x89ff4027 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[0] <= ext_call.return_data[0]:
    else:
        if not arg2:
            call address(dbAddress).whitelist(address rg1) with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if not ext_call.return_data[0]:
            if arg2:
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x89ff4027 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0xafd36a28 with:
                 gas gas_remaining - 50 wei
                args (ext_call.return_data[0] - 1)
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x53d6fd59 with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2
            require ext_call.success
            emit 0xb9eccffd: address(arg1), arg2
            require ext_code.size(address(dbAddress))
            call address(dbAddress).maxTotalSupply() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x18160ddd with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xf1a9864 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xb2559a1f with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0xca98d424 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0x89ff4027 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
        else:
            call address(dbAddress).0xca98d424 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(dbAddress))
            call address(dbAddress).0x89ff4027 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] + 1 <= ext_call.return_data[0]:
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0x89ff4027 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0xafd36a28 with:
                     gas gas_remaining - 50 wei
                    args (ext_call.return_data[0] + 1)
                require ext_call.success
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0x53d6fd59 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2
                require ext_call.success
                emit 0xb9eccffd: address(arg1), arg2
                require ext_code.size(address(dbAddress))
                call address(dbAddress).maxTotalSupply() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(dbAddress))
                call address(dbAddress).0x18160ddd with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0xf1a9864 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    require ext_code.size(address(dbAddress))
                    call address(dbAddress).0xb2559a1f with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        require ext_code.size(address(dbAddress))
                        call address(dbAddress).0xca98d424 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        require ext_code.size(address(dbAddress))
                        call address(dbAddress).0x89ff4027 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
    revert 
}



}
