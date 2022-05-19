contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint256 stor2; offset 16
uint256 stor2; offset 8

function sub_4d1cbf83(?) {
    return bool(uint8(stor2.field_0))
}

function owner() {
    return owner
}

function isMember(address arg1) {
    return bool(stor1[address(arg1)])
}

function sub_e96fb981(?) {
    return bool(uint8(stor2.field_8))
}

function _fallback() payable {
  stop
}

function addMember(address arg1) {
    require owner == msg.sender
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        emit MemberAdded(arg1);
}

function removeMember(address arg1) {
    require owner == msg.sender
    if stor1[address(arg1)]:
        stor1[address(arg1)] = 0
        emit MemberRemoved(arg1);
}

function join() {
    require uint8(stor2.field_0)
    if not stor1[address(msg.sender)]:
        stor1[address(msg.sender)] = 1
        emit MemberAdded(msg.sender);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    require arg1
    owner = arg1
    emit OwnerChanged(owner, arg1);
}

function quit() {
    require stor1[address(msg.sender)]
    require uint8(stor2.field_8)
    if stor1[address(msg.sender)]:
        stor1[address(msg.sender)] = 0
        emit MemberRemoved(msg.sender);
}

function sub_8ce1ca7b(?) {
    require owner == msg.sender
    uint8(stor2.field_0) = uint8(arg1)
    Mask(248, 0, stor2.field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor2.field_16) = Mask(240, 16, arg1) >> 16
}

function balanceOf(address arg1) {
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addMembers(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require 0 < arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if not stor1[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            stor1[address(mem[(32 * idx) + 128])] = 1
            mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
            emit MemberAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        continue 
}

function removeMembers(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require 0 < arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if stor1[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            stor1[address(mem[(32 * idx) + 128])] = 0
            mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
            emit MemberRemoved(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        continue 
}

function multiSendETH(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor1[address(msg.sender)]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if eth.balance(this.address) < mem[(32 * idx) + (32 * arg1.length) + 160]:
            return idx
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20]:
            require idx < arg2.length
            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                require idx < arg1.length
                require idx < arg2.length
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return idx
}

function sub_7a66e760(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require stor1[address(msg.sender)]
    require arg1
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _32 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = this.address
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < _32:
            return idx
        require idx < arg2.length
        if mem[(32 * idx) + 140 len 20]:
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg2.length) + 160] > 0:
                require idx < arg2.length
                require idx < arg3.length
                _46 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _46
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _46
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
    return idx
}

function sub_1bae7684(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require stor1[address(msg.sender)]
    require arg1
    require arg2
    require arg3.length == arg4.length
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        _32 = mem[(32 * arg3.length) + (32 * idx) + 160]
        mem[(32 * arg4.length) + (32 * arg3.length) + 164] = arg2
        mem[(32 * arg4.length) + (32 * arg3.length) + 196] = this.address
        require ext_code.size(arg1)
        call arg1.0xdd62ed3e with:
             gas gas_remaining wei
            args address(arg2), this.address
        mem[(32 * arg4.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < _32:
            return idx
        require idx < arg3.length
        if mem[(32 * idx) + 140 len 20]:
            require idx < arg4.length
            if mem[(32 * idx) + (32 * arg3.length) + 160] > 0:
                require idx < arg3.length
                _44 = mem[(32 * idx) + 128]
                require idx < arg4.length
                _46 = mem[(32 * arg3.length) + (32 * idx) + 160]
                mem[(32 * arg4.length) + (32 * arg3.length) + 164] = arg2
                mem[(32 * arg4.length) + (32 * arg3.length) + 196] = address(_44)
                mem[(32 * arg4.length) + (32 * arg3.length) + 228] = _46
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), address(_44), _46
                mem[(32 * arg4.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
    return idx
}



}
