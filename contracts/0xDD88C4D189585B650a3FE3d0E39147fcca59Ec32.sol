contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor15;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 10^17
    stor3 = 10^15
    stor2 = 24 * 3600
    stor15['rock']['rock'] = 0
    stor15['rock']['paper'] = 2
    stor15['rock']['scissors'] = 1
    stor15['paper']['rock'] = 1
    stor15['paper']['paper'] = 0
    stor15['paper']['scissors'] = 2
    stor15['scissors']['rock'] = 2
    stor15['scissors']['paper'] = 1
    stor15['scissors']['scissors'] = 0
    return code.data[369 len 10936]
}



// =====================  Runtime code  =====================


#
#  - sendCryptedHand(bytes32 arg1)
#  - revealRock(string arg1)
#  - revealScissors(string arg1)
#  - revealPaper(string arg1)
#
address stor0;
array of uint256 stor1;
array of address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
address stor5;
address stor5; offset 8
array of struct stor7;
uint256 firstActiveDuel2;
array of struct stor9;
uint256 firstActiveDuel1;
array of struct stor11;
mapping of uint256 stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884731;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884733;
array of address stor39192952402756187425302384862487251540968225014669488259582314013099748177606;
array of address stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278004;
array of uint8 stor61709047248993183886958551141100172323254019655380675260786456199632943805895;
array of uint8 stor61709047248993183886958551141100172323254019655380675260786456199632943805901;
array of address stor62713220529086039620715241192376982823663690649877727830097135764707102635718;
array of uint256 stor62713220529086039620715241192376982823663690649877727830097135764707102635723;
array of uint8 stor62713220529086039620715241192376982823663690649877727830097135764707102635728;
array of uint8 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;

function getLastDuel2() payable {
    return stor7.length
}

function getFirstActiveDuel1() payable {
    return firstActiveDuel1
}

function getLastResult() payable {
    return stor11.length
}

function getFirstActiveDuel2() payable {
    return firstActiveDuel2
}

function getLastDuel1() payable {
    return stor9.length
}

function _fallback() payable {
    revert 
}

function getPlayerWaiting() payable {
    return address(stor5.field_0), uint8(stor5.field_0)
}

function getDuel2(uint256 arg1) payable {
    require arg1 < stor7.length
    return stor8AA6[arg1], address(stor7[arg1].field_512), uint8(stor7[arg1].field_1024), storA66C[arg1]
}

function getPlayerStatus(address arg1, uint256 arg2) payable {
    if 0 == arg2:
        return stor12[address(arg1)]
    if 1 == arg2:
        return stor13[address(arg1)]
    if arg2 != 2:
        return 0
    return stor14[address(arg1)]
}

function payHouse() payable {
    require msg.sender == stor0
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    call stor0 with:
       value stor4.length wei
         gas 0 wei
    stor4.length = 0
}

function cancelWaitingForOpponent() payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    require msg.sender == address(stor5.field_8)
    require uint8(stor5.field_0)
    call msg.sender with:
       value stor1.length wei
         gas 0 wei
    uint8(stor5.field_0) = 0
    stor12[address(msg.sender)] = 0
}

function getDuel1(uint256 arg1) payable {
    require arg1 < stor9.length
    mem[160] = uint256(stor[sha3((6 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0)])
    idx = 160
    s = 0
    while stor[(6 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < stor9.length
    return address(stor[code.data[10904 len 32] + (6 * arg1)]), 
           Array(len=stor[(6 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length, data=mem[160 len stor[(6 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length]),
           stor6E15[arg1],
           stor9[arg1],
           stor6E15[arg1]
}

function getResults(uint256 arg1) payable {
    mem[96] = 0
    mem[128] = 0
    require arg1 < stor11.length
    mem[160] = stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length
    mem[192] = uint256(stor[sha3((5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba)])
    idx = 192
    s = 0
    while stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < stor11.length
    mem[64] = ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 224
    mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + 192] = stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length
    mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + 224] = uint256(stor[sha3((5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc)])
    idx = ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + 224
    s = 0
    while ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < stor11.length
    mem[0] = 11
    mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 224] = stor175B[arg1]
    mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 288] = stor175B[arg1]
    mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 352] = stor175B[arg1]
    mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 256] = 160
    mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 384] = stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length
    mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 416 len stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length] = mem[192 len stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length]
    mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 320] = stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + 192
    mem[stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 416] = stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length
    mem[stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 448 len stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length] = mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + 224 len stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length]
    if not stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length % 32:
        return stor175B[arg1], 
               Array(len=stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length, data=mem[192 len stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length], stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length, mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + 224 len stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length]),
               stor175B[arg1],
               stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + 192,
               stor175B[arg1]
    mem[floor32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 448] = mem[floor32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + -stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length % 32 + 480 len stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length % 32]
    return stor175B[arg1], 
           Array(len=stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length, data=mem[192 len stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length], stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length, mem[ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length) + ceil32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + 448 len floor32(stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc].length) + 32]),
           stor175B[arg1],
           stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + 192,
           stor175B[arg1]
}

