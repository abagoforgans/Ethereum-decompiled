contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
mapping of struct stor2;
mapping of uint256 stor3;

function _fallback() payable {
    if msg.sender != 0:
        stor2[stor0].field_256 = msg.sender or Mask(96, 160, stor2[stor0].field_256)
        stor2[stor0].field_512 = block.timestamp
        stor2[stor0].field_0 = 0
        stor3[address(msg.sender)] = stor0
        stor0++
        stor1++
    return code.data[161 len 6903]
}



// =====================  Runtime code  =====================


#
#  - execute(uint256 arg1)
#
uint256 numMembers;
uint256 sub_777b17c0;
mapping of struct members;
mapping of uint256 sub_6772b2f3;
uint256 sub_fdf893f5;
uint256 balance;
uint256 sub_de42b260;
uint256 sub_da288504;
address parentAddress;
mapping of address children;
uint8 sub_d6f6ecb6; offset 160
uint128 stor10; offset 160
address configAddr;
uint256 numProposals;
uint256 sub_2ed5e072;
mapping of struct proposals;
mapping of struct sub_117fc2ae;

function proposals(uint256 arg1) payable {
    return proposals[arg1].field_0, 
           proposals[arg1].field_256,
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           proposals[arg1].field_1024,
           proposals[arg1].field_1280,
           proposals[arg1].field_1536,
           proposals[arg1].field_1792,
           proposals[arg1].field_2048,
           proposals[arg1].field_2304,
           proposals[arg1].field_2560,
           proposals[arg1].field_2816,
           proposals[arg1].field_3072,
           proposals[arg1].field_3328
}

function getProposalAddress(uint256 arg1) payable {
    return proposals[arg1].field_512
}

function sub_117fc2ae(?) payable {
    return sub_117fc2ae[arg1][arg2].field_0
}

function sub_1bd85e30(?) payable {
    return proposals[arg1].field_2304
}

function sub_2ed5e072(?) payable {
    return sub_2ed5e072
}

function numProposals() payable {
    return numProposals
}

function numMembers() payable {
    return numMembers
}

function configAddr() payable {
    return configAddr
}

function members(uint256 arg1) payable {
    return members[arg1].field_0, members[arg1].field_256, members[arg1].field_512
}

function parent() payable {
    return parentAddress
}

function sub_6772b2f3(?) payable {
    return sub_6772b2f3[arg1]
}

function children(uint256 arg1) payable {
    return children[arg1]
}

function sub_777b17c0(?) payable {
    return sub_777b17c0
}

function sub_9501ed30(?) payable {
    return sub_117fc2ae[arg1][arg2].field_0, sub_117fc2ae[arg1][arg2].field_256, sub_117fc2ae[arg1][arg2].field_512
}

function sub_ac611345(?) payable {
    return sub_117fc2ae[arg1][arg2].field_256
}

function balance() payable {
    return balance
}

function sub_d6f6ecb6(?) payable {
    return sub_d6f6ecb6
}

function sub_da288504(?) payable {
    return sub_da288504
}

function sub_de42b260(?) payable {
    return sub_de42b260
}

function sub_fdf893f5(?) payable {
    return sub_fdf893f5
}

function _fallback() payable {
    if msg.value > 0:
        balance += msg.value
}

function getMemberAddress(uint256 arg1) payable {
    if 0 == members[arg1].field_256:
        return 0
    return members[arg1].field_256
}

function sub_2448ec05(?) payable {
    if members[stor3[address(msg.sender)]].field_256 == msg.sender:
        if sub_6772b2f3[address(msg.sender)] == sub_fdf893f5:
            stor10 = Mask(96, 0, arg1)
}

function sub_1ae99af0(?) payable {
    if 0 == members[arg1].field_256:
        return 0
    if arg2 == 'joined':
        return members[arg1].field_512
    if arg2 != 'permission':
        return 0
    return members[arg1].field_0
}

function sub_0c4f2842(?) payable {
    if arg2 == 'name':
        return proposals[arg1].field_0
    if 'data' == arg2:
        return proposals[arg1].field_256
    if arg2 != 'addr':
        return 0
    return proposals[arg1].field_512
}

function sub_5ca9a4d5(?) payable {
    if arg2 == 'from':
        return proposals[arg1].field_768
    if 'value' == arg2:
        return proposals[arg1].field_1024
    if 'numVoters' == arg2:
        return proposals[arg1].field_1280
    if 'numVotes' == arg2:
        return proposals[arg1].field_1536
    if 'numFor' == arg2:
        return proposals[arg1].field_1792
    if 'numAgainst' == arg2:
        return proposals[arg1].field_2048
    if 'kind' == arg2:
        return proposals[arg1].field_2560
    if 'numMembers' == arg2:
        return proposals[arg1].field_2816
    if 'created' == arg2:
        return proposals[arg1].field_3072
    if arg2 != 'expiry':
        return 0
    return proposals[arg1].field_3328
}

