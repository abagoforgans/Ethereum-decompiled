contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address sub_195e9291Address;
mapping of struct sub_e7955862;
mapping of uint32 sub_e54310b7;

function sub_195e9291(?) {
    return sub_195e9291Address
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function sub_e54310b7(?) {
    return sub_e54310b7[arg1][arg2]
}

function sub_e7955862(?) {
    return sub_e7955862[arg1].field_0, 
           sub_e7955862[arg1].field_0,
           sub_e7955862[arg1].field_256,
           sub_e7955862[arg1].field_256,
           sub_e7955862[arg1].field_512,
           sub_e7955862[arg1].field_512,
           sub_e7955862[arg1].field_512,
           sub_e7955862[arg1].field_512,
           sub_e7955862[arg1].field_512,
           sub_e7955862[arg1].field_512,
           sub_e7955862[arg1].field_512,
           bool(sub_e7955862[arg1].field_640),
           bool(sub_e7955862[arg1].field_648)
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
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

function sub_c9f06055(?) {
    require msg.sender == owner
    if not sub_e7955862[arg1 << 248].field_640:
        revert with 0, 'sale should exist'
    sub_e7955862[arg1 << 248].field_648 = 1
}

function withdrawBalance() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(sub_195e9291Address)
    call sub_195e9291Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_241e7ffa(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x9a20483d00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_195e9291Address = arg1
}

function sub_e06d2796(?) {
    require msg.sender == owner
    if arg1 <= block.number:
        revert with 0, 'endSaleBlockNum should be future'
    s = 0
    idx = arg2
    while uint8(idx) <= arg3:
        if not sub_e7955862[idx << 248].field_640:
            revert with 0, 'sale must exists'
        mem[0] = uint8(idx)
        mem[32] = 2
        sub_e7955862[idx << 248].field_576 = uint32(arg1)
        s = sha3(idx << 248, 2)
        idx = idx + 1
        continue 
}

function sub_6b76c590(?) {
    require msg.sender == owner
    if not sub_e7955862[arg2 << 248].field_640:
        revert with 0, 'sale must exist'
    require ext_code.size(sub_195e9291Address)
    call sub_195e9291Address.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'token must owned'
    sub_e54310b7[arg2 << 248][arg3 << 248] = uint32(arg1)
    emit 0xfa8b318c: arg3, arg1, arg2
}

function sub_98389fce(?) {
    require msg.sender == owner
    if arg1 <= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'startSaleBlockNum should be future'
    s = 0
    idx = arg2
    while uint8(idx) <= arg3:
        if not sub_e7955862[idx << 248].field_640:
            revert with 0, 'sale must exists'
        mem[0] = uint8(idx)
        mem[32] = 2
        if block.number >= sub_e7955862[idx << 248].field_544:
            revert with 0, 'sale should not start'
        if arg1 >= sub_e7955862[idx << 248].field_576:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'startSaleBlockNum < endSaleBlockNum should be'
        sub_e7955862[idx << 248].field_512 = uint32(arg1)
        sub_e7955862[idx << 248].field_544 = uint32(arg1)
        sub_e7955862[idx << 248].field_544 = 0
        s = sha3(idx << 248, 2)
        idx = idx + 1
        continue 
}

function sub_9bde3f79(?) {
    require msg.sender == owner
    if arg5 <= block.number:
        revert with 0, 'startSaleBlockNum should be future'
    if arg5 >= arg6:
        revert with 0, 'startSaleBlockNum < endSaleBlockNum should be'
    if sub_e7955862[arg1 << 248].field_640:
        revert with 0, 'sale must NEVER exist'
    sub_e7955862[arg1 << 248].field_0 = arg2
    sub_e7955862[arg1 << 248].field_128 = arg2
    sub_e7955862[arg1 << 248].field_256 = arg2
    sub_e7955862[arg1 << 248].field_384 = arg3
    sub_e7955862[arg1 << 248].field_512 = uint32(arg5)
    sub_e7955862[arg1 << 248].field_544 = uint32(arg5)
    sub_e7955862[arg1 << 248].field_576 = uint32(arg6)
    sub_e7955862[arg1 << 248].field_608 = arg7
    sub_e7955862[arg1 << 248].field_616 = arg8
    sub_e7955862[arg1 << 248].field_624 = arg4
    sub_e7955862[arg1 << 248].field_632 = 0
    sub_e7955862[arg1 << 248].field_768 = 0
    sub_e7955862[arg1 << 248].field_640 = 1
    sub_e7955862[arg1 << 248].field_648 = 0
    emit 0xfbe9f88e: 0, arg3 << 128, arg5 << 224, arg6 << 224, arg7 << 248, arg8, arg1
}

function getSale(uint256 arg1) {
    require not stor0
    if not sub_e7955862[arg1 << 248].field_640:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The specified sale does not exist.'
    if sub_e7955862[arg1 << 248].field_648:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The specified sale does not exist.'
    if sub_e7955862[arg1 << 248].field_544 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can call it only during sale.'
    if block.number >= sub_e7955862[arg1 << 248].field_576:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can call it only during sale.'
    if sub_e7955862[arg1 << 248].field_632 >= sub_e7955862[arg1 << 248].field_624:
        return 0, 0, 0, sub_e7955862[arg1 << 248].field_512, 0, 0
    require sub_e7955862[arg1 << 248].field_632 + 1 >= sub_e7955862[arg1 << 248].field_632
    require sub_e7955862[arg1 << 248].field_512 <= block.number
    if not sub_e7955862[arg1 << 248].field_0:
        if 0 < sub_e7955862[arg1 << 248].field_384:
            if 5760 < block.number - sub_e7955862[arg1 << 248].field_512:
                if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                    if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                        return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                               sub_e7955862[arg1 << 248].field_256,
                               sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                               sub_e7955862[arg1 << 248].field_512,
                               sub_e7955862[arg1 << 248].field_256,
                               sub_e7955862[arg1 << 248].field_512
                    if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                        return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                               sub_e7955862[arg1 << 248].field_256,
                               sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                               sub_e7955862[arg1 << 248].field_512,
                               sub_e7955862[arg1 << 248].field_256,
                               sub_e7955862[arg1 << 248].field_512 + 5760
            else:
                if sub_e7955862[arg1 << 248].field_384 <= sub_e7955862[arg1 << 248].field_256:
                    if not sub_e7955862[arg1 << 248].field_256 - sub_e7955862[arg1 << 248].field_384:
                        if 0 <= sub_e7955862[arg1 << 248].field_256:
                            if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                    return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                           sub_e7955862[arg1 << 248].field_256,
                                           sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                           sub_e7955862[arg1 << 248].field_512,
                                           sub_e7955862[arg1 << 248].field_256,
                                           sub_e7955862[arg1 << 248].field_512
                                if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                    return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                           sub_e7955862[arg1 << 248].field_256,
                                           sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                           sub_e7955862[arg1 << 248].field_512,
                                           sub_e7955862[arg1 << 248].field_256,
                                           sub_e7955862[arg1 << 248].field_512 + 5760
                    else:
                        if (sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_384 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_384 * sub_e7955862[arg1 << 248].field_512) / sub_e7955862[arg1 << 248].field_256 - sub_e7955862[arg1 << 248].field_384 == block.number - sub_e7955862[arg1 << 248].field_512:
                            if (sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_384 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_384 * sub_e7955862[arg1 << 248].field_512) / 5760 <= sub_e7955862[arg1 << 248].field_256:
                                if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                    if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                        return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                               sub_e7955862[arg1 << 248].field_256 - ((sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_384 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_384 * sub_e7955862[arg1 << 248].field_512) / 5760),
                                               sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                               sub_e7955862[arg1 << 248].field_512,
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_512
                                    if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                        return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                               sub_e7955862[arg1 << 248].field_256 - ((sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_384 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_384 * sub_e7955862[arg1 << 248].field_512) / 5760),
                                               sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                               sub_e7955862[arg1 << 248].field_512,
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_512 + 5760
        else:
            if not sub_e7955862[arg1 << 248].field_0:
                if 5760 < block.number - sub_e7955862[arg1 << 248].field_512:
                    if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                        if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                   0,
                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                   sub_e7955862[arg1 << 248].field_512,
                                   sub_e7955862[arg1 << 248].field_256,
                                   sub_e7955862[arg1 << 248].field_512
                        if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                   0,
                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                   sub_e7955862[arg1 << 248].field_512,
                                   sub_e7955862[arg1 << 248].field_256,
                                   sub_e7955862[arg1 << 248].field_512 + 5760
                else:
                    if 0 <= sub_e7955862[arg1 << 248].field_256:
                        if not sub_e7955862[arg1 << 248].field_256:
                            if 0 <= sub_e7955862[arg1 << 248].field_256:
                                if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                    if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                        return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                               sub_e7955862[arg1 << 248].field_512,
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_512
                                    if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                        return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                               sub_e7955862[arg1 << 248].field_512,
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_512 + 5760
                        else:
                            if (block.number * sub_e7955862[arg1 << 248].field_256) - (sub_e7955862[arg1 << 248].field_512 * sub_e7955862[arg1 << 248].field_256) / sub_e7955862[arg1 << 248].field_256 == block.number - sub_e7955862[arg1 << 248].field_512:
                                if (block.number * sub_e7955862[arg1 << 248].field_256) - (sub_e7955862[arg1 << 248].field_512 * sub_e7955862[arg1 << 248].field_256) / 5760 <= sub_e7955862[arg1 << 248].field_256:
                                    if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                        if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                   sub_e7955862[arg1 << 248].field_256 - ((block.number * sub_e7955862[arg1 << 248].field_256) - (sub_e7955862[arg1 << 248].field_512 * sub_e7955862[arg1 << 248].field_256) / 5760),
                                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                   sub_e7955862[arg1 << 248].field_512,
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_512
                                        if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                   sub_e7955862[arg1 << 248].field_256 - ((block.number * sub_e7955862[arg1 << 248].field_256) - (sub_e7955862[arg1 << 248].field_512 * sub_e7955862[arg1 << 248].field_256) / 5760),
                                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                   sub_e7955862[arg1 << 248].field_512,
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_512 + 5760
            else:
                if sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_616:
                    if 5760 < block.number - sub_e7955862[arg1 << 248].field_512:
                        if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                            if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                       sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100,
                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                       sub_e7955862[arg1 << 248].field_512,
                                       sub_e7955862[arg1 << 248].field_256,
                                       sub_e7955862[arg1 << 248].field_512
                            if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                       sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100,
                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                       sub_e7955862[arg1 << 248].field_512,
                                       sub_e7955862[arg1 << 248].field_256,
                                       sub_e7955862[arg1 << 248].field_512 + 5760
                    else:
                        if sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 <= sub_e7955862[arg1 << 248].field_256:
                            if not sub_e7955862[arg1 << 248].field_256 - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100):
                                if 0 <= sub_e7955862[arg1 << 248].field_256:
                                    if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                        if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                   sub_e7955862[arg1 << 248].field_512,
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_512
                                        if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                   sub_e7955862[arg1 << 248].field_512,
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_512 + 5760
                            else:
                                if (sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * sub_e7955862[arg1 << 248].field_512) / sub_e7955862[arg1 << 248].field_256 - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100) == block.number - sub_e7955862[arg1 << 248].field_512:
                                    if (sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * sub_e7955862[arg1 << 248].field_512) / 5760 <= sub_e7955862[arg1 << 248].field_256:
                                        if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                            if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                       sub_e7955862[arg1 << 248].field_256 - ((sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * sub_e7955862[arg1 << 248].field_512) / 5760),
                                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                       sub_e7955862[arg1 << 248].field_512,
                                                       sub_e7955862[arg1 << 248].field_256,
                                                       sub_e7955862[arg1 << 248].field_512
                                            if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                       sub_e7955862[arg1 << 248].field_256 - ((sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * sub_e7955862[arg1 << 248].field_512) / 5760),
                                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                       sub_e7955862[arg1 << 248].field_512,
                                                       sub_e7955862[arg1 << 248].field_256,
                                                       sub_e7955862[arg1 << 248].field_512 + 5760
    else:
        if sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_616:
            if sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 < sub_e7955862[arg1 << 248].field_384:
                if 5760 < block.number - sub_e7955862[arg1 << 248].field_512:
                    if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                        if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                   sub_e7955862[arg1 << 248].field_256,
                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                   sub_e7955862[arg1 << 248].field_512,
                                   sub_e7955862[arg1 << 248].field_256,
                                   sub_e7955862[arg1 << 248].field_512
                        if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                   sub_e7955862[arg1 << 248].field_256,
                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                   sub_e7955862[arg1 << 248].field_512,
                                   sub_e7955862[arg1 << 248].field_256,
                                   sub_e7955862[arg1 << 248].field_512 + 5760
                else:
                    if sub_e7955862[arg1 << 248].field_384 <= sub_e7955862[arg1 << 248].field_256:
                        if not sub_e7955862[arg1 << 248].field_256 - sub_e7955862[arg1 << 248].field_384:
                            if 0 <= sub_e7955862[arg1 << 248].field_256:
                                if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                    if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                        return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                               sub_e7955862[arg1 << 248].field_512,
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_512
                                    if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                        return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                               sub_e7955862[arg1 << 248].field_512,
                                               sub_e7955862[arg1 << 248].field_256,
                                               sub_e7955862[arg1 << 248].field_512 + 5760
                        else:
                            if (sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_384 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_384 * sub_e7955862[arg1 << 248].field_512) / sub_e7955862[arg1 << 248].field_256 - sub_e7955862[arg1 << 248].field_384 == block.number - sub_e7955862[arg1 << 248].field_512:
                                if (sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_384 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_384 * sub_e7955862[arg1 << 248].field_512) / 5760 <= sub_e7955862[arg1 << 248].field_256:
                                    if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                        if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                   sub_e7955862[arg1 << 248].field_256 - ((sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_384 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_384 * sub_e7955862[arg1 << 248].field_512) / 5760),
                                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                   sub_e7955862[arg1 << 248].field_512,
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_512
                                        if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                   sub_e7955862[arg1 << 248].field_256 - ((sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_384 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_384 * sub_e7955862[arg1 << 248].field_512) / 5760),
                                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                   sub_e7955862[arg1 << 248].field_512,
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_512 + 5760
            else:
                if not sub_e7955862[arg1 << 248].field_0:
                    if 5760 < block.number - sub_e7955862[arg1 << 248].field_512:
                        if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                            if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                       0,
                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                       sub_e7955862[arg1 << 248].field_512,
                                       sub_e7955862[arg1 << 248].field_256,
                                       sub_e7955862[arg1 << 248].field_512
                            if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                       0,
                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                       sub_e7955862[arg1 << 248].field_512,
                                       sub_e7955862[arg1 << 248].field_256,
                                       sub_e7955862[arg1 << 248].field_512 + 5760
                    else:
                        if 0 <= sub_e7955862[arg1 << 248].field_256:
                            if not sub_e7955862[arg1 << 248].field_256:
                                if 0 <= sub_e7955862[arg1 << 248].field_256:
                                    if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                        if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                   sub_e7955862[arg1 << 248].field_512,
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_512
                                        if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                            return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                   sub_e7955862[arg1 << 248].field_512,
                                                   sub_e7955862[arg1 << 248].field_256,
                                                   sub_e7955862[arg1 << 248].field_512 + 5760
                            else:
                                if (block.number * sub_e7955862[arg1 << 248].field_256) - (sub_e7955862[arg1 << 248].field_512 * sub_e7955862[arg1 << 248].field_256) / sub_e7955862[arg1 << 248].field_256 == block.number - sub_e7955862[arg1 << 248].field_512:
                                    if (block.number * sub_e7955862[arg1 << 248].field_256) - (sub_e7955862[arg1 << 248].field_512 * sub_e7955862[arg1 << 248].field_256) / 5760 <= sub_e7955862[arg1 << 248].field_256:
                                        if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                            if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                       sub_e7955862[arg1 << 248].field_256 - ((block.number * sub_e7955862[arg1 << 248].field_256) - (sub_e7955862[arg1 << 248].field_512 * sub_e7955862[arg1 << 248].field_256) / 5760),
                                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                       sub_e7955862[arg1 << 248].field_512,
                                                       sub_e7955862[arg1 << 248].field_256,
                                                       sub_e7955862[arg1 << 248].field_512
                                            if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                       sub_e7955862[arg1 << 248].field_256 - ((block.number * sub_e7955862[arg1 << 248].field_256) - (sub_e7955862[arg1 << 248].field_512 * sub_e7955862[arg1 << 248].field_256) / 5760),
                                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                       sub_e7955862[arg1 << 248].field_512,
                                                       sub_e7955862[arg1 << 248].field_256,
                                                       sub_e7955862[arg1 << 248].field_512 + 5760
                else:
                    if sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_616:
                        if 5760 < block.number - sub_e7955862[arg1 << 248].field_512:
                            if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                    return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                           sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100,
                                           sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                           sub_e7955862[arg1 << 248].field_512,
                                           sub_e7955862[arg1 << 248].field_256,
                                           sub_e7955862[arg1 << 248].field_512
                                if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                    return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                           sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100,
                                           sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                           sub_e7955862[arg1 << 248].field_512,
                                           sub_e7955862[arg1 << 248].field_256,
                                           sub_e7955862[arg1 << 248].field_512 + 5760
                        else:
                            if sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 <= sub_e7955862[arg1 << 248].field_256:
                                if not sub_e7955862[arg1 << 248].field_256 - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100):
                                    if 0 <= sub_e7955862[arg1 << 248].field_256:
                                        if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                            if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                       sub_e7955862[arg1 << 248].field_256,
                                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                       sub_e7955862[arg1 << 248].field_512,
                                                       sub_e7955862[arg1 << 248].field_256,
                                                       sub_e7955862[arg1 << 248].field_512
                                            if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                                return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                       sub_e7955862[arg1 << 248].field_256,
                                                       sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                       sub_e7955862[arg1 << 248].field_512,
                                                       sub_e7955862[arg1 << 248].field_256,
                                                       sub_e7955862[arg1 << 248].field_512 + 5760
                                else:
                                    if (sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * sub_e7955862[arg1 << 248].field_512) / sub_e7955862[arg1 << 248].field_256 - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100) == block.number - sub_e7955862[arg1 << 248].field_512:
                                        if (sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * sub_e7955862[arg1 << 248].field_512) / 5760 <= sub_e7955862[arg1 << 248].field_256:
                                            if sub_e7955862[arg1 << 248].field_632 <= sub_e7955862[arg1 << 248].field_624:
                                                if sub_e7955862[arg1 << 248].field_0 == sub_e7955862[arg1 << 248].field_384:
                                                    return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                           sub_e7955862[arg1 << 248].field_256 - ((sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * sub_e7955862[arg1 << 248].field_512) / 5760),
                                                           sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                           sub_e7955862[arg1 << 248].field_512,
                                                           sub_e7955862[arg1 << 248].field_256,
                                                           sub_e7955862[arg1 << 248].field_512
                                                if sub_e7955862[arg1 << 248].field_512 + 5760 >= sub_e7955862[arg1 << 248].field_512:
                                                    return sub_e54310b7[arg1 << 248][stor2[arg1 << 248].field_632 + 1 << 248], 
                                                           sub_e7955862[arg1 << 248].field_256 - ((sub_e7955862[arg1 << 248].field_256 * block.number) - (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg1 << 248].field_256 * sub_e7955862[arg1 << 248].field_512) + (sub_e7955862[arg1 << 248].field_616 * sub_e7955862[arg1 << 248].field_0 / 100 * sub_e7955862[arg1 << 248].field_512) / 5760),
                                                           sub_e7955862[arg1 << 248].field_624 - sub_e7955862[arg1 << 248].field_632,
                                                           sub_e7955862[arg1 << 248].field_512,
                                                           sub_e7955862[arg1 << 248].field_256,
                                                           sub_e7955862[arg1 << 248].field_512 + 5760
    revert
}

