contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address sub_302990efAddress;
address sub_fa0b49adAddress;
address sub_cc401f59Address;
array of struct wallets;
uint256 sub_4d7a3444;

function sub_302990ef(?) {
    return sub_302990efAddress
}

function sub_4d7a3444(?) {
    return sub_4d7a3444
}

function wallets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < wallets.length
    return wallets[arg1].field_0
}

function owner() {
    return owner
}

function sub_cc401f59(?) {
    return sub_cc401f59Address
}

function sub_fa0b49ad(?) {
    return sub_fa0b49adAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_d20620e7(?) {
    sub_4d7a3444++
    if sub_4d7a3444 < wallets.length:
        return wallets[stor6].field_0
    sub_4d7a3444 = 0
    revert
}

function sub_ddd11d1c(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    sub_302990efAddress = arg1
    sub_fa0b49adAddress = arg2
    sub_cc401f59Address = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e79d3cec(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x9cd2b019 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_47f20a4d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    idx = 0
    while idx < wallets.length:
        mem[0] = 5
        mem[96] = 0x9cd2b01900000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(wallets[idx].field_0)
        call wallets[idx].field_0.0x9cd2b019 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_45f35228(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    idx = 0
    while idx < arg1:
        mem[96 len 2162] = code.data[5028 len 2162]
        mem[2258] = tokenAddress
        create contract with 0 wei
                        code: code.data[5028 len 2162], tokenAddress
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        wallets.length++
        mem[0] = 5
        wallets[wallets.length].field_0 = address(create.new_address)
        mem[96] = address(create.new_address)
        emit 0xa3902691: address(create.new_address)
        idx = idx + 1
        continue 
}

function TransferToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            require msg.sender == sub_cc401f59Address
    sub_4d7a3444++
    if sub_4d7a3444 < wallets.length:
        idx = sub_4d7a3444
        while idx < wallets.length:
            mem[0] = 5
            mem[100] = wallets[idx].field_0
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args wallets[idx].field_0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg2:
                idx = idx + 1
                continue 
            require idx < wallets.length
            if not wallets[idx].field_0:
                s = 0
                while s < sub_4d7a3444:
                    require s < wallets.length
                    mem[0] = 5
                    mem[100] = wallets[s].field_0
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args wallets[s].field_0
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg2:
                        s = s + 1
                        continue 
                    require s < wallets.length
                    require wallets[s].field_0
                    require ext_code.size(wallets[s].field_0)
                    call wallets[s].field_0.0x9dd3045b with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require wallets[idx].field_0
            require ext_code.size(wallets[idx].field_0)
            call wallets[idx].field_0.0x9dd3045b with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        sub_4d7a3444 = 0
    require 0 < sub_4d7a3444
    require 0 < wallets.length
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(wallets.field_0)
    mem[96] = ext_call.return_data[0]
    s = 0
    while ext_call.success:
        require return_data.size >= 32
        if mem[96] > arg2:
            require s < wallets.length
            require wallets[s].field_0
            require ext_code.size(wallets[s].field_0)
            call wallets[s].field_0.0x9dd3045b with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require s + 1 < sub_4d7a3444
        require s + 1 < wallets.length
        mem[0] = 5
        mem[100] = wallets[s].field_256
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args wallets[s].field_256
        mem[96] = ext_call.return_data[0]
        s = s + 1
        continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
