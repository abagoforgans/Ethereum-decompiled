contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_0734ead4;
mapping of uint256 sub_a07a2bdf;
uint256 res;
address sub_cc4438c8Address;
address owner;
uint256 sub_19622e7a;

function sub_0734ead4(?) {
    return sub_0734ead4[arg1]
}

function sub_19622e7a(?) {
    return sub_19622e7a
}

function res() {
    return res
}

function owner() {
    return owner
}

function sub_a07a2bdf(?) {
    return sub_a07a2bdf[arg1]
}

function sub_cc4438c8(?) {
    return sub_cc4438c8Address
}

function die() {
    if owner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_9b3c3685(?) {
    if 1 == sub_0734ead4[msg.sender]:
        sub_0734ead4[address(arg1)] = 1
}

function sub_719da82d(?) {
    if sub_0734ead4[msg.sender] != 1:
        return 0
    sub_cc4438c8Address = arg1
    return arg1
}

function sub_ac931f64(?) {
    if sub_0734ead4[msg.sender] != 1:
        return 0
    sub_a07a2bdf[address(arg1)] = 1
    return arg1
}

function sub_27055835(?) {
    if 1 == sub_0734ead4[msg.sender]:
        require ext_code.size(sub_cc4438c8Address)
        call sub_cc4438c8Address.getTimeLeft() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            idx = 0
            while idx < 9999:
                res += block.timestamp
                idx = idx + 1
                continue 
}

function sub_e729d2f1(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if 1 == sub_0734ead4[msg.sender]:
        if 1 == sub_0734ead4[msg.sender]:
            sub_cc4438c8Address = arg1
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = msg.sender
            mem[32] = 0
            if 1 == sub_0734ead4[msg.sender]:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 0
                sub_0734ead4[address(mem[(32 * idx) + 128])] = 1
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            mem[0] = msg.sender
            mem[32] = 0
            if 1 == sub_0734ead4[msg.sender]:
                mem[0] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
                mem[32] = 1
                sub_a07a2bdf[address(mem[(32 * idx) + (32 * arg2.length) + 160])] = 1
            idx = idx + 1
            continue 
}

function sub_3022510e(?) {
    if 1 == sub_0734ead4[msg.sender]:
        if block.number <= sub_19622e7a:
            require ext_code.size(sub_cc4438c8Address)
            call sub_cc4438c8Address.getTimeLeft() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg1:
                require ext_code.size(sub_cc4438c8Address)
                call sub_cc4438c8Address.getCurrentRoundInfo() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 256
                if 1 == sub_a07a2bdf[ext_call.return_data[236 len 20]]:
                    idx = 0
                    while idx < 9999:
                        res += block.timestamp
                        idx = idx + 1
                        continue 
        else:
            if gas_remaining > 2 * 10^6:
                sub_19622e7a = block.number
                require ext_code.size(sub_cc4438c8Address)
                call sub_cc4438c8Address.getTimeLeft() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= arg1:
                    require ext_code.size(sub_cc4438c8Address)
                    call sub_cc4438c8Address.getCurrentRoundInfo() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    if 1 == sub_a07a2bdf[ext_call.return_data[236 len 20]]:
                        idx = 0
                        while idx < 9999:
                            res += block.timestamp
                            idx = idx + 1
                            continue 
        return 0
    else:
        return 0
}



}
