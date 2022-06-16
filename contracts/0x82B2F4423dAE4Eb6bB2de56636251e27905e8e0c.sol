contract main {




// =====================  Runtime code  =====================


#
#  - sub_27914aac(?)
#  - sub_980a729a(?)
#
uint8 stor0;
address stor0; offset 8
address stor1;
uint256 stor3;
mapping of struct sub_42b99cf8;
mapping of struct stor5;
mapping of uint256 sub_73835a61;
uint256 stor7;
address stor8;
address stor9;
uint256 stor10;

function sub_42b99cf8(?) {
    require arg3 < 10
    return sub_42b99cf8[arg1][4][arg2][arg3].field_256
}

function sub_73835a61(?) {
    return sub_42b99cf8[arg1][5][stor6[address(arg2)]].field_256, 
           bool(sub_42b99cf8[arg1][5][stor6[address(arg2)]].field_512),
           bool(sub_42b99cf8[arg1][5][stor6[address(arg2)]].field_520)
}

function getRoundInfo(uint256 arg1, uint256 arg2) {
    return sub_42b99cf8[arg1][4][arg2].field_3328, sub_42b99cf8[arg1][4][arg2].field_3584, sub_42b99cf8[arg1][4][arg2].field_3840
}

function _fallback() payable {
    revert
}

function generateRandomNumber(uint256 arg1) {
    return (sha3(msg.sender, Mask(192, 64, arg1) >> 64 >> 768, mem[392 len 8]) % 10)
}

function activate() {
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'Sorry! Owner Only.'
    uint8(stor0.field_0) = 1
    stor3 = 1
    emit 0x11c309d0 
}

function sub_81b3b018(?) {
    idx = 0
    s = 0
    while idx <= 9:
        mem[0] = sub_73835a61[address(arg3)]
        mem[32] = sha3(arg2, sha3(arg1, 4) + 4)
        require idx < 10
        idx = idx + 1
        s = (10 * s) + sub_42b99cf8[arg1][4][arg2][stor6[address(arg3)]][idx].field_0
        continue 
    return (0xb616a12b7fe617aa577b986b314d60092381cf8591999d6395d7ddc4214135713f2f3b70f28505222d0f4fbc32d810000000000000000000000000000000000000000 * s)
}

function sub_3c561555(?) {
    if stor3:
        if not sub_42b99cf8[arg1].field_8:
            require ext_code.size(stor8)
            call stor8.0xdfaca421 with:
                 gas gas_remaining wei
                args block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.0x8cd42991 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                return 0
            if sub_42b99cf8[arg1].field_512 + 1 >= ext_call.return_data[0]:
                require ext_code.size(stor8)
                call stor8.0x995e4339 with:
                     gas gas_remaining wei
                    args sub_42b99cf8[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    return 0
                require ext_call.return_data[32] < 10
                if sub_42b99cf8[arg1][4][sub_42b99cf8[arg1].field_512][ext_call.return_data[32]].field_256:
                    require ext_call.return_data[32] < 10
                    if sub_42b99cf8[arg1][4][sub_42b99cf8[arg1].field_512][ext_call.return_data[32]].field_256 != sub_42b99cf8[arg1][4][sub_42b99cf8[arg1].field_512].field_3840:
                        return 0
    return 1
}

function getGameInfo(uint256 arg1) {
    if not stor3:
        return bool(sub_42b99cf8[arg1].field_0), 
               1,
               sub_42b99cf8[arg1].field_256,
               sub_42b99cf8[arg1].field_512,
               sub_42b99cf8[arg1].field_768
    if sub_42b99cf8[arg1].field_8:
        return bool(sub_42b99cf8[arg1].field_0), 
               1,
               sub_42b99cf8[arg1].field_256,
               sub_42b99cf8[arg1].field_512,
               sub_42b99cf8[arg1].field_768
    require ext_code.size(stor8)
    call stor8.0xdfaca421 with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.0x8cd42991 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        return bool(sub_42b99cf8[arg1].field_0), 
               0,
               sub_42b99cf8[arg1].field_256,
               sub_42b99cf8[arg1].field_512,
               sub_42b99cf8[arg1].field_768
    if sub_42b99cf8[arg1].field_512 + 1 < ext_call.return_data[0]:
        return bool(sub_42b99cf8[arg1].field_0), 
               1,
               sub_42b99cf8[arg1].field_256,
               sub_42b99cf8[arg1].field_512,
               sub_42b99cf8[arg1].field_768
    require ext_code.size(stor8)
    call stor8.0x995e4339 with:
         gas gas_remaining wei
        args sub_42b99cf8[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        require ext_call.return_data[32] < 10
        if sub_42b99cf8[arg1][4][sub_42b99cf8[arg1].field_512][ext_call.return_data[32]].field_256:
            require ext_call.return_data[32] < 10
    return bool(sub_42b99cf8[arg1].field_0), 
           ext_call.return_data[32],
           sub_42b99cf8[arg1].field_256,
           sub_42b99cf8[arg1].field_512,
           sub_42b99cf8[arg1].field_768
}

function sub_b68eaa77(?) {
    if bool(uint8(stor0.field_0)) != 1:
        revert with 0, 'Sorry! Not Activated Yet.'
    if not sub_73835a61[address(msg.sender)]:
        stor7++
        sub_73835a61[address(msg.sender)] = stor7
    if bool(sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_520) != 1:
        revert with 0, 'Sorry! You Are Not Participants.'
    require ext_code.size(stor8)
    call stor8.0xdfaca421 with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_73835a61[address(msg.sender)]:
        stor7++
        sub_73835a61[address(msg.sender)] = stor7
    if not stor3:
        stor3++
        emit 0x94f030a4: stor3
    else:
        if sub_42b99cf8[stor3].field_8:
            stor3++
            emit 0x94f030a4: stor3
        else:
            require ext_code.size(stor8)
            call stor8.0xdfaca421 with:
                 gas gas_remaining wei
                args block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.0x8cd42991 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if sub_42b99cf8[stor3].field_512 + 1 < ext_call.return_data[0]:
                    stor3++
                    emit 0x94f030a4: stor3
                else:
                    require ext_code.size(stor8)
                    call stor8.0x995e4339 with:
                         gas gas_remaining wei
                        args sub_42b99cf8[stor3].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        require ext_call.return_data[32] < 10
                        if not sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512][ext_call.return_data[32]].field_256:
                            stor3++
                            emit 0x94f030a4: stor3
                        else:
                            require ext_call.return_data[32] < 10
                            if sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512][ext_call.return_data[32]].field_256 == sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512].field_3840:
                                stor3++
                                emit 0x94f030a4: stor3
    if sub_42b99cf8[stor3].field_512 + 1 != ext_call.return_data[0]:
        if sub_42b99cf8[stor3].field_512 == ext_call.return_data[0]:
            sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_520 = 0
            sub_42b99cf8[stor3][4][ext_call.return_data[0]].field_3584++
            if sub_42b99cf8[stor3][4][ext_call.return_data[0]].field_3584 >= 3 * sub_42b99cf8[stor3][4][ext_call.return_data[0]].field_3328 / 4:
                stor3++
                emit 0x94f030a4: stor3
        else:
            if sub_42b99cf8[stor3].field_512 + 1 < ext_call.return_data[0]:
                stor3++
                emit 0x94f030a4: stor3
            if sub_42b99cf8[stor3][4][ext_call.return_data[0]].field_3584 >= 3 * sub_42b99cf8[stor3][4][ext_call.return_data[0]].field_3328 / 4:
                stor3++
                emit 0x94f030a4: stor3
    else:
        require ext_code.size(stor8)
        call stor8.0x8cd42991 with:
             gas gas_remaining wei
            args sub_42b99cf8[stor3].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'This round not end!'
        require ext_code.size(stor8)
        call stor8.0x995e4339 with:
             gas gas_remaining wei
            args sub_42b99cf8[stor3].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32] < 10
        sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512 + 1].field_3328 = sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512 + 1][ext_call.return_data[32]].field_256
        sub_42b99cf8[stor3].field_512++
        emit 0xf4f629f7: sub_42b99cf8[stor3].field_512, stor3
        if sub_42b99cf8[stor3][4][ext_call.return_data[0]].field_3584 >= 3 * sub_42b99cf8[stor3][4][ext_call.return_data[0]].field_3328 / 4:
            stor3++
            emit 0x94f030a4: stor3
    emit 0xdf8c2624: stor3, sub_73835a61[address(msg.sender)]
}

