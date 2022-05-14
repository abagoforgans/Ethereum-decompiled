contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 naturalUnit;
array of struct components;
mapping of uint8 stor8;
mapping of uint256 unredeemedBalance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function getUnredeemedBalance(address arg1, address arg2) {
    require stor8[arg1]
    idx = 0
    while idx < components.length:
        mem[0] = 7
        idx = idx + 1
        continue 
    return unredeemedBalance[0][address(arg2)]
}

function naturalUnit() {
    return naturalUnit
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function components(uint256 arg1) {
    require arg1 < components.length
    return components[arg1].field_0, components[arg1].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getUnits() {
    mem[96] = components.length
    if components.length:
        mem[128 len 32 * components.length] = code.data[13212 len 32 * components.length]
    idx = 0
    while uint16(idx) < components.length:
        mem[0] = 7
        require uint16(idx) < mem[96]
        mem[(32 * uint16(idx)) + 128] = components[2 * uint16(idx)].field_256
        idx = idx + 1
        continue 
    mem[(32 * components.length) + 128] = 32
    mem[(32 * components.length) + 160] = mem[96]
    mem[(32 * components.length) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * components.length) + 160 len (32 * mem[96]) + 32]
}

function getComponents() {
    mem[96] = components.length
    if components.length:
        mem[128 len 32 * components.length] = code.data[13212 len 32 * components.length]
    idx = 0
    while uint16(idx) < components.length:
        mem[0] = 7
        require uint16(idx) < mem[96]
        mem[(32 * uint16(idx)) + 128] = components[2 * uint16(idx)].field_0
        idx = idx + 1
        continue 
    mem[(32 * components.length) + 128] = 32
    mem[(32 * components.length) + 160] = mem[96]
    mem[(32 * components.length) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * components.length) + 160 len (32 * mem[96]) + 32]
}

