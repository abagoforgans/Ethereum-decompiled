contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 deposit;
mapping of uint256 withdrawal;
uint8 stor3;
uint256 stor4;
address sub_54841e95Address;
uint256 rp;

function sub_54841e95(?) {
    return sub_54841e95Address
}

function owner() {
    return owner
}

function rp() {
    return rp
}

function withdrawal(address arg1) {
    require calldata.size - 4 >= 32
    return withdrawal[arg1]
}

function deposit(address arg1) {
    require calldata.size - 4 >= 32
    return deposit[arg1]
}

function _fallback() payable {
    require not ext_code.size(msg.sender)
    require tx.origin == msg.sender
    require stor3
    require msg.value >= stor4
    deposit[address(msg.sender)] += msg.value
    emit Deposit(msg.value, block.timestamp, msg.sender, block.number);
}

function sub_e82314e7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        if eth.balance(this.address) >= 0:
            call sub_54841e95Address with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
        if eth.balance(this.address) >= 10^18 * arg1:
            call sub_54841e95Address with:
               value 10^18 * arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_b4d4c5dc(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            require idx < mem[(32 * arg1.length) + 128]
            require 0 <= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[96]
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            withdrawal[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[96]
            _77 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _86 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 32] = _86
            mem[mem[64] + 64] = block.timestamp
            emit Withdrawal(mem[mem[64]], _86, block.timestamp, address(_77), block.number);
        else:
            require mem[(32 * idx) + (32 * arg1.length) + 160]
            require 3 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 3
            require idx < mem[(32 * arg1.length) + 128]
            require 3 * mem[(32 * idx) + (32 * arg1.length) + 160] / 100 <= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[96]
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg1.length) + 160] - (3 * mem[(32 * idx) + (32 * arg1.length) + 160] / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            withdrawal[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[96]
            _84 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _93 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 32] = _93
            mem[mem[64] + 64] = block.timestamp
            emit Withdrawal(mem[mem[64]], _93, block.timestamp, address(_84), block.number);
        require idx < mem[(32 * arg1.length) + 128]
        if mem[(32 * idx) + (32 * arg1.length) + 160]:
            require mem[(32 * idx) + (32 * arg1.length) + 160]
            require 3 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 3
            rp += 3 * mem[(32 * idx) + (32 * arg1.length) + 160] / 100
        idx = idx + 1
        continue 
    return idx
}



}
