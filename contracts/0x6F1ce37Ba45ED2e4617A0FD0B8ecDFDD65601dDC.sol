contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor8;
uint256 stor11;
uint8 stor12;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;

function _fallback() payable {
    stor0 = 10^17
    stor1 = 10
    stor8 = 0
    stor11 = 0
    stor12 = 0
    stor17 = 2
    stor21 = 2
    stor25 = 2
    stor19 = 0
    stor23 = 1
    stor24 = 0
    stor22 = 1
    stor20 = 0
    stor18 = 1
    return code.data[103 len 2491]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 sub_adf07d5d;
uint256 choice1;
uint256 sub_0e41e20b;
uint256 sub_87a8450d;
uint8 sub_cfd0ee21;
uint8 sub_2250ab5a; offset 8
uint256 sub_74b1c33f;
uint256 num_players;
address sub_e2afd2f1Address;
uint256 stor9;
address sub_034258abAddress;
uint256 stor10;
uint256 stor11; offset 1
uint256 reward;
uint8 finalized;
uint256 sub_52f62631;
uint256 sub_fd77fdfb;
uint256 sub_cb8a9a5f;
uint256 sub_fcfffba1;

function sub_034258ab(?) payable {
    return address(sub_034258abAddress)
}

function sub_0e41e20b(?) payable {
    return sub_0e41e20b
}

function sub_2250ab5a(?) payable {
    return sub_2250ab5a
}

function reward() payable {
    return reward
}

function num_players() payable {
    return num_players
}

function choice1() payable {
    return choice1
}

function sub_52f62631(?) payable {
    return sub_52f62631
}

function sub_74b1c33f(?) payable {
    return sub_74b1c33f
}

function sub_87a8450d(?) payable {
    return sub_87a8450d
}

function sub_adf07d5d(?) payable {
    return sub_adf07d5d
}

function finalized() payable {
    return finalized
}

function sub_cb8a9a5f(?) payable {
    return sub_cb8a9a5f
}

function sub_cfd0ee21(?) payable {
    return sub_cfd0ee21
}

function sub_e2afd2f1(?) payable {
    return address(sub_e2afd2f1Address)
}

function sub_ee76be97(?) payable {
    require arg1 < 3
    require arg2 < 3
    return stor[arg2 + (3 * arg1) + 17]
}

function sub_fcfffba1(?) payable {
    return sub_fcfffba1
}

function sub_fd77fdfb(?) payable {
    return sub_fd77fdfb
}

function _fallback() payable {
  stop
}

function sub_8bd1762b(?) payable {
    if num_players != 0:
        if num_players != 1:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            sub_fd77fdfb = -1
        else:
            if msg.value < stor0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                sub_fd77fdfb = -1
            else:
                reward += msg.value
                uint256(stor10) = msg.sender or Mask(96, 160, uint256(stor10))
                sub_87a8450d = arg1
                num_players++
                if msg.value - stor0 > 0:
                    call msg.sender with:
                       value msg.value - stor0 wei
                         gas 0 wei
                    reward = reward - msg.value + stor0
                sub_fd77fdfb = 0
    else:
        if msg.value >= stor0:
            reward += msg.value
            uint256(stor9) = msg.sender or Mask(96, 160, uint256(stor9))
            sub_0e41e20b = arg1
            num_players++
            if msg.value - stor0 > 0:
                call msg.sender with:
                   value msg.value - stor0 wei
                     gas 0 wei
                reward = reward - msg.value + stor0
            sub_fd77fdfb = 0
        else:
            if num_players != 1:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                sub_fd77fdfb = -1
            else:
                if msg.value < stor0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                    sub_fd77fdfb = -1
                else:
                    reward += msg.value
                    uint256(stor10) = msg.sender or Mask(96, 160, uint256(stor10))
                    sub_87a8450d = arg1
                    num_players++
                    if msg.value - stor0 > 0:
                        call msg.sender with:
                           value msg.value - stor0 wei
                             gas 0 wei
                        reward = reward - msg.value + stor0
                    sub_fd77fdfb = 0
}

function sub_20879c19(?) payable {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 160 len 288] = 0
    mem[ceil32(arg3.length) + 448] = 0
    mem[ceil32(arg3.length) + 480 len 992] = 0
    s = 0
    idx = 0
    t = arg1
    while idx < 32:
        require -idx + 31 < 32
        if t % 16 >= 10:
            mem[(32 * -idx + 31) + ceil32(arg3.length) + 448] = (t % 16) + 87 << 248
        else:
            mem[(32 * -idx + 31) + ceil32(arg3.length) + 448] = (t % 16) + 48 << 248
        s = t % 16
        idx = idx + 1
        t = t / 16
        continue 
    u = s
    idx = 0
    u = t
    while idx < 8:
        require -idx + 9 < 10
        if u % 16 >= 10:
            mem[(32 * -idx + 9) + ceil32(arg3.length) + 128] = (u % 16) + 87 << 248
        else:
            mem[(32 * -idx + 9) + ceil32(arg3.length) + 128] = (u % 16) + 48 << 248
        u = u % 16
        idx = idx + 1
        u = u / 16
        continue 
    mem[ceil32(arg3.length) + 128] = '0'
    mem[ceil32(arg3.length) + 160] = 'x'
    s = 0
    idx = 0
    while idx < 10:
        s = (256 * s) + mem[(32 * idx) + ceil32(arg3.length) + 128 len 1]
        idx = idx + 1
        continue 
    t = 0
    idx = 0
    while idx < 32:
        t = (256 * t) + mem[(32 * idx) + ceil32(arg3.length) + 448 len 1]
        idx = idx + 1
        continue 
    sub_52f62631 = sha3(Mask(80, 0, 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * s), 0, uint8(arg2 + 48), arg3[all])
    return sub_52f62631
}

