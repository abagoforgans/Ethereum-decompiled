contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor6 = block.timestamp
    stor7 = 168 * 24 * 3600
    stor2 = sha3('09F911029D74E35BD84156C5635688C0')
    stor1 = msg.sender or Mask(96, 160, stor1)
    mem[128] = 'If you're this weeks leader, you'
    mem[160] = ' own this field. Write a message'
    mem[192] = ' here.'
    stor9.length = 141
    s = 0
    idx = 128
    while 198 > idx:
        uint256(stor9[s]) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor9.length + 31 / 32 > idx:
        uint256(stor9[idx]) = 0
        idx = idx + 1
        continue 
    if 31 >= stor9.length:
        stor8.length = stor9.length
        idx = 0
        while stor8.length + 31 / 32 > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    else:
        stor8.length = Mask(255, 1, (256 * not bool(stor9.length)) - 1 and stor9.length) + 1
        if not Mask(255, 1, (256 * not bool(stor9.length)) - 1 and stor9.length):
            idx = 0
            while stor8.length + 31 / 32 > idx:
                stor8[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor9.length + 31 / 32 > idx:
                stor8[s] = uint256(stor9[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor9.length + 31 / 32
            while stor8.length + 31 / 32 > idx:
                stor8[idx] = 0
                idx = idx + 1
                continue 
    stor3 = stor2
    stor4 = stor2
    stor5 = 0
    emit Begin(Array(len=116, data='Collide the most bits of the lea', 'der's hash to replace the leader', '. Leader will win any bounty at ', 'the end of the week.'));
    return code.data[956 len 3357]
}



// =====================  Runtime code  =====================


address stor0;
address currentLeaderAddress;
uint256 stor1;
uint256 leaderHash;
uint256 difficulty;
uint256 stor4;
uint256 fallenLeaders;
uint256 stor6;
uint256 stor7;
array of uint256 leaderMessage;
array of uint256 stor9;
mapping of uint256 wins;

function Difficulty() payable {
    return difficulty
}

function FallenLeaders() payable {
    return fallenLeaders
}

function LeaderMessage() payable {
    return leaderMessage[0 len leaderMessage.length]
}

function currentLeader() payable {
    return address(currentLeaderAddress)
}

function LeaderHash() payable {
    return leaderHash
}

function getWins(address arg1) payable {
    return wins[address(arg1)]
}

function kill() payable {
    if stor0 != msg.sender:
    emit GameOver(Array(len=26, data='The Crypto Hill has ended.'));
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function GameEnds() payable {
    return (stor6 + stor7)
}

function changeLeaderMessage(string arg1) payable {
    if msg.sender == address(currentLeaderAddress):
        leaderMessage[] = Array(len=arg1.length, data=arg1[all])
}

function overthrow(string arg1) payable {
    if block.timestamp <= stor6 + stor7:
        if sha3(arg1[all]) == leaderHash:
            return 0
        if sha3(arg1[all]) xor leaderHash > difficulty:
            return 0
        difficulty = sha3(arg1[all]) xor leaderHash
        if difficulty < stor4:
            stor4 = difficulty
            emit WorldRecord(Array(len=36, data='A record setting collision occcu', 'red!'), stor4, msg.sender);
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        leaderHash = sha3(arg1[all])
        emit Leader(Array(len=63, data='New leader! This is their addres', 's, and the new hash to collide.'), address(currentLeaderAddress), leaderHash);
        wins[address(msg.sender)]++
        fallenLeaders++
        return 1
    if address(currentLeaderAddress) == stor0:
        emit NoWinner(Array(len=63, data='No winner! Game will be reset to', ' end in 1 week (in block time).'));
    else:
        emit Winner(Array(len=61, data='Victory! Game will be reset to e', 'nd in 1 week (in block time).'), address(currentLeaderAddress));
        call address(currentLeaderAddress) with:
           value eth.balance(this.address) wei
             gas 0 wei
    stor6 = block.timestamp
    leaderHash = sha3(block.timestamp)
    if 31 >= stor9.length:
        leaderMessage.length = stor9.length
        idx = 0
        while leaderMessage.length + 31 / 32 > idx:
            leaderMessage[idx] = 0
            idx = idx + 1
            continue 
    else:
        leaderMessage.length = Mask(255, 1, (256 * not bool(stor9.length)) - 1 and stor9.length) + 1
        if not Mask(255, 1, (256 * not bool(stor9.length)) - 1 and stor9.length):
            idx = 0
            while leaderMessage.length + 31 / 32 > idx:
                leaderMessage[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor9.length + 31 / 32 > idx:
                leaderMessage[s] = uint256(stor9[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor9.length + 31 / 32
            while leaderMessage.length + 31 / 32 > idx:
                leaderMessage[idx] = 0
                idx = idx + 1
                continue 
    difficulty = leaderHash
    address(currentLeaderAddress) = stor0
    fallenLeaders = 0
    return 0
}



}
