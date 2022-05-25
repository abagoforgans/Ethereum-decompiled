contract main {




// =====================  Runtime code  =====================


uint256 sub_08f102c0;
uint256 gameStartTime;
uint256 gamersCount;
uint256 sub_b9975077;
array of struct sub_abf57908;
address owner;
address stor6;
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856476;

function gameStartTime() {
    return gameStartTime
}

function sub_08f102c0(?) {
    return sub_08f102c0
}

function owner() {
    return owner
}

function sub_abf57908(?) {
    require arg1 < sub_abf57908.length
    return sub_abf57908[arg1].field_0, sub_abf57908[arg1].field_256
}

function gamersCount() {
    return gamersCount
}

function sub_b9975077(?) {
    return sub_b9975077
}

function currentRound() {
    return ((gamersCount / 600) + 1)
}

function _fallback() payable {
    require block.timestamp - gameStartTime >= 0
    if (10^16 * gamersCount / 600) + 10^17 != msg.value:
        revert with 0, 'Wrong Entry Fee'
    sub_08f102c0 += msg.value
    gamersCount++
    sub_b9975077++
    sub_abf57908.length++
    sub_abf57908[sub_abf57908.length].field_0 = (gamersCount / 600) + 1
    stor8A35[stor4.length] = msg.sender
    if block.timestamp - gameStartTime / 3600 < 168:
        if not gamersCount % 600:
            call msg.sender with:
               value sub_08f102c0 / 5 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_08f102c0 -= sub_08f102c0 / 5
            if sub_abf57908.length - 1 < sub_abf57908.length:
                idx = sub_abf57908.length - 1
                while idx < sub_abf57908.length - 1:
                    require idx + 1 < sub_abf57908.length
                    require idx < sub_abf57908.length
                    mem[0] = 4
                    sub_abf57908[idx].field_0 = sub_abf57908[idx + 1].field_0
                    sub_abf57908[idx].field_256 = sub_abf57908[idx + 1].field_256
                    idx = idx + 1
                    continue 
                require sub_abf57908.length - 1 < sub_abf57908.length
                sub_abf57908[sub_abf57908.length - 1].field_0 = 0
                sub_abf57908[sub_abf57908.length - 1].field_256 = 0
                sub_abf57908.length--
                if sub_abf57908.length > sub_abf57908.length - 1:
                    idx = 2 * sub_abf57908.length - 1
                    while 2 * sub_abf57908.length > idx:
                        sub_abf57908[idx].field_0 = 0
                        sub_abf57908[idx].field_256 = 0
                        idx = idx + 2
                        continue 
        if 3 <= sub_abf57908.length:
            if not sub_b9975077 % 3:
                require 0 < sub_abf57908.length
                call address(sub_abf57908.field_256) with:
                   value (25 * 10^12 * 3600 * gamersCount / 600) + (12 * 10^17 * uint256(sub_abf57908.field_0)) + (10^16 * gamersCount / 600 * uint256(sub_abf57908.field_0)) + (3 * 10^15 * 24 * 3600) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_08f102c0 -= (25 * 10^12 * 3600 * gamersCount / 600) + (12 * 10^17 * uint256(sub_abf57908.field_0)) + (10^16 * gamersCount / 600 * uint256(sub_abf57908.field_0)) + (3 * 10^15 * 24 * 3600) / 100
                if 0 < sub_abf57908.length:
                    idx = 0
                    while idx < sub_abf57908.length - 1:
                        require idx + 1 < sub_abf57908.length
                        require idx < sub_abf57908.length
                        mem[0] = 4
                        sub_abf57908[idx].field_0 = sub_abf57908[idx + 1].field_0
                        sub_abf57908[idx].field_256 = sub_abf57908[idx + 1].field_256
                        idx = idx + 1
                        continue 
                    require sub_abf57908.length - 1 < sub_abf57908.length
                    sub_abf57908[sub_abf57908.length - 1].field_0 = 0
                    sub_abf57908[sub_abf57908.length - 1].field_256 = 0
                    sub_abf57908.length--
                    if sub_abf57908.length > sub_abf57908.length - 1:
                        idx = 2 * sub_abf57908.length - 1
                        while 2 * sub_abf57908.length > idx:
                            sub_abf57908[idx].field_0 = 0
                            sub_abf57908[idx].field_256 = 0
                            idx = idx + 2
                            continue 
    else:
        if sub_b9975077 > 0:
            call stor6 with:
               value 50 * sub_08f102c0 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_08f102c0 -= 50 * sub_08f102c0 / 100
            require sub_abf57908.length
            idx = 0
            while idx < sub_abf57908.length:
                mem[0] = 4
                call sub_abf57908[idx].field_256 with:
                   value sub_08f102c0 - (50 * sub_08f102c0 / 100) / sub_abf57908.length wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_08f102c0 -= sub_08f102c0 - (50 * sub_08f102c0 / 100) / sub_abf57908.length
                idx = idx + 1
                continue 
            gameStartTime = block.timestamp
            sub_b9975077 = 0
            gamersCount = 0
            sub_abf57908.length = 0
            idx = 0
            while 2 * sub_abf57908.length > idx:
                sub_abf57908[idx].field_0 = 0
                sub_abf57908[idx].field_256 = 0
                idx = idx + 2
                continue 
        else:
            if not gamersCount % 600:
                call msg.sender with:
                   value sub_08f102c0 / 5 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_08f102c0 -= sub_08f102c0 / 5
                if sub_abf57908.length - 1 < sub_abf57908.length:
                    idx = sub_abf57908.length - 1
                    while idx < sub_abf57908.length - 1:
                        require idx + 1 < sub_abf57908.length
                        require idx < sub_abf57908.length
                        mem[0] = 4
                        sub_abf57908[idx].field_0 = sub_abf57908[idx + 1].field_0
                        sub_abf57908[idx].field_256 = sub_abf57908[idx + 1].field_256
                        idx = idx + 1
                        continue 
                    require sub_abf57908.length - 1 < sub_abf57908.length
                    sub_abf57908[sub_abf57908.length - 1].field_0 = 0
                    sub_abf57908[sub_abf57908.length - 1].field_256 = 0
                    sub_abf57908.length--
                    if sub_abf57908.length > sub_abf57908.length - 1:
                        idx = 2 * sub_abf57908.length - 1
                        while 2 * sub_abf57908.length > idx:
                            sub_abf57908[idx].field_0 = 0
                            sub_abf57908[idx].field_256 = 0
                            idx = idx + 2
                            continue 
            if 3 <= sub_abf57908.length:
                if not sub_b9975077 % 3:
                    require 0 < sub_abf57908.length
                    call address(sub_abf57908.field_256) with:
                       value (25 * 10^12 * 3600 * gamersCount / 600) + (12 * 10^17 * uint256(sub_abf57908.field_0)) + (10^16 * gamersCount / 600 * uint256(sub_abf57908.field_0)) + (3 * 10^15 * 24 * 3600) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_08f102c0 -= (25 * 10^12 * 3600 * gamersCount / 600) + (12 * 10^17 * uint256(sub_abf57908.field_0)) + (10^16 * gamersCount / 600 * uint256(sub_abf57908.field_0)) + (3 * 10^15 * 24 * 3600) / 100
                    if 0 < sub_abf57908.length:
                        idx = 0
                        while idx < sub_abf57908.length - 1:
                            require idx + 1 < sub_abf57908.length
                            require idx < sub_abf57908.length
                            mem[0] = 4
                            sub_abf57908[idx].field_0 = sub_abf57908[idx + 1].field_0
                            sub_abf57908[idx].field_256 = sub_abf57908[idx + 1].field_256
                            idx = idx + 1
                            continue 
                        require sub_abf57908.length - 1 < sub_abf57908.length
                        sub_abf57908[sub_abf57908.length - 1].field_0 = 0
                        sub_abf57908[sub_abf57908.length - 1].field_256 = 0
                        sub_abf57908.length--
                        if sub_abf57908.length > sub_abf57908.length - 1:
                            idx = 2 * sub_abf57908.length - 1
                            while 2 * sub_abf57908.length > idx:
                                sub_abf57908[idx].field_0 = 0
                                sub_abf57908[idx].field_256 = 0
                                idx = idx + 2
                                continue 
}



}
