contract main {


// =======================  Init code  ======================


address stor0; offset 8
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[4657 len 20]
    return code.data[113 len 4532]
}



// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
address sub_ad12d6cbAddress;
mapping of uint256 sub_0a82bc28;
mapping of uint256 sub_367c2b75;
mapping of uint256 sub_4cde0a29;
mapping of uint256 sub_1cef0dc9;
mapping of uint256 sub_bf7a59df;
mapping of struct sub_852513ab;
uint256 sub_49f7d4ae;
mapping of address sub_939a53ce;

function sub_0a82bc28(?) {
    return sub_0a82bc28[arg1][arg2]
}

function sub_1cef0dc9(?) {
    return sub_1cef0dc9[arg1][arg2]
}

function sub_367c2b75(?) {
    return sub_367c2b75[arg1]
}

function sub_49f7d4ae(?) {
    return sub_49f7d4ae
}

function sub_4cde0a29(?) {
    return sub_4cde0a29[arg1]
}

function sub_852513ab(?) {
    return sub_852513ab[address(arg1)].field_256, sub_852513ab[address(arg1)].field_512
}

function owner() {
    return owner
}

function sub_939a53ce(?) {
    return sub_939a53ce[arg1]
}

function sub_ad12d6cb(?) {
    return sub_ad12d6cbAddress
}

function sub_bf7a59df(?) {
    return sub_bf7a59df[arg1][arg2]
}

function _fallback() payable {
    revert
}

function percent(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg2
    return ((arg1 * 10^(arg3 + 1) / arg2) + 5 / 10)
}

function getWinner(address arg1) {
    if sub_367c2b75[address(arg1)] <= sub_4cde0a29[address(arg1)]:
        return 0
    return 1
}

function sub_ea69b4f2(?) {
    if block.timestamp >= sub_852513ab[address(arg1)].field_256 + (24 * 3600):
        return 0
    return ((sub_852513ab[address(arg1)].field_256 + -block.timestamp + (24 * 3600) / 24 * 3600) + 1)
}

function sub_7b143e27(?) {
    if block.timestamp >= sub_852513ab[address(arg1)].field_256 + (48 * 24 * 3600):
        return 0
    return ((sub_852513ab[address(arg1)].field_256 + -block.timestamp + (48 * 24 * 3600) / 24 * 3600) + 1)
}

function sub_bff5048a(?) {
    require not stor0
    stor0 = 1
    require sub_852513ab[address(arg1)].field_512 <= 0
    sub_49f7d4ae++
    sub_852513ab[address(arg1)].field_256 = block.timestamp
    sub_852513ab[address(arg1)].field_512 = sub_49f7d4ae - 1
    require ext_code.size(sub_ad12d6cbAddress)
    call sub_ad12d6cbAddress.transferFromOrigin(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), arg2
    require ext_call.success
    sub_939a53ce[stor8 - 1] = arg1
    stor0 = 0
    return (sub_49f7d4ae - 1)
}

