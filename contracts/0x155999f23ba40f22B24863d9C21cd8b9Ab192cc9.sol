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
    return code.data[369 len 10945]
}



// =====================  Runtime code  =====================


#
#  - sendCryptedHand(bytes32 arg1)
#  - revealRock(string arg1)
#  - manualPayExpiredDuel()
#  - revealScissors(string arg1)
#  - revealPaper(string arg1)
#
address stor0;
uint256 stor1;
uint256 stor4;
uint8 stor5;
address stor5;
address stor5; offset 8
array of struct stor7;
uint256 firstActiveDuel2;
array of struct stor9;
uint256 firstActiveDuel1;
uint256 lastResult;
mapping of uint256 stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
array of uint256 stor99;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884731;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884733;
array of address stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278004;
array of address stor62713220529086039620715241192376982823663690649877727830097135764707102635718;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;

function getLastDuel2() payable {
    return stor7.length
}

function getFirstActiveDuel1() payable {
    return firstActiveDuel1
}

function getLastResult() payable {
    return lastResult
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
       value stor4 wei
         gas 0 wei
    stor4 = 0
}

function cancelWaitingForOpponent() payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    require msg.sender == address(stor5.field_8)
    require uint8(stor5.field_0)
    call msg.sender with:
       value stor1 wei
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
    return address(stor[code.data[10913 len 32] + (6 * arg1)]), 
           Array(len=stor[(6 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length, data=mem[160 len stor[(6 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length]),
           stor6E15[arg1],
           stor9[arg1],
           stor6E15[arg1]
}

function getResults(uint256 arg1) payable {
    mem[96] = 0
    mem[128] = 0
    require arg1 < lastResult
    mem[160] = stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length
    mem[192] = uint256(stor[sha3((5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba)])
    idx = 192
    s = 0
    while stor[(5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dba) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < lastResult
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
    require arg1 < lastResult
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



}
