contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
uint256 fee;
mapping of uint8 stor2;

function freeList(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function fee() {
    return fee
}

function _fallback() payable {
  stop
}

function setFee(uint256 arg1) {
    require msg.sender == owner
    fee = arg1
}

function getFee() {
    if not stor2[address(msg.sender)]:
        return fee
    else:
        return 0
}

function sub_26c081fc(?) {
    require msg.sender == owner
    stor2[address(arg1)] = uint8(arg2)
    emit 0xfc09aa37: address(arg1), arg2
}

function withdrawal() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drop(address arg1, address[] arg2, uint256 arg3) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not stor2[address(msg.sender)]:
        require msg.value >= fee
    else:
        require msg.value >= 0
    require arg2.length
    require arg3
    require not stor0
    stor0 = 1
    require arg2.length
    require arg2.length * arg3 / arg2.length == arg3
    if not arg1:
        if not stor2[address(msg.sender)]:
            require msg.value >= fee + (arg2.length * arg3)
        else:
            require msg.value >= arg2.length * arg3
        idx = 128
        while idx < (32 * arg2.length) + 128:
            call mem[idx] with:
               value arg3 wei
                 gas 0 wei
            require ext_call.success
            idx = idx + 32
            continue 
    else:
        mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = msg.sender
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2.length * arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg2.length) + 208] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        idx = 128
        while idx < (32 * arg2.length) + 128:
            mem[(32 * arg2.length) + 212] = mem[idx]
            mem[(32 * arg2.length) + 244] = arg3
            call arg1.mem[(32 * arg2.length) + 208 len 4] with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + 212], arg3
            require ext_call.success
            idx = idx + 32
            continue 
    stor0 = 0
}

function sub_fd0b7500(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not stor2[address(msg.sender)]:
        require msg.value >= fee
        require arg2.length
        require arg3.length
        require arg2.length == arg3.length
        require not stor0
        stor0 = 1
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < arg3.length
            require idx < arg3.length
            require s + mem[(32 * idx) + (32 * arg2.length) + 160] >= mem[(32 * idx) + (32 * arg2.length) + 160]
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg2.length) + 160]
            continue 
        if not stor2[address(msg.sender)]:
            if not arg1:
                require (s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length) + fee >= fee
                require msg.value >= (s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length) + fee
                s = (32 * arg2.length) + 160
                idx = 128
                while idx < (32 * arg2.length) + 128:
                    call mem[idx] with:
                       value mem[s] wei
                         gas 0 wei
                    require ext_call.success
                    s = s + 32
                    idx = idx + 32
                    continue 
            else:
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = this.address
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                require ext_code.size(arg1)
                call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg2.length) + (32 * arg3.length) + 240] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                s = (32 * arg2.length) + 160
                idx = 128
                while idx < (32 * arg2.length) + 128:
                    _127 = mem[s]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 244] = mem[idx]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 276] = _127
                    call arg1.mem[(32 * arg2.length) + (32 * arg3.length) + 240 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * arg2.length) + (32 * arg3.length) + 244], _127
                    require ext_call.success
                    s = s + 32
                    idx = idx + 32
                    continue 
        else:
            if not arg1:
                require s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length >= 0
                require msg.value >= s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                s = (32 * arg2.length) + 160
                idx = 128
                while idx < (32 * arg2.length) + 128:
                    call mem[idx] with:
                       value mem[s] wei
                         gas 0 wei
                    require ext_call.success
                    s = s + 32
                    idx = idx + 32
                    continue 
            else:
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = this.address
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                require ext_code.size(arg1)
                call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg2.length) + (32 * arg3.length) + 240] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                s = (32 * arg2.length) + 160
                idx = 128
                while idx < (32 * arg2.length) + 128:
                    _131 = mem[s]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 244] = mem[idx]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 276] = _131
                    call arg1.mem[(32 * arg2.length) + (32 * arg3.length) + 240 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * arg2.length) + (32 * arg3.length) + 244], _131
                    require ext_call.success
                    s = s + 32
                    idx = idx + 32
                    continue 
    else:
        require msg.value >= 0
        require arg2.length
        require arg3.length
        require arg2.length == arg3.length
        require not stor0
        stor0 = 1
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < arg3.length
            require idx < arg3.length
            require s + mem[(32 * idx) + (32 * arg2.length) + 160] >= mem[(32 * idx) + (32 * arg2.length) + 160]
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg2.length) + 160]
            continue 
        if not stor2[address(msg.sender)]:
            if not arg1:
                require (s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length) + fee >= fee
                require msg.value >= (s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length) + fee
                s = (32 * arg2.length) + 160
                idx = 128
                while idx < (32 * arg2.length) + 128:
                    call mem[idx] with:
                       value mem[s] wei
                         gas 0 wei
                    require ext_call.success
                    s = s + 32
                    idx = idx + 32
                    continue 
            else:
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = this.address
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                require ext_code.size(arg1)
                call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg2.length) + (32 * arg3.length) + 240] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                s = (32 * arg2.length) + 160
                idx = 128
                while idx < (32 * arg2.length) + 128:
                    _135 = mem[s]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 244] = mem[idx]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 276] = _135
                    call arg1.mem[(32 * arg2.length) + (32 * arg3.length) + 240 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * arg2.length) + (32 * arg3.length) + 244], _135
                    require ext_call.success
                    s = s + 32
                    idx = idx + 32
                    continue 
        else:
            if not arg1:
                require s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length >= 0
                require msg.value >= s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                s = (32 * arg2.length) + 160
                idx = 128
                while idx < (32 * arg2.length) + 128:
                    call mem[idx] with:
                       value mem[s] wei
                         gas 0 wei
                    require ext_call.success
                    s = s + 32
                    idx = idx + 32
                    continue 
            else:
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = this.address
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                require ext_code.size(arg1)
                call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg2.length) + (32 * arg3.length) + 240] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                s = (32 * arg2.length) + 160
                idx = 128
                while idx < (32 * arg2.length) + 128:
                    _139 = mem[s]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 244] = mem[idx]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 276] = _139
                    call arg1.mem[(32 * arg2.length) + (32 * arg3.length) + 240 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * arg2.length) + (32 * arg3.length) + 244], _139
                    require ext_call.success
                    s = s + 32
                    idx = idx + 32
                    continue 
    stor0 = 0
}



}