function sub_7d2d2bf0(?) {
    if bool(uint8(stor0.field_0)) != 1:
        revert with 0, 'Sorry! Not Activated Yet.'
    if not sub_73835a61[address(msg.sender)]:
        stor7++
        sub_73835a61[address(msg.sender)] = stor7
    if bool(sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_520) != 1:
        revert with 0, 'Sorry! You Are Not Participants.'
    if sub_42b99cf8[stor3].field_256 >= sub_42b99cf8[stor3].field_512:
        revert with 0, 'Sorry! In First Round.'
    require ext_code.size(stor8)
    call stor8.0xdfaca421 with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_73835a61[address(msg.sender)]:
        stor7++
        sub_73835a61[address(msg.sender)] = stor7
    if not stor3:
        stor3++
        emit 0x94f030a4: stor3
    else:
        if sub_42b99cf8[stor3].field_8:
            stor3++
            emit 0x94f030a4: stor3
        else:
            require ext_code.size(stor8)
            call stor8.0xdfaca421 with:
                 gas gas_remaining wei
                args block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.0x8cd42991 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if sub_42b99cf8[stor3].field_512 + 1 < ext_call.return_data[0]:
                    stor3++
                    emit 0x94f030a4: stor3
                else:
                    require ext_code.size(stor8)
                    call stor8.0x995e4339 with:
                         gas gas_remaining wei
                        args sub_42b99cf8[stor3].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[0]:
                        require ext_call.return_data[32] < 10
                        if not sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512][ext_call.return_data[32]].field_256:
                            stor3++
                            emit 0x94f030a4: stor3
                        else:
                            require ext_call.return_data[32] < 10
                            if sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512][ext_call.return_data[32]].field_256 == sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512].field_3840:
                                stor3++
                                emit 0x94f030a4: stor3
    if sub_42b99cf8[stor3].field_256 >= ext_call.return_data[0]:
        revert with 0, 'Cannot do this operation.'
    if sub_42b99cf8[stor3].field_512 + 1 != ext_call.return_data[0]:
        if sub_42b99cf8[stor3].field_512 + 1 < ext_call.return_data[0]:
            stor3++
            emit 0x94f030a4: stor3
    else:
        require ext_code.size(stor8)
        call stor8.0x8cd42991 with:
             gas gas_remaining wei
            args sub_42b99cf8[stor3].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'This round not end!'
        require ext_code.size(stor8)
        call stor8.0x995e4339 with:
             gas gas_remaining wei
            args sub_42b99cf8[stor3].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32] < 10
        sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512 + 1].field_3328 = sub_42b99cf8[stor3][4][sub_42b99cf8[stor3].field_512 + 1][ext_call.return_data[32]].field_256
        sub_42b99cf8[stor3].field_512++
        emit 0xf4f629f7: sub_42b99cf8[stor3].field_512, stor3
    if sub_42b99cf8[stor3][4][ext_call.return_data[0]][stor6[address(msg.sender)]].field_2560:
        revert with 0, 'You have chose the number.'
    sub_42b99cf8[stor3][4][ext_call.return_data[0]][stor6[address(msg.sender)]].field_2560 = 1
    sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256 = ext_call.return_data[0]
    require sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][ext_call.return_data[0] - 1].field_3072 < 10
    if sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][ext_call.return_data[0] - 1][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][ext_call.return_data[0] - 1].field_3072].field_0 > 0:
        require arg1 < 10
        sub_42b99cf8[stor3][4][ext_call.return_data[0]][arg1].field_256++
        sub_42b99cf8[stor3][4][ext_call.return_data[0]][stor6[address(msg.sender)]][arg1].field_0++
}