function manualPayExpiredDuel() payable {
    mem[64] = 96
    require msg.sender == stor0
    if stor7.length <= firstActiveDuel2:
        if stor9.length > firstActiveDuel1:
            require firstActiveDuel1 < stor9.length
            if stor6E15[stor10] + stor2.length < block.timestamp:
                require firstActiveDuel1 < stor9.length
                call address(stor[code.data[10904 len 32] + (6 * stor10)]) with:
                   value 2 * stor1.length - stor3.length wei
                     gas 0 wei
                stor4.length += 2 * stor3.length
                stor886E[stor10] = 1
                stor12[address(stor[code.data[10904 len 32] + (6 * stor10)])] = 0
                stor12[stor6E15[stor10]] = 0
                stor11.length++
                if not stor11.length > stor11.length + 1:
                    require firstActiveDuel1 < stor9.length
                    mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                    idx = 288
                    s = 0
                    while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require firstActiveDuel1 < stor9.length
                    uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                    uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                    address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                    bool(stor11[stor11.length].field_768) = 0
                    uint255(stor11[stor11.length].field_769) = 7
                    Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                    idx = 0
                    while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor11[stor11.length].field_1024) = 1
                    if firstActiveDuel1 == firstActiveDuel1:
                        if 0 >= stor9.length:
                            firstActiveDuel1 = 0
                        else:
                            require var46002 < stor9.length
                            if not var50001:
                                firstActiveDuel1 = var50002
                            else:
                                idx = var50002
                                while idx + 1 < stor9.length:
                                    mem[0] = 9
                                    if stor886E[idx]:
                                        idx = idx + 1
                                        continue 
                                    firstActiveDuel1 = idx + 1
                                    if msg.value > 0:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 0 wei
                                firstActiveDuel1 = stor9.length
                else:
                    mem[0] = 11
                    idx = (5 * stor11.length) + 5
                    while sha3(11) + (5 * stor11.length) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                            address(stor[idx + sha3(mem[0]) + 2]) = 0
                            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                                mem[0] = idx + sha3(mem[0]) + 3
                                s = sha3(idx + sha3(mem[0]) + 3)
                                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                            idx = idx + 1
                            continue 
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(s + sha3(mem[0]) + 1)
                        while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                            uint256(stor[s + sha3(mem[0])]) = 0
                            s = s + 1
                            continue 
                        address(stor[s + sha3(mem[0]) + 2]) = 0
                        uint256(stor[s + sha3(mem[0]) + 3]) = 0
                        if 31 < stor[s + sha3(mem[0]) + 3].length:
                            mem[0] = s + sha3(mem[0]) + 3
                            t = sha3(s + sha3(mem[0]) + 3)
                            while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        uint256(stor[s + sha3(mem[0]) + 4]) = 0
                        s = s + 1
                        continue 
                    require firstActiveDuel1 < stor9.length
                    mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                    idx = 288
                    s = 0
                    while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require firstActiveDuel1 < stor9.length
                    uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                    uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                    address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                    bool(stor11[stor11.length].field_768) = 0
                    uint255(stor11[stor11.length].field_769) = 7
                    Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                    idx = 0
                    while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor11[stor11.length].field_1024) = 1
                    if firstActiveDuel1 == firstActiveDuel1:
                        if 0 >= stor9.length:
                            firstActiveDuel1 = 0
                        else:
                            require var50002 < stor9.length
                            if not var54001:
                                firstActiveDuel1 = var54002
                            else:
                                idx = var54002
                                while idx + 1 < stor9.length:
                                    mem[0] = 9
                                    if stor886E[idx]:
                                        idx = idx + 1
                                        continue 
                                    firstActiveDuel1 = idx + 1
                                    if msg.value > 0:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 0 wei
                                firstActiveDuel1 = stor9.length
    else:
        require firstActiveDuel2 < stor7.length
        if stor8AA6[stor8] + stor2.length > block.timestamp:
            if stor9.length > firstActiveDuel1:
                require firstActiveDuel1 < stor9.length
                if stor6E15[stor10] + stor2.length < block.timestamp:
                    require firstActiveDuel1 < stor9.length
                    call address(stor[code.data[10904 len 32] + (6 * stor10)]) with:
                       value 2 * stor1.length - stor3.length wei
                         gas 0 wei
                    stor4.length += 2 * stor3.length
                    stor886E[stor10] = 1
                    stor12[address(stor[code.data[10904 len 32] + (6 * stor10)])] = 0
                    stor12[stor6E15[stor10]] = 0
                    stor11.length++
                    if not stor11.length > stor11.length + 1:
                        require firstActiveDuel1 < stor9.length
                        mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                        idx = 288
                        s = 0
                        while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require firstActiveDuel1 < stor9.length
                        uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                        uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                        address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                        bool(stor11[stor11.length].field_768) = 0
                        uint255(stor11[stor11.length].field_769) = 7
                        Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                        idx = 0
                        while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(stor11[stor11.length].field_1024) = 1
                        if firstActiveDuel1 == firstActiveDuel1:
                            if 0 >= stor9.length:
                                firstActiveDuel1 = 0
                            else:
                                require var48002 < stor9.length
                                if not var52001:
                                    firstActiveDuel1 = var52002
                                else:
                                    idx = var52002
                                    while idx + 1 < stor9.length:
                                        mem[0] = 9
                                        if stor886E[idx]:
                                            idx = idx + 1
                                            continue 
                                        firstActiveDuel1 = idx + 1
                                        if msg.value > 0:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas 0 wei
                                    firstActiveDuel1 = stor9.length
                    else:
                        mem[0] = 11
                        idx = (5 * stor11.length) + 5
                        while sha3(11) + (5 * stor11.length) > idx + sha3(mem[0]):
                            address(stor[idx + sha3(mem[0])]) = 0
                            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                                address(stor[idx + sha3(mem[0]) + 2]) = 0
                                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                                if 31 < stor[idx + sha3(mem[0]) + 3].length:
                                    mem[0] = idx + sha3(mem[0]) + 3
                                    s = sha3(idx + sha3(mem[0]) + 3)
                                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                                idx = idx + 1
                                continue 
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(s + sha3(mem[0]) + 1)
                            while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                                uint256(stor[s + sha3(mem[0])]) = 0
                                s = s + 1
                                continue 
                            address(stor[s + sha3(mem[0]) + 2]) = 0
                            uint256(stor[s + sha3(mem[0]) + 3]) = 0
                            if 31 < stor[s + sha3(mem[0]) + 3].length:
                                mem[0] = s + sha3(mem[0]) + 3
                                t = sha3(s + sha3(mem[0]) + 3)
                                while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                            uint256(stor[s + sha3(mem[0]) + 4]) = 0
                            s = s + 1
                            continue 
                        require firstActiveDuel1 < stor9.length
                        mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                        idx = 288
                        s = 0
                        while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require firstActiveDuel1 < stor9.length
                        uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                        uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                        address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                        bool(stor11[stor11.length].field_768) = 0
                        uint255(stor11[stor11.length].field_769) = 7
                        Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                        idx = 0
                        while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(stor11[stor11.length].field_1024) = 1
                        if firstActiveDuel1 == firstActiveDuel1:
                            if 0 >= stor9.length:
                                firstActiveDuel1 = 0
                            else:
                                require var52002 < stor9.length
                                if not var56001:
                                    firstActiveDuel1 = var56002
                                else:
                                    idx = var56002
                                    while idx + 1 < stor9.length:
                                        mem[0] = 9
                                        if stor886E[idx]:
                                            idx = idx + 1
                                            continue 
                                        firstActiveDuel1 = idx + 1
                                        if msg.value > 0:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas 0 wei
                                    firstActiveDuel1 = stor9.length
        else:
            require firstActiveDuel2 < stor7.length
            call stor8AA6[stor8] with:
               value stor1.length - stor3.length wei
                 gas 0 wei
            call stor56A6[stor8] with:
               value stor1.length - stor3.length wei
                 gas 0 wei
            stor4.length += 2 * stor3.length
            mem[32] = 12
            stor12[stor8AA6[stor8]] = 0
            stor12[stor56A6[stor8]] = 0
            storA66C[stor8] = 1
            if firstActiveDuel2 != firstActiveDuel2:
                if stor9.length > firstActiveDuel1:
                    require firstActiveDuel1 < stor9.length
                    if stor6E15[stor10] + stor2.length < block.timestamp:
                        require firstActiveDuel1 < stor9.length
                        call address(stor[code.data[10904 len 32] + (6 * stor10)]) with:
                           value 2 * stor1.length - stor3.length wei
                             gas 0 wei
                        stor4.length += 2 * stor3.length
                        stor886E[stor10] = 1
                        stor12[address(stor[code.data[10904 len 32] + (6 * stor10)])] = 0
                        stor12[stor6E15[stor10]] = 0
                        stor11.length++
                        if not stor11.length > stor11.length + 1:
                            require firstActiveDuel1 < stor9.length
                            mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                            idx = 288
                            s = 0
                            while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require firstActiveDuel1 < stor9.length
                            uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                            uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                            address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                            bool(stor11[stor11.length].field_768) = 0
                            uint255(stor11[stor11.length].field_769) = 7
                            Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                            idx = 0
                            while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                                uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor11[stor11.length].field_1024) = 1
                            if firstActiveDuel1 == firstActiveDuel1:
                                if 0 >= stor9.length:
                                    firstActiveDuel1 = 0
                                else:
                                    require var56002 < stor9.length
                                    if not var60001:
                                        firstActiveDuel1 = var60002
                                    else:
                                        idx = var60002
                                        while idx + 1 < stor9.length:
                                            mem[0] = 9
                                            if stor886E[idx]:
                                                idx = idx + 1
                                                continue 
                                            firstActiveDuel1 = idx + 1
                                            if msg.value > 0:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas 0 wei
                                        firstActiveDuel1 = stor9.length
                        else:
                            mem[0] = 11
                            idx = (5 * stor11.length) + 5
                            while sha3(11) + (5 * stor11.length) > idx + sha3(mem[0]):
                                address(stor[idx + sha3(mem[0])]) = 0
                                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                                if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                                    if 31 < stor[idx + sha3(mem[0]) + 3].length:
                                        mem[0] = idx + sha3(mem[0]) + 3
                                        s = sha3(idx + sha3(mem[0]) + 3)
                                        while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                                            uint256(stor[s]) = 0
                                            s = s + 1
                                            continue 
                                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                                    idx = idx + 1
                                    continue 
                                mem[0] = idx + sha3(mem[0]) + 1
                                s = sha3(s + sha3(mem[0]) + 1)
                                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                                    uint256(stor[s + sha3(mem[0])]) = 0
                                    s = s + 1
                                    continue 
                                address(stor[s + sha3(mem[0]) + 2]) = 0
                                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                                if 31 < stor[s + sha3(mem[0]) + 3].length:
                                    mem[0] = s + sha3(mem[0]) + 3
                                    t = sha3(s + sha3(mem[0]) + 3)
                                    while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                                        uint256(stor[t]) = 0
                                        t = t + 1
                                        continue 
                                uint256(stor[s + sha3(mem[0]) + 4]) = 0
                                s = s + 1
                                continue 
                            require firstActiveDuel1 < stor9.length
                            mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                            idx = 288
                            s = 0
                            while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require firstActiveDuel1 < stor9.length
                            uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                            uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                            address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                            bool(stor11[stor11.length].field_768) = 0
                            uint255(stor11[stor11.length].field_769) = 7
                            Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                            idx = 0
                            while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                                uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor11[stor11.length].field_1024) = 1
                            if firstActiveDuel1 == firstActiveDuel1:
                                if 0 >= stor9.length:
                                    firstActiveDuel1 = 0
                                else:
                                    require var60002 < stor9.length
                                    if not var64001:
                                        firstActiveDuel1 = var64002
                                    else:
                                        idx = var64002
                                        while idx + 1 < stor9.length:
                                            mem[0] = 9
                                            if stor886E[idx]:
                                                idx = idx + 1
                                                continue 
                                            firstActiveDuel1 = idx + 1
                                            if msg.value > 0:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas 0 wei
                                        firstActiveDuel1 = stor9.length
            else:
                if 0 >= stor7.length:
                    firstActiveDuel2 = 0
                    if stor9.length > firstActiveDuel1:
                        require firstActiveDuel1 < stor9.length
                        if stor6E15[stor10] + stor2.length < block.timestamp:
                            require firstActiveDuel1 < stor9.length
                            call address(stor[code.data[10904 len 32] + (6 * stor10)]) with:
                               value 2 * stor1.length - stor3.length wei
                                 gas 0 wei
                            stor4.length += 2 * stor3.length
                            stor886E[stor10] = 1
                            stor12[address(stor[code.data[10904 len 32] + (6 * stor10)])] = 0
                            stor12[stor6E15[stor10]] = 0
                            stor11.length++
                            if not stor11.length > stor11.length + 1:
                                require firstActiveDuel1 < stor9.length
                                mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                                idx = 288
                                s = 0
                                while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                    mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require firstActiveDuel1 < stor9.length
                                uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                                uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                                address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                                bool(stor11[stor11.length].field_768) = 0
                                uint255(stor11[stor11.length].field_769) = 7
                                Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                idx = 0
                                while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(stor11[stor11.length].field_1024) = 1
                                if firstActiveDuel1 == firstActiveDuel1:
                                    if 0 >= stor9.length:
                                        firstActiveDuel1 = 0
                                    else:
                                        require var60002 < stor9.length
                                        if not var64001:
                                            firstActiveDuel1 = var64002
                                        else:
                                            idx = var64002
                                            while idx + 1 < stor9.length:
                                                mem[0] = 9
                                                if stor886E[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                firstActiveDuel1 = idx + 1
                                                if msg.value > 0:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas 0 wei
                                            firstActiveDuel1 = stor9.length
                            else:
                                mem[0] = 11
                                idx = (5 * stor11.length) + 5
                                while sha3(11) + (5 * stor11.length) > idx + sha3(mem[0]):
                                    address(stor[idx + sha3(mem[0])]) = 0
                                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                                    if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                                        if 31 < stor[idx + sha3(mem[0]) + 3].length:
                                            mem[0] = idx + sha3(mem[0]) + 3
                                            s = sha3(idx + sha3(mem[0]) + 3)
                                            while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                                                uint256(stor[s]) = 0
                                                s = s + 1
                                                continue 
                                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                                        idx = idx + 1
                                        continue 
                                    mem[0] = idx + sha3(mem[0]) + 1
                                    s = sha3(s + sha3(mem[0]) + 1)
                                    while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                                        uint256(stor[s + sha3(mem[0])]) = 0
                                        s = s + 1
                                        continue 
                                    address(stor[s + sha3(mem[0]) + 2]) = 0
                                    uint256(stor[s + sha3(mem[0]) + 3]) = 0
                                    if 31 < stor[s + sha3(mem[0]) + 3].length:
                                        mem[0] = s + sha3(mem[0]) + 3
                                        t = sha3(s + sha3(mem[0]) + 3)
                                        while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                    uint256(stor[s + sha3(mem[0]) + 4]) = 0
                                    s = s + 1
                                    continue 
                                require firstActiveDuel1 < stor9.length
                                mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                                idx = 288
                                s = 0
                                while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                    mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require firstActiveDuel1 < stor9.length
                                uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                                uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                                address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                                bool(stor11[stor11.length].field_768) = 0
                                uint255(stor11[stor11.length].field_769) = 7
                                Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                idx = 0
                                while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(stor11[stor11.length].field_1024) = 1
                                if firstActiveDuel1 == firstActiveDuel1:
                                    if 0 >= stor9.length:
                                        firstActiveDuel1 = 0
                                    else:
                                        require var64002 < stor9.length
                                        if not var68001:
                                            firstActiveDuel1 = var68002
                                        else:
                                            idx = var68002
                                            while idx + 1 < stor9.length:
                                                mem[0] = 9
                                                if stor886E[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                firstActiveDuel1 = idx + 1
                                                if msg.value > 0:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas 0 wei
                                            firstActiveDuel1 = stor9.length
                else:
                    require var20002 < stor7.length
                    mem[0] = 7
                    if not var24001:
                        firstActiveDuel2 = var24002
                        if stor9.length > firstActiveDuel1:
                            require firstActiveDuel1 < stor9.length
                            if stor6E15[stor10] + stor2.length < block.timestamp:
                                require firstActiveDuel1 < stor9.length
                                call address(stor[code.data[10904 len 32] + (6 * stor10)]) with:
                                   value 2 * stor1.length - stor3.length wei
                                     gas 0 wei
                                stor4.length += 2 * stor3.length
                                stor886E[stor10] = 1
                                stor12[address(stor[code.data[10904 len 32] + (6 * stor10)])] = 0
                                stor12[stor6E15[stor10]] = 0
                                stor11.length++
                                if not stor11.length > stor11.length + 1:
                                    require firstActiveDuel1 < stor9.length
                                    mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                                    idx = 288
                                    s = 0
                                    while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                        mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor9.length
                                    uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                                    uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                                    address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                                    bool(stor11[stor11.length].field_768) = 0
                                    uint255(stor11[stor11.length].field_769) = 7
                                    Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                    idx = 0
                                    while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor11[stor11.length].field_1024) = 1
                                    if firstActiveDuel1 == firstActiveDuel1:
                                        if 0 >= stor9.length:
                                            firstActiveDuel1 = 0
                                        else:
                                            require var65002 < stor9.length
                                            if not var69001:
                                                firstActiveDuel1 = var69002
                                            else:
                                                idx = var69002
                                                while idx + 1 < stor9.length:
                                                    mem[0] = 9
                                                    if stor886E[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    firstActiveDuel1 = idx + 1
                                                    if msg.value > 0:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas 0 wei
                                                firstActiveDuel1 = stor9.length
                                else:
                                    mem[0] = 11
                                    idx = (5 * stor11.length) + 5
                                    while sha3(11) + (5 * stor11.length) > idx + sha3(mem[0]):
                                        address(stor[idx + sha3(mem[0])]) = 0
                                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                                        if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                                            address(stor[idx + sha3(mem[0]) + 2]) = 0
                                            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                                            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                                                mem[0] = idx + sha3(mem[0]) + 3
                                                s = sha3(idx + sha3(mem[0]) + 3)
                                                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                                                    uint256(stor[s]) = 0
                                                    s = s + 1
                                                    continue 
                                            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                                            idx = idx + 1
                                            continue 
                                        mem[0] = idx + sha3(mem[0]) + 1
                                        s = sha3(s + sha3(mem[0]) + 1)
                                        while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                                            uint256(stor[s + sha3(mem[0])]) = 0
                                            s = s + 1
                                            continue 
                                        address(stor[s + sha3(mem[0]) + 2]) = 0
                                        uint256(stor[s + sha3(mem[0]) + 3]) = 0
                                        if 31 < stor[s + sha3(mem[0]) + 3].length:
                                            mem[0] = s + sha3(mem[0]) + 3
                                            t = sha3(s + sha3(mem[0]) + 3)
                                            while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                        uint256(stor[s + sha3(mem[0]) + 4]) = 0
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor9.length
                                    mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                                    idx = 288
                                    s = 0
                                    while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                        mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor9.length
                                    uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                                    uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                                    address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                                    bool(stor11[stor11.length].field_768) = 0
                                    uint255(stor11[stor11.length].field_769) = 7
                                    Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                    idx = 0
                                    while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor11[stor11.length].field_1024) = 1
                                    if firstActiveDuel1 == firstActiveDuel1:
                                        if 0 >= stor9.length:
                                            firstActiveDuel1 = 0
                                        else:
                                            require var69002 < stor9.length
                                            if not var73001:
                                                firstActiveDuel1 = var73002
                                            else:
                                                idx = var73002
                                                while idx + 1 < stor9.length:
                                                    mem[0] = 9
                                                    if stor886E[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    firstActiveDuel1 = idx + 1
                                                    if msg.value > 0:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas 0 wei
                                                firstActiveDuel1 = stor9.length
                    else:
                        idx = var24002
                        while idx + 1 < stor7.length:
                            mem[0] = 7
                            if stor8AA6[idx]:
                                idx = idx + 1
                                continue 
                            firstActiveDuel2 = idx + 1
                            if stor9.length > firstActiveDuel1:
                                require firstActiveDuel1 < stor9.length
                                if stor6E15[stor10] + stor2.length < block.timestamp:
                                    require firstActiveDuel1 < stor9.length
                                    call address(stor[code.data[10904 len 32] + (6 * stor10)]) with:
                                       value 2 * stor1.length - stor3.length wei
                                         gas 0 wei
                                    stor4.length += 2 * stor3.length
                                    stor886E[stor10] = 1
                                    stor12[address(stor[code.data[10904 len 32] + (6 * stor10)])] = 0
                                    stor12[stor6E15[stor10]] = 0
                                    stor11.length++
                                    if not stor11.length > stor11.length + 1:
                                        require firstActiveDuel1 < stor9.length
                                        mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                                        idx = 288
                                        s = sha3(code.data[10904 len 32] + (6 * firstActiveDuel1) + 1)
                                        while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                            mem[idx + 32] = stor1[s]
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require firstActiveDuel1 < stor9.length
                                        mem[ceil32(stor[code.data[10904 len 32] + (6 * stor10) + 1].length) + 288] = 7
                                        uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                                        uint256(stor11[stor11.length].field_256) = (2 * stor[code.data[10904 len 32] + (6 * stor10) + 1].length) + 1
                                        s = sha3((5 * stor11.length) + sha3(11) + 1)
                                        idx = 288
                                        while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 288 > idx:
                                            uint256(stor[s]) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((5 * stor11.length) + sha3(11) + 1) + (Mask(251, 0, stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 31) >> 5)
                                        while sha3((5 * stor11.length) + sha3(11) + 1) + (stor[(5 * stor11.length) + ('name', 'stor11', 11) + 1].length + 31 / 32) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                        address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                                        bool(stor11[stor11.length].field_768) = 0
                                        uint255(stor11[stor11.length].field_769) = 7
                                        Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                        idx = sha3((5 * stor11.length) + sha3(11) + 3)
                                        while sha3((5 * stor11.length) + sha3(11) + 3) + (stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(stor11[stor11.length].field_1024) = 1
                                        if firstActiveDuel1 == firstActiveDuel1:
                                            if 0 >= stor9.length:
                                                firstActiveDuel1 = 0
                                            else:
                                                require var71002 < stor9.length
                                                if not var75001:
                                                    firstActiveDuel1 = var75002
                                                else:
                                                    idx = var75002
                                                    while idx + 1 < stor9.length:
                                                        mem[0] = 9
                                                        if stor886E[idx]:
                                                            idx = idx + 1
                                                            continue 
                                                        firstActiveDuel1 = idx + 1
                                                        if msg.value > 0:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas 0 wei
                                                    firstActiveDuel1 = stor9.length
                                    else:
                                        mem[0] = 11
                                        idx = sha3(mem[0]) + (5 * stor11.length) + 5
                                        while sha3(11) + (5 * stor11.length) > idx:
                                            address(stor[idx]) = 0
                                            stor1[idx] = 0
                                            if 31 >= stor[idx + 1].length:
                                                stor2[idx] = 0
                                                stor3[idx] = 0
                                                if 31 < stor[idx + 3].length:
                                                    mem[0] = idx + 3
                                                    s = sha3(idx + 3)
                                                    while sha3(idx + 3) + (stor[idx + 3].length + 31 / 32) > s:
                                                        uint256(stor[s]) = 0
                                                        s = s + 1
                                                        continue 
                                                stor4[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            mem[0] = idx + 1
                                            s = sha3(s + 1)
                                            while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > s:
                                                uint256(stor[s]) = 0
                                                s = s + 1
                                                continue 
                                            stor2[s] = 0
                                            stor3[s] = 0
                                            if 31 < stor[s + 3].length:
                                                mem[0] = s + 3
                                                t = sha3(s + 3)
                                                while sha3(s + 3) + (stor[s + 3].length + 31 / 32) > t:
                                                    uint256(stor[t]) = 0
                                                    t = t + 1
                                                    continue 
                                            stor4[s] = 0
                                            s = s + 1
                                            continue 
                                        require firstActiveDuel1 < stor9.length
                                        mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                                        idx = 288
                                        s = sha3(code.data[10904 len 32] + (6 * firstActiveDuel1) + 1)
                                        while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                            mem[idx + 32] = stor1[s]
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require firstActiveDuel1 < stor9.length
                                        mem[ceil32(stor[code.data[10904 len 32] + (6 * stor10) + 1].length) + 288] = 7
                                        uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                                        uint256(stor11[stor11.length].field_256) = (2 * stor[code.data[10904 len 32] + (6 * stor10) + 1].length) + 1
                                        s = sha3((5 * stor11.length) + sha3(11) + 1)
                                        idx = 288
                                        while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 288 > idx:
                                            uint256(stor[s]) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((5 * stor11.length) + sha3(11) + 1) + (Mask(251, 0, stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 31) >> 5)
                                        while sha3((5 * stor11.length) + sha3(11) + 1) + (stor[(5 * stor11.length) + ('name', 'stor11', 11) + 1].length + 31 / 32) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                        address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                                        bool(stor11[stor11.length].field_768) = 0
                                        uint255(stor11[stor11.length].field_769) = 7
                                        Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                        idx = sha3((5 * stor11.length) + sha3(11) + 3)
                                        while sha3((5 * stor11.length) + sha3(11) + 3) + (stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(stor11[stor11.length].field_1024) = 1
                                        if firstActiveDuel1 == firstActiveDuel1:
                                            if 0 >= stor9.length:
                                                firstActiveDuel1 = 0
                                            else:
                                                require var75002 < stor9.length
                                                if not var79001:
                                                    firstActiveDuel1 = var79002
                                                else:
                                                    idx = var79002
                                                    while idx + 1 < stor9.length:
                                                        mem[0] = 9
                                                        if stor886E[idx]:
                                                            idx = idx + 1
                                                            continue 
                                                        firstActiveDuel1 = idx + 1
                                                        if msg.value > 0:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas 0 wei
                                                    firstActiveDuel1 = stor9.length
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                        firstActiveDuel2 = idx + 1
                        if stor9.length > firstActiveDuel1:
                            require firstActiveDuel1 < stor9.length
                            if stor6E15[stor10] + stor2.length < block.timestamp:
                                require firstActiveDuel1 < stor9.length
                                call address(stor[code.data[10904 len 32] + (6 * stor10)]) with:
                                   value 2 * stor1.length - stor3.length wei
                                     gas 0 wei
                                stor4.length += 2 * stor3.length
                                stor886E[stor10] = 1
                                stor12[address(stor[code.data[10904 len 32] + (6 * stor10)])] = 0
                                stor12[stor6E15[stor10]] = 0
                                stor11.length++
                                if not stor11.length > stor11.length + 1:
                                    require firstActiveDuel1 < stor9.length
                                    mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                                    idx = 288
                                    s = 0
                                    while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                        mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor9.length
                                    uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                                    uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                                    address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                                    bool(stor11[stor11.length].field_768) = 0
                                    uint255(stor11[stor11.length].field_769) = 7
                                    Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                    idx = 0
                                    while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor11[stor11.length].field_1024) = 1
                                    if firstActiveDuel1 == firstActiveDuel1:
                                        if 0 >= stor9.length:
                                            firstActiveDuel1 = 0
                                        else:
                                            require var69002 < stor9.length
                                            if not var73001:
                                                firstActiveDuel1 = var73002
                                            else:
                                                idx = var73002
                                                while idx + 1 < stor9.length:
                                                    mem[0] = 9
                                                    if stor886E[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    firstActiveDuel1 = idx + 1
                                                    if msg.value > 0:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas 0 wei
                                                firstActiveDuel1 = stor9.length
                                else:
                                    mem[0] = 11
                                    idx = (5 * stor11.length) + 5
                                    while sha3(11) + (5 * stor11.length) > idx + sha3(mem[0]):
                                        address(stor[idx + sha3(mem[0])]) = 0
                                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                                        if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                                            address(stor[idx + sha3(mem[0]) + 2]) = 0
                                            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                                            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                                                mem[0] = idx + sha3(mem[0]) + 3
                                                s = sha3(idx + sha3(mem[0]) + 3)
                                                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                                                    uint256(stor[s]) = 0
                                                    s = s + 1
                                                    continue 
                                            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                                            idx = idx + 1
                                            continue 
                                        mem[0] = idx + sha3(mem[0]) + 1
                                        s = sha3(s + sha3(mem[0]) + 1)
                                        while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                                            uint256(stor[s + sha3(mem[0])]) = 0
                                            s = s + 1
                                            continue 
                                        address(stor[s + sha3(mem[0]) + 2]) = 0
                                        uint256(stor[s + sha3(mem[0]) + 3]) = 0
                                        if 31 < stor[s + sha3(mem[0]) + 3].length:
                                            mem[0] = s + sha3(mem[0]) + 3
                                            t = sha3(s + sha3(mem[0]) + 3)
                                            while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                                                uint256(stor[t]) = 0
                                                t = t + 1
                                                continue 
                                        uint256(stor[s + sha3(mem[0]) + 4]) = 0
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor9.length
                                    mem[288] = uint256(stor[sha3(code.data[10904 len 32] + (6 * stor10) + 1)])
                                    idx = 288
                                    s = 0
                                    while stor[code.data[10904 len 32] + (6 * stor10) + 1].length + 256 > idx:
                                        mem[idx + 32] = uint256(stor[s + sha3(code.data[10904 len 32] + (6 * stor10) + 1) + 1])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor9.length
                                    uint256(stor11[stor11.length].field_0) = address(stor[code.data[10904 len 32] + (6 * stor10)])
                                    uint256(stor[sha3((5 * stor11.length) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=stor[code.data[10904 len 32] + (6 * stor10) + 1].length, data=mem[288 len stor[code.data[10904 len 32] + (6 * stor10) + 1].length])
                                    address(stor11[stor11.length].field_512) = address(stor[code.data[10904 len 32] + (6 * stor10) + 2])
                                    bool(stor11[stor11.length].field_768) = 0
                                    uint255(stor11[stor11.length].field_769) = 7
                                    Mask(248, 0, stor11[stor11.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                    idx = 0
                                    while stor[(5 * stor11.length) + ('name', 'stor11', 11) + 3].length + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((5 * stor11.length) + ('name', 'stor11', 11) + 3)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor11[stor11.length].field_1024) = 1
                                    if firstActiveDuel1 == firstActiveDuel1:
                                        if 0 >= stor9.length:
                                            firstActiveDuel1 = 0
                                        else:
                                            require var73002 < stor9.length
                                            if not var77001:
                                                firstActiveDuel1 = var77002
                                            else:
                                                idx = var77002
                                                while idx + 1 < stor9.length:
                                                    mem[0] = 9
                                                    if stor886E[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    firstActiveDuel1 = idx + 1
                                                    if msg.value > 0:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas 0 wei
                                                firstActiveDuel1 = stor9.length
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}



}
