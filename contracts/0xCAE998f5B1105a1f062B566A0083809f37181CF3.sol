contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor6 = 100000000000000 * 10^18
    require not msg.value
    mem[96 len -1540] = code.data[1888 len -1540]
    mem[64] = -1444
    stor0[address(msg.sender)] = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = mem[191 len 1]
    stor5 = block.timestamp
    return code.data[348 len 1540]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 currentChallenge;
uint256 timeOfLastProof;
uint64 stor6;
uint256 difficulty;

function name() {
    return name[0 len name.length]
}

function difficulty() {
    return uint256(difficulty)
}

function decimals() {
    return decimals
}

function currentChallenge() {
    return currentChallenge
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function timeOfLastProof() {
    return timeOfLastProof
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function MyToken() {
    balanceOf[address(msg.sender)] = 21 * 10^6
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function proofOfWork(uint256 arg1) {
    require Mask(64, 192, sha3(arg1, currentChallenge)) >= Mask(64, 192, uint64(stor6))
    require block.timestamp - timeOfLastProof >= 5
    balanceOf[address(msg.sender)] += block.timestamp - timeOfLastProof / 60
    require block.timestamp - timeOfLastProof
    uint256(difficulty) = (600 * uint256(difficulty) / block.timestamp - timeOfLastProof) + 1
    timeOfLastProof = block.timestamp
    currentChallenge = sha3(arg1, currentChallenge, block.hash(block.number - 1))
}



}
