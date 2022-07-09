contract main {




// =====================  Runtime code  =====================


address maintenanceFundsAddress;
uint256 sub_f6f2e287;
uint256 sub_a3a0a3fd;
uint256 sub_f4e86fa6;
uint256 sub_5bdc89d8;
uint256 sub_af95cb03;
uint256 sub_cb253ab1;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of struct sub_fee9b9f7;

function sub_2d1b34ce(?) {
    return sub_fee9b9f7[arg1].field_256, 
           sub_fee9b9f7[arg1].field_512,
           sub_fee9b9f7[arg1].field_768,
           sub_fee9b9f7[arg1].field_1024,
           sub_fee9b9f7[arg1].field_1280,
           sub_fee9b9f7[arg1].field_1536,
           sub_fee9b9f7[arg1].field_1792,
           sub_fee9b9f7[arg1].field_2048,
           sub_fee9b9f7[arg1].field_2304,
           sub_fee9b9f7[arg1].field_2560,
           bool(sub_fee9b9f7[arg1].field_2816)
}

function maintenanceFunds() {
    return maintenanceFundsAddress
}

function sub_488a6b0f(?) {
    return sub_fee9b9f7[arg2][address(arg1)].field_0
}

function sub_5bdc89d8(?) {
    return sub_5bdc89d8
}

function sub_a3a0a3fd(?) {
    return sub_a3a0a3fd
}

function sub_af95cb03(?) {
    return sub_af95cb03
}

function sub_cb253ab1(?) {
    return sub_cb253ab1
}

function sub_f4e86fa6(?) {
    return sub_f4e86fa6
}

function sub_f6f2e287(?) {
    return sub_f6f2e287
}

function sub_fee9b9f7(?) {
    return sub_fee9b9f7[arg1].field_256, 
           sub_fee9b9f7[arg1].field_512,
           sub_fee9b9f7[arg1].field_768,
           sub_fee9b9f7[arg1].field_1024,
           sub_fee9b9f7[arg1].field_1280,
           sub_fee9b9f7[arg1].field_1536,
           sub_fee9b9f7[arg1].field_1792,
           sub_fee9b9f7[arg1].field_2048,
           sub_fee9b9f7[arg1].field_2304,
           sub_fee9b9f7[arg1].field_2560,
           bool(sub_fee9b9f7[arg1].field_2816)
}

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    require arg1 <= sub_f6f2e287
    require not sub_fee9b9f7[arg1].field_2816
    require sub_fee9b9f7[arg1][address(msg.sender)].field_0 > 0
    sub_fee9b9f7[arg1][address(msg.sender)].field_0 = 0
    if sub_fee9b9f7[arg1].field_256 != msg.sender:
        call msg.sender with:
           value sub_fee9b9f7[arg1].field_2304 * sub_fee9b9f7[arg1][address(msg.sender)].field_0 wei
             gas 2300 * is_zero(value) wei
    else:
        if sub_fee9b9f7[arg1][address(msg.sender)].field_0 != 1:
            call msg.sender with:
               value sub_fee9b9f7[arg1].field_1792 - sub_fee9b9f7[arg1].field_2304 + (sub_fee9b9f7[arg1][address(msg.sender)].field_0 * sub_fee9b9f7[arg1].field_2304) wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value sub_fee9b9f7[arg1].field_1792 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_51ef8e76(?) {
    require block.number - sub_fee9b9f7[arg1].field_2560 > sub_a3a0a3fd
    require bool(sub_fee9b9f7[arg1].field_2816) == 1
    sub_fee9b9f7[arg1].field_2816 = 0
    emit 0xdfeaad39: sub_fee9b9f7[arg1].field_256, sub_fee9b9f7[arg1].field_1792, sub_fee9b9f7[arg1].field_2304, block.number, 0, arg1
    sub_f6f2e287++
    sub_fee9b9f7[stor1].field_256 = maintenanceFundsAddress
    sub_fee9b9f7[stor1].field_512 = sub_f6f2e287
    sub_fee9b9f7[stor1].field_768 = block.number
    sub_fee9b9f7[stor1].field_1024 = stor11
    sub_fee9b9f7[stor1].field_1280 = 0
    sub_fee9b9f7[stor1].field_1536 = 0
    sub_fee9b9f7[stor1].field_1792 = 0
    sub_fee9b9f7[stor1].field_2048 = 0
    sub_fee9b9f7[stor1].field_2304 = 0
    sub_fee9b9f7[stor1].field_2560 = block.number
    sub_fee9b9f7[stor1].field_2816 = 0
    sub_fee9b9f7[stor1][stor0].field_0 = stor11
    if sub_f6f2e287 != 1:
        sub_fee9b9f7[stor1 - 1][stor0].field_0 = 0
        if sub_fee9b9f7[stor1 - 1].field_2304 * stor11 <= stor8:
            if sub_fee9b9f7[stor1 - 1].field_1024 != stor11:
                sub_fee9b9f7[stor1].field_1792 = sub_fee9b9f7[stor1 - 1].field_2304 * stor11 * sub_5bdc89d8 / 100
                sub_fee9b9f7[stor1].field_2048 = sub_fee9b9f7[stor1 - 1].field_2304 * stor11 * sub_af95cb03 / 100
            else:
                sub_fee9b9f7[stor1].field_1792 = sub_fee9b9f7[stor1 - 1].field_1792
                sub_fee9b9f7[stor1].field_2048 = sub_fee9b9f7[stor1 - 1].field_2048
        else:
            sub_fee9b9f7[stor1].field_1792 = stor8 * sub_5bdc89d8 / 100
            sub_fee9b9f7[stor1].field_2048 = stor8 * sub_af95cb03 / 100
            call maintenanceFundsAddress with:
               value (sub_fee9b9f7[stor1 - 1].field_2304 * stor11) - stor8 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require sub_fee9b9f7[stor1].field_1024 - 1
        sub_fee9b9f7[stor1].field_2304 = sub_fee9b9f7[stor1].field_2048 / sub_fee9b9f7[stor1].field_1024 - 1
        require stor10
        sub_fee9b9f7[stor1].field_1280 = sub_fee9b9f7[stor1].field_1792 + sub_fee9b9f7[stor1].field_2048 / stor10
        if sub_fee9b9f7[stor1].field_1280 < stor9:
            sub_fee9b9f7[stor1].field_1280 = stor9
    sub_fee9b9f7[stor1].field_2816 = 1
    emit 0x64a83fe9: block.number, sub_f6f2e287
}

function init() payable {
    require not sub_f6f2e287
    maintenanceFundsAddress = msg.sender
    sub_f6f2e287++
    sub_fee9b9f7[stor1].field_256 = maintenanceFundsAddress
    sub_fee9b9f7[stor1].field_512 = sub_f6f2e287
    sub_fee9b9f7[stor1].field_768 = block.number
    sub_fee9b9f7[stor1].field_1024 = stor11
    sub_fee9b9f7[stor1].field_1280 = 0
    sub_fee9b9f7[stor1].field_1536 = 0
    sub_fee9b9f7[stor1].field_1792 = 0
    sub_fee9b9f7[stor1].field_2048 = 0
    sub_fee9b9f7[stor1].field_2304 = 0
    sub_fee9b9f7[stor1].field_2560 = block.number
    sub_fee9b9f7[stor1].field_2816 = 0
    sub_fee9b9f7[stor1][stor0].field_0 = stor11
    if sub_f6f2e287 != 1:
        sub_fee9b9f7[stor1 - 1][stor0].field_0 = 0
        if sub_fee9b9f7[stor1 - 1].field_2304 * stor11 <= stor8:
            if sub_fee9b9f7[stor1 - 1].field_1024 != stor11:
                sub_fee9b9f7[stor1].field_1792 = sub_fee9b9f7[stor1 - 1].field_2304 * stor11 * sub_5bdc89d8 / 100
                sub_fee9b9f7[stor1].field_2048 = sub_fee9b9f7[stor1 - 1].field_2304 * stor11 * sub_af95cb03 / 100
            else:
                sub_fee9b9f7[stor1].field_1792 = sub_fee9b9f7[stor1 - 1].field_1792
                sub_fee9b9f7[stor1].field_2048 = sub_fee9b9f7[stor1 - 1].field_2048
        else:
            sub_fee9b9f7[stor1].field_1792 = stor8 * sub_5bdc89d8 / 100
            sub_fee9b9f7[stor1].field_2048 = stor8 * sub_af95cb03 / 100
            call maintenanceFundsAddress with:
               value (sub_fee9b9f7[stor1 - 1].field_2304 * stor11) - stor8 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require sub_fee9b9f7[stor1].field_1024 - 1
        sub_fee9b9f7[stor1].field_2304 = sub_fee9b9f7[stor1].field_2048 / sub_fee9b9f7[stor1].field_1024 - 1
        require stor10
        sub_fee9b9f7[stor1].field_1280 = sub_fee9b9f7[stor1].field_1792 + sub_fee9b9f7[stor1].field_2048 / stor10
        if sub_fee9b9f7[stor1].field_1280 < stor9:
            sub_fee9b9f7[stor1].field_1280 = stor9
    sub_fee9b9f7[stor1].field_2816 = 1
    emit 0x64a83fe9: block.number, sub_f6f2e287
    stor8 = msg.value
    sub_fee9b9f7[stor1].field_1792 += msg.value * sub_5bdc89d8 / 100
    sub_fee9b9f7[stor1].field_2048 = sub_fee9b9f7[stor1].field_2048 + msg.value - (msg.value * sub_5bdc89d8 / 100)
    require stor10
    sub_fee9b9f7[stor1].field_1280 = sub_fee9b9f7[stor1].field_1792 + sub_fee9b9f7[stor1].field_2048 / stor10
    require sub_fee9b9f7[stor1].field_1024 - 1
    sub_fee9b9f7[stor1].field_2304 = sub_fee9b9f7[stor1].field_2048 / sub_fee9b9f7[stor1].field_1024 - 1
}

function sub_fc7ad3de(?) {
    require arg1 <= sub_f6f2e287
    require bool(sub_fee9b9f7[arg1].field_2816) == 1
    require block.number - sub_fee9b9f7[arg1].field_2560 > sub_a3a0a3fd
    require msg.sender == sub_fee9b9f7[arg1].field_256
    sub_fee9b9f7[arg1].field_2816 = 0
    emit 0xdfeaad39: sub_fee9b9f7[arg1].field_256, sub_fee9b9f7[arg1].field_1792, sub_fee9b9f7[arg1].field_2304, block.number, 0, arg1
    sub_f6f2e287++
    sub_fee9b9f7[stor1].field_256 = maintenanceFundsAddress
    sub_fee9b9f7[stor1].field_512 = sub_f6f2e287
    sub_fee9b9f7[stor1].field_768 = block.number
    sub_fee9b9f7[stor1].field_1024 = stor11
    sub_fee9b9f7[stor1].field_1280 = 0
    sub_fee9b9f7[stor1].field_1536 = 0
    sub_fee9b9f7[stor1].field_1792 = 0
    sub_fee9b9f7[stor1].field_2048 = 0
    sub_fee9b9f7[stor1].field_2304 = 0
    sub_fee9b9f7[stor1].field_2560 = block.number
    sub_fee9b9f7[stor1].field_2816 = 0
    sub_fee9b9f7[stor1][stor0].field_0 = stor11
    if sub_f6f2e287 != 1:
        sub_fee9b9f7[stor1 - 1][stor0].field_0 = 0
        if sub_fee9b9f7[stor1 - 1].field_2304 * stor11 <= stor8:
            if sub_fee9b9f7[stor1 - 1].field_1024 != stor11:
                sub_fee9b9f7[stor1].field_1792 = sub_fee9b9f7[stor1 - 1].field_2304 * stor11 * sub_5bdc89d8 / 100
                sub_fee9b9f7[stor1].field_2048 = sub_fee9b9f7[stor1 - 1].field_2304 * stor11 * sub_af95cb03 / 100
            else:
                sub_fee9b9f7[stor1].field_1792 = sub_fee9b9f7[stor1 - 1].field_1792
                sub_fee9b9f7[stor1].field_2048 = sub_fee9b9f7[stor1 - 1].field_2048
        else:
            sub_fee9b9f7[stor1].field_1792 = stor8 * sub_5bdc89d8 / 100
            sub_fee9b9f7[stor1].field_2048 = stor8 * sub_af95cb03 / 100
            call maintenanceFundsAddress with:
               value (sub_fee9b9f7[stor1 - 1].field_2304 * stor11) - stor8 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require sub_fee9b9f7[stor1].field_1024 - 1
        sub_fee9b9f7[stor1].field_2304 = sub_fee9b9f7[stor1].field_2048 / sub_fee9b9f7[stor1].field_1024 - 1
        require stor10
        sub_fee9b9f7[stor1].field_1280 = sub_fee9b9f7[stor1].field_1792 + sub_fee9b9f7[stor1].field_2048 / stor10
        if sub_fee9b9f7[stor1].field_1280 < stor9:
            sub_fee9b9f7[stor1].field_1280 = stor9
    sub_fee9b9f7[stor1].field_2816 = 1
    emit 0x64a83fe9: block.number, sub_f6f2e287
    require arg1 <= sub_f6f2e287
    require not sub_fee9b9f7[arg1].field_2816
    require sub_fee9b9f7[arg1][address(msg.sender)].field_0 > 0
    sub_fee9b9f7[arg1][address(msg.sender)].field_0 = 0
    if sub_fee9b9f7[arg1].field_256 != msg.sender:
        call msg.sender with:
           value sub_fee9b9f7[arg1].field_2304 * sub_fee9b9f7[arg1][address(msg.sender)].field_0 wei
             gas 2300 * is_zero(value) wei
    else:
        if sub_fee9b9f7[arg1][address(msg.sender)].field_0 != 1:
            call msg.sender with:
               value sub_fee9b9f7[arg1].field_1792 - sub_fee9b9f7[arg1].field_2304 + (sub_fee9b9f7[arg1][address(msg.sender)].field_0 * sub_fee9b9f7[arg1].field_2304) wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value sub_fee9b9f7[arg1].field_1792 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bet() payable {
    require msg.value >= sub_fee9b9f7[stor1].field_1280
    sub_fee9b9f7[stor1].field_2560 = block.number
    sub_fee9b9f7[stor1][address(msg.sender)].field_0++
    sub_fee9b9f7[stor1].field_1792 = sub_fee9b9f7[stor1].field_1792 + msg.value - (sub_fee9b9f7[stor1].field_1280 * sub_af95cb03 / 100)
    sub_fee9b9f7[stor1].field_2048 += sub_fee9b9f7[stor1].field_1280 * sub_af95cb03 / 100
    sub_fee9b9f7[stor1].field_1024++
    sub_fee9b9f7[stor1].field_1280 += sub_fee9b9f7[stor1].field_1280 * stor7 / 1000
    sub_fee9b9f7[stor1].field_1536 = block.number - sub_fee9b9f7[stor1].field_768
    sub_fee9b9f7[stor1].field_256 = msg.sender
    require sub_fee9b9f7[stor1].field_1024 - 1
    sub_fee9b9f7[stor1].field_2304 = sub_fee9b9f7[stor1].field_2048 / sub_fee9b9f7[stor1].field_1024 - 1
    require sub_f4e86fa6
    sub_cb253ab1 = block.hash(block.number - 1) % sub_f4e86fa6
    if sub_cb253ab1 >= sub_fee9b9f7[stor1].field_1536:
        emit 0xe59157e9: 0, sub_fee9b9f7[stor1].field_1536, sub_cb253ab1, sub_f6f2e287, msg.sender, 0
    else:
        emit 0xe59157e9: sub_fee9b9f7[stor1].field_1792, sub_fee9b9f7[stor1].field_1536, sub_cb253ab1, sub_f6f2e287, sub_fee9b9f7[stor1].field_256, 1
        sub_fee9b9f7[stor1].field_2816 = 0
        emit 0xdfeaad39: sub_fee9b9f7[stor1].field_256, sub_fee9b9f7[stor1].field_1792, sub_fee9b9f7[stor1].field_2304, block.number, 1, sub_f6f2e287
        sub_f6f2e287++
        sub_fee9b9f7[stor1].field_256 = maintenanceFundsAddress
        sub_fee9b9f7[stor1].field_512 = sub_f6f2e287
        sub_fee9b9f7[stor1].field_768 = block.number
        sub_fee9b9f7[stor1].field_1024 = stor11
        sub_fee9b9f7[stor1].field_1280 = 0
        sub_fee9b9f7[stor1].field_1536 = 0
        sub_fee9b9f7[stor1].field_1792 = 0
        sub_fee9b9f7[stor1].field_2048 = 0
        sub_fee9b9f7[stor1].field_2304 = 0
        sub_fee9b9f7[stor1].field_2560 = block.number
        sub_fee9b9f7[stor1].field_2816 = 0
        sub_fee9b9f7[stor1][stor0].field_0 = stor11
        if sub_f6f2e287 != 1:
            sub_fee9b9f7[stor1 - 1][stor0].field_0 = 0
            if sub_fee9b9f7[stor1 - 1].field_2304 * stor11 <= stor8:
                if sub_fee9b9f7[stor1 - 1].field_1024 != stor11:
                    sub_fee9b9f7[stor1].field_1792 = sub_fee9b9f7[stor1 - 1].field_2304 * stor11 * sub_5bdc89d8 / 100
                    sub_fee9b9f7[stor1].field_2048 = sub_fee9b9f7[stor1 - 1].field_2304 * stor11 * sub_af95cb03 / 100
                else:
                    sub_fee9b9f7[stor1].field_1792 = sub_fee9b9f7[stor1 - 1].field_1792
                    sub_fee9b9f7[stor1].field_2048 = sub_fee9b9f7[stor1 - 1].field_2048
            else:
                sub_fee9b9f7[stor1].field_1792 = stor8 * sub_5bdc89d8 / 100
                sub_fee9b9f7[stor1].field_2048 = stor8 * sub_af95cb03 / 100
                call maintenanceFundsAddress with:
                   value (sub_fee9b9f7[stor1 - 1].field_2304 * stor11) - stor8 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require sub_fee9b9f7[stor1].field_1024 - 1
            sub_fee9b9f7[stor1].field_2304 = sub_fee9b9f7[stor1].field_2048 / sub_fee9b9f7[stor1].field_1024 - 1
            require stor10
            sub_fee9b9f7[stor1].field_1280 = sub_fee9b9f7[stor1].field_1792 + sub_fee9b9f7[stor1].field_2048 / stor10
            if sub_fee9b9f7[stor1].field_1280 < stor9:
                sub_fee9b9f7[stor1].field_1280 = stor9
        sub_fee9b9f7[stor1].field_2816 = 1
        emit 0x64a83fe9: block.number, sub_f6f2e287
}



}