function sub_66f07f8a(?) {
    require sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][5][stor6[address(arg1)]].field_256].field_3072 < 10
    if sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][5][stor6[address(arg1)]].field_256][stor6[address(arg1)]][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][5][stor6[address(arg1)]].field_256].field_3072].field_0 <= 0:
        return stor5[stor6[address(arg1)]].field_0, stor5[stor6[address(arg1)]].field_256, stor5[stor6[address(arg1)]].field_512
    if sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][5][stor6[address(arg1)]].field_512:
        return stor5[stor6[address(arg1)]].field_0, stor5[stor6[address(arg1)]].field_256, stor5[stor6[address(arg1)]].field_512
    if not sub_73835a61[address(arg1)]:
        return stor5[stor6[address(arg1)]].field_0, stor5[stor6[address(arg1)]].field_256, stor5[stor6[address(arg1)]].field_512
    if not stor5[stor6[address(arg1)]].field_0:
        return stor5[stor6[address(arg1)]].field_0, stor5[stor6[address(arg1)]].field_256, stor5[stor6[address(arg1)]].field_512
    require ext_code.size(stor8)
    call stor8.0x8cd42991 with:
         gas gas_remaining wei
        args sub_42b99cf8[stor5[stor6[address(arg1)]].field_0].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        return stor5[stor6[address(arg1)]].field_0, stor5[stor6[address(arg1)]].field_256, stor5[stor6[address(arg1)]].field_512
    if sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][5][stor6[address(arg1)]].field_512:
        return stor5[stor6[address(arg1)]].field_0, stor5[stor6[address(arg1)]].field_256, stor5[stor6[address(arg1)]].field_512
    require sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072 < 10
    if sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256][stor6[address(arg1)]][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072].field_0 > 0:
        if sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256 < sub_42b99cf8[stor6[address(arg1)]].field_512:
            require sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072 < 10
            require sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072].field_256
            return stor5[stor6[address(arg1)]].field_0, 
                   stor5[stor6[address(arg1)]].field_256 + (8 * sub_42b99cf8[stor5[stor6[address(arg1)]].field_0].field_769 / sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072].field_256 * sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256][stor6[address(arg1)]][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072].field_0 / 10),
                   stor5[stor6[address(arg1)]].field_512
    require sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072 < 10
    if sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256][stor6[address(arg1)]][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072].field_0 > 0:
        require sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072 < 10
        require sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072].field_256
        return stor5[stor6[address(arg1)]].field_0, 
               stor5[stor6[address(arg1)]].field_256 + (sub_42b99cf8[stor5[stor6[address(arg1)]].field_0].field_768 / sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072].field_256 * sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256][stor6[address(arg1)]][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072].field_0),
               stor5[stor6[address(arg1)]].field_512
    require sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072 < 10
    if sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256][stor6[address(arg1)]][sub_42b99cf8[stor5[stor6[address(arg1)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256].field_3072].field_0:
        return stor5[stor6[address(arg1)]].field_0, stor5[stor6[address(arg1)]].field_256, stor5[stor6[address(arg1)]].field_512
    if sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256 - sub_42b99cf8[stor6[address(arg1)]].field_256 < 1:
        return stor5[stor6[address(arg1)]].field_0, stor5[stor6[address(arg1)]].field_256, stor5[stor6[address(arg1)]].field_512
    return stor5[stor6[address(arg1)]].field_0, 
           stor5[stor6[address(arg1)]].field_256 + (7^(sub_42b99cf8[stor3][5][stor6[address(arg1)]].field_256 + -sub_42b99cf8[stor6[address(arg1)]].field_256 - 1) * stor10),
           stor5[stor6[address(arg1)]].field_512
}

function withdraw() {
    if bool(uint8(stor0.field_0)) != 1:
        revert with 0, 'Sorry! Not Activated Yet.'
    if not sub_73835a61[address(msg.sender)]:
        stor7++
        sub_73835a61[address(msg.sender)] = stor7
    if not sub_73835a61[address(msg.sender)]:
        require ext_code.size(stor9)
        call stor9.0xa9059cbb with:
             gas gas_remaining wei
            args stor1, 0
    else:
        if not stor5[stor6[address(msg.sender)]].field_0:
            require ext_code.size(stor9)
            call stor9.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, 0
        else:
            require ext_code.size(stor8)
            call stor8.0x8cd42991 with:
                 gas gas_remaining wei
                args sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(stor9)
                call stor9.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, 0
            else:
                if sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][5][stor6[address(msg.sender)]].field_512:
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, 0
                else:
                    require sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072 < 10
                    require sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072 < 10
                    if sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0 <= 0:
                        require sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072 < 10
                        if sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0 > 0:
                            require sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_256
                            stor5[stor6[address(msg.sender)]].field_256 += sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0].field_768 / sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_256 * sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0
                            require ext_code.size(stor9)
                            call stor9.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0].field_768 / sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_256 * sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0 / 4
                        else:
                            if sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0:
                                require ext_code.size(stor9)
                                call stor9.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, 0
                            else:
                                if sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256 - sub_42b99cf8[stor6[address(msg.sender)]].field_256 < 1:
                                    require ext_code.size(stor9)
                                    call stor9.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                else:
                                    stor5[stor6[address(msg.sender)]].field_256 += 7^(sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256 + -sub_42b99cf8[stor6[address(msg.sender)]].field_256 - 1) * stor10
                                    require ext_code.size(stor9)
                                    call stor9.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 7^(sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256 + -sub_42b99cf8[stor6[address(msg.sender)]].field_256 - 1) * stor10 / 4
                    else:
                        if sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256 < sub_42b99cf8[stor6[address(msg.sender)]].field_512:
                            require sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_256
                            stor5[stor6[address(msg.sender)]].field_256 += 8 * sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0].field_769 / sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_256 * sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0 / 10
                            require ext_code.size(stor9)
                            call stor9.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, 2 * sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0].field_769 / sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_256 * sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0 / 10
                        else:
                            require sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072 < 10
                            if sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0 > 0:
                                require sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_256
                                stor5[stor6[address(msg.sender)]].field_256 += sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0].field_768 / sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_256 * sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0
                                require ext_code.size(stor9)
                                call stor9.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1, sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0].field_768 / sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_256 * sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0 / 4
                            else:
                                if sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256][stor6[address(msg.sender)]][sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][4][sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256].field_3072].field_0:
                                    require ext_code.size(stor9)
                                    call stor9.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1, 0
                                else:
                                    if sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256 - sub_42b99cf8[stor6[address(msg.sender)]].field_256 < 1:
                                        require ext_code.size(stor9)
                                        call stor9.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 0
                                    else:
                                        stor5[stor6[address(msg.sender)]].field_256 += 7^(sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256 + -sub_42b99cf8[stor6[address(msg.sender)]].field_256 - 1) * stor10
                                        require ext_code.size(stor9)
                                        call stor9.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor1, 7^(sub_42b99cf8[stor3][5][stor6[address(msg.sender)]].field_256 + -sub_42b99cf8[stor6[address(msg.sender)]].field_256 - 1) * stor10 / 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_42b99cf8[stor5[stor6[address(msg.sender)]].field_0][5][stor6[address(msg.sender)]].field_512 = 1
    emit 0xa157133c: stor5[stor6[address(msg.sender)]].field_256, stor5[stor6[address(msg.sender)]].field_512, sub_73835a61[address(msg.sender)]
    require ext_code.size(stor9)
    call stor9.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor5[stor6[address(msg.sender)]].field_256 - stor5[stor6[address(msg.sender)]].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit onWithdraw((stor5[stor6[address(msg.sender)]].field_256 - stor5[stor6[address(msg.sender)]].field_512), sub_73835a61[address(msg.sender)]);
}



}
