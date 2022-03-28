contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor5 = 0
    require not msg.value
    mem[96 len -5085] = code.data[5431 len -5085]
    mem[64] = -4989
    require mem[96] >= 20
    stor4 = block.timestamp + mem[96]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[346 len 5085]
}



// =====================  Runtime code  =====================


array of struct choice1;
array of struct choice2;
uint256 votesForChoice1;
uint256 votesForChoice2;
uint256 commitPhaseEndTime;
uint256 numberOfVotesCast;
array of uint256 voteCommits;
mapping of struct stor7;

function votesForChoice2() {
    return votesForChoice2
}

function numberOfVotesCast() {
    return numberOfVotesCast
}

function choice1() {
    return choice1[0 len choice1.length].field_0
}

function choice2() {
    return choice2[0 len choice2.length].field_0
}

function commitPhaseEndTime() {
    return commitPhaseEndTime
}

function votesForChoice1() {
    return votesForChoice1
}

function voteCommits(uint256 arg1) {
    require arg1 < voteCommits.length
    return voteCommits[arg1]
}

function _fallback() payable {
    revert
}

function commitVote(bytes32 arg1) {
    require block.timestamp <= commitPhaseEndTime
    idx = 160
    s = 0
    while stor7[arg1].length + 128 > idx:
        mem[idx + 32] = stor7[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require not stor7[arg1].length
    voteCommits.length++
    if not voteCommits.length <= voteCommits.length + 1:
        idx = voteCommits.length + 1
        while voteCommits.length > idx:
            voteCommits[idx] = 0
            idx = idx + 1
            continue 
    voteCommits[voteCommits.length] = arg1
    stor7[arg1].field_0 = 0
    stor7[arg1].field_1 = 9
    stor7[arg1].field_8 = 'Committed' / 256
    idx = 0
    while stor7[arg1].length + 31 / 32 > idx:
        stor7[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    numberOfVotesCast++
    emit 0x651840ca: Array(len=39, data='Vote committed with the followin', 'g hash:'), arg1
}

function getWinner() {
    require block.timestamp >= commitPhaseEndTime
    require votesForChoice1 + votesForChoice2 == voteCommits.length
    if votesForChoice1 > votesForChoice2:
        mem[192] = 30
        mem[224] = 'And the winner of the vote is:'
        mem[256] = choice1.length
        mem[288] = uint256(choice1.field_0)
        idx = 288
        s = 0
        while choice1.length + 288 > idx + 32:
            mem[idx + 32] = choice1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xcc195fb5: 64, 128, 30, 'And the winner of the vote is:', choice1.length, mem[288 len choice1.length + (floor32(choice1.length - 1) + -choice1.length + 32 % 32)]
        mem[160] = uint256(choice1.field_0)
        idx = 160
        s = 0
        while choice1.length + 128 > idx:
            mem[idx + 32] = choice1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(choice1.length) + 160] = 32
        mem[ceil32(choice1.length) + 192] = choice1.length
        if choice1.length:
            mem[ceil32(choice1.length) + 224] = mem[160]
            mem[ceil32(choice1.length) + 256 len floor32(choice1.length - 1)] = mem[192 len floor32(choice1.length - 1)]
        return Array(len=choice1.length, data=mem[ceil32(choice1.length) + 224 len choice1.length])
    if votesForChoice2 <= votesForChoice1:
        if votesForChoice1 != votesForChoice2:
            return ''
        emit 0xcc195fb5: 64, 128, 24, 'The vote ended in a tie!', 0
        return 'It was a tie!'
    mem[192] = 30
    mem[224] = 'And the winner of the vote is:'
    mem[256] = choice2.length
    mem[288] = uint256(choice2.field_0)
    idx = 288
    s = 0
    while choice2.length + 288 > idx + 32:
        mem[idx + 32] = choice2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xcc195fb5: 64, 128, 30, 'And the winner of the vote is:', choice2.length, mem[288 len choice2.length + (floor32(choice2.length - 1) + -choice2.length + 32 % 32)]
    mem[160] = uint256(choice2.field_0)
    idx = 160
    s = 0
    while choice2.length + 128 > idx:
        mem[idx + 32] = choice2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(choice2.length) + 160] = 32
    mem[ceil32(choice2.length) + 192] = choice2.length
    if choice2.length:
        mem[ceil32(choice2.length) + 224] = mem[160]
        mem[ceil32(choice2.length) + 256 len floor32(choice2.length - 1)] = mem[192 len floor32(choice2.length - 1)]
    return Array(len=choice2.length, data=mem[ceil32(choice2.length) + 224 len choice2.length])
}

function revealVote(string arg1, bytes32 arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    require block.timestamp >= commitPhaseEndTime
    mem[ceil32(arg1.length) + 224] = stor7[arg2].field_0
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + stor7[arg2].length + 192 > idx:
        mem[idx + 32] = stor7[arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor7[arg2].length:
        require 0 < stor7[arg2].length
        if Mask(8, 248, mem[ceil32(arg1.length) + 224]) != 'C':
            emit logString(Array(len=26, data='This vote was already cast'));
        else:
            mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            if arg2 != sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + floor32(arg1.length) + 224 len arg1.length % 32]):
                emit logString(Array(len=36, data='Vote hash does not match vote co', 'mmit'));
            else:
                require 0 < arg1.length
                if Mask(8, 248, mem[128]) == '1':
                    votesForChoice1++
                    emit logString(Array(len=26, data='Vote for choice 1 counted.'));
                else:
                    require 0 < arg1.length
                    if Mask(8, 248, mem[128]) != '2':
                        emit logString(Array(len=76, data='Vote could not be read! Votes mu', 'st start with the ASCII characte', 'r `1` or `2`'));
                    else:
                        votesForChoice2++
                        emit logString(Array(len=26, data='Vote for choice 2 counted.'));
                stor7[arg2].field_0 = 0
                stor7[arg2].field_1 = 8
                stor7[arg2].field_8 = 'Revealed' / 256
                idx = 0
                while stor7[arg2].length + 31 / 32 > idx:
                    stor7[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + 224] = 32
        mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + 256] = 40
        mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + 288] = 'A vote with this voteCommit was '
        mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + 320] = 'not cast'
        emit logString(Array(len=40, data='A vote with this voteCommit was ', 'not cast'));
        mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        if arg2 != sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(stor7[arg2].length) + floor32(arg1.length) + 224 len arg1.length % 32]):
            emit logString(Array(len=36, data='Vote hash does not match vote co', 'mmit'));
        else:
            require 0 < arg1.length
            if Mask(8, 248, mem[128]) == '1':
                votesForChoice1++
                emit logString(Array(len=26, data='Vote for choice 1 counted.'));
            else:
                require 0 < arg1.length
                if Mask(8, 248, mem[128]) != '2':
                    emit logString(Array(len=76, data='Vote could not be read! Votes mu', 'st start with the ASCII characte', 'r `1` or `2`'));
                else:
                    votesForChoice2++
                    emit logString(Array(len=26, data='Vote for choice 2 counted.'));
            stor7[arg2].field_0 = 0
            stor7[arg2].field_1 = 8
            stor7[arg2].field_8 = 'Revealed' / 256
            idx = 0
            while stor7[arg2].length + 31 / 32 > idx:
                stor7[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}



}