function sub_70137c4c(?) {
    if sub_1cef0dc9[address(arg1)][address(arg2)] > 0:
        require ext_code.size(arg1)
        call arg1.reward() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if sub_367c2b75[address(arg1)] <= sub_4cde0a29[address(arg1)]:
            if sub_367c2b75[address(arg1)]:
                return sub_1cef0dc9[address(arg1)][address(arg2)], 
                       10^18 * (10000 * sub_1cef0dc9[address(arg1)][address(arg2)] / sub_367c2b75[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000,
                       5 * ext_call.return_data[0] / 100
        else:
            if sub_367c2b75[address(arg1)]:
                return sub_1cef0dc9[address(arg1)][address(arg2)], 
                       10^18 * (10000 * sub_1cef0dc9[address(arg1)][address(arg2)] / sub_367c2b75[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000,
                       95 * ext_call.return_data[0] / 100
        ('iszero', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_367c2b75', 3))))
    else:
        if sub_bf7a59df[address(arg1)][address(arg2)] <= 0:
            return 0
        require ext_code.size(arg1)
        call arg1.reward() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if sub_367c2b75[address(arg1)] >= sub_4cde0a29[address(arg1)]:
            if sub_4cde0a29[address(arg1)]:
                return sub_bf7a59df[address(arg1)][address(arg2)], 
                       10^18 * (10000 * sub_bf7a59df[address(arg1)][address(arg2)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000,
                       5 * ext_call.return_data[0] / 100
        else:
            if sub_4cde0a29[address(arg1)]:
                return sub_bf7a59df[address(arg1)][address(arg2)], 
                       10^18 * (10000 * sub_bf7a59df[address(arg1)][address(arg2)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000,
                       95 * ext_call.return_data[0] / 100
        ('iszero', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4cde0a29', 4))))
    revert
}

function sub_411cff3d(?) {
    require not stor0
    stor0 = 1
    if sub_1cef0dc9[address(arg1)][address(msg.sender)] > 0:
        if sub_bf7a59df[address(arg1)][address(msg.sender)] > 0:
            stor0 = 0
            return 0
        if arg2 != 2:
            stor0 = 0
            return 0
        require ext_code.size(sub_ad12d6cbAddress)
        call sub_ad12d6cbAddress.transferFromOrigin(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), arg3
        require ext_call.success
        require ext_call.return_data[0]
        sub_367c2b75[address(arg1)] += arg3
        sub_1cef0dc9[address(arg1)][address(msg.sender)] += arg3
    else:
        if sub_bf7a59df[address(arg1)][address(msg.sender)] > 0:
            if arg2 != 1:
                stor0 = 0
                return 0
            require ext_code.size(sub_ad12d6cbAddress)
            call sub_ad12d6cbAddress.transferFromOrigin(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(this.address), arg3
            require ext_call.success
            require ext_call.return_data[0]
            sub_4cde0a29[address(arg1)] += arg3
            sub_bf7a59df[address(arg1)][address(msg.sender)] += arg3
        else:
            if arg2 != 1:
                if arg2 != 2:
                    stor0 = 0
                    return 0
                require ext_code.size(sub_ad12d6cbAddress)
                call sub_ad12d6cbAddress.transferFromOrigin(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(this.address), arg3
                require ext_call.success
                require ext_call.return_data[0]
                sub_367c2b75[address(arg1)] += arg3
                sub_1cef0dc9[address(arg1)][address(msg.sender)] += arg3
            else:
                require ext_code.size(sub_ad12d6cbAddress)
                call sub_ad12d6cbAddress.transferFromOrigin(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(this.address), arg3
                require ext_call.success
                require ext_call.return_data[0]
                sub_4cde0a29[address(arg1)] += arg3
                sub_bf7a59df[address(arg1)][address(msg.sender)] += arg3
                if 2 == arg2:
                    require ext_code.size(sub_ad12d6cbAddress)
                    call sub_ad12d6cbAddress.transferFromOrigin(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(this.address), arg3
                    require ext_call.success
                    require ext_call.return_data[0]
                    sub_367c2b75[address(arg1)] += arg3
                    sub_1cef0dc9[address(arg1)][address(msg.sender)] += arg3
    stor0 = 0
    return 1
}

function reward(address arg1) {
    require not stor0
    stor0 = 1
    if block.timestamp < sub_852513ab[address(arg1)].field_256 + (24 * 3600):
        require not (sub_852513ab[address(arg1)].field_256 + -block.timestamp + (24 * 3600) / 24 * 3600) + 1
    require sub_0a82bc28[address(arg1)][address(msg.sender)] <= 0
    if sub_1cef0dc9[address(arg1)][address(msg.sender)] <= 0:
        if sub_bf7a59df[address(arg1)][address(msg.sender)] <= 0:
            require ext_code.size(sub_ad12d6cbAddress)
            call sub_ad12d6cbAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
        else:
            require ext_code.size(arg1)
            call arg1.reward() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require sub_4cde0a29[address(arg1)]
            if sub_367c2b75[address(arg1)] >= sub_4cde0a29[address(arg1)]:
                sub_0a82bc28[address(arg1)][address(msg.sender)] = (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
                require ext_code.size(sub_ad12d6cbAddress)
                call sub_ad12d6cbAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
            else:
                sub_0a82bc28[address(arg1)][address(msg.sender)] = (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
                require ext_code.size(sub_ad12d6cbAddress)
                call sub_ad12d6cbAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
    else:
        require ext_code.size(arg1)
        call arg1.reward() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require sub_367c2b75[address(arg1)]
        if sub_367c2b75[address(arg1)] <= sub_4cde0a29[address(arg1)]:
            sub_0a82bc28[address(arg1)][address(msg.sender)] = (10^18 * (10000 * sub_1cef0dc9[address(arg1)][address(msg.sender)] / sub_367c2b75[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000) + sub_1cef0dc9[address(arg1)][address(msg.sender)]
            if sub_bf7a59df[address(arg1)][address(msg.sender)] <= 0:
                require ext_code.size(sub_ad12d6cbAddress)
                call sub_ad12d6cbAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (10^18 * (10000 * sub_1cef0dc9[address(arg1)][address(msg.sender)] / sub_367c2b75[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000) + sub_1cef0dc9[address(arg1)][address(msg.sender)]
            else:
                require ext_code.size(arg1)
                call arg1.reward() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require sub_4cde0a29[address(arg1)]
                if sub_367c2b75[address(arg1)] >= sub_4cde0a29[address(arg1)]:
                    sub_0a82bc28[address(arg1)][address(msg.sender)] = (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
                    require ext_code.size(sub_ad12d6cbAddress)
                    call sub_ad12d6cbAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
                else:
                    sub_0a82bc28[address(arg1)][address(msg.sender)] = (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
                    require ext_code.size(sub_ad12d6cbAddress)
                    call sub_ad12d6cbAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
        else:
            sub_0a82bc28[address(arg1)][address(msg.sender)] = (10^18 * (10000 * sub_1cef0dc9[address(arg1)][address(msg.sender)] / sub_367c2b75[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000) + sub_1cef0dc9[address(arg1)][address(msg.sender)]
            if sub_bf7a59df[address(arg1)][address(msg.sender)] <= 0:
                require ext_code.size(sub_ad12d6cbAddress)
                call sub_ad12d6cbAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (10^18 * (10000 * sub_1cef0dc9[address(arg1)][address(msg.sender)] / sub_367c2b75[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000) + sub_1cef0dc9[address(arg1)][address(msg.sender)]
            else:
                require ext_code.size(arg1)
                call arg1.reward() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require sub_4cde0a29[address(arg1)]
                if sub_367c2b75[address(arg1)] >= sub_4cde0a29[address(arg1)]:
                    sub_0a82bc28[address(arg1)][address(msg.sender)] = (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
                    require ext_code.size(sub_ad12d6cbAddress)
                    call sub_ad12d6cbAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 5 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
                else:
                    sub_0a82bc28[address(arg1)][address(msg.sender)] = (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
                    require ext_code.size(sub_ad12d6cbAddress)
                    call sub_ad12d6cbAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10^18 * (10000 * sub_bf7a59df[address(arg1)][address(msg.sender)] / sub_4cde0a29[address(arg1)]) + 5 / 10 * 95 * ext_call.return_data[0] / 100 / 1000) + sub_bf7a59df[address(arg1)][address(msg.sender)]
    require ext_call.success
    stor0 = 0
    return 1
}



}