function bid(uint256 arg1, uint256 arg2) payable {
    require not stor0
    if msg.value <= 0:
        revert with 0, 'send ether must be above 0'
    if sub_e7955862[arg2 << 248].field_544 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'block number must be between start and end'
    if block.number >= sub_e7955862[arg2 << 248].field_576:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'block number must be between start and end'
    if bool(sub_e7955862[arg2 << 248].field_640) != 1:
        revert with 0, 'sale must exist'
    if sub_e7955862[arg2 << 248].field_624 <= sub_e7955862[arg2 << 248].field_632:
        revert with 0, 'stock must remain'
    if sub_e7955862[arg2 << 248].field_648:
        revert with 0, 'sale must not deleted'
    require sub_e7955862[arg2 << 248].field_632 + 1 >= sub_e7955862[arg2 << 248].field_632
    if sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] != arg1:
        revert with 0, 'tokenId must be on sale'
    require sub_e7955862[arg2 << 248].field_512 <= block.number
    if not sub_e7955862[arg2 << 248].field_0:
        if 0 < sub_e7955862[arg2 << 248].field_384:
            if 5760 < block.number - sub_e7955862[arg2 << 248].field_512:
                if msg.value < sub_e7955862[arg2 << 248].field_384:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ether which bidder send must be higher than or equal to price'
                if msg.value > sub_e7955862[arg2 << 248].field_384:
                    require sub_e7955862[arg2 << 248].field_384 <= msg.value
                    call msg.sender with:
                       value msg.value - sub_e7955862[arg2 << 248].field_384 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not sub_e7955862[arg2 << 248].field_384:
                    require sub_e7955862[arg2 << 248].field_384 >= sub_e7955862[arg2 << 248].field_384
                    sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                    sub_e7955862[arg2 << 248].field_128 = sub_e7955862[arg2 << 248].field_384
                    sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                    sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                    sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                    sub_e7955862[arg2 << 248].field_256 = sub_e7955862[arg2 << 248].field_384
                    if sub_e7955862[arg2 << 248].field_0 < sub_e7955862[arg2 << 248].field_384:
                        sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_384
                    emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, sub_e7955862[arg2 << 248].field_384, arg2
                else:
                    require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / sub_e7955862[arg2 << 248].field_384 == sub_e7955862[arg2 << 248].field_608
                    require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384 >= sub_e7955862[arg2 << 248].field_384
                    sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                    sub_e7955862[arg2 << 248].field_128 = sub_e7955862[arg2 << 248].field_384
                    sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                    sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                    sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                    sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384)
                    if sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384):
                        sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384)
                    emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384, arg2
            else:
                require sub_e7955862[arg2 << 248].field_384 <= sub_e7955862[arg2 << 248].field_256
                if sub_e7955862[arg2 << 248].field_256 - sub_e7955862[arg2 << 248].field_384:
                    require (sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / sub_e7955862[arg2 << 248].field_256 - sub_e7955862[arg2 << 248].field_384 == block.number - sub_e7955862[arg2 << 248].field_512
                    require (sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 <= sub_e7955862[arg2 << 248].field_256
                    if msg.value < sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'ether which bidder send must be higher than or equal to price'
                    if msg.value > sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760):
                        require sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760) <= msg.value
                        call msg.sender with:
                           value msg.value - sub_e7955862[arg2 << 248].field_256 + ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760):
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        if sub_e7955862[arg2 << 248].field_0 < uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760)):
                            sub_e7955862[arg2 << 248].field_0 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760), block.number, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760), arg2
                    else:
                        require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760) == sub_e7955862[arg2 << 248].field_608
                        require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100 >= 0
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        if sub_e7955862[arg2 << 248].field_0 < uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760)):
                            sub_e7955862[arg2 << 248].field_0 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760), block.number, ((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760), arg2
                else:
                    require 0 <= sub_e7955862[arg2 << 248].field_256
                    if msg.value < sub_e7955862[arg2 << 248].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'ether which bidder send must be higher than or equal to price'
                    if msg.value > sub_e7955862[arg2 << 248].field_256:
                        require sub_e7955862[arg2 << 248].field_256 <= msg.value
                        call msg.sender with:
                           value msg.value - sub_e7955862[arg2 << 248].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not sub_e7955862[arg2 << 248].field_256:
                        require sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                        sub_e7955862[arg2 << 248].field_128 = 0
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < sub_e7955862[arg2 << 248].field_256:
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, sub_e7955862[arg2 << 248].field_256, arg2
                    else:
                        require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / sub_e7955862[arg2 << 248].field_256 == sub_e7955862[arg2 << 248].field_608
                        require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                        sub_e7955862[arg2 << 248].field_128 = 0
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                        if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256):
                            sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256, arg2
        else:
            if not sub_e7955862[arg2 << 248].field_0:
                if 5760 < block.number - sub_e7955862[arg2 << 248].field_512:
                    if msg.value < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'ether which bidder send must be higher than or equal to price'
                    if msg.value > 0:
                        require 0 <= msg.value
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                    sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_0
                    sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                    sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                    sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                    sub_e7955862[arg2 << 248].field_256 = 0
                    if sub_e7955862[arg2 << 248].field_0 < 0:
                        sub_e7955862[arg2 << 248].field_0 = 0
                    emit 0x88aa6bc9: arg1, msg.sender, 0, block.number, 0, arg2
                else:
                    require 0 <= sub_e7955862[arg2 << 248].field_256
                    if sub_e7955862[arg2 << 248].field_256:
                        require (block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / sub_e7955862[arg2 << 248].field_256 == block.number - sub_e7955862[arg2 << 248].field_512
                        require (block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 <= sub_e7955862[arg2 << 248].field_256
                        if msg.value < sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'ether which bidder send must be higher than or equal to price'
                        if msg.value > sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760):
                            require sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760) <= msg.value
                            call msg.sender with:
                               value msg.value - sub_e7955862[arg2 << 248].field_256 + ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760):
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            if sub_e7955862[arg2 << 248].field_0 < uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760)):
                                sub_e7955862[arg2 << 248].field_0 = uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760), block.number, sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760), arg2
                        else:
                            require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760) == sub_e7955862[arg2 << 248].field_608
                            require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100 >= 0
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            if sub_e7955862[arg2 << 248].field_0 < uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760)):
                                sub_e7955862[arg2 << 248].field_0 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760), block.number, ((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760), arg2
                    else:
                        require 0 <= sub_e7955862[arg2 << 248].field_256
                        if msg.value < sub_e7955862[arg2 << 248].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'ether which bidder send must be higher than or equal to price'
                        if msg.value > sub_e7955862[arg2 << 248].field_256:
                            require sub_e7955862[arg2 << 248].field_256 <= msg.value
                            call msg.sender with:
                               value msg.value - sub_e7955862[arg2 << 248].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_e7955862[arg2 << 248].field_256:
                            require sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            sub_e7955862[arg2 << 248].field_128 = 0
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < sub_e7955862[arg2 << 248].field_256:
                                sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, sub_e7955862[arg2 << 248].field_256, arg2
                        else:
                            require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / sub_e7955862[arg2 << 248].field_256 == sub_e7955862[arg2 << 248].field_608
                            require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            sub_e7955862[arg2 << 248].field_128 = 0
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                            if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256):
                                sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256, arg2
            else:
                require sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / sub_e7955862[arg2 << 248].field_0 == sub_e7955862[arg2 << 248].field_616
                if 5760 < block.number - sub_e7955862[arg2 << 248].field_512:
                    if msg.value < sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'ether which bidder send must be higher than or equal to price'
                    if msg.value > sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100:
                        require sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 <= msg.value
                        call msg.sender with:
                           value msg.value - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100:
                        require sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 >= sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)
                        if sub_e7955862[arg2 << 248].field_0 < uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100):
                            sub_e7955862[arg2 << 248].field_0 = uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100, block.number, sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100, arg2
                    else:
                        require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 == sub_e7955862[arg2 << 248].field_608
                        require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100) >= sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100))
                        if sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)):
                            sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100))
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100), arg2
                else:
                    require sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 <= sub_e7955862[arg2 << 248].field_256
                    if sub_e7955862[arg2 << 248].field_256 - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100):
                        require (sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / sub_e7955862[arg2 << 248].field_256 - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100) == block.number - sub_e7955862[arg2 << 248].field_512
                        require (sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 <= sub_e7955862[arg2 << 248].field_256
                        if msg.value < sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'ether which bidder send must be higher than or equal to price'
                        if msg.value > sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760):
                            require sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760) <= msg.value
                            call msg.sender with:
                               value msg.value - sub_e7955862[arg2 << 248].field_256 + ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760):
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            if sub_e7955862[arg2 << 248].field_0 < uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760)):
                                sub_e7955862[arg2 << 248].field_0 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760), block.number, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760), arg2
                        else:
                            require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760) == sub_e7955862[arg2 << 248].field_608
                            require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100 >= 0
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            if sub_e7955862[arg2 << 248].field_0 < uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760)):
                                sub_e7955862[arg2 << 248].field_0 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760), block.number, ((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760), arg2
                    else:
                        require 0 <= sub_e7955862[arg2 << 248].field_256
                        if msg.value < sub_e7955862[arg2 << 248].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'ether which bidder send must be higher than or equal to price'
                        if msg.value > sub_e7955862[arg2 << 248].field_256:
                            require sub_e7955862[arg2 << 248].field_256 <= msg.value
                            call msg.sender with:
                               value msg.value - sub_e7955862[arg2 << 248].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_e7955862[arg2 << 248].field_256:
                            require sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            sub_e7955862[arg2 << 248].field_128 = 0
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < sub_e7955862[arg2 << 248].field_256:
                                sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, sub_e7955862[arg2 << 248].field_256, arg2
                        else:
                            require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / sub_e7955862[arg2 << 248].field_256 == sub_e7955862[arg2 << 248].field_608
                            require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            sub_e7955862[arg2 << 248].field_128 = 0
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                            if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256):
                                sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256, arg2
    else:
        require sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / sub_e7955862[arg2 << 248].field_0 == sub_e7955862[arg2 << 248].field_616
        if sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 < sub_e7955862[arg2 << 248].field_384:
            if 5760 < block.number - sub_e7955862[arg2 << 248].field_512:
                if msg.value < sub_e7955862[arg2 << 248].field_384:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ether which bidder send must be higher than or equal to price'
                if msg.value > sub_e7955862[arg2 << 248].field_384:
                    require sub_e7955862[arg2 << 248].field_384 <= msg.value
                    call msg.sender with:
                       value msg.value - sub_e7955862[arg2 << 248].field_384 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not sub_e7955862[arg2 << 248].field_384:
                    require sub_e7955862[arg2 << 248].field_384 >= sub_e7955862[arg2 << 248].field_384
                    sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                    sub_e7955862[arg2 << 248].field_128 = sub_e7955862[arg2 << 248].field_384
                    sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                    sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                    sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                    sub_e7955862[arg2 << 248].field_256 = sub_e7955862[arg2 << 248].field_384
                    if sub_e7955862[arg2 << 248].field_0 < sub_e7955862[arg2 << 248].field_384:
                        sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_384
                    emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, sub_e7955862[arg2 << 248].field_384, arg2
                else:
                    require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / sub_e7955862[arg2 << 248].field_384 == sub_e7955862[arg2 << 248].field_608
                    require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384 >= sub_e7955862[arg2 << 248].field_384
                    sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                    sub_e7955862[arg2 << 248].field_128 = sub_e7955862[arg2 << 248].field_384
                    sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                    sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                    sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                    sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384)
                    if sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384):
                        sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384)
                    emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_384 / 100) + sub_e7955862[arg2 << 248].field_384, arg2
            else:
                require sub_e7955862[arg2 << 248].field_384 <= sub_e7955862[arg2 << 248].field_256
                if sub_e7955862[arg2 << 248].field_256 - sub_e7955862[arg2 << 248].field_384:
                    require (sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / sub_e7955862[arg2 << 248].field_256 - sub_e7955862[arg2 << 248].field_384 == block.number - sub_e7955862[arg2 << 248].field_512
                    require (sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 <= sub_e7955862[arg2 << 248].field_256
                    if msg.value < sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'ether which bidder send must be higher than or equal to price'
                    if msg.value > sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760):
                        require sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760) <= msg.value
                        call msg.sender with:
                           value msg.value - sub_e7955862[arg2 << 248].field_256 + ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760):
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        if sub_e7955862[arg2 << 248].field_0 < uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760)):
                            sub_e7955862[arg2 << 248].field_0 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760), block.number, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760), arg2
                    else:
                        require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760) == sub_e7955862[arg2 << 248].field_608
                        require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100 >= 0
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        if sub_e7955862[arg2 << 248].field_0 < uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760)):
                            sub_e7955862[arg2 << 248].field_0 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760))
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760), block.number, ((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_384 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_384 * sub_e7955862[arg2 << 248].field_512) / 5760), arg2
                else:
                    require 0 <= sub_e7955862[arg2 << 248].field_256
                    if msg.value < sub_e7955862[arg2 << 248].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'ether which bidder send must be higher than or equal to price'
                    if msg.value > sub_e7955862[arg2 << 248].field_256:
                        require sub_e7955862[arg2 << 248].field_256 <= msg.value
                        call msg.sender with:
                           value msg.value - sub_e7955862[arg2 << 248].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not sub_e7955862[arg2 << 248].field_256:
                        require sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                        sub_e7955862[arg2 << 248].field_128 = 0
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < sub_e7955862[arg2 << 248].field_256:
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, sub_e7955862[arg2 << 248].field_256, arg2
                    else:
                        require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / sub_e7955862[arg2 << 248].field_256 == sub_e7955862[arg2 << 248].field_608
                        require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                        sub_e7955862[arg2 << 248].field_128 = 0
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                        if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256):
                            sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256, arg2
        else:
            if not sub_e7955862[arg2 << 248].field_0:
                if 5760 < block.number - sub_e7955862[arg2 << 248].field_512:
                    if msg.value < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'ether which bidder send must be higher than or equal to price'
                    if msg.value > 0:
                        require 0 <= msg.value
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                    sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_0
                    sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                    sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                    sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                    sub_e7955862[arg2 << 248].field_256 = 0
                    if sub_e7955862[arg2 << 248].field_0 < 0:
                        sub_e7955862[arg2 << 248].field_0 = 0
                    emit 0x88aa6bc9: arg1, msg.sender, 0, block.number, 0, arg2
                else:
                    require 0 <= sub_e7955862[arg2 << 248].field_256
                    if sub_e7955862[arg2 << 248].field_256:
                        require (block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / sub_e7955862[arg2 << 248].field_256 == block.number - sub_e7955862[arg2 << 248].field_512
                        require (block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 <= sub_e7955862[arg2 << 248].field_256
                        if msg.value < sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'ether which bidder send must be higher than or equal to price'
                        if msg.value > sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760):
                            require sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760) <= msg.value
                            call msg.sender with:
                               value msg.value - sub_e7955862[arg2 << 248].field_256 + ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760):
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            if sub_e7955862[arg2 << 248].field_0 < uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760)):
                                sub_e7955862[arg2 << 248].field_0 = uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760), block.number, sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760), arg2
                        else:
                            require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760) == sub_e7955862[arg2 << 248].field_608
                            require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100 >= 0
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            if sub_e7955862[arg2 << 248].field_0 < uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760)):
                                sub_e7955862[arg2 << 248].field_0 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760))
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760), block.number, ((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((block.number * sub_e7955862[arg2 << 248].field_256) - (sub_e7955862[arg2 << 248].field_512 * sub_e7955862[arg2 << 248].field_256) / 5760), arg2
                    else:
                        require 0 <= sub_e7955862[arg2 << 248].field_256
                        if msg.value < sub_e7955862[arg2 << 248].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'ether which bidder send must be higher than or equal to price'
                        if msg.value > sub_e7955862[arg2 << 248].field_256:
                            require sub_e7955862[arg2 << 248].field_256 <= msg.value
                            call msg.sender with:
                               value msg.value - sub_e7955862[arg2 << 248].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_e7955862[arg2 << 248].field_256:
                            require sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            sub_e7955862[arg2 << 248].field_128 = 0
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < sub_e7955862[arg2 << 248].field_256:
                                sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, sub_e7955862[arg2 << 248].field_256, arg2
                        else:
                            require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / sub_e7955862[arg2 << 248].field_256 == sub_e7955862[arg2 << 248].field_608
                            require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            sub_e7955862[arg2 << 248].field_128 = 0
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                            if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256):
                                sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256, arg2
            else:
                require sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / sub_e7955862[arg2 << 248].field_0 == sub_e7955862[arg2 << 248].field_616
                if 5760 < block.number - sub_e7955862[arg2 << 248].field_512:
                    if msg.value < sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'ether which bidder send must be higher than or equal to price'
                    if msg.value > sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100:
                        require sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 <= msg.value
                        call msg.sender with:
                           value msg.value - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100:
                        require sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 >= sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)
                        if sub_e7955862[arg2 << 248].field_0 < uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100):
                            sub_e7955862[arg2 << 248].field_0 = uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100, block.number, sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100, arg2
                    else:
                        require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 == sub_e7955862[arg2 << 248].field_608
                        require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100) >= sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100
                        sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                        sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)
                        sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                        sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                        sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                        sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100))
                        if sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100)):
                            sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100))
                        emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 / 100) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100), arg2
                else:
                    require sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 <= sub_e7955862[arg2 << 248].field_256
                    if sub_e7955862[arg2 << 248].field_256 - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100):
                        require (sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / sub_e7955862[arg2 << 248].field_256 - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100) == block.number - sub_e7955862[arg2 << 248].field_512
                        require (sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 <= sub_e7955862[arg2 << 248].field_256
                        if msg.value < sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'ether which bidder send must be higher than or equal to price'
                        if msg.value > sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760):
                            require sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760) <= msg.value
                            call msg.sender with:
                               value msg.value - sub_e7955862[arg2 << 248].field_256 + ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760):
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            if sub_e7955862[arg2 << 248].field_0 < uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760)):
                                sub_e7955862[arg2 << 248].field_0 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760), block.number, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760), arg2
                        else:
                            require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760) == sub_e7955862[arg2 << 248].field_608
                            require (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100 >= 0
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_128 = uint128(sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            if sub_e7955862[arg2 << 248].field_0 < uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760)):
                                sub_e7955862[arg2 << 248].field_0 = uint128(((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760))
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760), block.number, ((sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_608) - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760 * sub_e7955862[arg2 << 248].field_608) / 100) + sub_e7955862[arg2 << 248].field_256 - ((sub_e7955862[arg2 << 248].field_256 * block.number) - (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * block.number) - (sub_e7955862[arg2 << 248].field_256 * sub_e7955862[arg2 << 248].field_512) + (sub_e7955862[arg2 << 248].field_616 * sub_e7955862[arg2 << 248].field_0 / 100 * sub_e7955862[arg2 << 248].field_512) / 5760), arg2
                    else:
                        require 0 <= sub_e7955862[arg2 << 248].field_256
                        if msg.value < sub_e7955862[arg2 << 248].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'ether which bidder send must be higher than or equal to price'
                        if msg.value > sub_e7955862[arg2 << 248].field_256:
                            require sub_e7955862[arg2 << 248].field_256 <= msg.value
                            call msg.sender with:
                               value msg.value - sub_e7955862[arg2 << 248].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_e7955862[arg2 << 248].field_256:
                            require sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            sub_e7955862[arg2 << 248].field_128 = 0
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < sub_e7955862[arg2 << 248].field_256:
                                sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, sub_e7955862[arg2 << 248].field_256, arg2
                        else:
                            require sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / sub_e7955862[arg2 << 248].field_256 == sub_e7955862[arg2 << 248].field_608
                            require (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256 >= sub_e7955862[arg2 << 248].field_256
                            sub_e54310b7[arg2 << 248][stor2[arg2 << 248].field_632 + 1 << 248] = 0
                            sub_e7955862[arg2 << 248].field_0 = sub_e7955862[arg2 << 248].field_256
                            sub_e7955862[arg2 << 248].field_128 = 0
                            sub_e7955862[arg2 << 248].field_512 = uint32(block.number)
                            sub_e7955862[arg2 << 248].field_544 = sub_e7955862[arg2 << 248].field_544
                            sub_e7955862[arg2 << 248].field_632 = uint8(sub_e7955862[arg2 << 248].field_632 + 1)
                            sub_e7955862[arg2 << 248].field_256 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                            if sub_e7955862[arg2 << 248].field_256 or sub_e7955862[arg2 << 248].field_0 < uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256):
                                sub_e7955862[arg2 << 248].field_0 = uint128((sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256)
                            emit 0x88aa6bc9: arg1, msg.sender, sub_e7955862[arg2 << 248].field_256, block.number, (sub_e7955862[arg2 << 248].field_608 * sub_e7955862[arg2 << 248].field_256 / 100) + sub_e7955862[arg2 << 248].field_256, arg2
    require ext_code.size(sub_195e9291Address)
    call sub_195e9291Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