function finalize() payable {
    if finalized:
        sub_fcfffba1 = -3
    else:
        if block.number - sub_74b1c33f < stor1:
            sub_fcfffba1 = -2
        else:
            if not sub_cfd0ee21:
                if not sub_2250ab5a:
                    sub_fcfffba1 = -1
                else:
                    call address(sub_034258abAddress) with:
                       value reward wei
                         gas 0 wei
                    sub_fcfffba1 = 1
                    finalized = 1
            else:
                if not sub_2250ab5a:
                    if not sub_cfd0ee21:
                        if not sub_2250ab5a:
                            sub_fcfffba1 = -1
                        else:
                            call address(sub_034258abAddress) with:
                               value reward wei
                                 gas 0 wei
                            sub_fcfffba1 = 1
                            finalized = 1
                    else:
                        if not sub_2250ab5a:
                            call address(sub_e2afd2f1Address) with:
                               value reward wei
                                 gas 0 wei
                            sub_fcfffba1 = 0
                            finalized = 1
                        else:
                            if sub_cfd0ee21:
                                sub_fcfffba1 = -1
                            else:
                                if not sub_2250ab5a:
                                    sub_fcfffba1 = -1
                                else:
                                    call address(sub_034258abAddress) with:
                                       value reward wei
                                         gas 0 wei
                                    sub_fcfffba1 = 1
                                    finalized = 1
                else:
                    require sub_adf07d5d < 3
                    require choice1 < 3
                    if 0 == stor[stor3 + (3 * stor2) + 17]:
                        call address(sub_e2afd2f1Address) with:
                           value reward wei
                             gas 0 wei
                        sub_fcfffba1 = 0
                    else:
                        require sub_adf07d5d < 3
                        require choice1 < 3
                        if 1 == stor[stor3 + (3 * stor2) + 17]:
                            call address(sub_034258abAddress) with:
                               value reward wei
                                 gas 0 wei
                            sub_fcfffba1 = 1
                        else:
                            call address(sub_e2afd2f1Address) with:
                               value stor11 wei
                                 gas 0 wei
                            call address(sub_034258abAddress) with:
                               value stor11 wei
                                 gas 0 wei
                            sub_fcfffba1 = 2
                    finalized = 1
}