function sub_d9a34952(?) payable {
    if members[stor3[address(msg.sender)]].field_256 == msg.sender:
        if members[arg1].field_256 != 0:
            if 0 == sub_117fc2ae[arg2][stor3[address(msg.sender)]].field_0:
                if proposals[arg2].field_3072 > members[arg1].field_512:
                    if proposals[arg2].field_3072 > members[stor3[address(msg.sender)]].field_512:
                        if arg1 != sub_6772b2f3[address(msg.sender)]:
                            if arg2 >= 0:
                                if arg2 <= numProposals:
                                    sub_117fc2ae[arg2][stor3[address(msg.sender)]].field_0 = 1
                                    sub_117fc2ae[arg2][stor3[address(msg.sender)]].field_512 = arg1
                                    sub_117fc2ae[arg2][arg1].field_256 = sub_117fc2ae[arg2][arg1].field_256 + sub_117fc2ae[arg2][stor3[address(msg.sender)]].field_256 + 1
                                    emit 0x2dfceefb: sub_6772b2f3[address(msg.sender)], arg1, arg2
}

function sub_e19077fb(?) payable {
    if members[stor3[address(msg.sender)]].field_256 == msg.sender:
        if 0 == arg6:
            proposals[stor11].field_0 = arg1
            proposals[stor11].field_256 = arg2
            proposals[stor11].field_2560 = arg3
            proposals[stor11].field_512 = arg4 or Mask(96, 160, proposals[stor11].field_512)
            proposals[stor11].field_768 = sub_6772b2f3[address(msg.sender)]
            proposals[stor11].field_1024 = arg5
            proposals[stor11].field_3072 = block.timestamp
            proposals[stor11].field_2816 = sub_777b17c0
            proposals[stor11].field_3328 = arg6
            emit 0x229d2233: arg3, sub_6772b2f3[address(msg.sender)]
            if configAddr != 0:
                if not sub_d6f6ecb6:
                    call configAddr.0xf1d5da6c with:
                         gas gas_remaining - 25050 wei
                        args numProposals
                    require ext_call.success
            numProposals++
        else:
            if arg6 >= block.timestamp:
                proposals[stor11].field_0 = arg1
                proposals[stor11].field_256 = arg2
                proposals[stor11].field_2560 = arg3
                proposals[stor11].field_512 = arg4 or Mask(96, 160, proposals[stor11].field_512)
                proposals[stor11].field_768 = sub_6772b2f3[address(msg.sender)]
                proposals[stor11].field_1024 = arg5
                proposals[stor11].field_3072 = block.timestamp
                proposals[stor11].field_2816 = sub_777b17c0
                proposals[stor11].field_3328 = arg6
                emit 0x229d2233: arg3, sub_6772b2f3[address(msg.sender)]
                if configAddr != 0:
                    if not sub_d6f6ecb6:
                        call configAddr.0xf1d5da6c with:
                             gas gas_remaining - 25050 wei
                            args numProposals
                        require ext_call.success
                numProposals++
}

function vote(uint256 arg1, bool arg2) payable {
    if members[stor3[address(msg.sender)]].field_256 == msg.sender:
        if arg1 >= 0:
            if arg1 <= numProposals:
                if 0 == proposals[arg1].field_2304:
                    if 0 == sub_117fc2ae[arg1][stor3[address(msg.sender)]].field_0:
                        if proposals[arg1].field_3072 > members[stor3[address(msg.sender)]].field_512:
                            if arg1 >= 0:
                                if arg1 <= numProposals:
                                    if 0 == proposals[arg1].field_2304:
                                        if 0 == proposals[arg1][14][stor3[address(msg.sender)]][1].field_0:
                                            if 0 == proposals[arg1][14][stor3[address(msg.sender)]][0].field_0:
                                                if not proposals[arg1].field_2304:
                                                    proposals[arg1].field_1280++
                                                    proposals[arg1].field_1536 = sub_117fc2ae[arg1][stor3[address(msg.sender)]].field_256 + proposals[arg1].field_1536 + 1
                                                    proposals[arg1][14][stor3[address(msg.sender)]][arg2].field_0 = sub_117fc2ae[arg1][stor3[address(msg.sender)]].field_256 + 1
                                                    emit 0x70df472d: sub_6772b2f3[address(msg.sender)], arg1
                                                    if not arg2:
                                                        proposals[arg1].field_2048 = sub_117fc2ae[arg1][stor3[address(msg.sender)]].field_256 + proposals[arg1].field_2048 + 1
                                                    else:
                                                        proposals[arg1].field_1792 = sub_117fc2ae[arg1][stor3[address(msg.sender)]].field_256 + proposals[arg1].field_1792 + 1
                                                    if configAddr != 0:
                                                        if not sub_d6f6ecb6:
                                                            call configAddr.0x441a8b9d with:
                                                                 gas gas_remaining - 25050 wei
                                                                args arg1
                                                            require ext_call.success
}

