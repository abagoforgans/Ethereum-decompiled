contract main {


// =======================  Init code  ======================


uint256 stor0;
array of struct stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3.length = 0
    if not stor3.length <= 0:
        idx = 0
        while 10 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            stor3[idx].field_512 = 0
            stor3[idx].field_1024 = 0
            stor3[idx].field_1280 = 0
            stor3[idx].field_1536 = 0
            stor3[idx].field_1792 = 0
            stor3[idx].field_2048 = 0
            stor3[idx].field_2304 = 0
            idx = idx + 10
            continue 
    return code.data[168 len 5263]
}



// =====================  Runtime code  =====================


address stor0;
array of uint8 announcements;
uint256 indexOfCurrentDraw;
array of struct stor3;
array of struct stor42860778977260930797148633666893429348251053322098217195286713545130016469496;
array of uint256 stor42860778977260930797148633666893429348251053322098217195286713545130016469505;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037075;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037089;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037090;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037092;
mapping of struct stor99;

function Announcements() payable {
    return uint256(announcements[0 len announcements.length])
}

function IndexOfCurrentDraw() payable {
    return indexOfCurrentDraw
}

function _fallback() payable {
  stop
}

function CheckHash(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, bytes32 arg5) payable {
    return sha3(arg1, arg2, arg3, arg4, arg5)
}

function announce(string arg1) payable {
    require stor0 == msg.sender
    uint256(announcements[]) = Array(len=arg1.length, data=arg1[all])
}

function ledger(uint256 arg1) payable {
    require arg1 < stor3.length
    return uint8(stor5EC2[arg1].field_0), 
           uint8(stor5EC2[arg1].field_0),
           uint8(stor5EC2[arg1].field_0),
           uint8(stor5EC2[arg1].field_0),
           storC257[arg1],
           storC257[arg1],
           storC257[arg1],
           storC257[arg1],
           storC257[arg1],
           storC257[arg1],
           uint256(stor[(10 * arg1) + code.data[5231 len 32]].field_0),
           storC257[arg1]
}

function announce_numbers(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint32 arg5, bytes32 arg6) payable {
    require msg.sender == stor0
    require arg5 < stor3.length
    uint256(stor5EC2[arg5].field_0) = arg1 or Mask(248, 8, uint256(stor5EC2[arg5].field_0))
    Mask(248, 0, stor5EC2[arg5].field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor5EC2[arg5].field_16) = Mask(240, 0, arg3)
    Mask(232, 0, stor5EC2[arg5].field_24) = Mask(232, 0, arg4)
    storC257[arg5] = arg6
    emit DrawReadyToPayout(arg1 << 248, arg2 << 248, arg3 << 248, arg4 << 248, arg6, arg5);
}

function MyBet(uint8 arg1, address arg2) payable {
    require arg1 < stor3.length
    idx = 224
    s = 0
    while 352 > idx + 32:
        mem[idx + 32] = stor('map', ('param', 'arg2'), ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return uint8(stor[(10 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8][arg2].field_0), 
           mem[256 len 96]
}

function Refund(uint32 arg1) payable {
    require 0 == msg.value
    require arg1 < stor3.length
    require sha3(uint8(stor5EC2[arg1].field_0), uint8(stor5EC2[arg1].field_8), uint8(stor5EC2[arg1].field_16), uint8(stor5EC2[arg1].field_24), storC257[arg1]) != storC257[arg1]
    require arg1 < stor3.length
    require block.timestamp >= stor5EC2[arg1]
    require arg1 < stor3.length
    require uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))])
    require arg1 < stor3.length
    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
    call msg.sender with:
       value uint256(stor[(10 * arg1) + code.data[5231 len 32]].field_0) wei
         gas 0 wei
    require ext_call.success
}

