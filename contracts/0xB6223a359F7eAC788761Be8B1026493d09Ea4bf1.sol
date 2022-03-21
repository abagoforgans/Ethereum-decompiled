contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor8 = 100000000000000 * 10^18
    mem[96 len -1387] = code.data[1899 len -1387]
    mem[64] = -1291
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor5 = mem[96]
    if mem[236 len 20] != 0:
        stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[address(msg.sender)] = mem[96]
    stor2.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor4 = mem[160]
    stor7 = block.timestamp
    return code.data[512 len 1387]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 currentChallenge;
uint256 timeOfLastProof;
uint64 stor8;
uint256 difficulty;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function difficulty() payable {
    return uint256(difficulty)
}

function decimals() payable {
    return decimals
}

function currentChallenge() payable {
    return currentChallenge
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function timeOfLastProof() payable {
    return timeOfLastProof
}

function owner() payable {
    return address(owner)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert 
}

function giveBlockReward() payable {
    balanceOf[address(block.coinbase)]++
    emit 0x56ddf252: 1, address(owner), block.coinbase
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function mintToken(address arg1, uint256 arg2) payable {
    require address(owner) == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit 0x56ddf252: arg2, 0, address(owner)
    emit 0x56ddf252: arg2, address(owner), arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
}

function proofOfWork(uint256 arg1) payable {
    require Mask(64, 192, sha3(arg1, currentChallenge)) >= uint64(stor8)
    require block.timestamp - timeOfLastProof >= 5
    balanceOf[address(msg.sender)] += block.timestamp - timeOfLastProof / 60
    uint256(difficulty) = (120 * uint256(difficulty) / block.timestamp - timeOfLastProof) + 1
    timeOfLastProof = block.timestamp
    currentChallenge = sha3(arg1, currentChallenge, block.hash(block.number - 1))
}



}