function hasWon(uint256 arg1) payable {
    if members[stor3[address(msg.sender)]].field_256 != msg.sender:
        return 0
    if arg1 < 0:
        return 0
    if arg1 > numProposals:
        return 0
    if proposals[arg1][14][stor3[stor8]][0].field_0 != 0:
        return 0
    if proposals[arg1].field_2816 != 1:
        if proposals[arg1][14][stor3[stor8]][1].field_0 < 1:
            if members[stor13[arg1].field_768].field_0 != proposals[arg1].field_2560:
                if parentAddress != members[stor13[arg1].field_768].field_256:
                    if proposals[arg1].field_2560 != 3:
                        if proposals[arg1].field_2560 != 12:
                            if proposals[arg1].field_2816 != 0:
                                return 0
                            if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                    return 0
                                if proposals[arg1][14][stor4][1].field_0 < 1:
                                    return 0
                        else:
                            if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                if proposals[arg1].field_2816 != 0:
                                    return 0
                                if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                    if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                        return 0
                                    if proposals[arg1][14][stor4][1].field_0 < 1:
                                        return 0
                    else:
                        if proposals[arg1].field_768 != proposals[arg1].field_1024:
                            if proposals[arg1].field_2560 != 12:
                                if proposals[arg1].field_2816 != 0:
                                    return 0
                                if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                    if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                        return 0
                                    if proposals[arg1][14][stor4][1].field_0 < 1:
                                        return 0
                            else:
                                if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                    if proposals[arg1].field_2816 != 0:
                                        return 0
                                    if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                        if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                            return 0
                                        if proposals[arg1][14][stor4][1].field_0 < 1:
                                            return 0
            else:
                if 0 == proposals[arg1].field_2560:
                    if parentAddress != members[stor13[arg1].field_768].field_256:
                        if proposals[arg1].field_2560 != 3:
                            if proposals[arg1].field_2560 != 12:
                                if proposals[arg1].field_2816 != 0:
                                    return 0
                                if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                    if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                        return 0
                                    if proposals[arg1][14][stor4][1].field_0 < 1:
                                        return 0
                            else:
                                if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                    if proposals[arg1].field_2816 != 0:
                                        return 0
                                    if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                        if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                            return 0
                                        if proposals[arg1][14][stor4][1].field_0 < 1:
                                            return 0
                        else:
                            if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                if proposals[arg1].field_2560 != 12:
                                    if proposals[arg1].field_2816 != 0:
                                        return 0
                                    if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                        if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                            return 0
                                        if proposals[arg1][14][stor4][1].field_0 < 1:
                                            return 0
                                else:
                                    if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                        if proposals[arg1].field_2816 != 0:
                                            return 0
                                        if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                            if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                                return 0
                                            if proposals[arg1][14][stor4][1].field_0 < 1:
                                                return 0
    else:
        if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
            if proposals[arg1][14][stor3[stor8]][1].field_0 < 1:
                if members[stor13[arg1].field_768].field_0 != proposals[arg1].field_2560:
                    if parentAddress != members[stor13[arg1].field_768].field_256:
                        if proposals[arg1].field_2560 != 3:
                            if proposals[arg1].field_2560 != 12:
                                if proposals[arg1].field_2816 != 0:
                                    return 0
                                if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                    if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                        return 0
                                    if proposals[arg1][14][stor4][1].field_0 < 1:
                                        return 0
                            else:
                                if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                    if proposals[arg1].field_2816 != 0:
                                        return 0
                                    if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                        if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                            return 0
                                        if proposals[arg1][14][stor4][1].field_0 < 1:
                                            return 0
                        else:
                            if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                if proposals[arg1].field_2560 != 12:
                                    if proposals[arg1].field_2816 != 0:
                                        return 0
                                    if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                        if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                            return 0
                                        if proposals[arg1][14][stor4][1].field_0 < 1:
                                            return 0
                                else:
                                    if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                        if proposals[arg1].field_2816 != 0:
                                            return 0
                                        if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                            if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                                return 0
                                            if proposals[arg1][14][stor4][1].field_0 < 1:
                                                return 0
                else:
                    if 0 == proposals[arg1].field_2560:
                        if parentAddress != members[stor13[arg1].field_768].field_256:
                            if proposals[arg1].field_2560 != 3:
                                if proposals[arg1].field_2560 != 12:
                                    if proposals[arg1].field_2816 != 0:
                                        return 0
                                    if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                        if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                            return 0
                                        if proposals[arg1][14][stor4][1].field_0 < 1:
                                            return 0
                                else:
                                    if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                        if proposals[arg1].field_2816 != 0:
                                            return 0
                                        if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                            if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                                return 0
                                            if proposals[arg1][14][stor4][1].field_0 < 1:
                                                return 0
                            else:
                                if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                    if proposals[arg1].field_2560 != 12:
                                        if proposals[arg1].field_2816 != 0:
                                            return 0
                                        if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                            if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                                return 0
                                            if proposals[arg1][14][stor4][1].field_0 < 1:
                                                return 0
                                    else:
                                        if proposals[arg1].field_768 != proposals[arg1].field_1024:
                                            if proposals[arg1].field_2816 != 0:
                                                return 0
                                            if proposals[arg1].field_1792 <= proposals[arg1].field_2817:
                                                if proposals[arg1].field_2817 != proposals[arg1].field_1792:
                                                    return 0
                                                if proposals[arg1][14][stor4][1].field_0 < 1:
                                                    return 0
    return 1
}



}