function redeemExcluded(bytes32 arg1) {
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Components to redeem must be non-zero'
    s = 0
    t = 0
    idx = 0
    while uint16(idx) < components.length:
        if arg1 and uint16(2^idx) <= 0:
            s = s
            t = t
            idx = idx + 1
            continue 
        require uint16(idx) < components.length
        mem[0] = msg.sender
        mem[32] = sha3(idx << 240, 9)
        unredeemedBalance[idx << 240][address(msg.sender)] = 0
        mem[100] = msg.sender
        mem[132] = unredeemedBalance[idx << 240][address(msg.sender)]
        require ext_code.size(components[2 * uint16(idx)].field_0)
        call components[2 * uint16(idx)].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, unredeemedBalance[idx << 240][address(msg.sender)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        s = unredeemedBalance[idx << 240][address(msg.sender)]
        t = components[2 * uint16(idx)].field_0
        idx = idx + 1
        continue 
    emit LogRedeemExcluded(arg1, msg.sender);
    return 1
}

function redeem(uint256 arg1) {
    require naturalUnit
    require not arg1 % naturalUnit
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User does not have sufficient balance'
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < components.length:
        mem[0] = 7
        require ext_code.size(components[2 * uint16(idx)].field_0)
        call components[2 * uint16(idx)].field_0.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require naturalUnit
        if not arg1 / naturalUnit:
            mem[132] = 0
            require ext_code.size(components[2 * uint16(idx)].field_0)
            call components[2 * uint16(idx)].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[100] = this.address
            require ext_code.size(components[2 * uint16(idx)].field_0)
            call components[2 * uint16(idx)].field_0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 <= ext_call.return_data[0]:
                if ext_call.return_data[0] == ext_call.return_data[0]:
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    s = components[2 * uint16(idx)].field_256
                    s = components[2 * uint16(idx)].field_0
                    idx = idx + 1
                    continue 
        else:
            if arg1 / naturalUnit:
                if arg1 / naturalUnit * components[2 * uint16(idx)].field_256 / arg1 / naturalUnit == components[2 * uint16(idx)].field_256:
                    mem[132] = arg1 / naturalUnit * components[2 * uint16(idx)].field_256
                    require ext_code.size(components[2 * uint16(idx)].field_0)
                    call components[2 * uint16(idx)].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / naturalUnit * components[2 * uint16(idx)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[100] = this.address
                    require ext_code.size(components[2 * uint16(idx)].field_0)
                    call components[2 * uint16(idx)].field_0.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 / naturalUnit * components[2 * uint16(idx)].field_256 <= ext_call.return_data[0]:
                        if ext_call.return_data[0] - (arg1 / naturalUnit * components[2 * uint16(idx)].field_256) == ext_call.return_data[0]:
                            s = ext_call.return_data[0]
                            s = ext_call.return_data[0]
                            s = components[2 * uint16(idx)].field_256
                            s = components[2 * uint16(idx)].field_0
                            idx = idx + 1
                            continue 
        revert
    emit LogRedemption(arg1, msg.sender);
    return 1
}

function issue(uint256 arg1) {
    require naturalUnit
    require not arg1 % naturalUnit
    require arg1 > 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < components.length:
        mem[0] = 7
        require ext_code.size(components[2 * uint16(idx)].field_0)
        call components[2 * uint16(idx)].field_0.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require naturalUnit
        if not arg1 / naturalUnit:
            mem[132] = this.address
            mem[164] = 0
            require ext_code.size(components[2 * uint16(idx)].field_0)
            call components[2 * uint16(idx)].field_0.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[100] = this.address
            require ext_code.size(components[2 * uint16(idx)].field_0)
            call components[2 * uint16(idx)].field_0.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if ext_call.return_data[0] == ext_call.return_data[0]:
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    s = components[2 * uint16(idx)].field_256
                    s = components[2 * uint16(idx)].field_0
                    idx = idx + 1
                    continue 
        else:
            if arg1 / naturalUnit:
                if arg1 / naturalUnit * components[2 * uint16(idx)].field_256 / arg1 / naturalUnit == components[2 * uint16(idx)].field_256:
                    mem[132] = this.address
                    mem[164] = arg1 / naturalUnit * components[2 * uint16(idx)].field_256
                    require ext_code.size(components[2 * uint16(idx)].field_0)
                    call components[2 * uint16(idx)].field_0.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1 / naturalUnit * components[2 * uint16(idx)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[100] = this.address
                    require ext_code.size(components[2 * uint16(idx)].field_0)
                    call components[2 * uint16(idx)].field_0.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + (arg1 / naturalUnit * components[2 * uint16(idx)].field_256) >= ext_call.return_data[0]:
                        if ext_call.return_data[0] + (arg1 / naturalUnit * components[2 * uint16(idx)].field_256) == ext_call.return_data[0]:
                            s = ext_call.return_data[0]
                            s = ext_call.return_data[0]
                            s = components[2 * uint16(idx)].field_256
                            s = components[2 * uint16(idx)].field_0
                            idx = idx + 1
                            continue 
        revert
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Transfer(arg1, 0, msg.sender);
    emit LogIssuance(arg1, msg.sender);
    return 1
}

function partialRedeem(uint256 arg1, bytes32 arg2) {
    require naturalUnit
    require not arg1 % naturalUnit
    require arg1 > 0
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User does not have sufficient balance'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded components must be non-zero'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    idx = 0
    while uint16(idx) < components.length:
        require naturalUnit
        if not arg1 / naturalUnit:
            if arg2 and uint16(2^idx) > 0:
                mem[0] = msg.sender
                mem[32] = sha3(idx << 240, 9)
                idx = idx + 1
                continue 
            if uint16(idx) < components.length:
                require ext_code.size(components[2 * uint16(idx)].field_0)
                call components[2 * uint16(idx)].field_0.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint16(idx) < components.length:
                    mem[132] = 0
                    require ext_code.size(components[2 * uint16(idx)].field_0)
                    call components[2 * uint16(idx)].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if uint16(idx) < components.length:
                        mem[0] = 7
                        mem[100] = this.address
                        require ext_code.size(components[2 * uint16(idx)].field_0)
                        call components[2 * uint16(idx)].field_0.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if ext_call.return_data[0] == ext_call.return_data[0]:
                                idx = idx + 1
                                continue 
        else:
            if arg1 / naturalUnit:
                if arg1 / naturalUnit * components[2 * uint16(idx)].field_256 / arg1 / naturalUnit == components[2 * uint16(idx)].field_256:
                    if arg2 and uint16(2^idx) > 0:
                        mem[0] = msg.sender
                        mem[32] = sha3(idx << 240, 9)
                        unredeemedBalance[idx << 240][address(msg.sender)] += arg1 / naturalUnit * components[2 * uint16(idx)].field_256
                        idx = idx + 1
                        continue 
                    if uint16(idx) < components.length:
                        require ext_code.size(components[2 * uint16(idx)].field_0)
                        call components[2 * uint16(idx)].field_0.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint16(idx) < components.length:
                            mem[132] = arg1 / naturalUnit * components[2 * uint16(idx)].field_256
                            require ext_code.size(components[2 * uint16(idx)].field_0)
                            call components[2 * uint16(idx)].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1 / naturalUnit * components[2 * uint16(idx)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if uint16(idx) < components.length:
                                mem[0] = 7
                                mem[100] = this.address
                                require ext_code.size(components[2 * uint16(idx)].field_0)
                                call components[2 * uint16(idx)].field_0.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 / naturalUnit * components[2 * uint16(idx)].field_256 <= ext_call.return_data[0]:
                                    if ext_call.return_data[0] - (arg1 / naturalUnit * components[2 * uint16(idx)].field_256) == ext_call.return_data[0]:
                                        idx = idx + 1
                                        continue 
        revert
    emit LogPartialRedemption(arg1, arg2, msg.sender);
    return 1
}



}
