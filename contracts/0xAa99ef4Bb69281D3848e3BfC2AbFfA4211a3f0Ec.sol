contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of struct sub_0e6d93a2;

function sub_0e6d93a2(?) {
    return sub_0e6d93a2[arg1].field_1792
}

function sub_259db493(?) {
    return sub_0e6d93a2[arg1][3][address(msg.sender)].field_0
}

function sub_297e2ce9(?) {
    return sub_0e6d93a2[arg1][4][address(msg.sender)].field_0
}

function sub_758f130b(?) {
    return bool(sub_0e6d93a2[arg1].field_2048)
}

function sub_844412cc(?) {
    return sub_0e6d93a2[arg1].field_1280
}

function sub_87dec1ee(?) {
    return bool(sub_0e6d93a2[arg1].field_2056)
}

function owner() {
    return owner
}

function sub_caeb0b5f(?) {
    return sub_0e6d93a2[arg1].field_1536
}

function sub_df7d77e6(?) {
    return sub_0e6d93a2[arg1].field_0, 
           sub_0e6d93a2[arg1].field_256,
           bool(sub_0e6d93a2[arg1].field_512),
           sub_0e6d93a2[arg1].field_1280,
           sub_0e6d93a2[arg1].field_1536,
           sub_0e6d93a2[arg1].field_1792,
           bool(sub_0e6d93a2[arg1].field_2048),
           bool(sub_0e6d93a2[arg1].field_2056),
           sub_0e6d93a2[arg1].field_2064
}