function sub_220cf6c5(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if num_players != 2:
        sub_cb8a9a5f = -1
    if msg.sender == address(sub_e2afd2f1Address):
        mem[ceil32(arg2.length) + 160 len 288] = 0
        mem[ceil32(arg2.length) + 448] = 0
        mem[ceil32(arg2.length) + 480 len 992] = 0
        s = 0
        idx = 0
        t = msg.sender
        while idx < 32:
            require -idx + 31 < 32
            if t % 16 >= 10:
                mem[(32 * -idx + 31) + ceil32(arg2.length) + 448] = (t % 16) + 87 << 248
            else:
                mem[(32 * -idx + 31) + ceil32(arg2.length) + 448] = (t % 16) + 48 << 248
            s = t % 16
            idx = idx + 1
            t = t / 16
            continue 
        u = s
        idx = 0
        u = t
        while idx < 8:
            require -idx + 9 < 10
            if u % 16 >= 10:
                mem[(32 * -idx + 9) + ceil32(arg2.length) + 128] = (u % 16) + 87 << 248
            else:
                mem[(32 * -idx + 9) + ceil32(arg2.length) + 128] = (u % 16) + 48 << 248
            u = u % 16
            idx = idx + 1
            u = u / 16
            continue 
        mem[ceil32(arg2.length) + 128] = '0'
        mem[ceil32(arg2.length) + 160] = 'x'
        s = 0
        idx = 0
        while idx < 10:
            s = (256 * s) + mem[(32 * idx) + ceil32(arg2.length) + 128 len 1]
            idx = idx + 1
            continue 
        t = 0
        idx = 0
        while idx < 32:
            t = (256 * t) + mem[(32 * idx) + ceil32(arg2.length) + 448 len 1]
            idx = idx + 1
            continue 
        sub_52f62631 = sha3(Mask(80, 0, 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * s), 0, uint8(arg1 + 48), arg2[all])
        if sub_0e41e20b != sub_52f62631:
            sub_cb8a9a5f = -1
        else:
            if sub_cfd0ee21:
                sub_cb8a9a5f = -1
            else:
                sub_adf07d5d = arg1
                sub_cfd0ee21 = 1
                if 0 == sub_74b1c33f:
                    sub_74b1c33f = block.number
                sub_cb8a9a5f = 0
    else:
        if address(sub_034258abAddress) != msg.sender:
            sub_cb8a9a5f = -1
        else:
            mem[ceil32(arg2.length) + 160 len 288] = 0
            mem[ceil32(arg2.length) + 448] = 0
            mem[ceil32(arg2.length) + 480 len 992] = 0
            s = 0
            idx = 0
            t = msg.sender
            while idx < 32:
                require -idx + 31 < 32
                if t % 16 >= 10:
                    mem[(32 * -idx + 31) + ceil32(arg2.length) + 448] = (t % 16) + 87 << 248
                else:
                    mem[(32 * -idx + 31) + ceil32(arg2.length) + 448] = (t % 16) + 48 << 248
                s = t % 16
                idx = idx + 1
                t = t / 16
                continue 
            u = s
            idx = 0
            u = t
            while idx < 8:
                require -idx + 9 < 10
                if u % 16 >= 10:
                    mem[(32 * -idx + 9) + ceil32(arg2.length) + 128] = (u % 16) + 87 << 248
                else:
                    mem[(32 * -idx + 9) + ceil32(arg2.length) + 128] = (u % 16) + 48 << 248
                u = u % 16
                idx = idx + 1
                u = u / 16
                continue 
            mem[ceil32(arg2.length) + 128] = '0'
            mem[ceil32(arg2.length) + 160] = 'x'
            s = 0
            idx = 0
            while idx < 10:
                s = (256 * s) + mem[(32 * idx) + ceil32(arg2.length) + 128 len 1]
                idx = idx + 1
                continue 
            t = 0
            idx = 0
            while idx < 32:
                t = (256 * t) + mem[(32 * idx) + ceil32(arg2.length) + 448 len 1]
                idx = idx + 1
                continue 
            sub_52f62631 = sha3(Mask(80, 0, 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * 10 * 256 * s), 0, uint8(arg1 + 48), arg2[all])
            if sub_87a8450d != sub_52f62631:
                sub_cb8a9a5f = -1
            else:
                if sub_2250ab5a:
                    sub_cb8a9a5f = -1
                else:
                    choice1 = arg1
                    sub_2250ab5a = 1
                    if 0 == sub_74b1c33f:
                        sub_74b1c33f = block.number
                    sub_cb8a9a5f = 0
}



}
