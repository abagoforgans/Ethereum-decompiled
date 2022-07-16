contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function rescueTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_416c2d3b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not arg2:
        require eth.balance(this.address) >= 0
    else:
        require arg1.length * arg2 / arg2 == arg1.length
        require eth.balance(this.address) >= arg1.length * arg2
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_7713e926(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(stor1)
    staticcall stor1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require ext_call.return_data[0] >= 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _28 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = address(_28)
            mem[(32 * arg1.length) + 196] = arg2
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_28), arg2
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        require arg1.length * arg2 / arg2 == arg1.length
        require ext_call.return_data[0] >= arg1.length * arg2
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _25 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = address(_25)
            mem[(32 * arg1.length) + 196] = arg2
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_25), arg2
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
}

function sub_07446d55(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(stor1)
    staticcall stor1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require eth.balance(this.address) >= 0
        if not arg3:
            require ext_call.return_data[0] >= 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                call mem[(32 * idx) + 140 len 20] with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg1.length
                _86 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = address(_86)
                mem[(32 * arg1.length) + 196] = arg3
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_86), arg3
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            require arg1.length * arg3 / arg3 == arg1.length
            require ext_call.return_data[0] >= arg1.length * arg3
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                call mem[(32 * idx) + 140 len 20] with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg1.length
                _83 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = address(_83)
                mem[(32 * arg1.length) + 196] = arg3
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_83), arg3
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
    else:
        require arg1.length * arg2 / arg2 == arg1.length
        require eth.balance(this.address) >= arg1.length * arg2
        if not arg3:
            require ext_call.return_data[0] >= 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                call mem[(32 * idx) + 140 len 20] with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg1.length
                _80 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = address(_80)
                mem[(32 * arg1.length) + 196] = arg3
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_80), arg3
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            require arg1.length * arg3 / arg3 == arg1.length
            require ext_call.return_data[0] >= arg1.length * arg3
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                call mem[(32 * idx) + 140 len 20] with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg1.length
                _77 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = address(_77)
                mem[(32 * arg1.length) + 196] = arg3
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_77), arg3
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
}



}