function sub_e9019ea3(?) {
    return bool(sub_0e6d93a2[arg1].field_512)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f496b3ff(?) {
    require ext_code.size(stor1)
    call stor1.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor3:
        if sub_0e6d93a2[arg1].field_1280 + sub_0e6d93a2[arg1].field_1536 <= 0:
            return 0
    else:
        require stor3
        require stor3 * ext_call.return_data[0] / stor3 == ext_call.return_data[0]
        if sub_0e6d93a2[arg1].field_1280 + sub_0e6d93a2[arg1].field_1536 <= stor3 * ext_call.return_data[0] / 100:
            return 0
    if sub_0e6d93a2[arg1].field_1536 <= sub_0e6d93a2[arg1].field_1280:
        return 0
    return 1
}

function sub_2c729fd1(?) {
    require arg2 > 0
    if not sub_0e6d93a2[arg1].field_256:
        return 0
    if not sub_0e6d93a2[arg1].field_512:
        return 0
    if block.timestamp >= sub_0e6d93a2[arg1].field_256 + stor2:
        return 0
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        sub_0e6d93a2[arg1][3][address(msg.sender)].field_0 += arg2
        sub_0e6d93a2[arg1].field_1280 += arg2
    else:
        sub_0e6d93a2[arg1][4][address(msg.sender)].field_0 += arg2
        sub_0e6d93a2[arg1].field_1536 += arg2
    emit 0xeec35537: arg1, msg.sender, arg2, arg3
    return 1
}

function propose(bytes32 arg1, uint256 arg2) {
    if sub_0e6d93a2[arg1].field_256:
        emit 0xb3c9ae83: arg1, msg.sender
        return 0
    sub_0e6d93a2[arg1].field_0 = msg.sender
    sub_0e6d93a2[arg1].field_256 = block.timestamp
    sub_0e6d93a2[arg1].field_512 = 1
    sub_0e6d93a2[arg1].field_1280 = 0
    sub_0e6d93a2[arg1].field_1536 = 0
    sub_0e6d93a2[arg1].field_1792 = 0
    sub_0e6d93a2[arg1].field_2048 = 0
    sub_0e6d93a2[arg1].field_2056 = 0
    sub_0e6d93a2[arg1].field_2064 = 0
    sub_0e6d93a2[arg1].field_2304 = 0
    emit ProposalCreated(arg1, msg.sender);
    if arg2 > 0:
        require sub_0e6d93a2[arg1].field_256
        require sub_0e6d93a2[arg1].field_512
        require block.timestamp < sub_0e6d93a2[arg1].field_256 + stor2
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_0e6d93a2[arg1][4][address(msg.sender)].field_0 += arg2
        sub_0e6d93a2[arg1].field_1536 += arg2
        emit 0xeec35537: arg1, msg.sender, arg2, 1
    return 1
}

function sub_70bdefc1(?) {
    if not sub_0e6d93a2[arg1].field_256:
        return 0
    if not sub_0e6d93a2[arg1].field_2056:
        return (sub_0e6d93a2[arg1][4][address(arg2)].field_0 + sub_0e6d93a2[arg1][3][address(arg2)].field_0)
    if not sub_0e6d93a2[arg1].field_2048:
        if not sub_0e6d93a2[arg1].field_1792:
            require stor5 > 0
            if stor5:
                return (sub_0e6d93a2[arg1][3][address(arg2)].field_0 + (0 / stor5))
        else:
            if sub_0e6d93a2[arg1].field_1792:
                require sub_0e6d93a2[arg1].field_1792 * sub_0e6d93a2[arg1][3][address(arg2)].field_0 / sub_0e6d93a2[arg1].field_1792 == sub_0e6d93a2[arg1][3][address(arg2)].field_0
                require stor5 > 0
                if stor5:
                    return (sub_0e6d93a2[arg1][3][address(arg2)].field_0 + (sub_0e6d93a2[arg1].field_1792 * sub_0e6d93a2[arg1][3][address(arg2)].field_0 / stor5))
    else:
        if not sub_0e6d93a2[arg1].field_1792:
            require stor5 > 0
            if stor5:
                return (sub_0e6d93a2[arg1][4][address(arg2)].field_0 + (0 / stor5))
        else:
            if sub_0e6d93a2[arg1].field_1792:
                require sub_0e6d93a2[arg1].field_1792 * sub_0e6d93a2[arg1][4][address(arg2)].field_0 / sub_0e6d93a2[arg1].field_1792 == sub_0e6d93a2[arg1][4][address(arg2)].field_0
                require stor5 > 0
                if stor5:
                    return (sub_0e6d93a2[arg1][4][address(arg2)].field_0 + (sub_0e6d93a2[arg1].field_1792 * sub_0e6d93a2[arg1][4][address(arg2)].field_0 / stor5))
    revert
}

function claim(bytes32[] arg1) {
    require arg1.length < 256
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        mem[0] = cd[((32 * uint8(idx)) + arg1 + 36)]
        mem[32] = 6
        if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_256:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < arg1.length
        if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_256:
            require uint8(idx) < arg1.length
            require uint8(idx) < arg1.length
            if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2056:
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
            else:
                require uint8(idx) < arg1.length
                mem[0] = msg.sender
                if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2048:
                    mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
                else:
                    mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 4
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
            idx = idx + 1
            s = s
            continue 
        if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2056:
            require uint8(idx) < arg1.length
            require uint8(idx) < arg1.length
            if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2056:
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
            else:
                require uint8(idx) < arg1.length
                mem[0] = msg.sender
                if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2048:
                    mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
                else:
                    mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 4
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
            idx = idx + 1
            s = s + sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 + sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0
            continue 
        if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2048:
            if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792:
                require stor5 > 0
                require stor5
                require uint8(idx) < arg1.length
                require uint8(idx) < arg1.length
                if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2056:
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
                else:
                    require uint8(idx) < arg1.length
                    mem[0] = msg.sender
                    if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2048:
                        mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                        sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
                    else:
                        mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 4
                        sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
                idx = idx + 1
                s = s + sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 + (0 / stor5)
                continue 
            require sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792
            require sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792 * sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 / sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792 == sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0
            require stor5 > 0
            require stor5
            require uint8(idx) < arg1.length
            require uint8(idx) < arg1.length
            if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2056:
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
            else:
                require uint8(idx) < arg1.length
                mem[0] = msg.sender
                if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2048:
                    mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
                else:
                    mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 4
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
            idx = idx + 1
            s = s + sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 + (sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792 * sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 / stor5)
            continue 
        if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792:
            require stor5 > 0
            require stor5
            require uint8(idx) < arg1.length
            require uint8(idx) < arg1.length
            if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2056:
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
            else:
                require uint8(idx) < arg1.length
                mem[0] = msg.sender
                if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2048:
                    mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
                else:
                    mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 4
                    sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
            idx = idx + 1
            s = s + sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 + (0 / stor5)
            continue 
        require sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792
        require sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792 * sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 / sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792 == sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0
        require stor5 > 0
        require stor5
        require uint8(idx) < arg1.length
        require uint8(idx) < arg1.length
        if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2056:
            sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
            mem[0] = msg.sender
            mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
            sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
        else:
            require uint8(idx) < arg1.length
            mem[0] = msg.sender
            if not sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_2048:
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 3
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][3][address(msg.sender)].field_0 = 0
            else:
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)], 6) + 4
                sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 = 0
        idx = idx + 1
        s = s + sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 + (sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]].field_1792 * sub_0e6d93a2[cd[((32 * uint8(idx)) + arg1 + 36)]][4][address(msg.sender)].field_0 / stor5)
        continue 
    emit Claim(msg.sender, s);
    if s <= 0:
        return 0
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Claim(msg.sender, s);
    return 1
}

