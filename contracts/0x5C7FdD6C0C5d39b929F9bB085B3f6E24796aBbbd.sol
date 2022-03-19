contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function _fallback() payable {
    stor0 = 10^16
    stor12 = 2
    stor16 = 2
    stor20 = 2
    stor14 = 0
    stor18 = 1
    stor19 = 0
    stor17 = 1
    stor15 = 0
    stor13 = 1
    stor9 = 0
    stor11 = 0
    return code.data[489 len 4771]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of address stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint8 stor4;
address stor5;
uint256 stor7;
uint8 stor8;
uint256 num_players;
uint256 sub_6563079b;
uint256 stor11; offset 1
uint256 reward;
uint256 sub_fd77fdfb;
uint256 sub_cb8a9a5f;
uint256 winner;
uint256 sub_fd140e76;
uint256 sub_0de78f53;
address sub_0c2141c4Address;
uint256 stor26;
uint256 sub_52f62631;
uint256 sub_c42dff7e;
uint256 sub_53bfd0e9;
uint256 sub_e8223650;
uint256 sub_b1936aa4;
uint256 sub_6ba04322;
uint256 sub_ea448c55;
uint256 sub_cfb3ec31;
uint256 sub_d8a6203b;
uint256 sub_04b52931;
uint256 sub_6335ec5b;
uint256 sub_9e7bd827;

function sub_04b52931(?) payable {
    return sub_04b52931
}

function sub_0c2141c4(?) payable {
    return address(sub_0c2141c4Address)
}

function sub_0de78f53(?) payable {
    return sub_0de78f53
}

function reward() payable {
    return reward
}

function num_players() payable {
    return num_players
}

function sub_52f62631(?) payable {
    return sub_52f62631
}

function sub_53bfd0e9(?) payable {
    return sub_53bfd0e9
}

function sub_6335ec5b(?) payable {
    return sub_6335ec5b
}

function sub_6563079b(?) payable {
    return sub_6563079b
}

function sub_6ba04322(?) payable {
    return sub_6ba04322
}

function sub_9e7bd827(?) payable {
    return sub_9e7bd827
}

function sub_b1936aa4(?) payable {
    return sub_b1936aa4
}

function sub_c42dff7e(?) payable {
    return sub_c42dff7e
}

function sub_cb8a9a5f(?) payable {
    return sub_cb8a9a5f
}

function sub_cfb3ec31(?) payable {
    return sub_cfb3ec31
}

function sub_d8a6203b(?) payable {
    return sub_d8a6203b
}

function winner() payable {
    return winner
}

function sub_e8223650(?) payable {
    return sub_e8223650
}

function sub_ea448c55(?) payable {
    return sub_ea448c55
}

function sub_ee76be97(?) payable {
    require arg1 < 3
    require arg2 < 3
    return stor[arg2 + (3 * arg1) + 12]
}

function sub_fd140e76(?) payable {
    return sub_fd140e76
}

function sub_fd77fdfb(?) payable {
    return sub_fd77fdfb
}

function _fallback() payable {
  stop
}

function player(uint256 arg1) payable {
    require arg1 < 2
    return address(stor1[arg1]), stor2[arg1], stor3[arg1], stor4[arg1]
}

function sub_487e657e(?) payable {
    sub_52f62631 = sha3(arg1)
    sub_53bfd0e9 = sha3(arg2)
    sub_e8223650 = sha3(arg3)
    sub_b1936aa4 = sha3(0x3770943f442a0bb4e34862653f93e5615dcf7887)
    sub_6ba04322 = sha3('0x3770943f442a0bb4e34862653f93e5', '615dcf7887')
    sub_ea448c55 = sha3('3770943f442a0bb4e34862653f93e561', '5dcf7887')
    sub_cfb3ec31 = sha3(None)
    sub_d8a6203b = sha3(1)
    sub_04b52931 = sha3('1')
    sub_6335ec5b = sha3(arg2, arg1)
    sub_9e7bd827 = sha3(arg3, arg1)
}

function sub_8bd1762b(?) payable {
    if num_players >= 2:
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
            require num_players < 2
            uint256(stor1[stor9]) = msg.sender or Mask(96, 160, uint256(stor1[stor9]))
            stor2[stor9] = arg1
            num_players++
            if msg.value - stor0 > 0:
                call msg.sender with:
                   value msg.value - stor0 wei
                     gas 0 wei
                reward = reward - msg.value + stor0
            sub_fd77fdfb = 0
}

function finalize() payable {
    if stor4.length:
        if stor8:
            require stor3.length < 3
            require stor7 < 3
            if not stor[stor7 + (3 * stor3.length) + 12]:
                call address(stor1.length) with:
                   value reward wei
                     gas 0 wei
                winner = 0
            else:
                require stor3.length < 3
                require stor7 < 3
                if stor[stor7 + (3 * stor3.length) + 12] == 1:
                    call stor5 with:
                       value reward wei
                         gas 0 wei
                    winner = 1
                else:
                    call address(stor1.length) with:
                       value stor11 wei
                         gas 0 wei
                    call stor5 with:
                       value stor11 wei
                         gas 0 wei
                    winner = 2
}

function open(uint256 arg1, uint256 arg2) payable {
    if num_players != 2:
        sub_cb8a9a5f = -1
    if msg.sender == address(stor1.length):
        sub_6563079b = 0
        uint256(stor26) = msg.sender or Mask(96, 160, uint256(stor26))
        sub_fd140e76 = arg1
        sub_0de78f53 = arg2
        sub_52f62631 = sha3(msg.sender, arg1, arg2)
        sub_53bfd0e9 = sha3(msg.sender)
        sub_e8223650 = sha3(msg.sender, arg1)
        sub_b1936aa4 = sha3(msg.sender, 1)
        sub_6ba04322 = sha3(msg.sender, '1')
        require sub_6563079b < 2
        sub_c42dff7e = stor2[stor10]
        if sha3(msg.sender, arg1, arg2) != stor2[stor10]:
            sub_cb8a9a5f = -1
        else:
            require sub_6563079b < 2
            if stor4[stor10]:
                sub_cb8a9a5f = -1
            else:
                require sub_6563079b < 2
                stor3[stor10] = arg1
                stor4[stor10] = 1
                sub_cb8a9a5f = 0
    else:
        if stor5 != msg.sender:
            sub_cb8a9a5f = -1
        else:
            sub_6563079b = 1
            uint256(stor26) = msg.sender or Mask(96, 160, uint256(stor26))
            sub_fd140e76 = arg1
            sub_0de78f53 = arg2
            sub_52f62631 = sha3(msg.sender, arg1, arg2)
            sub_53bfd0e9 = sha3(msg.sender)
            sub_e8223650 = sha3(msg.sender, arg1)
            sub_b1936aa4 = sha3(msg.sender, 1)
            sub_6ba04322 = sha3(msg.sender, '1')
            require sub_6563079b < 2
            sub_c42dff7e = stor2[stor10]
            if sha3(msg.sender, arg1, arg2) != stor2[stor10]:
                sub_cb8a9a5f = -1
            else:
                require sub_6563079b < 2
                if stor4[stor10]:
                    sub_cb8a9a5f = -1
                else:
                    require sub_6563079b < 2
                    stor3[stor10] = arg1
                    stor4[stor10] = 1
                    sub_cb8a9a5f = 0
}



}