function next_draw(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require msg.sender == stor0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = (10 * stor3.length) + 10
        while 10 * stor3.length > idx:
            uint32(stor3[idx].field_0) = 0
            uint256(stor3[idx].field_256) = 0
            uint256(stor3[idx].field_512) = 0
            uint256(stor3[idx].field_1024) = 0
            uint256(stor3[idx].field_1280) = 0
            uint256(stor3[idx].field_1536) = 0
            uint256(stor3[idx].field_1792) = 0
            uint256(stor3[idx].field_2048) = 0
            uint256(stor3[idx].field_2304) = 0
            idx = idx + 10
            continue 
    indexOfCurrentDraw = stor3.length - 1
    require stor3.length - 1 < stor3.length
    storC257[stor3.length] = arg1
    require indexOfCurrentDraw < stor3.length
    storC257[stor2] = arg3
    storC257[stor2] = arg4
    storC257[stor2] = arg5
    storC257[stor2] = arg6
    uint256(stor[code.data[5231 len 32] + (10 * stor2)].field_0) = arg2
    storC257[stor2] = block.timestamp + (336 * 24 * 3600)
    emit NewDrawReadyToPlay(arg1, arg2, arg3, indexOfCurrentDraw);
}

function Play(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4) payable {
    require indexOfCurrentDraw < stor3.length
    require msg.value == uint256(stor[code.data[5231 len 32] + (10 * stor2)].field_0)
    require indexOfCurrentDraw < stor3.length
    require 0 == uint8(stor[(10 * stor2) + 0x5ec2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fb][address(msg.sender)].field_24)
    require arg1 < arg2
    require arg2 < arg3
    require arg3 < arg4
    require indexOfCurrentDraw < stor3.length
    uint256(stor[(10 * stor2) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8][msg.sender].field_0) = arg1 or Mask(248, 8, uint256(stor[(10 * stor2) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8][msg.sender].field_0))
    Mask(248, 0, stor[(10 * stor2) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8][msg.sender].field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor[(10 * stor2) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8][msg.sender].field_16) = Mask(240, 0, arg3)
    Mask(232, 0, stor[(10 * stor2) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8][msg.sender].field_24) = Mask(232, 0, arg4)
    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('stor', ('name', 'stor2', 2)))))]) = 1
}