function sub_8a345eee(?) {
    require msg.sender == owner
    emit 0xd384fce3: arg1, arg2
    if not sub_0e6d93a2[arg1].field_256:
        return 0
    if not sub_0e6d93a2[arg1].field_512:
        return 0
    if sub_0e6d93a2[arg1].field_256 + stor2 >= block.timestamp:
        return 0
    sub_0e6d93a2[arg1].field_512 = 0
    require ext_code.size(stor1)
    call stor1.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor3:
        if sub_0e6d93a2[arg1].field_1280 + sub_0e6d93a2[arg1].field_1536 > 0:
            sub_0e6d93a2[arg1].field_2056 = 1
            sub_0e6d93a2[arg1].field_2064 = arg2
            if not arg2:
                if sub_0e6d93a2[arg1].field_1536 <= sub_0e6d93a2[arg1].field_1280:
                    if sub_0e6d93a2[arg1].field_1536:
                        require sub_0e6d93a2[arg1].field_1536
                        require not 0 / sub_0e6d93a2[arg1].field_1536
                    if not sub_0e6d93a2[arg1].field_1536:
                        require sub_0e6d93a2[arg1].field_1280 > 0
                        require sub_0e6d93a2[arg1].field_1280
                        sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1280
                    else:
                        require sub_0e6d93a2[arg1].field_1536
                        require 100 * sub_0e6d93a2[arg1].field_1536 / sub_0e6d93a2[arg1].field_1536 == 100
                        if not 100 * sub_0e6d93a2[arg1].field_1536 / 100:
                            require sub_0e6d93a2[arg1].field_1280 > 0
                            require sub_0e6d93a2[arg1].field_1280
                            sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1280
                        else:
                            require 100 * sub_0e6d93a2[arg1].field_1536 / 100
                            require 100 * sub_0e6d93a2[arg1].field_1536 / 100 * stor5 / 100 * sub_0e6d93a2[arg1].field_1536 / 100 == stor5
                            require sub_0e6d93a2[arg1].field_1280 > 0
                            require sub_0e6d93a2[arg1].field_1280
                            sub_0e6d93a2[arg1].field_1792 = 100 * sub_0e6d93a2[arg1].field_1536 / 100 * stor5 / sub_0e6d93a2[arg1].field_1280
                    sub_0e6d93a2[arg1].field_2048 = 0
                else:
                    if sub_0e6d93a2[arg1].field_1280:
                        require sub_0e6d93a2[arg1].field_1280
                        require not 0 / sub_0e6d93a2[arg1].field_1280
                    if not sub_0e6d93a2[arg1].field_1280:
                        require sub_0e6d93a2[arg1].field_1536 > 0
                        require sub_0e6d93a2[arg1].field_1536
                        sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1536
                    else:
                        require sub_0e6d93a2[arg1].field_1280
                        require 100 * sub_0e6d93a2[arg1].field_1280 / sub_0e6d93a2[arg1].field_1280 == 100
                        if not 100 * sub_0e6d93a2[arg1].field_1280 / 100:
                            require sub_0e6d93a2[arg1].field_1536 > 0
                            require sub_0e6d93a2[arg1].field_1536
                            sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1536
                        else:
                            require 100 * sub_0e6d93a2[arg1].field_1280 / 100
                            require 100 * sub_0e6d93a2[arg1].field_1280 / 100 * stor5 / 100 * sub_0e6d93a2[arg1].field_1280 / 100 == stor5
                            require sub_0e6d93a2[arg1].field_1536 > 0
                            require sub_0e6d93a2[arg1].field_1536
                            sub_0e6d93a2[arg1].field_1792 = 100 * sub_0e6d93a2[arg1].field_1280 / 100 * stor5 / sub_0e6d93a2[arg1].field_1536
                    sub_0e6d93a2[arg1].field_2048 = 1
            else:
                require stor4 <= 100
                if sub_0e6d93a2[arg1].field_1536 <= sub_0e6d93a2[arg1].field_1280:
                    if sub_0e6d93a2[arg1].field_1536:
                        require sub_0e6d93a2[arg1].field_1536
                        require sub_0e6d93a2[arg1].field_1536 * stor4 / sub_0e6d93a2[arg1].field_1536 == stor4
                        if sub_0e6d93a2[arg1].field_1536 * stor4 / 100 > 0:
                            if not sub_0e6d93a2[arg1].field_1536:
                                require ext_code.size(stor1)
                                call stor1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), 0
                            else:
                                require sub_0e6d93a2[arg1].field_1536
                                require sub_0e6d93a2[arg1].field_1536 * stor4 / sub_0e6d93a2[arg1].field_1536 == stor4
                                require ext_code.size(stor1)
                                call stor1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), sub_0e6d93a2[arg1].field_1536 * stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not sub_0e6d93a2[arg1].field_1536:
                        require sub_0e6d93a2[arg1].field_1280 > 0
                        require sub_0e6d93a2[arg1].field_1280
                        sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1280
                    else:
                        require sub_0e6d93a2[arg1].field_1536
                        require (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / sub_0e6d93a2[arg1].field_1536 == -stor4 + 100
                        if not (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100:
                            require sub_0e6d93a2[arg1].field_1280 > 0
                            require sub_0e6d93a2[arg1].field_1280
                            sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1280
                        else:
                            require (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100
                            require (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100 * stor5 / (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100 == stor5
                            require sub_0e6d93a2[arg1].field_1280 > 0
                            require sub_0e6d93a2[arg1].field_1280
                            sub_0e6d93a2[arg1].field_1792 = (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100 * stor5 / sub_0e6d93a2[arg1].field_1280
                    sub_0e6d93a2[arg1].field_2048 = 0
                else:
                    if sub_0e6d93a2[arg1].field_1280:
                        require sub_0e6d93a2[arg1].field_1280
                        require sub_0e6d93a2[arg1].field_1280 * stor4 / sub_0e6d93a2[arg1].field_1280 == stor4
                        if sub_0e6d93a2[arg1].field_1280 * stor4 / 100 > 0:
                            if not sub_0e6d93a2[arg1].field_1280:
                                require ext_code.size(stor1)
                                call stor1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), 0
                            else:
                                require sub_0e6d93a2[arg1].field_1280
                                require sub_0e6d93a2[arg1].field_1280 * stor4 / sub_0e6d93a2[arg1].field_1280 == stor4
                                require ext_code.size(stor1)
                                call stor1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), sub_0e6d93a2[arg1].field_1280 * stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not sub_0e6d93a2[arg1].field_1280:
                        require sub_0e6d93a2[arg1].field_1536 > 0
                        require sub_0e6d93a2[arg1].field_1536
                        sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1536
                    else:
                        require sub_0e6d93a2[arg1].field_1280
                        require (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / sub_0e6d93a2[arg1].field_1280 == -stor4 + 100
                        if not (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100:
                            require sub_0e6d93a2[arg1].field_1536 > 0
                            require sub_0e6d93a2[arg1].field_1536
                            sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1536
                        else:
                            require (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100
                            require (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100 * stor5 / (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100 == stor5
                            require sub_0e6d93a2[arg1].field_1536 > 0
                            require sub_0e6d93a2[arg1].field_1536
                            sub_0e6d93a2[arg1].field_1792 = (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100 * stor5 / sub_0e6d93a2[arg1].field_1536
                    sub_0e6d93a2[arg1].field_2048 = 1
    else:
        require stor3
        require stor3 * ext_call.return_data[0] / stor3 == ext_call.return_data[0]
        if sub_0e6d93a2[arg1].field_1280 + sub_0e6d93a2[arg1].field_1536 > stor3 * ext_call.return_data[0] / 100:
            sub_0e6d93a2[arg1].field_2056 = 1
            sub_0e6d93a2[arg1].field_2064 = arg2
            if not arg2:
                if sub_0e6d93a2[arg1].field_1536 <= sub_0e6d93a2[arg1].field_1280:
                    if sub_0e6d93a2[arg1].field_1536:
                        require sub_0e6d93a2[arg1].field_1536
                        require not 0 / sub_0e6d93a2[arg1].field_1536
                    if not sub_0e6d93a2[arg1].field_1536:
                        require sub_0e6d93a2[arg1].field_1280 > 0
                        require sub_0e6d93a2[arg1].field_1280
                        sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1280
                    else:
                        require sub_0e6d93a2[arg1].field_1536
                        require 100 * sub_0e6d93a2[arg1].field_1536 / sub_0e6d93a2[arg1].field_1536 == 100
                        if not 100 * sub_0e6d93a2[arg1].field_1536 / 100:
                            require sub_0e6d93a2[arg1].field_1280 > 0
                            require sub_0e6d93a2[arg1].field_1280
                            sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1280
                        else:
                            require 100 * sub_0e6d93a2[arg1].field_1536 / 100
                            require 100 * sub_0e6d93a2[arg1].field_1536 / 100 * stor5 / 100 * sub_0e6d93a2[arg1].field_1536 / 100 == stor5
                            require sub_0e6d93a2[arg1].field_1280 > 0
                            require sub_0e6d93a2[arg1].field_1280
                            sub_0e6d93a2[arg1].field_1792 = 100 * sub_0e6d93a2[arg1].field_1536 / 100 * stor5 / sub_0e6d93a2[arg1].field_1280
                    sub_0e6d93a2[arg1].field_2048 = 0
                else:
                    if sub_0e6d93a2[arg1].field_1280:
                        require sub_0e6d93a2[arg1].field_1280
                        require not 0 / sub_0e6d93a2[arg1].field_1280
                    if not sub_0e6d93a2[arg1].field_1280:
                        require sub_0e6d93a2[arg1].field_1536 > 0
                        require sub_0e6d93a2[arg1].field_1536
                        sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1536
                    else:
                        require sub_0e6d93a2[arg1].field_1280
                        require 100 * sub_0e6d93a2[arg1].field_1280 / sub_0e6d93a2[arg1].field_1280 == 100
                        if not 100 * sub_0e6d93a2[arg1].field_1280 / 100:
                            require sub_0e6d93a2[arg1].field_1536 > 0
                            require sub_0e6d93a2[arg1].field_1536
                            sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1536
                        else:
                            require 100 * sub_0e6d93a2[arg1].field_1280 / 100
                            require 100 * sub_0e6d93a2[arg1].field_1280 / 100 * stor5 / 100 * sub_0e6d93a2[arg1].field_1280 / 100 == stor5
                            require sub_0e6d93a2[arg1].field_1536 > 0
                            require sub_0e6d93a2[arg1].field_1536
                            sub_0e6d93a2[arg1].field_1792 = 100 * sub_0e6d93a2[arg1].field_1280 / 100 * stor5 / sub_0e6d93a2[arg1].field_1536
                    sub_0e6d93a2[arg1].field_2048 = 1
            else:
                require stor4 <= 100
                if sub_0e6d93a2[arg1].field_1536 <= sub_0e6d93a2[arg1].field_1280:
                    if sub_0e6d93a2[arg1].field_1536:
                        require sub_0e6d93a2[arg1].field_1536
                        require sub_0e6d93a2[arg1].field_1536 * stor4 / sub_0e6d93a2[arg1].field_1536 == stor4
                        if sub_0e6d93a2[arg1].field_1536 * stor4 / 100 > 0:
                            if not sub_0e6d93a2[arg1].field_1536:
                                require ext_code.size(stor1)
                                call stor1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), 0
                            else:
                                require sub_0e6d93a2[arg1].field_1536
                                require sub_0e6d93a2[arg1].field_1536 * stor4 / sub_0e6d93a2[arg1].field_1536 == stor4
                                require ext_code.size(stor1)
                                call stor1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), sub_0e6d93a2[arg1].field_1536 * stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not sub_0e6d93a2[arg1].field_1536:
                        require sub_0e6d93a2[arg1].field_1280 > 0
                        require sub_0e6d93a2[arg1].field_1280
                        sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1280
                    else:
                        require sub_0e6d93a2[arg1].field_1536
                        require (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / sub_0e6d93a2[arg1].field_1536 == -stor4 + 100
                        if not (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100:
                            require sub_0e6d93a2[arg1].field_1280 > 0
                            require sub_0e6d93a2[arg1].field_1280
                            sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1280
                        else:
                            require (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100
                            require (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100 * stor5 / (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100 == stor5
                            require sub_0e6d93a2[arg1].field_1280 > 0
                            require sub_0e6d93a2[arg1].field_1280
                            sub_0e6d93a2[arg1].field_1792 = (100 * sub_0e6d93a2[arg1].field_1536) - (stor4 * sub_0e6d93a2[arg1].field_1536) / 100 * stor5 / sub_0e6d93a2[arg1].field_1280
                    sub_0e6d93a2[arg1].field_2048 = 0
                else:
                    if sub_0e6d93a2[arg1].field_1280:
                        require sub_0e6d93a2[arg1].field_1280
                        require sub_0e6d93a2[arg1].field_1280 * stor4 / sub_0e6d93a2[arg1].field_1280 == stor4
                        if sub_0e6d93a2[arg1].field_1280 * stor4 / 100 > 0:
                            if not sub_0e6d93a2[arg1].field_1280:
                                require ext_code.size(stor1)
                                call stor1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), 0
                            else:
                                require sub_0e6d93a2[arg1].field_1280
                                require sub_0e6d93a2[arg1].field_1280 * stor4 / sub_0e6d93a2[arg1].field_1280 == stor4
                                require ext_code.size(stor1)
                                call stor1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), sub_0e6d93a2[arg1].field_1280 * stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not sub_0e6d93a2[arg1].field_1280:
                        require sub_0e6d93a2[arg1].field_1536 > 0
                        require sub_0e6d93a2[arg1].field_1536
                        sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1536
                    else:
                        require sub_0e6d93a2[arg1].field_1280
                        require (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / sub_0e6d93a2[arg1].field_1280 == -stor4 + 100
                        if not (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100:
                            require sub_0e6d93a2[arg1].field_1536 > 0
                            require sub_0e6d93a2[arg1].field_1536
                            sub_0e6d93a2[arg1].field_1792 = 0 / sub_0e6d93a2[arg1].field_1536
                        else:
                            require (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100
                            require (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100 * stor5 / (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100 == stor5
                            require sub_0e6d93a2[arg1].field_1536 > 0
                            require sub_0e6d93a2[arg1].field_1536
                            sub_0e6d93a2[arg1].field_1792 = (100 * sub_0e6d93a2[arg1].field_1280) - (stor4 * sub_0e6d93a2[arg1].field_1280) / 100 * stor5 / sub_0e6d93a2[arg1].field_1536
                    sub_0e6d93a2[arg1].field_2048 = 1
    emit 0xf14025ad: arg1, bool(sub_0e6d93a2[arg1].field_2056), bool(sub_0e6d93a2[arg1].field_2048), sub_0e6d93a2[arg1].field_1792
    return 1
}



}
