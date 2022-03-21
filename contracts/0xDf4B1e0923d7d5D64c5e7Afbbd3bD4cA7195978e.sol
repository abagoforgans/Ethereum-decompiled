contract main {


// =======================  Init code  ======================


uint256 stor0; offset 8
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor14;

function _fallback() payable {
    stor0 = Mask(248, 0, msg.sender)
    stor1 = 5 * 10^17
    stor2 = 25 * 10^14
    stor3 = 300
    stor14['rock']['rock'] = 0
    stor14['rock']['paper'] = 2
    stor14['rock']['scissors'] = 1
    stor14['paper']['rock'] = 1
    stor14['paper']['paper'] = 0
    stor14['paper']['scissors'] = 2
    stor14['scissors']['rock'] = 2
    stor14['scissors']['paper'] = 1
    stor14['scissors']['scissors'] = 0
    return code.data[375 len 11152]
}



// =====================  Runtime code  =====================


#
#  - sendCryptedHand(bytes32 arg1)
#  - revealRock(string arg1)
#  - revealScissors(string arg1)
#  - revealPaper(string arg1)
#
uint8 state;
address stor0; offset 8
array of uint256 stor1;
array of address stor2;
array of uint256 stor3;
array of uint256 stor4;
array of struct stor6;
uint256 firstActiveDuel2;
array of struct stor8;
uint256 firstActiveDuel1;
array of struct stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;
mapping of uint256 stor13;
array of uint8 stor30736014006170303845907085272936063970658094702522161919914142076203793343342;
array of uint8 stor30736014006170303845907085272936063970658094702522161919914142076203793343348;
array of uint8 stor39334116219629125808348081153816928403682804120744834889050218307929308101645;
array of uint8 stor39334116219629125808348081153816928403682804120744834889050218307929308101651;
array of address stor89717814153306320011181716697424560163256864414616650038987186496166826726058;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726060;
array of address stor103110227869869686568986787740633315150991662862367176801407715749787711536141;
array of address stor104915321173825991539132247544126754939159178628948148257691656831273142018926;
array of address stor104915321173825991539132247544126754939159178628948148257691656831273142018928;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020072;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;

function getLastDuel2() payable {
    return stor6.length
}

function getFirstActiveDuel1() payable {
    return firstActiveDuel1
}

function getLastResult() payable {
    return stor10.length
}

function getFirstActiveDuel2() payable {
    return firstActiveDuel2
}

function state() payable {
    return state
}

function getLastDuel1() payable {
    return stor8.length
}

function _fallback() payable {
    revert 
}

function getPlayerWaiting() payable {
    return address(stor4.length), uint8(stor4.length)
}

function refund() payable {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function getPlayerStatus(address arg1, uint256 arg2) payable {
    if 0 == arg2:
        return stor11[address(arg1)]
    if 1 == arg2:
        return stor12[address(arg1)]
    if arg2 != 2:
        return 0
    return stor13[address(arg1)]
}

function getDuel2(uint256 arg1) payable {
    require arg1 < stor6.length
    return address(stor[code.data[11120 len 32] + (6 * arg1)]), 
           address(stor6[arg1].field_512),
           uint8(stor6[arg1].field_1024),
           storF652[arg1]
}

function cancelWaitingForOpponent() payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    require msg.sender == address(stor4.length.field_8)
    require uint8(stor4.length)
    call msg.sender with:
       value stor1.length wei
         gas 0 wei
    uint8(stor4.length) = 0
    stor11[address(msg.sender)] = 0
}

function getDuel1(uint256 arg1) payable {
    require arg1 < stor8.length
    mem[160] = uint256(stor[sha3((6 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)])
    idx = 160
    s = 0
    while stor[(6 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < stor8.length
    return storE7F3[arg1], 
           Array(len=stor[(6 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c].length, data=mem[160 len stor[(6 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c].length]),
           storF3F7[arg1],
           stor8[arg1],
           storF3F7[arg1]
}

function getResults(uint256 arg1) payable {
    mem[96] = 0
    mem[128] = 0
    require arg1 < stor10.length
    mem[160] = stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length
    mem[192] = uint256(stor[sha3((5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57)])
    idx = 192
    s = 0
    while stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < stor10.length
    mem[64] = ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 224
    mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + 192] = stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length
    mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + 224] = uint256(stor[sha3((5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55)])
    idx = ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + 224
    s = 0
    while ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < stor10.length
    mem[0] = 10
    mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 224] = address(stor10[arg1].field_0)
    mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 288] = storC65A[arg1]
    mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 352] = storC65A[arg1]
    mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 256] = 160
    mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 384] = stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length
    mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 416 len stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length] = mem[192 len stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length]
    mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 320] = stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + 192
    mem[stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 416] = stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length
    mem[stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 448 len stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length] = mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + 224 len stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length]
    if not stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length % 32:
        return address(stor10[arg1].field_0), 
               Array(len=stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length, data=mem[192 len stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length], stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length, mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + 224 len stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length]),
               storC65A[arg1],
               stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + 192,
               storC65A[arg1]
    mem[floor32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 448] = mem[floor32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + -stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length % 32 + 480 len stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length % 32]
    return address(stor10[arg1].field_0), 
           Array(len=stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length, data=mem[192 len stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length], stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length, mem[ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length) + ceil32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + 448 len floor32(stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d55].length) + 32]),
           storC65A[arg1],
           stor[(5 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + 192,
           storC65A[arg1]
}

function manualPayExpiredDuel() payable {
    mem[64] = 96
    require msg.sender == stor0
    if stor6.length <= firstActiveDuel2:
        if stor8.length > firstActiveDuel1:
            require firstActiveDuel1 < stor8.length
            if storF3F7[stor9] + stor3.length < block.timestamp:
                require firstActiveDuel1 < stor8.length
                call storE7F3[stor9] with:
                   value 2 * stor1.length - stor2.length wei
                     gas 0 wei
                stor43F3[stor9] = 1
                stor11[storE7F3[stor9]] = 0
                stor11[storF3F7[stor9]] = 0
                stor10.length++
                if not stor10.length > stor10.length + 1:
                    require firstActiveDuel1 < stor8.length
                    mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                    idx = 288
                    s = 0
                    while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require firstActiveDuel1 < stor8.length
                    uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                    uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                    address(stor10[stor10.length].field_512) = storE7F3[stor9]
                    bool(stor10[stor10.length].field_768) = 0
                    uint255(stor10[stor10.length].field_769) = 7
                    Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                    idx = 0
                    while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor10[stor10.length].field_1024) = 1
                    if firstActiveDuel1 == firstActiveDuel1:
                        if 0 >= stor8.length:
                            firstActiveDuel1 = 0
                        else:
                            require var46002 < stor8.length
                            if not var50001:
                                firstActiveDuel1 = var50002
                            else:
                                idx = var50002
                                while idx + 1 < stor8.length:
                                    mem[0] = 8
                                    if stor43F3[idx]:
                                        idx = idx + 1
                                        continue 
                                    firstActiveDuel1 = idx + 1
                                    if msg.value > 0:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 0 wei
                                firstActiveDuel1 = stor8.length
                else:
                    mem[0] = 10
                    idx = (5 * stor10.length) + 5
                    while sha3(10) + (5 * stor10.length) > idx + sha3(mem[0]):
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
                    require firstActiveDuel1 < stor8.length
                    mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                    idx = 288
                    s = 0
                    while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require firstActiveDuel1 < stor8.length
                    uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                    uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                    address(stor10[stor10.length].field_512) = storE7F3[stor9]
                    bool(stor10[stor10.length].field_768) = 0
                    uint255(stor10[stor10.length].field_769) = 7
                    Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                    idx = 0
                    while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor10[stor10.length].field_1024) = 1
                    if firstActiveDuel1 == firstActiveDuel1:
                        if 0 >= stor8.length:
                            firstActiveDuel1 = 0
                        else:
                            require var50002 < stor8.length
                            if not var54001:
                                firstActiveDuel1 = var54002
                            else:
                                idx = var54002
                                while idx + 1 < stor8.length:
                                    mem[0] = 8
                                    if stor43F3[idx]:
                                        idx = idx + 1
                                        continue 
                                    firstActiveDuel1 = idx + 1
                                    if msg.value > 0:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 0 wei
                                firstActiveDuel1 = stor8.length
    else:
        require firstActiveDuel2 < stor6.length
        if storF652[stor7] + stor3.length > block.timestamp:
            if stor8.length > firstActiveDuel1:
                require firstActiveDuel1 < stor8.length
                if storF3F7[stor9] + stor3.length < block.timestamp:
                    require firstActiveDuel1 < stor8.length
                    call storE7F3[stor9] with:
                       value 2 * stor1.length - stor2.length wei
                         gas 0 wei
                    stor43F3[stor9] = 1
                    stor11[storE7F3[stor9]] = 0
                    stor11[storF3F7[stor9]] = 0
                    stor10.length++
                    if not stor10.length > stor10.length + 1:
                        require firstActiveDuel1 < stor8.length
                        mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                        idx = 288
                        s = 0
                        while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require firstActiveDuel1 < stor8.length
                        uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                        uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                        address(stor10[stor10.length].field_512) = storE7F3[stor9]
                        bool(stor10[stor10.length].field_768) = 0
                        uint255(stor10[stor10.length].field_769) = 7
                        Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                        idx = 0
                        while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(stor10[stor10.length].field_1024) = 1
                        if firstActiveDuel1 == firstActiveDuel1:
                            if 0 >= stor8.length:
                                firstActiveDuel1 = 0
                            else:
                                require var48002 < stor8.length
                                if not var52001:
                                    firstActiveDuel1 = var52002
                                else:
                                    idx = var52002
                                    while idx + 1 < stor8.length:
                                        mem[0] = 8
                                        if stor43F3[idx]:
                                            idx = idx + 1
                                            continue 
                                        firstActiveDuel1 = idx + 1
                                        if msg.value > 0:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas 0 wei
                                    firstActiveDuel1 = stor8.length
                    else:
                        mem[0] = 10
                        idx = (5 * stor10.length) + 5
                        while sha3(10) + (5 * stor10.length) > idx + sha3(mem[0]):
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
                        require firstActiveDuel1 < stor8.length
                        mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                        idx = 288
                        s = 0
                        while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require firstActiveDuel1 < stor8.length
                        uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                        uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                        address(stor10[stor10.length].field_512) = storE7F3[stor9]
                        bool(stor10[stor10.length].field_768) = 0
                        uint255(stor10[stor10.length].field_769) = 7
                        Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                        idx = 0
                        while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(stor10[stor10.length].field_1024) = 1
                        if firstActiveDuel1 == firstActiveDuel1:
                            if 0 >= stor8.length:
                                firstActiveDuel1 = 0
                            else:
                                require var52002 < stor8.length
                                if not var56001:
                                    firstActiveDuel1 = var56002
                                else:
                                    idx = var56002
                                    while idx + 1 < stor8.length:
                                        mem[0] = 8
                                        if stor43F3[idx]:
                                            idx = idx + 1
                                            continue 
                                        firstActiveDuel1 = idx + 1
                                        if msg.value > 0:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas 0 wei
                                    firstActiveDuel1 = stor8.length
        else:
            require firstActiveDuel2 < stor6.length
            call address(stor[code.data[11120 len 32] + (6 * stor7)]) with:
               value stor1.length - stor2.length wei
                 gas 0 wei
            call storE3F6[stor7] with:
               value stor1.length - stor2.length wei
                 gas 0 wei
            mem[32] = 11
            stor11[address(stor[code.data[11120 len 32] + (6 * stor7)])] = 0
            stor11[storE3F6[stor7]] = 0
            stor56F6[stor7] = 1
            if firstActiveDuel2 != firstActiveDuel2:
                if stor8.length > firstActiveDuel1:
                    require firstActiveDuel1 < stor8.length
                    if storF3F7[stor9] + stor3.length < block.timestamp:
                        require firstActiveDuel1 < stor8.length
                        call storE7F3[stor9] with:
                           value 2 * stor1.length - stor2.length wei
                             gas 0 wei
                        stor43F3[stor9] = 1
                        stor11[storE7F3[stor9]] = 0
                        stor11[storF3F7[stor9]] = 0
                        stor10.length++
                        if not stor10.length > stor10.length + 1:
                            require firstActiveDuel1 < stor8.length
                            mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                            idx = 288
                            s = 0
                            while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require firstActiveDuel1 < stor8.length
                            uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                            uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                            address(stor10[stor10.length].field_512) = storE7F3[stor9]
                            bool(stor10[stor10.length].field_768) = 0
                            uint255(stor10[stor10.length].field_769) = 7
                            Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                            idx = 0
                            while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                                uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor10[stor10.length].field_1024) = 1
                            if firstActiveDuel1 == firstActiveDuel1:
                                if 0 >= stor8.length:
                                    firstActiveDuel1 = 0
                                else:
                                    require var56002 < stor8.length
                                    if not var60001:
                                        firstActiveDuel1 = var60002
                                    else:
                                        idx = var60002
                                        while idx + 1 < stor8.length:
                                            mem[0] = 8
                                            if stor43F3[idx]:
                                                idx = idx + 1
                                                continue 
                                            firstActiveDuel1 = idx + 1
                                            if msg.value > 0:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas 0 wei
                                        firstActiveDuel1 = stor8.length
                        else:
                            mem[0] = 10
                            idx = (5 * stor10.length) + 5
                            while sha3(10) + (5 * stor10.length) > idx + sha3(mem[0]):
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
                            require firstActiveDuel1 < stor8.length
                            mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                            idx = 288
                            s = 0
                            while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require firstActiveDuel1 < stor8.length
                            uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                            uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                            address(stor10[stor10.length].field_512) = storE7F3[stor9]
                            bool(stor10[stor10.length].field_768) = 0
                            uint255(stor10[stor10.length].field_769) = 7
                            Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                            idx = 0
                            while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                                uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor10[stor10.length].field_1024) = 1
                            if firstActiveDuel1 == firstActiveDuel1:
                                if 0 >= stor8.length:
                                    firstActiveDuel1 = 0
                                else:
                                    require var60002 < stor8.length
                                    if not var64001:
                                        firstActiveDuel1 = var64002
                                    else:
                                        idx = var64002
                                        while idx + 1 < stor8.length:
                                            mem[0] = 8
                                            if stor43F3[idx]:
                                                idx = idx + 1
                                                continue 
                                            firstActiveDuel1 = idx + 1
                                            if msg.value > 0:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas 0 wei
                                        firstActiveDuel1 = stor8.length
            else:
                if 0 >= stor6.length:
                    firstActiveDuel2 = 0
                    if stor8.length > firstActiveDuel1:
                        require firstActiveDuel1 < stor8.length
                        if storF3F7[stor9] + stor3.length < block.timestamp:
                            require firstActiveDuel1 < stor8.length
                            call storE7F3[stor9] with:
                               value 2 * stor1.length - stor2.length wei
                                 gas 0 wei
                            stor43F3[stor9] = 1
                            stor11[storE7F3[stor9]] = 0
                            stor11[storF3F7[stor9]] = 0
                            stor10.length++
                            if not stor10.length > stor10.length + 1:
                                require firstActiveDuel1 < stor8.length
                                mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                                idx = 288
                                s = 0
                                while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                    mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require firstActiveDuel1 < stor8.length
                                uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                                uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                                address(stor10[stor10.length].field_512) = storE7F3[stor9]
                                bool(stor10[stor10.length].field_768) = 0
                                uint255(stor10[stor10.length].field_769) = 7
                                Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                idx = 0
                                while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(stor10[stor10.length].field_1024) = 1
                                if firstActiveDuel1 == firstActiveDuel1:
                                    if 0 >= stor8.length:
                                        firstActiveDuel1 = 0
                                    else:
                                        require var60002 < stor8.length
                                        if not var64001:
                                            firstActiveDuel1 = var64002
                                        else:
                                            idx = var64002
                                            while idx + 1 < stor8.length:
                                                mem[0] = 8
                                                if stor43F3[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                firstActiveDuel1 = idx + 1
                                                if msg.value > 0:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas 0 wei
                                            firstActiveDuel1 = stor8.length
                            else:
                                mem[0] = 10
                                idx = (5 * stor10.length) + 5
                                while sha3(10) + (5 * stor10.length) > idx + sha3(mem[0]):
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
                                require firstActiveDuel1 < stor8.length
                                mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                                idx = 288
                                s = 0
                                while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                    mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require firstActiveDuel1 < stor8.length
                                uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                                uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                                address(stor10[stor10.length].field_512) = storE7F3[stor9]
                                bool(stor10[stor10.length].field_768) = 0
                                uint255(stor10[stor10.length].field_769) = 7
                                Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                idx = 0
                                while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                                    uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(stor10[stor10.length].field_1024) = 1
                                if firstActiveDuel1 == firstActiveDuel1:
                                    if 0 >= stor8.length:
                                        firstActiveDuel1 = 0
                                    else:
                                        require var64002 < stor8.length
                                        if not var68001:
                                            firstActiveDuel1 = var68002
                                        else:
                                            idx = var68002
                                            while idx + 1 < stor8.length:
                                                mem[0] = 8
                                                if stor43F3[idx]:
                                                    idx = idx + 1
                                                    continue 
                                                firstActiveDuel1 = idx + 1
                                                if msg.value > 0:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas 0 wei
                                            firstActiveDuel1 = stor8.length
                else:
                    require var20002 < stor6.length
                    mem[0] = 6
                    if not var24001:
                        firstActiveDuel2 = var24002
                        if stor8.length > firstActiveDuel1:
                            require firstActiveDuel1 < stor8.length
                            if storF3F7[stor9] + stor3.length < block.timestamp:
                                require firstActiveDuel1 < stor8.length
                                call storE7F3[stor9] with:
                                   value 2 * stor1.length - stor2.length wei
                                     gas 0 wei
                                stor43F3[stor9] = 1
                                stor11[storE7F3[stor9]] = 0
                                stor11[storF3F7[stor9]] = 0
                                stor10.length++
                                if not stor10.length > stor10.length + 1:
                                    require firstActiveDuel1 < stor8.length
                                    mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                                    idx = 288
                                    s = 0
                                    while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                        mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor8.length
                                    uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                                    uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                                    address(stor10[stor10.length].field_512) = storE7F3[stor9]
                                    bool(stor10[stor10.length].field_768) = 0
                                    uint255(stor10[stor10.length].field_769) = 7
                                    Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                    idx = 0
                                    while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor10[stor10.length].field_1024) = 1
                                    if firstActiveDuel1 == firstActiveDuel1:
                                        if 0 >= stor8.length:
                                            firstActiveDuel1 = 0
                                        else:
                                            require var65002 < stor8.length
                                            if not var69001:
                                                firstActiveDuel1 = var69002
                                            else:
                                                idx = var69002
                                                while idx + 1 < stor8.length:
                                                    mem[0] = 8
                                                    if stor43F3[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    firstActiveDuel1 = idx + 1
                                                    if msg.value > 0:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas 0 wei
                                                firstActiveDuel1 = stor8.length
                                else:
                                    mem[0] = 10
                                    idx = (5 * stor10.length) + 5
                                    while sha3(10) + (5 * stor10.length) > idx + sha3(mem[0]):
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
                                    require firstActiveDuel1 < stor8.length
                                    mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                                    idx = 288
                                    s = 0
                                    while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                        mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor8.length
                                    uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                                    uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                                    address(stor10[stor10.length].field_512) = storE7F3[stor9]
                                    bool(stor10[stor10.length].field_768) = 0
                                    uint255(stor10[stor10.length].field_769) = 7
                                    Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                    idx = 0
                                    while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor10[stor10.length].field_1024) = 1
                                    if firstActiveDuel1 == firstActiveDuel1:
                                        if 0 >= stor8.length:
                                            firstActiveDuel1 = 0
                                        else:
                                            require var69002 < stor8.length
                                            if not var73001:
                                                firstActiveDuel1 = var73002
                                            else:
                                                idx = var73002
                                                while idx + 1 < stor8.length:
                                                    mem[0] = 8
                                                    if stor43F3[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    firstActiveDuel1 = idx + 1
                                                    if msg.value > 0:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas 0 wei
                                                firstActiveDuel1 = stor8.length
                    else:
                        idx = var24002
                        while idx + 1 < stor6.length:
                            mem[0] = 6
                            if stor56F6[idx]:
                                idx = idx + 1
                                continue 
                            firstActiveDuel2 = idx + 1
                            if stor8.length > firstActiveDuel1:
                                require firstActiveDuel1 < stor8.length
                                if storF3F7[stor9] + stor3.length < block.timestamp:
                                    require firstActiveDuel1 < stor8.length
                                    call storE7F3[stor9] with:
                                       value 2 * stor1.length - stor2.length wei
                                         gas 0 wei
                                    stor43F3[stor9] = 1
                                    stor11[storE7F3[stor9]] = 0
                                    stor11[storF3F7[stor9]] = 0
                                    stor10.length++
                                    if not stor10.length > stor10.length + 1:
                                        require firstActiveDuel1 < stor8.length
                                        mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                                        idx = 288
                                        s = sha3((6 * firstActiveDuel1) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)
                                        while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                            mem[idx + 32] = stor1[s]
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require firstActiveDuel1 < stor8.length
                                        mem[ceil32(stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length) + 288] = 7
                                        uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                                        uint256(stor10[stor10.length].field_256) = (2 * stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length) + 1
                                        s = sha3((5 * stor10.length) + sha3(10) + 1)
                                        idx = 288
                                        while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 288 > idx:
                                            uint256(stor[s]) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((5 * stor10.length) + sha3(10) + 1) + (Mask(251, 0, stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 31) >> 5)
                                        while sha3((5 * stor10.length) + sha3(10) + 1) + (stor[(5 * stor10.length) + ('name', 'stor10', 10) + 1].length + 31 / 32) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                        address(stor10[stor10.length].field_512) = storE7F3[stor9]
                                        bool(stor10[stor10.length].field_768) = 0
                                        uint255(stor10[stor10.length].field_769) = 7
                                        Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                        idx = sha3((5 * stor10.length) + sha3(10) + 3)
                                        while sha3((5 * stor10.length) + sha3(10) + 3) + (stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(stor10[stor10.length].field_1024) = 1
                                        if firstActiveDuel1 == firstActiveDuel1:
                                            if 0 >= stor8.length:
                                                firstActiveDuel1 = 0
                                            else:
                                                require var71002 < stor8.length
                                                if not var75001:
                                                    firstActiveDuel1 = var75002
                                                else:
                                                    idx = var75002
                                                    while idx + 1 < stor8.length:
                                                        mem[0] = 8
                                                        if stor43F3[idx]:
                                                            idx = idx + 1
                                                            continue 
                                                        firstActiveDuel1 = idx + 1
                                                        if msg.value > 0:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas 0 wei
                                                    firstActiveDuel1 = stor8.length
                                    else:
                                        mem[0] = 10
                                        idx = sha3(mem[0]) + (5 * stor10.length) + 5
                                        while sha3(10) + (5 * stor10.length) > idx:
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
                                                uint256(stor4[idx].field_0) = 0
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
                                            uint256(stor4[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                        require firstActiveDuel1 < stor8.length
                                        mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                                        idx = 288
                                        s = sha3((6 * firstActiveDuel1) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)
                                        while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                            mem[idx + 32] = stor1[s]
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require firstActiveDuel1 < stor8.length
                                        mem[ceil32(stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length) + 288] = 7
                                        uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                                        uint256(stor10[stor10.length].field_256) = (2 * stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length) + 1
                                        s = sha3((5 * stor10.length) + sha3(10) + 1)
                                        idx = 288
                                        while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 288 > idx:
                                            uint256(stor[s]) = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3((5 * stor10.length) + sha3(10) + 1) + (Mask(251, 0, stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 31) >> 5)
                                        while sha3((5 * stor10.length) + sha3(10) + 1) + (stor[(5 * stor10.length) + ('name', 'stor10', 10) + 1].length + 31 / 32) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                        address(stor10[stor10.length].field_512) = storE7F3[stor9]
                                        bool(stor10[stor10.length].field_768) = 0
                                        uint255(stor10[stor10.length].field_769) = 7
                                        Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                        idx = sha3((5 * stor10.length) + sha3(10) + 3)
                                        while sha3((5 * stor10.length) + sha3(10) + 3) + (stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(stor10[stor10.length].field_1024) = 1
                                        if firstActiveDuel1 == firstActiveDuel1:
                                            if 0 >= stor8.length:
                                                firstActiveDuel1 = 0
                                            else:
                                                require var75002 < stor8.length
                                                if not var79001:
                                                    firstActiveDuel1 = var79002
                                                else:
                                                    idx = var79002
                                                    while idx + 1 < stor8.length:
                                                        mem[0] = 8
                                                        if stor43F3[idx]:
                                                            idx = idx + 1
                                                            continue 
                                                        firstActiveDuel1 = idx + 1
                                                        if msg.value > 0:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas 0 wei
                                                    firstActiveDuel1 = stor8.length
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                        firstActiveDuel2 = idx + 1
                        if stor8.length > firstActiveDuel1:
                            require firstActiveDuel1 < stor8.length
                            if storF3F7[stor9] + stor3.length < block.timestamp:
                                require firstActiveDuel1 < stor8.length
                                call storE7F3[stor9] with:
                                   value 2 * stor1.length - stor2.length wei
                                     gas 0 wei
                                stor43F3[stor9] = 1
                                stor11[storE7F3[stor9]] = 0
                                stor11[storF3F7[stor9]] = 0
                                stor10.length++
                                if not stor10.length > stor10.length + 1:
                                    require firstActiveDuel1 < stor8.length
                                    mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                                    idx = 288
                                    s = 0
                                    while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                        mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor8.length
                                    uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                                    uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                                    address(stor10[stor10.length].field_512) = storE7F3[stor9]
                                    bool(stor10[stor10.length].field_768) = 0
                                    uint255(stor10[stor10.length].field_769) = 7
                                    Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                    idx = 0
                                    while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor10[stor10.length].field_1024) = 1
                                    if firstActiveDuel1 == firstActiveDuel1:
                                        if 0 >= stor8.length:
                                            firstActiveDuel1 = 0
                                        else:
                                            require var69002 < stor8.length
                                            if not var73001:
                                                firstActiveDuel1 = var73002
                                            else:
                                                idx = var73002
                                                while idx + 1 < stor8.length:
                                                    mem[0] = 8
                                                    if stor43F3[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    firstActiveDuel1 = idx + 1
                                                    if msg.value > 0:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas 0 wei
                                                firstActiveDuel1 = stor8.length
                                else:
                                    mem[0] = 10
                                    idx = (5 * stor10.length) + 5
                                    while sha3(10) + (5 * stor10.length) > idx + sha3(mem[0]):
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
                                    require firstActiveDuel1 < stor8.length
                                    mem[288] = uint256(stor[sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91)])
                                    idx = 288
                                    s = 0
                                    while stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length + 256 > idx:
                                        mem[idx + 32] = uint256(stor[s + sha3((6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91) + 1])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require firstActiveDuel1 < stor8.length
                                    uint256(stor10[stor10.length].field_0) = storE7F3[stor9]
                                    uint256(stor[sha3((5 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length, data=mem[288 len stor[(6 * stor9) - 0x180c085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c91].length])
                                    address(stor10[stor10.length].field_512) = storE7F3[stor9]
                                    bool(stor10[stor10.length].field_768) = 0
                                    uint255(stor10[stor10.length].field_769) = 7
                                    Mask(248, 0, stor10[stor10.length].field_776) = 0x65787069726564000000000000000000000000000000000000000000000000
                                    idx = 0
                                    while stor[(5 * stor10.length) + ('name', 'stor10', 10) + 3].length + 31 / 32 > idx:
                                        uint256(stor[idx + sha3((5 * stor10.length) + ('name', 'stor10', 10) + 3)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor10[stor10.length].field_1024) = 1
                                    if firstActiveDuel1 == firstActiveDuel1:
                                        if 0 >= stor8.length:
                                            firstActiveDuel1 = 0
                                        else:
                                            require var73002 < stor8.length
                                            if not var77001:
                                                firstActiveDuel1 = var77002
                                            else:
                                                idx = var77002
                                                while idx + 1 < stor8.length:
                                                    mem[0] = 8
                                                    if stor43F3[idx]:
                                                        idx = idx + 1
                                                        continue 
                                                    firstActiveDuel1 = idx + 1
                                                    if msg.value > 0:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas 0 wei
                                                firstActiveDuel1 = stor8.length
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}



}