function Withdraw(uint32 arg1) payable {
    require 0 == msg.value
    require arg1 < stor3.length
    require uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))])
    require arg1 < stor3.length
    require uint8(stor5EC2[arg1].field_24)
    require arg1 < stor3.length
    mem[352] = uint8(stor[(10 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8][msg.sender].field_0)
    idx = 352
    s = 0
    while 480 > idx + 32:
        mem[idx + 32] = stor('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    require arg1 < stor3.length
    mem[320] = uint8(stor5EC2[arg1].field_24)
    mem[288] = uint8(stor5EC2[arg1].field_16)
    mem[256] = uint8(stor5EC2[arg1].field_8)
    mem[224] = uint8(stor5EC2[arg1].field_0)
    idx = 0
    s = 0
    while uint8(idx) < 4:
        require uint8(idx) < 4
        require uint8(var33006) < 4
        if not var37001:
            if uint8(var37005) != 4:
                require uint8(idx) < 4
                require uint8(var37005) < 4
                if mem[(32 * uint8(var37005)) + 383 len 1] != mem[(32 * uint8(idx)) + 255 len 1]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
        else:
            t = var37005
            while uint8(t + 1) < 4:
                require uint8(idx) < 4
                require uint8(t + 1) < 4
                if mem[(32 * uint8(t + 1)) + 383 len 1] < mem[(32 * uint8(idx)) + 255 len 1]:
                    t = t + 1
                    continue 
                if uint8(t + 1) != 4:
                    require uint8(idx) < 4
                    require uint8(t + 1) < 4
                    if mem[(32 * uint8(t + 1)) + 383 len 1] != mem[(32 * uint8(idx)) + 255 len 1]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + 1
                    continue 
                require uint8(s) != 0
                require arg1 < stor3.length
                if uint8(s) != 1:
                    if uint8(s) != 2:
                        if uint8(s) != 3:
                            uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(0);
                                call stor0 with:
                                     gas 0 wei
                            else:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                        else:
                            require arg1 < stor3.length
                            uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                            else:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                    else:
                        require arg1 < stor3.length
                        if uint8(s) != 3:
                            uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                            else:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                        else:
                            require arg1 < stor3.length
                            uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                            else:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                else:
                    require arg1 < stor3.length
                    if uint8(s) != 2:
                        if uint8(s) != 3:
                            uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                            else:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                        else:
                            require arg1 < stor3.length
                            uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                            else:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                    else:
                        require arg1 < stor3.length
                        if uint8(s) != 3:
                            uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                            else:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                        else:
                            require arg1 < stor3.length
                            uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                            if uint8(s) != 4:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
                            else:
                                call msg.sender with:
                                   value storC257[arg1] wei
                                     gas 0 wei
                                require ext_call.success
                                emit PlayerWon(storC257[arg1]);
                                call stor0 with:
                                   value storC257[arg1] / 100 wei
                                     gas 0 wei
            if uint8(t + 1) != 4:
                require uint8(idx) < 4
                require uint8(t + 1) < 4
                if mem[(32 * uint8(t + 1)) + 383 len 1] != mem[(32 * uint8(idx)) + 255 len 1]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
        require uint8(s) != 0
        require arg1 < stor3.length
        if uint8(s) != 1:
            if uint8(s) != 2:
                if uint8(s) != 3:
                    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(0);
                        call stor0 with:
                             gas 0 wei
                    else:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                else:
                    require arg1 < stor3.length
                    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                    else:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
            else:
                require arg1 < stor3.length
                if uint8(s) != 3:
                    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                    else:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                else:
                    require arg1 < stor3.length
                    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                    else:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
        else:
            require arg1 < stor3.length
            if uint8(s) != 2:
                if uint8(s) != 3:
                    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                    else:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                else:
                    require arg1 < stor3.length
                    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                    else:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
            else:
                require arg1 < stor3.length
                if uint8(s) != 3:
                    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                    else:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                else:
                    require arg1 < stor3.length
                    uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                    if uint8(s) != 4:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
                    else:
                        call msg.sender with:
                           value storC257[arg1] wei
                             gas 0 wei
                        require ext_call.success
                        emit PlayerWon(storC257[arg1]);
                        call stor0 with:
                           value storC257[arg1] / 100 wei
                             gas 0 wei
    require uint8(s) != 0
    require arg1 < stor3.length
    if uint8(s) != 1:
        if uint8(s) != 2:
            if uint8(s) != 3:
                uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                if uint8(s) != 4:
                    call msg.sender with:
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(0);
                    call stor0 with:
                         gas 0 wei
                else:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
            else:
                require arg1 < stor3.length
                uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
                else:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
        else:
            require arg1 < stor3.length
            if uint8(s) != 3:
                uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
                else:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
            else:
                require arg1 < stor3.length
                uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
                else:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
    else:
        require arg1 < stor3.length
        if uint8(s) != 2:
            if uint8(s) != 3:
                uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
                else:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
            else:
                require arg1 < stor3.length
                uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
                else:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
        else:
            require arg1 < stor3.length
            if uint8(s) != 3:
                uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
                else:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
            else:
                require arg1 < stor3.length
                uint8(announcements[('map', 'msg.sender', ('add', 39242276188594799690162040385371932227836366301296949569053664044882731168248, ('mul', 10, ('param', 'arg1'))))]) = 0
                if uint8(s) != 4:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
                else:
                    call msg.sender with:
                       value storC257[arg1] wei
                         gas 0 wei
                    require ext_call.success
                    emit PlayerWon(storC257[arg1]);
                    call stor0 with:
                       value storC257[arg1] / 100 wei
                         gas 0 wei
}



}
